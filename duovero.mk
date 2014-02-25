# This is the build configuration for the Gumstix Pepper Single Board Computer.
# It is based on the 'Toro' device conifguration file (Copyright Google Inc.)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/gumstix/common/common.mk)
$(call inherit-product, device/gumstix/pepper/device.mk)

PRODUCT_NAME := pepper
PRODUCT_DEVICE := pepper
PRODUCT_BRAND := Android
PRODUCT_MODEL := Pepper
PRODUCT_MANUFACTURER := Gumstix_Inc 
