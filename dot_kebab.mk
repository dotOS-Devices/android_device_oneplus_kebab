#
# Copyright (C) 2018 The LineageOS Project
#               2022 Project dotOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kebab device
$(call inherit-product, device/oneplus/kebab/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# dotOS stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Device stuff.
PRODUCT_NAME := dot_kebab
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2005

PRODUCT_SYSTEM_NAME := OnePlus8T
PRODUCT_SYSTEM_DEVICE := OnePlus8T

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus8T-user 12 RKQ1.211119.001 R.20220730031 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus8T/OnePlus8T:12/RKQ1.211119.001/R.20220730031:user/release-keys
