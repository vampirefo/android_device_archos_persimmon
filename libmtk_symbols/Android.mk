LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    mtk_gui.cpp \
    mtk_ui.cpp \
    mtk_omx.cpp \
    icu55.c \
    icu53.c \
    ssl.c

# only for 32bit libraries
LOCAL_SRC_FILES_32 := mtk_string.cpp
# only for 64bit libraries
LOCAL_SRC_FILES_64 := mtk_parcel.cpp

LOCAL_SHARED_LIBRARIES := libbinder libutils liblog libgui libui \
                          libicuuc libicui18n libcrypto
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
