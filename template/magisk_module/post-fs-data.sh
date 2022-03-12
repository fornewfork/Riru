#!/system/bin/sh

cd /data/adb/modules/riru-core
unshare -m sh -c "/system/bin/app_process -Djava.class.path=rirud.apk /system/bin --nice-name=rirud riru.Daemon 24301 /sbin $(getprop ro.dalvik.vm.native.bridge)&"
