# Bash-backup-automation
Automating file and database backups using Bash scripting on RHEL


# Bash Backup Automation Project

This project demonstrates how to automate backups of important files and a MySQL database using Bash scripting in a Red Hat Enterprise Linux (RHEL 9.6) environment.

## 🔧 Project Overview

The project consists of two Bash scripts:

- `file_backup.sh`: Compresses and backs up a specified directory (like `/home/user/Documents`) into a `.tar.gz` file.
- `db_backup.sh`: Dumps a MySQL database to a `.sql` file using `mysqldump`.

Both scripts are customizable and simple to use in any Linux environment.

## 📂 Files Included

| File Name           | Description                                      |
|---------------------|--------------------------------------------------|
| `file_backup.sh`    | Backs up the user's Documents folder             |
| `db_backup.sh`      | Backs up the MySQL database using `mysqldump`    |
| `sample_output.png` | Screenshot showing backup verification           |

## 🕒 Optional Cron Job

To schedule automatic backups daily at 10 PM, add the following line to your crontab:

```bash
0 22 * * * bash /home/yourname/file_backup.sh
