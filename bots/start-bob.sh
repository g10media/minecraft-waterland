#!/usr/bin/env bash
set -o nounset
set -o errexit

## ChatGPT for both messaging and moderation
# CHATGPT_MESSAGE_API_KEY="${GODZILLA_OPENAI_API_KEY_MINECRAFT_NPC_BOB}" \
#   CHATGPT_MODERATION_API_KEY="${GODZILLA_OPENAI_API_KEY_MINECRAFT_NPC_BOB}" \
#   minecraft-npc start --conf-file bob.yaml

## Local for messaging and ChatGPT for moderation
# CHATGPT_MESSAGE_API_KEY="${STUDIO_VLMX_KEY}" \
#   CHATGPT_MESSAGE_BASE_URL="http://host.docker.internal:8001/v1" \
#   CHATGPT_MODERATION_API_KEY="${GODZILLA_OPENAI_API_KEY_MINECRAFT_NPC_BOB}" \
#   minecraft-npc start --conf-file bob.yaml

# OpenRouter for messaging and ChatGPT for moderation
CHATGPT_MESSAGE_API_KEY="${STUDIO_OPENROUTER_KEY}" \
  CHATGPT_MESSAGE_BASE_URL="https://openrouter.ai/api/v1" \
  CHATGPT_MODERATION_API_KEY="${GODZILLA_OPENAI_API_KEY_MINECRAFT_NPC_BOB}" \
  minecraft-npc start --conf-file bob.yaml
