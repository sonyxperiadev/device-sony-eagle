# Copyright 2014 The Android Open Source Project
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

TARGET_PREBUILT_KERNEL := kernel
PRODUCT_COPY_FILES += $(LOCAL_PATH)/$(TARGET_PREBUILT_KERNEL):kernel

# Include others
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
$(call inherit-product, device/sony/yukon/device.mk)
$(call inherit-product, vendor/sony/eagle/eagle-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

PRODUCT_COPY_FILES += \
    device/sony/eagle/rootdir/logo.rle:root/logo.rle \
    device/sony/eagle/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/sony/eagle/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/eagle/rootdir/system/etc/sap.conf:system/etc/sap.conf \
    device/sony/eagle/rootdir/system/etc/sec_config:system/etc/sec_config \
    device/sony/eagle/rootdir/init.yukon.dev.rc:root/init.yukon.dev.rc

# Product attributes
PRODUCT_NAME := aosp_d2303
PRODUCT_DEVICE := eagle
PRODUCT_MODEL := Xperia M2 (AOSP)
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_LOCALES += xhdpi hdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240