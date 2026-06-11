#!/bin/bash
# =============================================================
# setup-github.sh
# Inicializa el repo electronica-analogica en GitHub
# Ejecute desde la carpeta electronica-analogica/
# =============================================================
# Requisitos: git, gh (GitHub CLI) instalados y autenticados

set -e

REPO="electronica-analogica"
USER="alcidesmontoyac"
DESCRIPTION="Electrónica Análoga · Taller 4 · Ingeniería Física · UNAL 2026-2"

echo "=== 1. Inicializando repositorio git local ==="
git init
git add .
git commit -m "feat: estructura inicial del curso — Quarto + GitHub Actions"

echo "=== 2. Creando repositorio en GitHub ==="
gh repo create "$USER/$REPO" \
  --public \
  --description "$DESCRIPTION" \
  --source=. \
  --remote=origin \
  --push

echo "=== 3. Activando GitHub Pages ==="
gh api \
  --method POST \
  -H "Accept: application/vnd.github+json" \
  "/repos/$USER/$REPO/pages" \
  -f source='{"branch":"main","path":"/docs"}'

echo "=== 4. Activando GitHub Discussions ==="
gh api \
  --method PATCH \
  -H "Accept: application/vnd.github+json" \
  "/repos/$USER/$REPO" \
  -F has_discussions=true

echo ""
echo "✅ Listo. En ~2 minutos el sitio estará en:"
echo "   https://$USER.github.io/$REPO"
echo ""
echo "Próximos pasos:"
echo "  1. Ir a Settings → Pages → verificar que source sea 'GitHub Actions'"
echo "  2. Ir a Discussions → crear categorías: 💬 General, 📚 Teoría, 🔬 Labs, 💡 Ideas"
echo "  3. Crear la organización de GitHub Classroom (classroom.github.com)"
