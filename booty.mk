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

# This is where all the sounds belong
SHISHUSOUNDS_PATH := vendor/bootleggers/prebuilt/Sounds

# This is where all the apps files belong
SHISHUSTUFF_PATH := vendor/bootleggers/prebuilt


ifeq ($(WITH_BOOT_HTC_STUFF),true)
    PRODUCT_PACKAGES += \
        HTCCamera \
        HTCEditor \
        HTCGallery \
        HTCVideoPlayer
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
    $(SHISHUSOUNDS_PATH)/Frost.ogg:system/media/audio/ringtones/Frost.ogg \
    $(SHISHUSOUNDS_PATH)/Beauty_pub.ogg:system/media/audio/ringtones/Beauty_pub.ogg \
    $(SHISHUSOUNDS_PATH)/Myst.ogg:system/media/audio/ringtones/Myst.ogg
    
# Notifications files
PRODUCT_COPY_FILES += \
    $(SHISHUSOUNDS_PATH)/Nights.ogg:system/media/audio/notifications/Nights.ogg \
    $(SHISHUSOUNDS_PATH)/Button.ogg:system/media/audio/notifications/Button.ogg \
    $(SHISHUSOUNDS_PATH)/Chimes.wav:system/media/audio/notifications/Chimes.wav \
    $(SHISHUSOUNDS_PATH)/CyanMail.ogg:system/media/audio/notifications/CyanMail.ogg \
    $(SHISHUSOUNDS_PATH)/CyanMessage.ogg:system/media/audio/notifications/CyanMessage.ogg \
    $(SHISHUSOUNDS_PATH)/Redmond.wav:system/media/audio/notifications/Redmond.wav \
    $(SHISHUSOUNDS_PATH)/Talitha.ogg:system/media/audio/notifications/Talitha.ogg
    
    
# Alarms files
PRODUCT_COPY_FILES += \
    $(SHISHUSOUNDS_PATH)/LikeWhat.ogg:system/media/audio/alarms/LikeWhat.ogg \
    $(SHISHUSOUNDS_PATH)/Shadow.ogg:system/media/audio/alarms/Shadow.ogg
    
#Set the new custom sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Frost.ogg \
    ro.config.notification_sound=Nights.ogg \
    ro.config.alarm_alert=LikeWhat.ogg



## Permissions: The big piece of copying
$(call inherit-product, vendor/bootleggers/prebuilt/Permissions/PermCopy.mk)
    
