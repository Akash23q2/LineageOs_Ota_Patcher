#!/bin/bash
echo -e "***\nLineageOs Magisk Workaround!!\n***" 
sleep 1s
echo -e "#by @Akash23q2\n" 
sleep 1.5s
backup="/sdcard/Rom_Backup/"
echo -e "\nLooking For LineageRom Inside Root Folder\n"
cd ; path=$(find / -name "*lineage*.zip")
if [ $path -ne " " ];then
 echo "file found at $path"
else
 echo "Nothing Found, Make Sure Ota is Downloaded"
 sleep 2s
 exit 1
fi
sleep 1s
echo -e "\nMoving Rom To $backup Folder In Internal Storage\n"
mv $path $backup
sleep 1s
echo -e "\nMaking Backup Of Orignal boot.img"
cd $path ; rom_name=$(ls | grep *lineage*.zip)
unzip -j *lineage*.zip boot.img
echo -e "\n Making Temp Folder To Save Patched boot.img\n" ; mkdir temp 
cp *lineage*.zip temp/ ; cd temp ; unzip * ; rm boot.img ; rm *lineage*.zip
sleep 1s
echo -e "\n Starting Boot.img Patching Procedure...\n"
sleep 1.5s
sh /data/adb/magisk/boot_patch.sh $backup"boot.img"
mv /data/adb/magisk/new-boot.img $backup"temp/"
echo -e "\nBoot Image Patched Sucessfully..\n Now Zipping Everything.."
sleep 1.5s
/data/data/com.termux/files/usr/bin/zip zip -r $rom_name".zip" * 
echo -e "\nZip Created Sucessfully.. \n"
sleep 1s
echo -e "\n Moving Patched Zip To Its Orignal Location\n & Removing Temp. Files\n"
mv *lineage*.zip $path"/"
rm -rf $backup"temp/"
sleep 1s
echo -e "\n Script Finished Sucessfully...\n"
sleep 1s
echo -e "Now You Can Update Rom\n "
sleep 1s
echo "Best Wishes ;)\n"


