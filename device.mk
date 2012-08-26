$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

LOCAL_PATH := device/pantech/p4100

$(call inherit-product, build/target/product/full_base.mk) 

$(call inherit-product-if-exists, vendor/pantech/p4100/p4100-blobs.mk)

# copies base configuration files
PRODUCT_COPY_FILES += \
    device/pantech/p4100/init.qcom.rc:root/init.qcom.rc

# vold and storage
PRODUCT_COPY_FILES += \
    device/pantech/p4100/configs/vold.fstab:system/etc/vold.fstab

PRODUCT_PACKAGES += \
    copybit.msm8660 \
    hwcomposer.msm8660 \
    gralloc.msm8660 \
    liboverlay \
    libmemalloc \
    libtilerenderer \
    libgenlock \
    libQcomUI

# copies files for hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    static_busybox
