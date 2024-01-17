#!/bin/bash

echo "Начало скрипта..."

# Замените следующие строки на реальные ссылки на ваши репозитории
BACKEND_REPO_URL="https://github.com/DmitriyS87/test-shopify-backend.git"
FRONTEND_REPO_URL="https://github.com/DmitriyS87/test-shopify-frontend.git"
BACKEND_DIR="backend"
FRONTEND_DIR="frontend"

echo "Клонирование репозитория с бэкенд приложением..."
git clone $BACKEND_REPO_URL $BACKEND_DIR
echo "Клонирование завершено."

echo "Клонирование репозитория c фронтенд приложением..."
git clone $FRONTEND_REPO_URL $FRONTEND_DIR
echo "Клонирование завершено."

cd .

echo "Запуск Docker Compose..."
docker-compose up --build -d
echo "Docker Compose успешно запущен."

docker-compose ps
echo "Скрипт завершил работу."
