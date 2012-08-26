$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

LOCAL_PATH := device/pantech/p4100

$(call inherit-product, build/target/product/full_base.mk) 

$(call inherit-product-if-exists, vendor/pantech/p4100/p4100-blobs.mk)

# copies base configuration files
PRODUCT_COPY_FILES += \
    device/pantech/p4100/init.qcom.rc:root/init.qcom.rc

# graphics
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8660 \
    audio.primary..msm8660 \
    libaudioutils

PRODUCT_COPY_FILES += \
    device/pantech/p4100/configs/audio_policy.conf:system/etc/audio_policy.conf

# lights
PRODUCT_PACKAGES += \
    lights.msm8660

# hdmi
PRODUCT_PACKAGES += \
    hdmid

# GPS
PRODUCT_PACKAGES += \
    gps.msm8660

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw

ODUCT_COPY_FILES += \
    device/pantech/p4100/configs/media_profiles.xml:system/etc/media_profiles.xml

# copies files for hardware permissions
PRODUCT_COPY_FILES += \
<<<<<<< Updated upstream
    frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml
=======
    frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml
>>>>>>> Stashed changes

# filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    static_busybox

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    Torch

PRODUCT_CHARACTERISTICS := tablet
