#!/bin/bash
set -e
echo "🚀 部署具備全項目專屬檢閱隔離與換機備援之安全債務看板..."

if [ -z "$1" ]; then
  echo "請提供 GitHub 倉庫網址，例如："
  echo "  ./deploy.sh https://github.com/YOUR_USERNAME/debt-tracker.git"
  exit 1
fi

git init
git add index.html
git commit -m "feat: universal scoped view for any debt and disaster recovery" || true
git branch -M main
git remote add origin "$1" || git remote set-url origin "$1"
git push -u origin main

echo "🎉 部署完成！請在 GitHub Settings > Pages 啟用 main 分支！"
