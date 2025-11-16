#!/system/bin/sh
MODPATH=${0%/*}

# 设置权限
chmod 755 $MODPATH/system/priv-app/AutoAuth
chmod 644 $MODPATH/system/priv-app/AutoAuth/AutoAuth.apk

# 修复 SELinux 上下文
chcon u:object_r:system_file:s0 $MODPATH/system/priv-app/AutoAuth
chcon u:object_r:system_file:s0 $MODPATH/system/priv-app/AutoAuth/AutoAuth.apk
