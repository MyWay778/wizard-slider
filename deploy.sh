#! /bin/bash

echo "Deploying..."

# Собираем проект
npm run build

# Создаем ветку gh-pages, комитим билд 
git checkout --orphan gh-pages
git --work-tree dist add --all --force
git commit -m "deploy"

echo "Pushing to gh-pages"

# Пушим в репозиторий
git push origin HEAD:gh-pages --force

# Очистка
rm -r dist
git checkout -f main
git branch -D gh-pages

echo "Successfully deployed!"