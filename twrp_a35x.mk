#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a35x device
$(call inherit-product, device/samsung/a35x/device.mk)

PRODUCT_DEVICE := a35x
PRODUCT_NAME := twrp_a35x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A356B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a35xxx-user 13 TP1A.220624.014 A356BXXU1AXD3 release-keys"

BUILD_FINGERPRINT := samsung/a35xxx/a35x:13/TP1A.220624.014/A356BXXU1AXD3:user/release-keys
