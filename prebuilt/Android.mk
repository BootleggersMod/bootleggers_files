# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH:=$(call my-dir)

#HTC Camera

include $(CLEAR_VARS)
LOCAL_MODULE := HTCamera
LOCAL_SRC_FILES := HTCStuff/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

#HTC Gallery

include $(CLEAR_VARS)
LOCAL_MODULE := HTCGallery
LOCAL_SRC_FILES := HTCStuff/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

#HTC Editor

include $(CLEAR_VARS)
LOCAL_MODULE := HTCEditor
LOCAL_SRC_FILES := HTCStuff/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

#HTC Video

include $(CLEAR_VARS)
LOCAL_MODULE := HTCVideo
LOCAL_SRC_FILES := HTCStuff/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)



#Music App

include $(CLEAR_VARS)
LOCAL_MODULE := RetroMusic
LOCAL_SRC_FILES := Music/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

#FileManager App

include $(CLEAR_VARS)
LOCAL_MODULE := MKExplorer
LOCAL_SRC_FILES := FileManager/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

#Browser App

include $(CLEAR_VARS)
LOCAL_MODULE := RetroBrowser
LOCAL_SRC_FILES := Browser/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

#Clock App

include $(CLEAR_VARS)
LOCAL_MODULE := OmniClockPS
LOCAL_SRC_FILES := Clock/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

#Launcher App

include $(CLEAR_VARS)
LOCAL_MODULE := MotoLauncher
LOCAL_SRC_FILES := Launcher/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)