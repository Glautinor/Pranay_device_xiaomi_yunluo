#
# Copyright (C) 2023 LineageOS
#
# SPDX-License-Identifier: Apache-2.0
#
# ProjectInfinityX Gapps
WITH_GAPPS := true
TARGET_SHIPS_GOOGLE_DIALER := true
TARGET_SHIPS_FULL_GAPPS := false

# ProjectInfinityX Vanilla
#WITH_GAPPS := false
#TARGET_SHIPS_GOOGLE_DIALER := false
#TARGET_SHIPS_FULL_GAPPS := false

# Inherit from those products. Most specific fist.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/yunluo/device.mk)

# Inherit some common ProjectInfinityX Stuff
$(call inherit-product, vendor/infinity/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := infinity_yunluo
PRODUCT_DEVICE := yunluo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Pad

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="yunluo-user 12 SP1A.210812.016 V816.0.4.0.ULYMIXM release-keys"

BUILD_FINGERPRINT := Redmi/yunluo_global/yunluo:12/SP1A.210812.016/V816.0.4.0.ULYMIXM:user/release-keys

# ProjectInfinityX specific
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := @Boy_Sid
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1200
TARGET_SUPPORTS_BLUR := true
TARGET_HAS_UDFPS := false
USE_MOTO_CALCULATOR := true

#END
