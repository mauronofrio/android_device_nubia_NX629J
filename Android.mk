LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),NX629J)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
