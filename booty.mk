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
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/Permissions/com.cyngn.audiofx.xml:system/etc/permissions/com.cyngn.audiofx.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.google.android.camera.experimental2015.xml:system/etc/permissions/com.google.android.camera.experimental2015.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.google.android.camera2.xml:system/etc/permissions/com.google.android.camera2.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.htc.software.market.xml:system/etc/permissions/com.htc.software.market.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.htc.vte.xml:system/etc/permissions/com.htc.vte.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.microsoft.cortana.xml:system/etc/permissions/com.microsoft.cortana.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.motorola.camera.xml:system/etc/permissions/com.motorola.camera.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.motorola.cameraone.xml:system/etc/permissions/com.motorola.cameraone.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.motorola.motosignature.xml:system/etc/permissions/com.motorola.motosignature.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sony.device.xml:system/etc/permissions/com.sony.device.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.appextensions.xml:system/etc/permissions/com.sonyericsson.appextensions.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.audioeffectif.xml:system/etc/permissions/com.sonyericsson.audioeffectif.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.colorextraction.xml:system/etc/permissions/com.sonyericsson.colorextraction.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.dlna.dtcpplayer.xml:system/etc/permissions/com.sonyericsson.dlna.dtcpplayer.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.dlna.playanywhere.xml:system/etc/permissions/com.sonyericsson.dlna.playanywhere.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.dlna.xml:system/etc/permissions/com.sonyericsson.dlna.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.dtcpctrl_private.xml:system/etc/permissions/com.sonyericsson.dtcpctrl_private.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.dtcpctrl_protected.xml:system/etc/permissions/com.sonyericsson.dtcpctrl_protected.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.illumination.xml:system/etc/permissions/com.sonyericsson.illumination.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.media.infinite.extension_1.xml:system/etc/permissions/com.sonyericsson.media.infinite.extension_1.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.metadatacleanup.xml:system/etc/permissions/com.sonyericsson.metadatacleanup.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.musicvisualizer.xml:system/etc/permissions/com.sonyericsson.musicvisualizer.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.privateapis.xml:system/etc/permissions/com.sonyericsson.privateapis.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.system.xml:system/etc/permissions/com.sonyericsson.system.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.updatecenter.xml:system/etc/permissions/com.sonyericsson.updatecenter.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonyericsson.uxpres.xml:system/etc/permissions/com.sonyericsson.uxpres.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonymobile.camera.addon.xml:system/etc/permissions/com.sonymobile.camera.addon.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonymobile.media.dashboard.extension.xml:system/etc/permissions/com.sonymobile.media.dashboard.extension.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonymobile.mediacontent.xml:system/etc/permissions/com.sonymobile.mediacontent.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonymobile.playanywhere.xml:system/etc/permissions/com.sonymobile.playanywhere.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonymobile.provider.tasks.xml:system/etc/permissions/com.sonymobile.provider.tasks.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonymobile.settings.illumination.xml:system/etc/permissions/com.sonymobile.settings.illumination.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonymobile.settings.shakecontrol.xml:system/etc/permissions/com.sonymobile.settings.shakecontrol.xml\
    $(SHISHUSTUFF_PATH)/Permissions/com.sonymobile.softreset.xml:system/etc/permissions/com.sonymobile.softreset.xml\
    
    #Adding framework part
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.google.android.camera.experimental2015.jar:system/framework/com.google.android.camera.experimental2015.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.google.android.camera2.jar:system/framework/com.google.android.camera2.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.google.android.dialer.support.jar:system/framework/com.google.android.dialer.support.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sony.device.jar:system/framework/com.sony.device.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.appextensions.jar:system/framework/com.sonyericsson.appextensions.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.colorextraction_impl.jar:system/framework/com.sonyericsson.colorextraction_impl.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.dlna.dtcpplayer.jar:system/framework/com.sonyericsson.dlna.dtcpplayer.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.dlna.playanywhere.jar:system/framework/com.sonyericsson.dlna.playanywhere.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.dlna_impl.jar:system/framework/com.sonyericsson.dlna_impl.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.dtcpctrl_private_impl.jar:system/framework/com.sonyericsson.dtcpctrl_private_impl.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.dtcpctrl_protected_impl.jar:system/framework/com.sonyericsson.dtcpctrl_protected_impl.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.illumination.jar:system/framework/com.sonyericsson.illumination.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.media.infinite.extension_1.jar:system/framework/com.sonyericsson.media.infinite.extension_1.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.metadatacleanup.jar:system/framework/com.sonyericsson.metadatacleanup.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.music.jar:system/framework/com.sonyericsson.music.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.musicvisualizer.jar:system/framework/com.sonyericsson.musicvisualizer.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.privateapis_impl.jar:system/framework/com.sonyericsson.privateapis_impl.jar.apk\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.system.jar:system/framework/com.sonyericsson.system.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.updatecenter.jar:system/framework/com.sonyericsson.updatecenter.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.uxp.jar:system/framework/com.sonyericsson.uxp.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonyericsson.uxpres.jar:system/framework/com.sonyericsson.uxpres.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonymobile.media.dashboard.extension.jar:system/framework/com.sonymobile.media.dashboard.extension.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonymobile.mediacontent.jar:system/framework/com.sonymobile.mediacontent.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonymobile.playanywhere.jar:system/framework/com.sonymobile.playanywhere.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonymobile.provider.tasks.jar:system/framework/com.sonymobile.provider.tasks.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonymobile.settings.illumination.jar:system/framework/com.sonymobile.settings.illumination.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonymobile.settings.shakecontrol.jar:system/framework/com.sonymobile.settings.shakecontrol.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/com.sonymobile.softreset.jar:system/framework/com.sonymobile.softreset.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/semc_audioeffectif.jar:system/framework/semc_audioeffectif.jar\
    $(SHISHUSTUFF_PATH)/Permissions/Framework/SemcGenericUxpRes/SemcGenericUxpRes.apk:system/framework/SemcGenericUxpRes/SemcGenericUxpRes.apk
    
