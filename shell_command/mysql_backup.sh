#!/bin/bash

# ===== CONFIG =====
DB_HOST="localhost"
DB_USER="root"
DB_PASS="password"
DB_NAME="rogueah1_wp174"
BACKUP_DIR="/home/fahad/DB/mysql"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# ===== CREATE DIR =====
mkdir -p "$BACKUP_DIR"

# ===== BACKUP =====
mysqldump -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" \
  | gzip > "$BACKUP_DIR/${DB_NAME}_${DATE}.sql.gz"

# ===== CLEAN OLD BACKUPS (older than 7 days) =====
find "$BACKUP_DIR" -type f -name "*.sql.gz" -mtime +7 -delete

