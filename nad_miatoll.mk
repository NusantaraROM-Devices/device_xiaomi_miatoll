#
# Copyright (C) 2020-2021 The ArrowOS
# Copyright (C) 2021 NusantaraProject
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from miatoll  device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

# Inherit from common Nusantara configuration
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
NAD_BUILD_TYPE := OFFICIAL

# Device identifier
PRODUCT_NAME := nad_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Miatoll
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

