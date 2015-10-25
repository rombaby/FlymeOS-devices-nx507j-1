#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8792064 7b5dabbc79d1282d21754b8e0e5b6088ad0711cb 6043648 f87e9b190dc306d05c6dd4bb882d574b1f044bc3
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:8792064:7b5dabbc79d1282d21754b8e0e5b6088ad0711cb; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6043648:f87e9b190dc306d05c6dd4bb882d574b1f044bc3 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 7b5dabbc79d1282d21754b8e0e5b6088ad0711cb 8792064 f87e9b190dc306d05c6dd4bb882d574b1f044bc3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
