# Проверка существования директории для бэкапов
BACKUP_DIR="$HOME/backups"
if [ ! -d "$BACKUP_DIR" ]; then
  mkdir -p "$BACKUP_DIR"
fi

# Имя архива с датой и временем
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE_NAME="test_backup_$TIMESTAMP.tar.gz"
ARCHIVE_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

# Архивирование с использованием tar
tar -czvf "$ARCHIVE_PATH" ~/git/test/

# Вывод сообщения об успехе или ошибке
if [ $? -eq 0 ]; then
  echo "Резервная копия успешно создана: $ARCHIVE_PATH"
else
  echo "Ошибка при создании резервной копии!"
fi
# конец скрипта
