include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PhoneScroll

PhoneScroll_FILES = /mnt/d/codes/phonescroll/Tweak.xm
PhoneScroll_FRAMEWORKS = CydiaSubstrate UIKit
PhoneScroll_PRIVATE_FRAMEWORKS = MediaRemote
PhoneScroll_LDFLAGS = -Wl,-segalign,4000

export ARCHS = armv7 arm64
PhoneScroll_ARCHS = armv7 arm64

include $(THEOS_MAKE_PATH)/tweak.mk
	
all::
