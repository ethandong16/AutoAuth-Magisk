#!/system/bin/sh
# Magisk module install script

SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

print_modname() {
  ui_print "*******************************"
  ui_print "   Installing YourApp System   "
  ui_print "*******************************"
}

# Set correct permissions
set_permissions() {
  set_perm_recursive $MODPATH/system 0 0 0755 0644
}
