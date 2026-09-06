# Copyright (C) 2026 Eduardo Barroso Nunes
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

import time
import requests

class RateLimitedSession:
    """
    Sessão HTTP com controle de taxa (rate limiting), intervalos de cortesia,
    tratamento de cabeçalho Retry-After e exponential backoff para não sobrecarregar
    os servidores das universidades e instituições públicas.
    """
    def __init__(self, requests_per_second: float = 2.0, max_retries: int = 4, backoff_factor: float = 1.5):
        self.session = requests.Session()
        self.min_interval = 1.0 / requests_per_second if requests_per_second > 0 else 0
        self.last_request_time = 0.0
        self.max_retries = max_retries
        self.backoff_factor = backoff_factor

    def set_headers(self, headers: dict):
        self.session.headers.update(headers)

    def get(self, url: str, **kwargs) -> requests.Response:
        retries = 0
        current_backoff = 1.0

        while retries <= self.max_retries:
            # Garante o espaçamento mínimo entre requisições
            elapsed = time.time() - self.last_request_time
            if elapsed < self.min_interval:
                time.sleep(self.min_interval - elapsed)

            self.last_request_time = time.time()

            try:
                resp = self.session.get(url, **kwargs)

                # Respeita o status 429 (Too Many Requests) e cabeçalho Retry-After
                if resp.status_code == 429:
                    retry_after = resp.headers.get("Retry-After")
                    wait_time = float(retry_after) if retry_after and retry_after.isdigit() else current_backoff * 3
                    print(f"\n[Rate Limit 429 detectado em {url}] Pausando {wait_time:.1f}s...")
                    time.sleep(wait_time)
                    retries += 1
                    current_backoff *= self.backoff_factor
                    continue

                # Servidor instável (500, 502, 503, 504) -> backoff progressivo
                if resp.status_code in (500, 502, 503, 504):
                    retries += 1
                    if retries > self.max_retries:
                        return resp
                    time.sleep(current_backoff)
                    current_backoff *= self.backoff_factor
                    continue

                return resp

            except (requests.exceptions.RequestException, requests.exceptions.Timeout) as e:
                retries += 1
                if retries > self.max_retries:
                    raise e
                time.sleep(current_backoff)
                current_backoff *= self.backoff_factor

        raise requests.exceptions.RetryError(f"Excedido o número máximo de retentativas para {url}")
