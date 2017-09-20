# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

# Inherit some common GZOSP stuff.
$(call inherit-product, vendor/gzosp/config/common_full_phone.mk)

-include device/google/marlin/marlin/device-gzosp.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := gzosp_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT=google/marlin/marlin:8.0.0/OPR6.170623.012/4283428:user/release-keys \
    PRIVATE_BUILD_DESC="marlin-user 8.0.0 OPR6.170623.012 4283428 release-keys"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
