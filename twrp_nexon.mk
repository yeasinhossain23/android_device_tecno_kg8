#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from nexon device
$(call inherit-product, device/tecno/nexon/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nexon
PRODUCT_NAME := twrp_nexon
PRODUCT_BRAND := tecno
PRODUCT_MODEL := nexon
PRODUCT_MANUFACTURER := TECNO
PRODUCT_RELEASE_NAME := Tecno Spark 8 Pro (nexon)

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_kg8_h698-user 11 RP1A.200720.011 449400 release-keys"

BUILD_FINGERPRINT := TECNO/KG8-GL/TECNO-KG8:11/RP1A.200720.011/231010V601:user/release-keys

