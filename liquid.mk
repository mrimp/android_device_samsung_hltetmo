
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2013 The LiquidSmooth Project
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

# device
$(call inherit-product, device/samsung/hltetmo/full_hltetmo.mk)

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# telephony
$(call inherit-product, vendor/liquid/config/common_gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# product
PRODUCT_DEVICE := hltetmo
PRODUCT_BRAND := Samsung
PRODUCT_NAME := liquid_hltetmo
PRODUCT_MODEL := SM-N900T
PRODUCT_MANUFACTURER := samsung
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.hltetmo.$(shell date +%m%d%y).$(shell date +%H%M%S)

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=N900TUVUBMI7 \
    PRODUCT_NAME=hltetmo \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="hltetmo-user 4.3 JSS15J N900TUVUBMI7 release-keys" \
    BUILD_FINGERPRINT="samsung/hltetmo/hltetmo:4.3/JSS15J/N900TUVUBMI7:user/release-keys"
