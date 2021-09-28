#
# Copyright (C) 2021 The PixelExperienceOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common AOSP Extended stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit GoogleCamera
$(call inherit-product, vendor/GoogleCamera/config.mk)

# Inherit some common AOSP Extended stuff
TARGET_USES_AOSP_RECOVERY := true
TARGET_BOOT_ANIMATION_RES := 1080
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true


PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_NAME := aosp_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T 5G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
