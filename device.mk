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

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/eagle/overlay

# Device etc
PRODUCT_COPY_FILES := \
    device/sony/eagle/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/sony/eagle/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/eagle/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/sony/eagle/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# Device Specific Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Device Init
PRODUCT_PACKAGES += \
    fstab.eagle \
    init.recovery.eagle \
    init.eagle \
    ueventd.eagle

# Lights
PRODUCT_PACKAGES += \
    lights.eagle

# Simple PowerHAL
PRODUCT_PACKAGES += \
    power.eagle

# NFC config
PRODUCT_PACKAGES += \
    nfc_nci.pn54x.default

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=240 \
    ro.usb.pid_suffix=1B8

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/yukon/platform.mk)
$(call inherit-product, vendor/sony/eagle/eagle-vendor.mk)
