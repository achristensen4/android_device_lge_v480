$(call inherit-product, device/lge/v480/full_v480.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := cm_v480

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="v480" \
    PRODUCT_NAME="e8wifi" \
    BUILD_FINGERPRINT="lge/e8wifi_open_com/e8wifi:4.4.2/KOT49I.V48010b/V48010b.1405304718:user/release-keys" \
    PRIVATE_BUILD_DESC="e8wifi_open_com 4.4.2 KOT49I.V48010b V48010b.1405304718 release-keys"
