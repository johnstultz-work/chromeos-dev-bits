. sync.sh
adb reboot bootloader
fastboot flash boot ./hikey/boot_fat.uefi.img
fastboot reboot

