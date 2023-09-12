# Enable OTA Root Script (enable-ota-root.sh)

This script, created by @Akash23q2, is designed to enable OTA (Over-The-Air) updates for LineageOS while retaining root access. It allows users to patch the boot image and create a flashable ZIP file, making the update process seamless. To use this script, follow the instructions below.

## Prerequisites
1. Install Termux from the Google Play Store.
2. Open Termux and run the following commands to set up the necessary tools:
   ```bash
   apt update
   apt upgrade
   apt install zip git
   tsu
   exit
   ```

## How to Use
1. Clone the script repository using `git`:
   ```bash
   git clone https://github.com/your-username/your-repo.git
   ```

2. Navigate to the script's directory:
   ```bash
   cd your-repo
   ```

3. Run the script using `su` and `bash`. Replace `(name.sh)` with the actual script name, for example, `enable-ota-root.sh`:
   ```bash
   su
   bash enable-ota-root.sh
   ```

The script will guide you through the process of enabling OTA updates for your LineageOS ROM while preserving root access. It will move the ROM to a backup folder, patch the boot image, and create a flashable ZIP file. Once the script finishes successfully, you can update your ROM without losing root privileges.

Enjoy your updated LineageOS with root access enabled! Best wishes! 😉
