#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/xiaomi/ares/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ares
PRODUCT_NAME := twrp_ares
PRODUCT_BRAND := Xiaomi	
PRODUCT_MODEL := M2104K10I
PRODUCT_MANUFACTURER := Xiaomi 
