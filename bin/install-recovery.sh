#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:11791232:028163e05f74a43bf8795d68b735de79269433b8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:10298240:980ff0cc91c3bce0ed071bfec1c092616ad1396e EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 028163e05f74a43bf8795d68b735de79269433b8 11791232 980ff0cc91c3bce0ed071bfec1c092616ad1396e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
