# Используем официальный образ Python в качестве базового
FROM python:3.9-slim

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл с зависимостями в рабочую директорию
COPY requirements.txt requirements.txt

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем остальные файлы проекта в рабочую директорию
COPY . .

# Устанавливаем переменную окружения, чтобы избежать создания файлов .pyc
ENV PYTHONDONTWRITEBYTECODE 1

# Устанавливаем переменную окружения, чтобы буферизация вывода отключилась
ENV PYTHONUNBUFFERED 1

# Запускаем тесты
CMD ["python", "-m", "unittest", "discover"]
