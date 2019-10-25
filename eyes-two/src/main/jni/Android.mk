ifeq ($(NDK_DEBUG),1)
  $(warning "build debug ...")
  TESSERACT_TOOLS_PATH := $(TESSERACT_BUILD_PATH)/intermediates/ndkBuild/debug/obj/local
else
  $(warning "build release ...")
  TESSERACT_TOOLS_PATH := $(TESSERACT_BUILD_PATH)/intermediates/ndkBuild/release/obj/local
endif

PREBUILT_PATH := $(TESSERACT_TOOLS_PATH)/$(TARGET_ARCH_ABI)
ROOT_PATH := $(TESSERACT_BUILD_PATH)/../..


include $(call all-subdir-makefiles)
