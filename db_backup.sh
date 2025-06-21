DB_USER="root"

DB_PASS="aTnH@3108"

DB_NAME="backup_test"

DESTINATION="/home/$USER/backup"

DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p $DESTINATION

mysqldump -u $DB_USER -p$DB_PASS $BD_NAME > $DESTINATION/${DB_NAME}_backup_$DATE.sql

echo "MySQL database backup completed!"

echo "Backup saved to: $DESTINATION/${DB_NAME}_backup_$DATE.sql"
