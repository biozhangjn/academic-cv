#!/bin/sh
set -e

echo "开始同步更新到 GitHub..."

git add .

if git diff-index --quiet HEAD --; then
    echo "没有检测到文件变更，跳过提交。"
else
    git commit -m "Blog update: $(date)"
    git pull origin main --rebase
    git push -u origin main
    echo "GitHub 同步成功！"
fi

exit 0
