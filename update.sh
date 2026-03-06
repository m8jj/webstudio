#!/bin/bash

# Added by m8jj
# Use ONLY AFTER you've completed the setup instructions in the root README
git pull
pnpm i && pnpm build
cd .devcontainer && docker compose up -d
cd .. && pnpm migrations migrate
service wstd restart
echo "\nWSTD Updated!";
