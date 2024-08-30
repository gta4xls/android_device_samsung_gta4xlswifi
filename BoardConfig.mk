#
# Copyright (C) 2020-2024 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## Inherit from the common tree
include device/samsung/gta4xls-common/BoardConfigCommon.mk

## Inherit from the proprietary configuration
include vendor/samsung/gta4xlswifi/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/gta4xlswifi

## Kernel
TARGET_PREBUILT_KERNEL_DIR := $(DEVICE_PATH)-kernel
KERNEL_MODULES := $(wildcard $(TARGET_PREBUILT_KERNEL_DIR)/lib/modules/*.ko)

BOARD_PREBUILT_DTBOIMAGE := $(TARGET_PREBUILT_KERNEL_DIR)/dtbo.img
BOARD_RECOVERY_KERNEL_MODULES := $(KERNEL_MODULES)
BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(KERNEL_MODULES)
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_KERNEL_CONFIG := s5e8825-gta4xlswifi_defconfig
TARGET_PREBUILT_KERNEL := $(TARGET_PREBUILT_KERNEL_DIR)/Image

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
