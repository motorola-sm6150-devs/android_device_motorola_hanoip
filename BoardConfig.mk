#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6150-common
include device/motorola/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/hanoip

# Assert
TARGET_OTA_ASSERT_DEVICE := hanoip

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 400

# Kernel
TARGET_KERNEL_CONFIG := vendor/hanoip_defconfig

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/vintf/manifest.xml

# Inherit from the proprietary version
include vendor/motorola/hanoip/BoardConfigVendor.mk
