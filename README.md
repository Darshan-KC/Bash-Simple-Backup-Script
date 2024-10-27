
# Bash Simple Backup Script

This repository contains a simple Bash script designed to back up files from a specified source directory to a destination directory. The script automatically creates a new backup folder with a timestamp for each backup operation, ensuring that backups are organized and easy to identify.

## Features

- Copies all files from a specified source directory to a backup folder in the destination directory.
- Automatically appends a timestamp to each backup folder (format: `YYYY-MM-DD_HH-MM-SS`).
- Checks if source and destination directories exist and creates the destination if needed.

## Prerequisites

- Ensure Bash is installed (commonly pre-installed on most Unix-based systems).
- Confirm that you have read and write permissions for the specified directories.

## Usage

1. Clone the repository or download the script.
   ```bash
   git clone https://github.com/Darshan-KC/Bash-Simple-Backup-Script.git
   cd Bash-Simple-Backup-Script
   ```

2. Open the script file (`backup.sh`) and set:
   - `SOURCE_DIR` to the path of the directory you wish to back up.
   - `DEST_DIR` to the path where you want backups to be stored.

3. Run the script:
   ```bash
   ./backup.sh
   ```

   > Ensure the script has execute permissions. If not, run `chmod +x backup.sh`.

## Example

If `SOURCE_DIR` is set to `/home/user/documents` and `DEST_DIR` is `/home/user/backup`, the script will create a folder named like `/home/user/backup/backup_20241024_143030` and copy all files from `documents` to this new folder.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
