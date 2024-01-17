#!/bin/bash

echo "Начало скрипта..."

# Замените следующие строки на реальные ссылки на ваши репозитории
BACKEND_REPO_URL="git@github.com:DmitriyS87/test-shopify-backend.git"
FRONTEND_REPO_URL="git@github.com:DmitriyS87/test-shopify-frontend.git"

echo "Клонирование репозитория с бэкенд приложением..."
git clone $BACKEND_REPO_URL
echo "Клонирование завершено."

echo "Клонирование репозитория c фронтенд приложением..."
git clone $FRONTEND_REPO_URL
echo "Клонирование завершено."

cd .

echo "Запуск Docker Compose..."
docker-compose up --build -d
echo "Docker Compose успешно запущен."

# Проверка статуса контейнеров может быть добавлена здесь, если требуется
sleep 60 # - примерное время ожидания запуска контейнеров

echo "Проверка статусов контейнеров..."
docker-compose ps

echo "Скрипт завершил работу."
