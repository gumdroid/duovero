# Define components to include in an Androild build for this product.
# Based on device.mk from TI's beaglebone and panda

# Pull in specific local files
PRODUCT_COPY_FILES := \
	$(LOCAL_PATH)/init.duovero.rc:root/init.duovero.rc \
	$(LOCAL_PATH)/init.duovero.usb.rc:root/init.duovero.usb.rc \
	$(LOCAL_PATH)/libaudio/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/libaudio/mixer_paths.xml:system/etc/mixer_paths.xml \
	$(LOCAL_PATH)/fstab.duovero:root/fstab.duovero \
	$(LOCAL_PATH)/uEnv.txt:boot/uEnv.txt \
	$(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/initlogo.rle:root/initlogo.rle \
	$(LOCAL_PATH)/sd8787_uapsta.bin:system/etc/firmware/mrvl/sd8787_uapsta.bin \
	$(LOCAL_PATH)/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/ti-tsc.idc:system/usr/idc/ti-tsc.idc \
	frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml
	#frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml

# Don't make SGX work too hard
PRODUCT_PROPERTY_OVERRIDES := \
       hwui.render_dirty_regions=false

# Explicitly specify dpi, otherwise the icons don't show up correctly with SGX enabled
# Our screen is 4.3" 480x272: roughly 120 display-independent-pixels
PRODUCT_PROPERTY_OVERRIDES += \
       ro.sf.lcd_density=120

# Don't add visual fault overlays to our eng build
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1

# Networks
PRODUCT_PROPERTY_OVERRIDES += \
        wifi.interface=mlan0

PRODUCT_CHARACTERISTICS := tablet,nosdcard

DEVICE_PACKAGE_OVERLAYS := device/gumstix/duovero/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

# System specific libraries
PRODUCT_PACKAGES += \
	lights.duovero \
	sensors.duovero\
	audio.primary.duovero

# System Utilities
PRODUCT_PACKAGES += \
	fs_get_stats \
	dhcpcd.conf \
	make_ext4fs

# Audio utils
PRODUCT_PACKAGES += \
        tinycap \
        tinymix \
        tinyplay

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        MagicSmokeWallpapers \
        VisualizationWallpapers

# not sure if we need these...
PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
