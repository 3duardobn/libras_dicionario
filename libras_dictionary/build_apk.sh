#!/bin/bash
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