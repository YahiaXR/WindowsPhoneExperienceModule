##########################################################################################
#
# MMT Extended Config Script
#

# List all directories you want to directly replace in the system
# Check the documentations for more info why you would need this

# Construct your list in the following format
# This is an example
REPLACE_EXAMPLE="
/system/media/audio/alarms
/system/media/audio/notifications
/system/media/audio/ringtones
/system/product/media/audio/alarms
/system/product/media/audio/notifications
/system/product/media/audio/ringtones
"

# Construct your own list here
REPLACE="
/system/product/app/Backgrounds
/system/product/app/DeskClock
/system/product/app/Etar
/system/product/app/Eleven
/system/product/app/ExactCalculator
/system/product/app/Glimpse
/system/product/app/Icons
/system/product/app/Jelly
/system/product/app/Recorder
/system/product/app/Themes
/system/product/priv-app/Backgrounds
/system/product/priv-app/DeskClock
/system/product/priv-app/Etar
/system/product/priv-app/Eleven
/system/product/priv-app/ExactCalculator
/system/product/priv-app/Glimpse
/system/product/priv-app/Icons
/system/product/priv-app/Jelly
/system/product/priv-app/Recorder
/system/product/priv-app/Themes
"

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  : # Remove this if adding to this function

  # Note that all files/folders in magisk module directory have the $MODPATH prefix - keep this prefix on all of your files/folders
  # Some examples:
  
  # For directories (includes files in them):
  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  
  # set_perm_recursive $MODPATH/system/lib 0 0 0755 0644
  # set_perm_recursive $MODPATH/system/vendor/lib/soundfx 0 0 0755 0644

  # For files (not in directories taken care of above)
  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  
  # set_perm $MODPATH/system/lib/libart.so 0 0 0644
  # set_perm /data/local/tmp/file.txt 0 0 644
}

SKIPUNZIP=1
unzip -qjo "$ZIPFILE" 'common/functions.sh' 'system/etc/SecGallery.apk' 'system/etc/SecMusic.apk' 'system/etc/SecNotes.apk' -d $TMPDIR >&2
. $TMPDIR/functions.sh
