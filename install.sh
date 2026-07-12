#!/usr/bin/env bash
# Install crayon-crew-illustrations into an agent skills directory.
#
# Paths verified against official docs (2026):
#   Cursor  → ~/.cursor/skills/     https://cursor.com/docs/skills
#   Claude  → ~/.claude/skills/     https://code.claude.com/docs/en/skills
#   Codex   → ~/.agents/skills/     https://developers.openai.com/codex/skills
#   Kiro    → ~/.kiro/skills/       https://kiro.dev/docs/skills/
#
# Usage:
#   ./install.sh              # Cursor (default)
#   ./install.sh --cursor
#   ./install.sh --claude
#   ./install.sh --codex
#   ./install.sh --kiro
#   ./install.sh --help

set -euo pipefail

SKILL_NAME="crayon-crew-illustrations"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${SCRIPT_DIR}/${SKILL_NAME}"

usage() {
  cat <<EOF
Install ${SKILL_NAME} into an AI agent skills directory.

Usage:
  ./install.sh [option]

Options:
  --cursor    Install to ~/.cursor/skills/ (default)
  --claude    Install to ~/.claude/skills/
  --codex     Install to ~/.agents/skills/
  --kiro      Install to ~/.kiro/skills/
  -h, --help  Show this help

Examples:
  ./install.sh
  ./install.sh --claude
  ./install.sh --codex
EOF
}

resolve_target() {
  case "$1" in
    cursor)
      # https://cursor.com/docs/skills — user-level global
      echo "${HOME}/.cursor/skills"
      ;;
    claude)
      # https://code.claude.com/docs/en/skills — personal
      echo "${HOME}/.claude/skills"
      ;;
    codex)
      # https://developers.openai.com/codex/skills — USER scope
      # Official docs: $HOME/.agents/skills (not ~/.codex/skills)
      echo "${HOME}/.agents/skills"
      ;;
    kiro)
      # https://kiro.dev/docs/skills/ — global
      echo "${HOME}/.kiro/skills"
      ;;
    *)
      echo "Unknown agent: $1" >&2
      exit 1
      ;;
  esac
}

AGENT="cursor"

if [[ $# -gt 0 ]]; then
  case "$1" in
    --cursor) AGENT="cursor" ;;
    --claude) AGENT="claude" ;;
    --codex)  AGENT="codex" ;;
    --kiro)   AGENT="kiro" ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      echo >&2
      usage >&2
      exit 1
      ;;
  esac
fi

if [[ ! -d "${SOURCE_DIR}" ]]; then
  echo "Error: skill folder not found at ${SOURCE_DIR}" >&2
  echo "Run this script from the repository root." >&2
  exit 1
fi

if [[ ! -f "${SOURCE_DIR}/SKILL.md" ]]; then
  echo "Error: ${SOURCE_DIR}/SKILL.md is missing." >&2
  exit 1
fi

TARGET_ROOT="$(resolve_target "${AGENT}")"
TARGET_DIR="${TARGET_ROOT}/${SKILL_NAME}"

mkdir -p "${TARGET_ROOT}"

if [[ -e "${TARGET_DIR}" ]]; then
  echo "Removing existing install at ${TARGET_DIR}"
  rm -rf "${TARGET_DIR}"
fi

cp -R "${SOURCE_DIR}" "${TARGET_DIR}"

echo "Installed ${SKILL_NAME} for ${AGENT}"
echo "  from: ${SOURCE_DIR}"
echo "  to:   ${TARGET_DIR}"
echo
echo "Try it with:"
case "${AGENT}" in
  cursor)
    echo "  Use the crayon-crew-illustrations skill to illustrate this article."
    ;;
  claude)
    echo "  /crayon-crew-illustrations  (or ask Claude to use the skill)"
    ;;
  codex)
    echo "  Use \$crayon-crew-illustrations to illustrate this article."
    echo "  Tip: restart Codex if the skill does not appear right away."
    ;;
  kiro)
    echo "  Type / in chat and select crayon-crew-illustrations, or ask Kiro to use it."
    ;;
esac
