#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SHIPPING_API_LEVEL := 29

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    Tag

PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_nfc/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_nfc/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_nfc/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_nfc/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_nfc/com.nxp.mifare.xml

# Rootdir
PRODUCT_PACKAGES += \
    init.device.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal/thermal-engine-map.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-map.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-map-curtana.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-map-curtana.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-normal-curtana.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-normal-curtana.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-camera-curtana.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-camera-curtana.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-map-excalibur.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-map-excalibur.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-normal-excalibur.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-normal-excalibur.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-camera-excalibur.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-camera-excalibur.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-map-gram.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-map-gram.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-normal-gram.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-normal-gram.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-camera-gram.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-camera-gram.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-map-joyeuse.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-map-joyeuse.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-normal-joyeuse.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-normal-joyeuse.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-camera-joyeuse.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-camera-joyeuse.conf

# Inherit from sm6250-common
$(call inherit-product, device/xiaomi/sm6250-common/atoll.mk)

# Inherit proprietary targets
$(call inherit-product, vendor/xiaomi/miatoll/miatoll-vendor.mk)
