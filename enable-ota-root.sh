#!/bin/bash
echo -e "\n\e[1;36m***\nLineageOs Magisk Workaround!!\n***\n\e[0m"
sleep 1s
echo -e "\n\e[1;33m#by @Akash23q2\e[0m\n"
sleep 1.5s
backup="/sdcard/Rom_Backup/" ; rm -rf $backup 2> /dev/null ; mkdir $backup 2> /dev/null
echo -e "\n\e[1;35mLooking For LineageRom...\n\e[0m"
cd ; rom=$(find /data/ -name "*lineage*.zip")
path=$(dirname $rom)
if [ ${#rom} -ne 0 ]; then
    echo -e "\n\e[1;32mFile found at $rom\n\e[0m"
else
    echo -e "\n\e[1;31mNothing Found, Make Sure Ota is Downloaded\n\e[0m"
    sleep 2s
    exit 1
fi
sleep 1s
echo -e "\n\e[1;35mMoving Rom To $backup Folder In Internal Storage\n\e[0m"
mv $rom $backup
sleep 1s
echo -e "\n\e[1;35mMaking Backup Of Original boot.img\n\e[0m"
cd $backup ; rom_name=$(ls | grep *lineage*.zip)
unzip -j $rom_name boot.img
echo -e "\n\e[1;35mMaking Temp Folder To Save Patched boot.img\n\e[0m" ; mkdir temp 2> /dev/null
cp $rom_name temp/ ; cd temp ; unzip * ; rm boot.img ; rm *lineage*.zip
sleep 1s
echo -e "\n\e[1;35mStarting Boot.img Patching Procedure...\n\e[0m"
sleep 1.5s
sh /data/adb/magisk/boot_patch.sh $backup"boot.img"
mv /data/adb/magisk/new-boot.img $backup"temp/"
mv $backup"temp/new-boot.img" boot.img
echo -e "\n\e[1;35mBoot Image Patched Successfully..\nNow Zipping Everything..\n\e[0m"
sleep 1.5s
/data/data/com.termux/files/usr/bin/zip $rom_name *
echo -e "\n\e[1;35mZip Created Successfully...\e[0m"
sleep 1s
echo -e "\e[1;35mMoving Patched Zip To Its Original Location\n& Removing Temp Files\n\e[0m"
mv $rom_name $path"/"
rm -rf $backup"temp/"
sleep 1s
echo -e "\n\e[1;32mScript Finished Successfully...\n\e[0m"
sleep 1s
echo -e "\n\e[1;34mNow You Can Update Rom\e[0m"
sleep 1s
echo -e "\e[1;34mBest Wishes ;)\n\e[0m"
