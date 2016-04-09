
# Copyright (C) 2014 The CyanogenMod Project
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
#

# inherit from common v4xx
-include device/lge/v4xx-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := v480,e8,e8wifi

# Kernel
TARGET_KERNEL_SOURCE := kernel/lge/v4xx
TARGET_KERNEL_CONFIG := cyanogen_e8wifi_defconfig
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 msm_rtb.filter=0x37 androidboot.hardware=e8wifi
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_REQUIRES_BUMP := true

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/v480/rootdir/etc/fstab.e8wifi
#RECOVERY_VARIANT := twrp
#TW_THEME := portrait_hdpi

# inherit from the proprietary version
-include vendor/lge/v480/BoardConfigVendor.mk
