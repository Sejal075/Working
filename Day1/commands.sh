#!/bin/bash

# Check versions
node -v
npm -v

# Install Node.js 18
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# Install Yarn
npm install -g yarn
yarn -v

# If permission error
sudo npm install -g yarn
yarn -v

# Create Strapi project
cd ~
npx create-strapi-app@latest my-strapi

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc

# Install and use Node.js 20
nvm --version
nvm install 20
nvm use 20
nvm alias default 20
node -v

# Re-create Strapi project and start
npx create-strapi-app@latest my-strapi
cd my-strapi
yarn develop
