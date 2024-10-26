#! /bin/bash

# Define source and destination directories
SOURCE_DIR="./../FileManager"  # replace with your source directory
DEST_DIR="./test"  # replace with your destination directory

# create a timestamp for the backup folder
TIMESTAMP=$(date +"%Y-%m-%d_%I-%M-%S_%p")

# create the backup directory with timestamp appended
BACKUP_DIR=${DEST_DIR}/backup_${TIMESTAMP}

# Check if the source directory exists or not 
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory $SOURCE_DIR doesn't exist."
    exit 1
fi

# Check if the destination folder exists, if not create it
if [ ! -d "$DEST_DIR" ]; then
    echo "Destination directory $DEST_DIR does not exist, creating it."
    mkdir -p "$DEST_DIR"
fi

# Create backup directory

mkdir $BACKUP_DIR

# copy the files from source to backup directory

cp -r "$SOURCE_DIR"/* "$BACKUP_DIR"

if [ $? -eq 0 ]; then
    echo "Backup successful! Files copied to $BACKUP_DIR"
else
    echo "Backup failed."
    exit 1
fi