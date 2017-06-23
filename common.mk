
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
SHISHUSTUFF_PATH := vendor/bootleggers/prebuilt


# HTC Camera (hope this works)
ifeq ($(WITH_SHISHU_HTC),true)
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/HTCStuff/htccamera.apk:system/priv-app/HTCCamera/HTCCamera.apk\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libalign_exiv2.so:system/priv-app/HTCCamera/lib/arm/libalign_exiv2.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libalign_image_stack.so:system/priv-app/HTCCamera/lib/arm/libalign_image_stack.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libalign_jpeg.so:system/priv-app/HTCCamera/lib/arm/libalign_jpeg.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libalign_tiff.so:system/priv-app/HTCCamera/lib/arm/libalign_tiff.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libalign_vigraimpex.so:system/priv-app/HTCCamera/lib/arm/libalign_vigraimpex.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libbv_panodata_hdk_v6.so:system/priv-app/HTCCamera/lib/arm/libbv_panodata_hdk_v6.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libcam_exif2.so:system/priv-app/HTCCamera/lib/arm/libcam_exif2.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libcam_imagelib.so:system/priv-app/HTCCamera/lib/arm/libcam_imagelib.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libcimagegif-jni.so:system/priv-app/HTCCamera/lib/arm/libcimagegif-jni.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libexif_lib1_jni_v09.so:system/priv-app/HTCCamera/lib/arm/libexif_lib1_jni_v09.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libexif_lib1_v09.so:system/priv-app/HTCCamera/lib/arm/libexif_lib1_v09.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libgifdecoder.so:system/priv-app/HTCCamera/lib/arm/libgifdecoder.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libgifdecoder2.so:system/priv-app/HTCCamera/lib/arm/libgifdecoder2.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libhtc_humanprocess.so:system/priv-app/HTCCamera/lib/arm/libhtc_humanprocess.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libhtc_humanprocess_mtk.so:system/priv-app/HTCCamera/lib/arm/libhtc_humanprocess_mtk.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libhtc_humanprocess_snapshot.so:system/priv-app/HTCCamera/lib/arm/libhtc_humanprocess_snapshot.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libhtc_ufocusprocess.so:system/priv-app/HTCCamera/lib/arm/libhtc_ufocusprocess.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libhtccamera.so:system/priv-app/HTCCamera/lib/arm/libhtccamera.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libjpeg_turbo.so:system/priv-app/HTCCamera/lib/arm/libjpeg_turbo.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libmorpho_image_stitcher3.so:system/priv-app/HTCCamera/lib/arm/libmorpho_image_stitcher3.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libopencv_core.so:system/priv-app/HTCCamera/lib/arm/libopencv_core.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libopencv_highgui.so:system/priv-app/HTCCamera/lib/arm/libopencv_highgui.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libopencv_imgproc.so:system/priv-app/HTCCamera/lib/arm/libopencv_imgproc.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libopencv_objdetect.so:system/priv-app/HTCCamera/lib/arm/libopencv_objdetect.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libopencv_photo.so:system/priv-app/HTCCamera/lib/arm/libopencv_photo.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libpanoglviewer_hdk_v14.so:system/priv-app/HTCCamera/lib/arm/libpanoglviewer_hdk_v14.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libpanoramaplus.so:system/priv-app/HTCCamera/lib/arm/libpanoramaplus.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libpanostitcher.so:system/priv-app/HTCCamera/lib/arm/libpanostitcher.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libsecuritysdk-1.0.13.so:system/priv-app/HTCCamera/lib/arm/libsecuritysdk-1.0.13.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libtbb.so:system/priv-app/HTCCamera/lib/arm/libtbb.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/camlibs/libtbdecode.so:system/priv-app/HTCCamera/lib/arm/libtbdecode.so
endif

# HTC Editor
ifeq ($(WITH_SHISHU_HTC),true)
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/HTCStuff/htceditor.apk:system/priv-app/HTCEditor/HTCEditor.apk\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libalDE_SDE_TWO.so:system/priv-app/HTCEditor/lib/arm/libalDE_SDE_TWO.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libalDynamicWarping_SDW_TWO.so:system/priv-app/HTCEditor/lib/arm/libalDynamicWarping_SDW_TWO.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libdepthengine_mtkwrapper.so:system/priv-app/HTCEditor/lib/arm/libdepthengine_mtkwrapper.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libdepthengine_qcomwrapper.so:system/priv-app/HTCEditor/lib/arm/libdepthengine_qcomwrapper.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libdepthgen.so:system/priv-app/HTCEditor/lib/arm/libdepthgen.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libdepth_map.so:system/priv-app/HTCEditor/lib/arm/libdepth_map.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libexif2.so:system/priv-app/HTCEditor/lib/arm/libexif2.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libgluegen-rt.so:system/priv-app/HTCEditor/lib/arm/libgluegen-rt.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libgnustl_shared.so:system/priv-app/HTCEditor/lib/arm/libgnustl_shared.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_enhancer_vheffects.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_enhancer_vheffects.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_imagelib.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_imagelib.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_libBokehLibEngine.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libBokehLibEngine.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_libBokehUFocusWrapperEngine.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libBokehUFocusWrapperEngine.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_libCutAndPaste.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libCutAndPaste.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_libDepthmapJni.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libDepthmapJni.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_libDualLensEngine.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libDualLensEngine.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_libDuoShare.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libDuoShare.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_libFaceDetection.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libFaceDetection.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_libFaceFusion.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libFaceFusion.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_libFractal.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libFractal.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_libJointEngine.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libJointEngine.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_libMatrix.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libMatrix.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libHMSGallery_libPhotoLabEngine.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libPhotoLabEngine.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libhtc_ufocusprocess.so:system/priv-app/HTCEditor/lib/arm/libhtc_ufocusprocess.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libimage_codec_engine.so:system/priv-app/HTCEditor/lib/arm/libimage_codec_engine.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libiq_wrapper.so:system/priv-app/HTCEditor/lib/arm/libiq_wrapper.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libjni_fe.so:system/priv-app/HTCEditor/lib/arm/libjni_fe.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libjni_gifCreator.so:system/priv-app/HTCEditor/lib/arm/libjni_gifCreator.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libjocl.so:system/priv-app/HTCEditor/lib/arm/libjocl.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libjpeg_turbo.so:system/priv-app/HTCEditor/lib/arm/libjpeg_turbo.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libmorpho_edit_engine.so:system/priv-app/HTCEditor/lib/arm/libmorpho_edit_engine.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libmorpho_frame_overlay.so:system/priv-app/HTCEditor/lib/arm/libmorpho_frame_overlay.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libmorpho_image_converter.so:system/priv-app/HTCEditor/lib/arm/libmorpho_image_converter.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libmorpho_image_transform.so:system/priv-app/HTCEditor/lib/arm/libmorpho_image_transform.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libmorpho_jpeg_io.so:system/priv-app/HTCEditor/lib/arm/libmorpho_jpeg_io.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libmorpho_memory_allocator.so:system/priv-app/HTCEditor/lib/arm/libmorpho_memory_allocator.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/editlibs/libopencv_porting.so:system/priv-app/HTCEditor/lib/arm/libopencv_porting.so
endif

# HTC Gallery
ifeq ($(WITH_SHISHU_HTC),true)
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/HTCStuff/htcgallery.apk:system/priv-app/HTCGallery/HTCGallery.apk\
    $(SHISHUSTUFF_PATH)/HTCStuff/gallibs/libexif2.so:system/priv-app/HTCGallery/lib/arm/libexif2.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/gallibs/libfeatures_android.so:system/priv-app/HTCGallery/lib/arm/libfeatures_android.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/gallibs/libHMSGallery_imagelib.so:system/priv-app/HTCGallery/lib/arm/libHMSGallery_imagelib.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/gallibs/libHMSGallery_libMatrix.so:system/priv-app/HTCGallery/lib/arm/libHMSGallery_libMatrix.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/gallibs/libHMSGallery_sunny.so:system/priv-app/HTCGallery/lib/arm/libHMSGallery_sunny.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/gallibs/libimage_codec_engine.so:system/priv-app/HTCGallery/lib/arm/libimage_codec_engine.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/gallibs/libimage_feature.so:system/priv-app/HTCGallery/lib/arm/libimage_feature.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/gallibs/libomron_common.so:system/priv-app/HTCGallery/lib/arm/libomron_common.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/gallibs/libvima.so:system/priv-app/HTCGallery/lib/arm/libvima.so
endif

# HTC Video
ifeq ($(WITH_SHISHU_HTC),true)
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/HTCStuff/htcvideo.apk:system/priv-app/HTCVideoPlayer/HTCVideoPlayer.apk
endif


# HTC Libs
ifeq ($(WITH_SHISHU_HTC),true)
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/HTCStuff/libbv_panodata_hdk_v6.so:system/lib/libbv_panodata_hdk_v6.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/libgifdecoder.so:system/lib/libgifdecoder.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/libgifdecoder2.so:system/lib/libgifdecoder2.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/libexif_lib1_v09.so:system/lib/libexif_lib1_v09.so\
    $(SHISHUSTUFF_PATH)/HTCStuff/libexif_lib1_jni_v09.so:system/lib/libexif_lib1_jni_v09.so
endif

# Music App
ifeq ($(WITH_SHISHU_MUSIC),true)
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/Music/RetroMusic.apk:system/app/RetroMusic/RetroMusic.apk
endif

# File Manager
ifeq ($(WITH_SHISHU_FM),true)
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/FileBrowser/MKExplorer.apk:system/app/MKExplorer/MKExplorer.apk
endif

#Browser
ifeq ($(WITH_SHISHU_BROWSER),true)
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/Browser/RocketBrowser.apk:system/app/RocketBrowser/RocketBrowser.apk
endif

# OmniClock
ifeq ($(WITH_SHISHU_CLOCK),true)
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/Clock/OmniClock.apk:system/app/OmniClock/OmniClock.apk
endif

# Launcher
ifeq ($(WITH_SHISHU_LAUNCHER),true)
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/Launcher/MotoLauncher.apk:system/app/MotoLauncher/MotoLauncher.apk
endif

# Permissions MOD, etc part.
ifeq ($(BUILD_TRUSHISHU),true)
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
    $(SHISHUSTUFF_PATH)/Permissions/com.sonymobile.softreset.xml:system/etc/permissions/com.sonymobile.softreset.xml
endif

# Permissions MOD, framework part.
ifeq ($(BUILD_TRUSHISHU),true)
PRODUCT_COPY_FILES += \
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
endif

#Check conditions to add shishu apps
#Remember: The dash one is the public one, the other is the good one
ifeq ($(BUILD_TRUSHISHU),true)
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/Shishu/ShishuWalls.apk:system/app/ShishuWalls/ShishuWalls.apk\
    $(SHISHUSTUFF_PATH)/Shishu/Aidonnou-Headers.apk:system/app/Aidonnou-Headers/Aidonnou-Headers.apk\
    $(SHISHUSTUFF_PATH)/Shishu/Aidonnou-Extras.apk:system/app/Aidonnou-Extras/Aidonnou-Extras.apk\
    $(SHISHUSTUFF_PATH)/Shishu/AboutShishu.apk:system/app/AboutShishu/AboutShishu.apk
else
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/Shishu/About-Shishu.apk:system/app/AboutShishu/AboutShishu.apk\
    $(SHISHUSTUFF_PATH)/Shishu/Aidonnou-Headers.apk:system/app/Aidonnou-Headers/Aidonnou-Headers.apk
endif

# Ringtone files
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/Sounds/Frost.ogg:system/media/audio/ringtones/Frost.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Beauty_pub.ogg:system/media/audio/ringtones/Beauty_pub.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/OutOfMind.ogg:system/media/audio/ringtones/OutOfMind.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Resurrection_Ringtone2.mp3:system/media/audio/ringtones/Resurrection_Ringtone2.mp3 \
    $(SHISHUSTUFF_PATH)/Sounds/Myst.ogg:system/media/audio/ringtones/Myst.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/DuZirconium.ogg:system/media/audio/ringtones/DuZirconium.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/AlfaBeach.ogg:system/media/audio/ringtones/AlfaBeach.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Dreambender.ogg:system/media/audio/ringtones/Dreambender.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/DreambenderAlt.ogg:system/media/audio/ringtones/DreambenderAlt.ogg

# Notifications files
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/Sounds/Nights.ogg:system/media/audio/notifications/Nights.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Button.ogg:system/media/audio/notifications/Button.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Chimes.wav:system/media/audio/notifications/Chimes.wav \
    $(SHISHUSTUFF_PATH)/Sounds/CyanMail.ogg:system/media/audio/notifications/CyanMail.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/CyanMessage.ogg:system/media/audio/notifications/CyanMessage.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/omni_notification1.ogg:system/media/audio/notifications/omni_notification1.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Redmond.wav:system/media/audio/notifications/Redmond.wav \
    $(SHISHUSTUFF_PATH)/Sounds/Talitha.ogg:system/media/audio/notifications/Talitha.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Auroran.ogg:system/media/audio/notifications/Auroran.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Faridium.ogg:system/media/audio/notifications/Faridium.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Phloreau.ogg:system/media/audio/notifications/Phloreau.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Questions.ogg:system/media/audio/notifications/Questions.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Radar.ogg:system/media/audio/notifications/Radar.ogg


# Alarms files
PRODUCT_COPY_FILES += \
    $(SHISHUSTUFF_PATH)/Sounds/LikeWhat.ogg:system/media/audio/alarms/LikeWhat.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Shadow.ogg:system/media/audio/alarms/Shadow.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Doxelis.ogg:system/media/audio/alarms/Doxelis.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/DreambenderAlarm.ogg:system/media/audio/alarms/DreambenderAlarm.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/Isostasy.ogg:system/media/audio/alarms/Isostasy.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/OutOfMindSaxSolo.ogg:system/media/audio/ringtones/OutOfMindSaxSolo.ogg \
    $(SHISHUSTUFF_PATH)/Sounds/SlowPeels.ogg:system/media/audio/alarms/SlowPeels.ogg

#Set the new custom sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Frost.ogg \
    ro.config.notification_sound=Nights.ogg \
    ro.config.alarm_alert=LikeWhat.ogg

#Adding the prebuilt gapps stuff if it's a LT build so it's more fun
ifeq ($(BUILD_TRUSHISHU),true)
include vendor/bootleggers/prebuilt/BeansGapps/prebuilt.mk
endif
