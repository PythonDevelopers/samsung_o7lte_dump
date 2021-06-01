#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:12068140:c9f53cc77c4b000a051ad413c99b0900f369a504; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:10902824:22f289b74ca69a080447b4625d042625ec9c74bd EMMC:/dev/block/bootdevice/by-name/recovery c9f53cc77c4b000a051ad413c99b0900f369a504 12068140 22f289b74ca69a080447b4625d042625ec9c74bd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
