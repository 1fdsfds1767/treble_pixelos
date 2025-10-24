TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
$(call inherit-product, device/lineage/sepolicy/common/sepolicy.mk)
$(call inherit-product, vendor/aosp/config/BoardConfigSoong.mk)

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

PRODUCT_DEVICE := tdgsi_arm64_ab
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_MANUFACTURER := google
PRODUCT_SYSTEM_MANUFACTURER := google

TARGET_ENABLE_BLUR := true
AXION_CAMERA_REAR_INFO := 50,2
AXION_CAMERA_FRONT_INFO := 8

AXION_MAINTAINER := 1fdsfds1767

AXION_PROCESSOR := MediaTek_Helio_G85

# CPU governor support
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true

WITH_ADB_INSECURE := true
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_WIDTH := 720
override TARGET_SUPPORTS_64_BIT_APPS := true # To enable Face Unlock. Override seems to be required.
#override SELINUX_IGNORE_NEVERALLOWS := true
override BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

override TARGET_DISABLE_VIBRATOR := true

# OTA
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.system.ota.json_url=https://raw.githubusercontent.com/1fdsfds1767/treble_pixelos/sixteen/ota.json

# SELinux
TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true

# Additional packages
PRODUCT_PACKAGES += \
  OpenEUICC
