hsw_alc262_path := device/intel/mixins/audio/hsw_alc262

# Audio codec support
PRODUCT_COPY_FILES += \
	$(hsw_alc262_path)/audio_policy.conf:system/vendor/etc/audio_policy.conf \
	$(hsw_alc262_path)/mixer_paths_Analog_Devices.xml:system/etc/mixer_paths_Analog_Devices.xml \
	$(hsw_alc262_path)/mixer_paths_unknown.xml:system/etc/mixer_paths_unknown.xml \
	$(hsw_alc262_path)/mixer_paths_ALC262.xml:system/etc/mixer_paths_ALC262.xml

# Tinyalsa
PRODUCT_PACKAGES += \
	tinymix \
	tinyplay \
	tinycap \

# Audio support
PRODUCT_PACKAGES += \
	audio.primary.$(TARGET_PRODUCT) \
