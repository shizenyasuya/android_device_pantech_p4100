# Release name
PRODUCT_RELEASE_NAME := p4100

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/p4100/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p4100
PRODUCT_NAME := cm_p4100
PRODUCT_BRAND := PANTECH
PRODUCT_MODEL := p4100
PRODUCT_MANUFACTURER := PANTECH
