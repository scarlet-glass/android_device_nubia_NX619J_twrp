#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := NX619J

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/nubia/NX619J/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := NX619J
PRODUCT_NAME := omni_NX619J
PRODUCT_BRAND := nuiba
PRODUCT_MODEL := NX619J
PRODUCT_MANUFACTURER := nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=NX619J \
    BUILD_PRODUCT=NX619J \
    TARGET_DEVICE=NX619J
