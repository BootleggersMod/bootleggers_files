## Shishu Makefile. Done without Knowledge. 2017.

## Define automatically all the shishu stuff.

ifndef WITH_BOOT_HTC_STUFF
    WITH_BOOT_HTC_STUFF := true
endif

ifndef WITH_BOOT_MUSIC
    WITH_BOOT_MUSIC := true
endif

ifndef WITH_BOOT_FM
    WITH_BOOT_FM := true
endif

ifndef WITH_BOOT_BROWSER
    WITH_BOOT_BROWSER := true
endif

ifndef WITH_BOOT_CLOCK
    WITH_BOOT_CLOCK := true
endif

## Set variables of folder, because it's less cluttered.

# This is where all the apps files belong
SHISHUSTUFF_PATH := vendor/bootleggers/prebuilt


ifeq ($(WITH_BOOT_HTC_STUFF),true)
    PRODUCT_PACKAGES += \
        HTCCamera \
        HTCEditor \
        HTCGallery \
        HTCVideo
else
    #Call all the replaced packages just in case.
    PRODUCT_PACKAGES += \
        Snap \
        SnapdragonCamera \
        MotCamera \
        Gallery2 \
        SnapdragonGallery
endif

ifeq ($(WITH_BOOT_HTC_STUFF),true)
$(call inherit-product, vendor/bootleggers/prebuilt/HTCStuff/HTCLibs.mk)
endif

## Check the music part.
ifeq ($(WITH_BOOT_MUSIC),true)
    PRODUCT_PACKAGES += \
        Timber
else
    PRODUCT_PACKAGES += \
        SnapdragonMusic \
        Eleven \
        crDroidMusic \
        Phonograph
endif

## Check the file manager part.
ifeq ($(WITH_BOOT_FM),true)
    PRODUCT_PACKAGES += \
        AmazeFM
else
    PRODUCT_PACKAGES += \
        CMFileManager \
        crDroidFileManager \
        Amaze
endif

## Check the Clock part.
ifeq ($(WITH_BOOT_CLOCK),true)
    PRODUCT_PACKAGES += \
        OmniClockPS
else
    PRODUCT_PACKAGES += \
        DeskClock \
        OmniClock
endif
        

## Set the Ringtone part of the mod
# Ringtone files
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/Sounds/Frost.ogg:system/media/audio/ringtones/Frost.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Beauty_pub.ogg:system/media/audio/ringtones/Beauty_pub.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Myst.ogg:system/media/audio/ringtones/Myst.ogg
    
# Notifications files
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/Sounds/Nights.ogg:system/media/audio/notifications/Nights.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Button.ogg:system/media/audio/notifications/Button.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Chimes.wav:system/media/audio/notifications/Chimes.wav \
    $(SHISHUSTUFF_PATH)/Sounds/CyanMail.ogg:system/media/audio/notifications/CyanMail.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/CyanMessage.ogg:system/media/audio/notifications/CyanMessage.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Redmond.wav:system/media/audio/notifications/Redmond.wav \
    $(SHISHUSTUFF_PATH)/Sounds/Talitha.ogg:system/media/audio/notifications/Talitha.ogg
    
    
# Alarms files
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/Sounds/LikeWhat.ogg:system/media/audio/alarms/LikeWhat.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Shadow.ogg:system/media/audio/alarms/Shadow.ogg
    
#Set the new custom sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Frost.ogg \
    ro.config.notification_sound=Nights.ogg \
    ro.config.alarm_alert=LikeWhat.ogg



## Permissions: The big piece of copying
$(call inherit-product, vendor/bootleggers/prebuilt/Permissions/PermCopy.mk)
    
