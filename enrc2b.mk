## Specify phone tech before including full_phone
$(call inherit-product, vendor/aicp/configs/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := aicp_enrc2b

# Preload bootanimation
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/bootanimation.zip:system/media/bootanimation.zip

# Resolution values for bootanimation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/enrc2b/full_enrc2b.mk)

# languages
PRODUCT_LOCALES := en_US de_DE zh_CN zh_TW cs_CZ nl_BE nl_NL en_AU en_GB en_CA en_NZ en_SG fr_BE fr_CA fr_FR fr_CH de_AT de_LI de_CH it_IT it_CH ja_JP ko_KR pl_PL ru_RU es_ES ar_EG ar_IL bg_BG ca_ES hr_HR da_DK en_IN en_IE en_ZA fi_FI el_GR iw_IL hi_IN hu_HU in_ID lv_LV lt_LT nb_NO pt_BR pt_PT ro_RO sr_RS sk_SK sl_SI es_US sv_SE tl_PH th_TH tr_TR uk_UA vi_VN

PRODUCT_PACKAGES += Tegra3Parts

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := enrc2b
PRODUCT_NAME := aicp_enrc2b
PRODUCT_BRAND := HTC
PRODUCT_MODEL := One X+
PRODUCT_MANUFACTURER := HTC
CARBON_BUILDTYPE := NIGHTLY

#Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=aicp_enrc2b \
	BUILD_FINGERPRINT="htc_europe/enrc2b/enrc2b:4.4.3/KTU84M/1158763:user/release-keys" \
	PRIVATE_BUILD_DESC="enrc2b-user 4.4.3 KTU84M 1158763 release-keys"
