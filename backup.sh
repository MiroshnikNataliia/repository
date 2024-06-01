#!/bin/bash

# Шлях до каталогу, який потрібно зберегти
SOURCE_DIR="/home/user/documents"

# Шлях до каталогу для резервних копій
BACKUP_DIR="/home/user/backups"

# Ім'я архіву
ARCHIVE_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# Повний шлях до архіву
ARCHIVE_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

# Створення каталогу для резервних копій, якщо його не існує
mkdir -p "$BACKUP_DIR"

# Резервне копіювання каталогу
tar -czf "$ARCHIVE_PATH" "$SOURCE_DIR"