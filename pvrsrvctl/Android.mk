LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := libsrv_init
LOCAL_SRC_FILES := libsrv_init.so # <== Moved the prebuilt lib to root / -- oddly enough, when it was in a subfolder, make would not find it.
LOCAL_MODULE_TAGS := debug
LOCAL_EXPORT_C_INCLUDES := vendor/samsung/santos10-common/proprietary/vendor/lib

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := libsrv_um
LOCAL_SRC_FILES := libsrv_um.so # <== Moved the prebuilt lib to root / -- oddly enough, when it was in a subfolder, make would not find it.
LOCAL_MODULE_TAGS := debug
LOCAL_EXPORT_C_INCLUDES := vendor/samsung/santos10-common/proprietary/vendor/lib

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := pvrsrvctl.c
LOCAL_LDFLAGS := -L vendor/samsung/santos10-common/proprietary/vendor/lib
LOCAL_LDLIBS := -lsrv_init -lsrv_um
LOCAL_MODULE_PATH := $(TARGET_OUT)/bin/
LOCAL_MODULE := pvrsrvctl
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
