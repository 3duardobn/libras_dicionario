#!/bin/bash

# Script para gerar o APK do Dicionário de Libras

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FLUTTER="$SCRIPT_DIR/../flutter/bin/flutter"
DART="$SCRIPT_DIR/../flutter/bin/dart"

echo "🚀 Iniciando processo de build do APK..."

# 1. Verificar se o Flutter está presente
if [ ! -f "$FLUTTER" ]; then
    echo "❌ Erro: Flutter não encontrado em $FLUTTER"
    exit 1
fi

# 2. Aceitar licenças do Android SDK
echo "📜 Aceitando licenças do Android SDK..."
yes | "$FLUTTER" doctor --android-licenses

# 3. Obter dependências
echo "📦 Obtendo dependências (pub get)..."
"$FLUTTER" pub get

# 4. Limpar builds anteriores
echo "🧹 Limpando builds antigos..."
"$FLUTTER" clean

# 5. Gerar o APK
echo "🏗️ Gerando APK de release..."
"$FLUTTER" build apk --release

# 6. Verificar se o APK foi gerado
APK_PATH="build/app/outputs/flutter-apk/app-release.apk"

if [ -f "$APK_PATH" ]; then
    echo "✅ APK gerado com sucesso!"
    echo "📍 Localização: $APK_PATH"
else
    echo "❌ Erro: Falha ao gerar o APK."
    exit 1
fi
