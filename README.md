# 🔐 Login App

A simple login & registration web app built with **Node.js**, **Express**, **MySQL**, and **bcrypt**.

---

## 📁 Project Structure

```
login-app/
├── server.js          ← Express backend (API routes)
├── package.json       ← Node dependencies
├── database.sql       ← MySQL setup script
├── .env.example       ← Environment variable template
├── .gitignore
└── public/
    └── index.html     ← Frontend (login + register UI)
```

---

## 🚀 Setup Instructions (Windows)

### 1. Install Prerequisites

| Tool | Download |
|------|----------|
| Node.js | https://nodejs.org (LTS version) |
| MySQL   | https://dev.mysql.com/downloads/mysql/ |
| Git     | https://git-scm.com/download/win |

---

### 2. Set Up the Database

Open **MySQL Command Line Client** (or MySQL Workbench) and run:

```bash
mysql -u root -p < database.sql
```

Or paste the contents of `database.sql` into MySQL Workbench and execute it.

---

### 3. Configure Environment Variables

```bash
copy .env.example .env
```

Then open `.env` and set your MySQL password:

```env
PORT=3000
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_mysql_password
DB_NAME=login_app
```

---

### 4. Install Node Dependencies

```bash
npm install
```

---

### 5. Start the Server

```bash
npm start
```

The app will be running at: **http://localhost:3000**

For development with auto-restart on changes:

```bash
npm run dev
```

---

## 🌐 Deploy to GitHub

```bash
git init
git add .
git commit -m "Initial commit: login app"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/login-app.git
git push -u origin main
```

> ⚠️ Your `.env` file is in `.gitignore` — it will NOT be pushed to GitHub. Keep your credentials safe.

---

## 🔒 Security Notes

- Passwords are hashed with **bcrypt** (12 salt rounds) — they are never stored in plain text.
- Add **JWT or sessions** for production authentication.
- Use **HTTPS** if exposing this beyond your local network.
