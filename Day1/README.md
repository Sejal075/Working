# Strapi Local Setup (Linux / WSL)

This repository documents the steps and commands used to install **Strapi locally on a Linux / WSL system**, including Node.js, Yarn, and Node Version Manager (NVM).

---

## 📌 Prerequisites

* Linux or WSL (Ubuntu recommended)
* Internet connection
* sudo access

---

## 🚀 Installation Steps

### 1. Check existing Node.js and npm versions

```bash
node -v
npm -v
```

---

### 2. Install Node.js 18 (initial setup)

```bash
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs
```

Verify installation:

```bash
node -v
npm -v
```

---

### 3. Install Yarn (global)

```bash
npm install -g yarn
```

If permission denied occurs, use:

```bash
sudo npm install -g yarn
```

Verify:

```bash
yarn -v
```

---

### 4. Create a Strapi project

```bash
cd ~
npx create-strapi-app@latest my-strapi
```

---

### 5. Install NVM (Node Version Manager)

Strapi latest versions require **Node.js >= 20**.

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
```

Verify NVM:

```bash
nvm --version
```

---

### 6. Install and use Node.js 20

```bash
nvm install 20
nvm use 20
nvm alias default 20
```

Verify:

```bash
node -v
```

---

### 7. Re-create Strapi project (with correct Node version)

```bash
npx create-strapi-app@latest my-strapi
```

---

### 8. Start Strapi

```bash
cd my-strapi
yarn develop
```

---

## 🌐 Access Strapi

* Admin Panel: [http://localhost:1337/admin](http://localhost:1337/admin)
* API Root: [http://localhost:1337](http://localhost:1337)

---

## 🛠 Useful Commands

| Purpose          | Command        |
| ---------------- | -------------- |
| Start dev server | `yarn develop` |
| Build project    | `yarn build`   |
| Run production   | `yarn start`   |
| Stop server      | `Ctrl + C`     |

---

## 📄 commands.sh

```bash
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
```

---

✅ Strapi should now be running successfully on your local machine.
