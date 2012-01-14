# inherit from the proprietary version
-include device/samsung/prevail/BoardConfigVendor.mk

# Camera
#BOARD_USE_FROYO_LIBCAMERA := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

# Kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/prevail/recovery_kernel
TARGET_PREBUILT_KERNEL := device/samsung/prevail/kernel
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_CMDLINE := mem=336M console=ttyMSM2,115200 hw=9
BOARD_KERNEL_BASE := 0x13000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_PAGE_SIZE := 0x00001000

# Graphics
BOARD_EGL_CFG := device/samsung/prevail/prebuilt/lib/egl/egl.cfg
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_USE_SCREENCAP := true
BOARD_NO_RGBX_8888 := true

# Recovery
BOARD_BML_BOOT := /dev/block/bml9
BOARD_BML_RECOVERY := /dev/block/bml10
TARGET_BOOTLOADER_BOARD_NAME := prevail
TARGET_OTA_ASSERT_DEVICE := SPH-M820
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_LDPI_RECOVERY := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 177733632
BOARD_USERDATAIMAGE_PARTITION_SIZE := 177209344
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_RECOVERY_INITRC := device/samsung/prevail/recovery.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/prevail/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/prevail/recovery/recovery_ui.c
TARGET_RECOVERY_PRE_COMMAND := "echo 3 > /proc/sys/vm/drop_caches; sync"

## PARTITION LAYOUT/INFO ##
BOARD_DATA_DEVICE := /dev/block/bml13
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_DEVICE := /dev/block/bml12
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/bml14
BOARD_CACHE_FILESYSTEM := ext4
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_BOOT_DEVICE := /dev/block/bml9
BOARD_RECOVERY_DEVICE := /dev/block/bml10
TARGET_USERIMAGES_USE_EXT4 := true

# Audio
TARGET_PROVIDES_LIBAUDIO := true
#BOARD_USES_GENERIC_AUDIO     := false


#QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := prevail
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# USB
BOARD_CUSTOM_USB_CONTROLLER := ../../device/samsung/prevail/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun"
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

# WiFi
PRODUCT_WIRELESS_TOOLS := true
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := DHD
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME := "dhd"
BOARD_WEXT_NO_COMBO_SCAN := true
WIFI_DRIVER_STA_FIRMWARE_NAME := "bcm4329_sta.bin"
WIFI_DRIVER_APS_FIRMWARE_NAME := "bcm4329_aps.bin"
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wifi/bcm4329_sta.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/wifi/bcm4329_aps.bin"
WIFI_DRIVER_FW_MFG_PATH := "/system/etc/wifi/bcm4329_mfg.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=system/etc/wifi/bcm4329_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRV_AP_MODULE_ARG := "/system/etc/wifi/bcm4329_aps.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRV_MFG_MODULE_ARG := "/system/etc/wifi/bcm4329_aps.bin nvram_path=/system/etc/wifi/nvram_mfg.txt"

#3G
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

#JIT / Optimizations
WITH_DEXPREOPT := true
JS_ENGINE := v8

# FM Radio (needed for the audio driver to compile)
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm4325
BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
