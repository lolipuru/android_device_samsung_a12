#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the proprietary version
#$(call inherit-product, vendor/samsung/a12/a12-vendor.mk)

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)