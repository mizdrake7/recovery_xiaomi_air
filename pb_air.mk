#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common PBRP stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from air device
$(call inherit-product, device/xiaomi/air/device.mk)

PRODUCT_DEVICE := air
PRODUCT_NAME := pb_air
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := air
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="miodm_air_in-user 13 TP1A.220624.014 V816.0.3.0.UGQINXM release-keys"

BUILD_FINGERPRINT := Redmi/air/air:13/TP1A.220624.014/V816.0.3.0.UGQINXM:user/release-keys
