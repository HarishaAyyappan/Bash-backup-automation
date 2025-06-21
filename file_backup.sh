SOURCE="/home/$USER/Documents"

DESTINATION="/home/$USER/backup"

DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p $DESTINATION

if [ "$(ls -A $SOURCE)" ]; then
	echo " Folder is not empty.Proceeding with backup..."
else
	echo " The source folder is empty. Nothing to back up."
	exit 1
fi

tar -czvf $DESTINATION/documents_backup_$DATE.tar.gz $SOURCE

echo "Backup completed successfully!"

echo "Saved to: $DESTINATION/documents_backup_$DATE.tar.gz"



