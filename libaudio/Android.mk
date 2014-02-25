LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_PRODUCT),duovero) 

include $(CLEAR_VARS)

LOCAL_MODULE := audio.primary.duovero
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SRC_FILES := audio_hw.c
LOCAL_C_INCLUDES += \
        external/tinyalsa/include \
        $(call include-path-for, audio-route) \
        $(call include-path-for, audio-utils)
LOCAL_SHARED_LIBRARIES := liblog libcutils libtinyalsa libaudioutils libdl libaudioroute
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
endif
