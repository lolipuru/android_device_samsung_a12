#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier
PRODUCT_DEVICE := a12
PRODUCT_NAME := lineage_a12
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-A125F
PRODUCT_MANUFACTURER := Samsung

PRODUCT_SYSTEM_NAME := SM-A125F
PRODUCT_SYSTEM_DEVICE := SM-A125F

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "a12nsxx a12 12 SP1A.210812.016 A125FXXS6CXJ1 user release-key")

BUILD_FINGERPRINT := samsung/a12nsxx/a12:12/SP1A.210812.016/A125FXXS6CXJ1:user/release-key

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-samsung
