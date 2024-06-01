#!/bin/bash

# Шлях до каталогу, який потрібно зберегти
SOURCE_DIR="/mnt/c/dotnet/new/"

# Шлях до каталогу для резервних копій
BACKUP_DIR="/mnt/c/backups/"

# Ім'я архіву
ARCHIVE_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# Повний шлях до архіву
ARCHIVE_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

# Створення каталогу для резервних копій, якщо його не існує
mkdir -p "$BACKUP_DIR"

# Резервне копіювання каталогу
tar -czf "$ARCHIVE_PATH" --exclude="*/*.dat" "$SOURCE_DIR"