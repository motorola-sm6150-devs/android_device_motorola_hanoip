#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_SHIPPING_API_LEVEL := 30
PRODUCT_USE_DYNAMIC_PARTITIONS := true
TARGET_IS_VAB := true

# Inherit from sm6150-common
$(call inherit-product, device/motorola/sm6150-common/common.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_ext_spkr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_ext_spkr.conf \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2460
TARGET_SCREEN_WIDTH := 1080

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/uinput-fpc.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-fpc.idc \
    $(LOCAL_PATH)/configs/idc/uinput-fpsensor.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-fpsensor.idc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/configs/keylayout/uinput-fpsensor.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpsensor.kl

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    com.android.nfc_extras \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml

# Perf
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/perf/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

# Rootdir
PRODUCT_PACKAGES += \
    init.mmi.overlay.rc \
    init.oem.fingerprint.sh \
    init.oem.fingerprint2.sh

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.0-service.multihal \
    android.hardware.sensors@2.0-ScopedWakelock

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# vndservicemanager
PRODUCT_PACKAGES += \
    vndservicemanager

# Inherit the proprietary files
$(call inherit-product, vendor/motorola/hanoip/hanoip-vendor.mk)
