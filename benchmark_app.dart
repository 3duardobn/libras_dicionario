// Copyright (C) 2026 Eduardo Barroso Nunes
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

import 'libras_dictionary/lib/api_service.dart';

void main() async {
  print("Starting benchmark of ApiService _fetchUFV");
  final service = ApiService();

  // We need to fetch it first, but since it makes an HTTP request we can't easily benchmark just the regex logic without mocking the http client.
  // Actually, I can benchmark the whole _fetchUFV using a known query, but it will measure HTTP latency.
  // A better benchmark would just mock the HTTP response or run the regex test isolated.
}
