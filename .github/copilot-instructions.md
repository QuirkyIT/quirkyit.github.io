# Copilot Instructions (quirkyit.github.io)

## 🔍 Project Snapshot
- This repository is a **GitHub Pages static site** (currently contains only an image asset).
- Primary content is expected to live at the repository root (HTML/Markdown) and in `img/` for static assets.

## 📁 Key Locations
- `img/` – stores image assets used by the site (e.g., `Logo.png`).
- (No source HTML/MD files present right now.)

## ✅ What an AI assistant should do here
1. **Preserve structure**: If adding content, keep it in the root or well‐organized subfolders that match typical Pages layouts.
2. **Add or update site source**: If adding pages, include an `index.html` or `README.md` in the repo root.
3. **Use `img/` for assets**: When referencing images, use a relative path like `img/Logo.png`.

## 🧩 Deployment & Workflow
- Deploys automatically via **GitHub Pages** when changes are pushed to `main` (or default branch). No build step exists in this repo as-is.

## 🧪 Testing & Validation
- There is no test harness or build pipeline present; validate changes by previewing locally in a browser (open the HTML/Markdown files directly).

## 🛠️ Common conventions
- Keep filenames simple and lowercase (e.g., `index.html`, `about.md`), and use relative links.
- If adding new folders, ensure they reflect logical sections of the site (e.g., `blog/`, `assets/`).

## 📝 When you’re unsure
- If you add a page, make sure it has a clear navigation path (e.g., link from `index.html` or `README.md`).
- If you need a build step or configuration (Jekyll, Hugo, etc.), add a README note explaining what you added.
