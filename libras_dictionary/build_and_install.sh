#!/bin/bash
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

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FLUTTER="$SCRIPT_DIR/../flutter/bin/flutter"
if [ ! -f "$FLUTTER" ]; then
    FLUTTER="$(command -v flutter || echo "")"
fi

if [ -z "$FLUTTER" ] || [ ! -x "$FLUTTER" ]; then
    echo "ERRO: Flutter não encontrado. Instale em https://docs.flutter.dev/get-started/install"
    exit 1
fi

MODE="${1:-release}"
if [ "$MODE" != "release" ] && [ "$MODE" != "debug" ]; then
    echo "ERRO: Modo inválido '$MODE'. Use 'release' (padrão) ou 'debug'."
    exit 1
fi

cd "$SCRIPT_DIR"

echo "==> Aceitando licenças do Android SDK..."
yes | "$FLUTTER" doctor --android-licenses 2>/dev/null || true

echo "==> Verificando dispositivo conectado..."
if ! command -v adb >/dev/null 2>&1; then
    echo "ERRO: adb não encontrado. Instale o Android platform-tools."
    exit 1
fi

DEVICES="$(adb devices | awk 'NR>1 && $2 == "device" {print $1}')"
if [ -z "$DEVICES" ]; then
    echo "ERRO: Nenhum dispositivo conectado. Conecte um dispositivo via USB ou emulador."
    exit 1
fi
echo "Dispositivos: $(echo "$DEVICES" | tr '\n' ' ')"

echo "==> Obtendo dependências Flutter..."
"$FLUTTER" pub get

echo "==> Gerando APK $MODE..."
"$FLUTTER" build apk --"$MODE"

APK_PATH="build/app/outputs/flutter-apk/app-${MODE}.apk"

if [ ! -f "$APK_PATH" ]; then
    echo "ERRO: APK não encontrado em $APK_PATH"
    exit 1
fi

echo "==> Instalando via adb..."
adb install -r "$APK_PATH"

APK_SIZE=$(du -sh "$APK_PATH" | cut -f1)
echo ""
echo "APK instalado com sucesso: $APK_PATH ($APK_SIZE)"
