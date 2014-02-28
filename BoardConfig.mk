# Product-specific compile-time definitions

# Build bootloader and kernel from source; don't just install binaries
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
UBOOT_CONFIG := omap4_duovero
KERNEL_CONFIG := panda

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM := omap4

# We've got bluetooth & wifi
BOARD_HAVE_BLUETOOTH := false
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/generic/common/bluetooth

BOARD_WLAN_DEVICE := mrvl
WPA_SUPPLICANT_VERSION	:= VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mrvl8787
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mrvl8787
WIFI_DRIVER_FW_PATH_STA	:= "/system/etc/firmware/sd8787_uapsta.bin"
#WIFI_DRIVER_FW_PATH_AP	:= "/system/etc/firmware/sd8787_uapsta.bin"

# Audio Setup
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true

# Use SGX for OpenGL
OMAPES := 4.x
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/gumstix/duovero/egl.cfg

# No Recovery Parition
TARGET_NO_RECOVERY := true

# These aren't strictly necessary but avoids compilation
# errors on standard Android make targets
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_FLASH_BLOCK_SIZE := 4096
