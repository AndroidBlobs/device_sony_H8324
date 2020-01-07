# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from H8324 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := sony
PRODUCT_DEVICE := H8324
PRODUCT_MANUFACTURER := sony
PRODUCT_NAME := lineage_H8324
PRODUCT_MODEL := Xperia XZ2 Compact

PRODUCT_GMS_CLIENTID_BASE := android-sony
TARGET_VENDOR := sony
TARGET_VENDOR_PRODUCT_NAME := H8324
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="apollo_dsds-user 10 52.1.A.0.532 052001A000053202006556692 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Sony/H8324/H8324:10/52.1.A.0.532/052001A000053202006556692:user/release-keys
