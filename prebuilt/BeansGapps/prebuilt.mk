# Copyright (C) 2017 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt Packages
PRODUCT_PACKAGES += \
    LatinIMEG

# Include package overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/bootleggers/prebuilt/BeansGapps/overlay/

# build.prop entrys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.theme_id=5

#dialer
PRODUCT_PACKAGES += \
    GoogleDialer \
    com.google.android.dialer.support

#telephony blobs
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/BeansGapps/etc/permissions/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml

# Facelock lib
ifeq ($(TARGET_ARCH),arm)
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/BeansGapps/vendor/lib/libfrsdk.so:system/vendor/lib/libfrsdk.so
endif

# AOSP Keyboard libs
PRODUCT_PACKAGES += \
    libjni_latinime.so \
    libjni_latinimegoogle.so

ifeq ($(TARGET_ARCH),arm)
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/BeansGapps/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/bootleggers/prebuilt/BeansGapps/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so
endif

