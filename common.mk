## Shishu Makefile. Done without Knowledge. 2017.
## Define automatically all the shishu stuff.

ifndef WITH_SHISHU_HTC 
    WITH_SHISHU_HTC := true
endif

ifndef WITH_SHISHU_MUSIC
    WITH_SHISHU_MUSIC := true
endif

ifndef WITH_SHISHU_FM
    WITH_SHISHU_FM := true
endif

ifndef WITH_SHISHU_BROWSER
    WITH_SHISHU_BROWSER := true
endif

ifndef WITH_SHISHU_CLOCK
    WITH_SHISHU_CLOCK := true
endif

ifndef WITH_SHISHU_LAUNCHER 
    WITH_SHISHU_LAUNCHER := true
endif

ifndef BUILD_TRUSHISHU
    BUILD_TRUSHISHU := false
endif

# Shishu Stuff directory
SHISHUSTUFF_PATH := vendor/shishu/prebuilt

ifeq ($(WITH_SHISHU_HTC),true)
  PRODUCT_PACKAGES +=  \
     HTCamera \
     HTCGallery \
     HTCVideo
   
else
  PRODUCT_PACKAGES +=  \
     Camera2 \
     Gallery2
endif

ifeq ($(WITH_SHISHU_MUSIC),true)
  PRODUCT_PACKAGES +=  \
     RetroMusic
   
else
  PRODUCT_PACKAGES +=  \
     Music
endif

ifeq ($(WITH_SHISHU_FM),true)
  PRODUCT_PACKAGES +=  \
     MKExplorer
else
  PRODUCT_PACKAGES +=  \
     CMFileManager
endif

ifeq ($(WITH_SHISHU_BROWSER),true)
  PRODUCT_PACKAGES +=  \
     RocketBrowser
else
  PRODUCT_PACKAGES +=  \
     Browser2
endif

ifeq ($(WITH_SHISHU_CLOCK),true)
  PRODUCT_PACKAGES +=  \
     OmniClockPS
else
  PRODUCT_PACKAGES +=  \
     DeskClock
endif

ifeq ($(WITH_SHISHU_LAUNCHER),true)
  PRODUCT_PACKAGES +=  \
     MotoLauncher
else
  PRODUCT_PACKAGES +=  \
     Launcher2
endif

ifeq ($(BUILD_TRUSHISHU),true)
  PRODUCT_PACKAGES +=  \
     ShishuWalls \
     Aidonnou-Extras \
     Aidonnou-Headers \
     AboutShishu
else
  PRODUCT_PACKAGES +=  \
     About-Shishu \
     AidonnouHeaders
endif

#Add a extra overlay folder just for the wallpaper
PRODUCT_PACKAGE_OVERLAYS += vendor/shishu/overlay/common

#Include extras makefile to copy more stuff
include vendor/shishu/extra.mk
