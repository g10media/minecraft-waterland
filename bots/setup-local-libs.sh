#!/bin/bash

# Provision Minecraft Waterland to use local minecraft-npc and mineflayer-chatgpt
# which should be located on the same level as minecraft-waterland

cd ../

cd ../mineflayer-chatgpt
make deps
npm install .
npm link

cd ../minecraft-npc
make deps
npm install .
npm link
npm link mineflayer-chatgpt

cd ../minecraft-waterland/
cd bots/

minecraft-npc --version
