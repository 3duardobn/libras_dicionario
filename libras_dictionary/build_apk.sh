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

cd "$SCRIPT_DIR"

echo "==> Aceitando licenças do Android SDK..."
yes | "$FLUTTER" doctor --android-licenses 2>/dev/null || true

echo "==> Obtendo dependências Flutter..."
"$FLUTTER" pub get

echo "==> Limpando builds anteriores..."
"$FLUTTER" clean

echo "==> Obtendo dependências novamente após clean..."
"$FLUTTER" pub get

echo "==> Gerando APK release..."
"$FLUTTER" build apk --release

APK_PATH="build/app/outputs/flutter-apk/app-release.apk"

if [ -f "$APK_PATH" ]; then
    APK_SIZE=$(du -sh "$APK_PATH" | cut -f1)
    echo ""
    echo "APK gerado: $APK_PATH ($APK_SIZE)"
else
    echo "ERRO: APK não encontrado em $APK_PATH"
    exit 1
fi