ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/prevail/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    brcm_patchram_plus \
    gps.prevail \
    Gallery3d \
    SpareParts \
    Development \
    Term \
    libOmxCore \
    libOmxVidEnc \
    make_ext4fs \
    setup_fs \
    dexpreopt \
    VoiceDialer \
    SamsungServiceMode
 
# Recovery tools
#PRODUCT_PACKAGES += \

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# Hardware properties
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml


# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Kernel modules
PRODUCT_COPY_FILES += \
    device/samsung/prevail/initramfs/lib/modules/rfs_fat.ko:root/lib/modules/rfs_fat.ko \
    device/samsung/prevail/initramfs/lib/modules/rfs_glue.ko:root/lib/modules/rfs_glue.ko \
    device/samsung/prevail/initramfs/lib/modules/ext4.ko:root/lib/modules/ext4.ko \
    device/samsung/prevail/initramfs/lib/modules/jbd2.ko:root/lib/modules/jbd2.ko \
    device/samsung/prevail/initramfs/lib/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/prevail/initramfs/lib/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/prevail/initramfs/lib/modules/sec_param.ko:root/lib/modules/sec_param.ko \
    device/samsung/prevail/initramfs/lib/modules/dhd.ko:root/lib/modules/dhd.ko

# Recovery kernel modules / files
PRODUCT_COPY_FILES += \
    device/samsung/prevail/initramfs/lib/modules/rfs_fat.ko:root/lib/modules/rfs_fat.ko \
    device/samsung/prevail/initramfs/lib/modules/rfs_glue.ko:root/lib/modules/rfs_glue.ko \
    device/samsung/prevail/initramfs/lib/modules/ext4.ko:root/lib/modules/ext4.ko \
    device/samsung/prevail/initramfs/lib/modules/jbd2.ko:root/lib/modules/jbd2.ko \
    device/samsung/prevail/initramfs/lib/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/prevail/initramfs/lib/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/prevail/initramfs/lib/modules/sec_param.ko:root/lib/modules/sec_param.ko \
    device/samsung/prevail/recovery.fstab:recovery/root/etc/recovery.fstab

# Device-specific keymaps
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/usr/keylayout/vino-headset.kl:system/usr/keylayout/vino-headset.kl \
    device/samsung/prevail/prebuilt/usr/keylayout/vino-keypad.kl:system/usr/keylayout/vino-keypad.kl \
    device/samsung/prevail/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/samsung/prevail/prebuilt/usr/keychars/vino-keypad.kcm.bin:system/usr/keychars/vino-keypad.kcm.bin

# Board-specific init
PRODUCT_COPY_FILES += \
    device/samsung/prevail/initramfs/ueventd.sph-m820.rc:root/ueventd.sph-m820.rc \
    device/samsung/prevail/initramfs/init.sph-m820.rc:root/init.sph-m820.rc

# Sensors
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    device/samsung/prevail/prebuilt/bin/memsicd:system/bin/memsicd

# 3D
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \
    device/samsung/prevail/prebuilt/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \
    device/samsung/prevail/prebuilt/lib/hw/copybit.msm7k.so:system/lib/hw/copybit.msm7k.so \
    device/samsung/prevail/prebuilt/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so \
    device/samsung/prevail/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/samsung/prevail/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/samsung/prevail/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/samsung/prevail/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/samsung/prevail/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    device/samsung/prevail/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/samsung/prevail/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# Camera
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/lib/libcamera.so:system/lib/libcamera.so \
    device/samsung/prevail/prebuilt/lib/libcamera_client.so:system/lib/libcamera_client.so \
    device/samsung/prevail/prebuilt/lib/libcameraservice.so:system/lib/libcameraservice.so \
    device/samsung/prevail/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/samsung/prevail/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
    device/samsung/prevail/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/etc/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \
    device/samsung/prevail/prebuilt/etc/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_mfg.bin \
    device/samsung/prevail/prebuilt/etc/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_sta.bin \
    device/samsung/prevail/prebuilt/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_mfg.txt \
    device/samsung/prevail/prebuilt/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/prevail/prebuilt/etc/wifi/wifi.conf:system/etc/wifi/wifi.conf \
    device/samsung/prevail/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/prevail/prebuilt/bin/mfgloader:system/bin/wifi/mfgloader \
    device/samsung/prevail/prebuilt/bin/wlandutservice:system/bin/wlandutservice \
    device/samsung/prevail/prebuilt/bin/wpa_cli:system/bin/wpa_cli \
    device/samsung/prevail/prebuilt/bin/wpa_supplicant:system/bin/wpa_supplicant \
    device/samsung/prevail/prebuilt/lib/libwpa_client.so:system/lib/libwpa_client.so


# SD Card
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Media configuration xml file
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/etc/media_profiles.xml:/system/etc/media_profiles.xml

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/samsung/prevail/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# Samsung RIL
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/bin/rild:system/bin/rild \
    device/samsung/prevail/prebuilt/bin/rilclient-test:system/bin/rilclient-test \
    device/samsung/prevail/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/samsung/prevail/prebuilt/lib/libril.so:system/lib/libril.so \
    device/samsung/prevail/prebuilt/lib/libsec-ril.so:system/lib/libsec-ril.so \
    device/samsung/prevail/prebuilt/lib/libsecril-client.so:system/lib/libsecril-client.so \
    device/samsung/prevail/prebuilt/lib/libreference-ril.so:system/lib/libreference-ril.so \
    device/samsung/prevail/prebuilt/lib/libdiag.so:system/lib/libdiag.so

# Bluetooth
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/bin/BCM4329B1_002.002.023.0589.0673.hcd:system/bin/BCM4329B1_002.002.023.0589.0673.hcd

# OMX libraries
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/samsung/prevail/prebuilt/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
    device/samsung/prevail/prebuilt/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    device/samsung/prevail/prebuilt/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    device/samsung/prevail/prebuilt/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/samsung/prevail/prebuilt/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \
    device/samsung/prevail/prebuilt/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    device/samsung/prevail/prebuilt/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    device/samsung/prevail/prebuilt/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    device/samsung/prevail/prebuilt/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    device/samsung/prevail/prebuilt/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    device/samsung/prevail/prebuilt/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
    device/samsung/prevail/prebuilt/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    device/samsung/prevail/prebuilt/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
    device/samsung/prevail/prebuilt/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    device/samsung/prevail/prebuilt/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    device/samsung/prevail/prebuilt/lib/libOmxEvrcHwDec.so:system/lib/libOmxEvrcHwDec.so \
    device/samsung/prevail/prebuilt/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    device/samsung/prevail/prebuilt/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
    device/samsung/prevail/prebuilt/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    device/samsung/prevail/prebuilt/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/samsung/prevail/prebuilt/lib/libOmxQcelpHwDec.so:system/lib/libOmxQcelpHwDec.so \
    device/samsung/prevail/prebuilt/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
    device/samsung/prevail/prebuilt/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so

# Fix Logcat / Misc
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/lib/liblog.so:system/lib/liblog.so \
    device/samsung/prevail/prebuilt/bin/logcat:system/bin/logcat \
    device/samsung/prevail/prebuilt/bin/logwrapper:system/bin/logwrapper \
    device/samsung/prevail/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    device/samsung/prevail/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/samsung/prevail/prebuilt/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
    device/samsung/prevail/prebuilt/etc/hosts:system/etc/hosts \
    device/samsung/prevail/prebuilt/etc/gps.conf:system/etc/gps.conf


# 3G PPP
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/etc/ppp/chap-secrets:system/etc/ppp/chap-secrets \
    device/samsung/prevail/prebuilt/etc/ppp/ip-down:system/etc/ppp/ip-down \
    device/samsung/prevail/prebuilt/etc/ppp/ip-up:system/etc/ppp/ip-up \
    device/samsung/prevail/prebuilt/etc/ppp/ip-up-vpn:system/etc/ppp/ip-up-vpn \
    device/samsung/prevail/prebuilt/etc/ppp/options:system/etc/ppp/options \
    device/samsung/prevail/prebuilt/etc/ppp/pap-secrets:system/etc/ppp/pap-secrets \
    device/samsung/prevail/prebuilt/bin/pppd:system/bin/pppd \
    device/samsung/prevail/prebuilt/bin/pppd_runner:system/bin/pppd_runner


$(call inherit-product, build/target/product/full_base.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

$(call inherit-product-if-exists, vendor/samsung/prevail/prevail-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/prevail/overlay

# LDPI assets
PRODUCT_LOCALES += ldpi mdpi
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi
PRODUCT_COPY_FILES += \
    device/samsung/prevail/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

# Property overrides
PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=MM-dd-yyyy

# Screen density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

# XXX: We might enable precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# This should not be needed, but on-screen keyboard uses the wrong density without it.
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.sf.lcd_density=160

# Google ClientBase
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-samsung \
    ro.com.google.clientidbase.ms=android-boost-us \
    ro.com.google.clientidbase.yt=android-samsung \
    ro.com.google.clientidbase.am=android-boost-us \
    ro.com.google.clientidbase.gmm=android-samsung


PRODUCT_NAME := full_prevail
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := prevail
PRODUCT_MODEL := SPH-M820
PRODUCT_MANUFACTURER := samsung
