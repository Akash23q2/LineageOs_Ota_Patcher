# Enable OTA Root Script (enable-ota-root.sh)

This script, by me @Akash23q2 ;p, is designed to enable OTA (Over-The-Air) updates for LineageOS while retaining root access. It allows users to patch the boot image and create a flashable ZIP file, making the update process seamless. To use this script, follow the instructions below.

## Prerequisites
1. Install Termux from the Google Play Store.
2. Open Termux and run the following commands to set up the necessary tools:
   ```bash
   apt update -y
   apt upgrade -y
   apt install zip -y
   apt install git -y
   apt install tsu -y
   ```

## How to Use
1. Clone the script repository using `git`:
   ```bash
   git clone https://github.com/Akash23q2/LineageOs_Ota_Patcher ota-patcher
   ```
   
2. Navigate to the script's directory:
   ```bash
   cd ota-patcher
   ```

3. Run the script using `su`.
   ```bash
   chmod +x enable-ota-root.sh
   sudo bash enable-ota-root.sh

   ```

The script will guide you through the process of enabling OTA updates for your LineageOS ROM while preserving root access. It will move the ROM to a backup folder, patch the boot image, and create a flashable ZIP file. Once the script finishes successfully, you can update your ROM without losing root privileges.
# 

# **Note:**

* This script only works for LineageOS ROMs.
* You need to have Magisk installed in order to use this script.

I hope this is helpful!

Enjoy your updated LineageOS with root access enabled! Best wishes! 😉
