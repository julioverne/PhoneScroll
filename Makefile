include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PhoneScroll

$(TWEAK_NAME)_FILES = /mnt/d/codes/phonescroll/Tweak.xm
$(TWEAK_NAME)_FRAMEWORKS = CydiaSubstrate UIKit
$(TWEAK_NAME)_LDFLAGS = -Wl,-segalign,4000

export ARCHS = armv6 armv7 armv7s arm64 arm64e
$(TWEAK_NAME)_ARCHS = armv6 armv7 armv7s arm64 arm64e

include $(THEOS_MAKE_PATH)/tweak.mk
	
all::
