#!/usr/bin/env bash
set -o nounset
set -o errexit

CHATGPT_MESSAGE_API_KEY="${GODZILLA_OPENAI_API_KEY_MINECRAFT_NPC_LOLO}" \
  CHATGPT_MODERATION_API_KEY="${GODZILLA_OPENAI_API_KEY_MINECRAFT_NPC_LOLO}" \
  minecraft-npc start --conf-file lolo.yaml