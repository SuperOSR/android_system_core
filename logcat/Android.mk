# Copyright 2006 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= logcat.cpp event.logtags

ifeq ($(TARGET_BOARD_PLATFORM), fiber)
	LOCAL_CFLAGS += -DTARGET_BOARD_FIBER
endif

LOCAL_SHARED_LIBRARIES := liblog

LOCAL_MODULE:= logcat

include $(BUILD_EXECUTABLE)
