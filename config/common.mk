# Sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Playa.ogg \
    ro.config.notification_sound=regulus.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg

# Selinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1
 
# Density Backup
PRODUCT_COPY_FILES += \
    vendor/dk/prebuilt/common/addon.d/95-backup.sh:system/addon.d/95-backup.sh \
    vendor/dk/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Viper4Android
PRODUCT_COPY_FILES += \
    vendor/dk/prebuilt/common/addon.d/91-v4a.sh:system/addon.d/91-v4a.sh \
    vendor/dk/prebuilt/common/etc/v4a.zip:system/addon.d/v4a.zip

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

# Versionning
-include vendor/dk/config/version.mk
