#!/usr/bin/env bash
set -e

echo "🚀 Building the project..."
npm run build

echo "📦 Moving into the dist folder..."
cd dist

echo "🌱 Initializing a new Git repo (if not exists)..."
git init

echo "➕ Staging files..."
git add .

echo "✅ Committing changes..."
git commit -m "Deploy"

echo "🏷 Setting branch to gh-pages..."
git branch -M gh-pages

echo "🔗 Configuring remote origin..."
if git remote get-url origin > /dev/null 2>&1; then
  echo "🔄 Remote origin already exists. Updating URL..."
  git remote set-url origin https://github.com/DanieleSpera/ar-avatar-card.git
else
  echo "➕ Adding new remote origin..."
  git remote add origin https://github.com/DanieleSpera/ar-avatar-card.git
fi

echo "🚀 Pushing to GitHub Pages..."
git push -f origin gh-pages

echo "🏁 Deployment completed!"
cd ..
