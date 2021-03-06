# Sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Playa.ogg \
    ro.config.notification_sound=regulus.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg

# Selinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1
 
# Needs for MTP Dirty Hack
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
 persist.sys.usb.config=mtp

ADDITIONAL_DEFAULT_PROPERTIES := \
 ro.adb.secure=0 \
 ro.secure=0 \
 persist.service.adb.enable=1

# Density Backup
PRODUCT_COPY_FILES += \
    vendor/dk/prebuilt/common/addon.d/95-backup.sh:system/addon.d/95-backup.sh \
    vendor/dk/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Add bash shellPRODUCT_COPY_FILES += \ 
  vendor/dk/prebuilt/common/bin/b:system/bin/b \ 
  vendor/dk/prebuilt/common/bin/bash:system/bin/bash \ 
  vendor/dk/prebuilt/common/etc/bash/bashrc:system/etc/bash/bashrc

#Pixel Launcher
PRODUCT_COPY_FILES += \
vendor/dk/prebuilt/common/app/PixelLauncherPrebuilt.apk:system/priv-app/nexus-launcher/PixelLauncherPrebuilt.apk \
vendor/dk/prebuilt/common/app/WallpaperPickerGooglePrebuilt.apk:system/app/nexus-launcher/WallpaperPickerGooglePrebuilt.apk

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/dk/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/dk/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/dk/prebuilt/bin/50-hosts.sh:system/addon.d/50-hosts.sh \
    vendor/dk/prebuilt/bin/blacklist:system/addon.d/blacklist

# init.d support
#PRODUCT_COPY_FILES += \
#    vendor/dk/prebuilt/bin/sysinit:system/bin/sysinit

# init file
PRODUCT_COPY_FILES += \
    vendor/dk/prebuilt/common/etc/init.bolt.rc:root/init.bolt.rc

# Additional packages
-include vendor/dk/config/packages.mk

# Addons APKs
-include vendor/addons/config.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/dk/overlay

# Inherit common product build prop overrides
-include vendor/dk/config/version.mk
-include vendor/dk/vendor.mk
-include vendor/dk/configs/uber.mk

# DU Utils Library
PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# Squisher Location
SQUISHER_SCRIPT := vendor/dk/tools/squisher
