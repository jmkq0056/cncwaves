package com.stripe.core.aidlrpc.devicesettings;

import com.stripe.core.aidlrpc.AidlMethods;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: DeviceSettingsMethods.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b+\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,¨\u0006-"}, d2 = {"Lcom/stripe/core/aidlrpc/devicesettings/DeviceSettingsMethods;", "", "Lcom/stripe/core/aidlrpc/AidlMethods;", "(Ljava/lang/String;I)V", "GET_SCREENLOCK_MILLIS", "SET_SCREENLOCK_MILLIS", "GET_LOCK_SCREEN_AFTER_TIMEOUT_MILLIS", "SET_LOCK_SCREEN_AFTER_TIMEOUT_MILLIS", "GET_HAPTIC_FEEDBACK_ENABLED", "SET_HAPTIC_FEEDBACK_ENABLED", "GET_DISPLAY_BRIGHTNESS_LEVEL", "SET_DISPLAY_BRIGHTNESS_LEVEL", "GET_DISPLAY_BRIGHTNESS_AUTOMATIC", "SET_DISPLAY_BRIGHTNESS_AUTOMATIC", "GET_ACCESSIBILITY_TALKBACK_ENABLED", "SET_ACCESSIBILITY_TALKBACK_ENABLED", "GET_ACCESSIBILITY_INVERT_COLOR_ENABLED", "SET_ACCESSIBILITY_INVERT_COLOR_ENABLED", "GET_ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED", "SET_ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED", "GET_NIGHT_MODE_ENABLED", "SET_NIGHT_MODE_ENABLED", "GET_ACCESSIBILITY_COLOR_FILTER", "SET_ACCESSIBILITY_COLOR_FILTER", "PERFORM_FACTORY_RESET", "GET_SETTINGS_INTENT", "GET_SETTINGS_LANGUAGE_INTENT", "GET_SETTINGS_NETWORK_INTENT", "GET_SETTINGS_REGION_INTENT", "GET_FACTORY_RESET_INTENT", "GET_UPDATES_FLOW_INTENT", "GET_DEVICE_SERIAL", "GET_DEVICE_NAME", "SET_DEVICE_NAME", "CLEAR_REBOOT_HOUR", "GET_REBOOT_TIME_STATUS", "SET_REBOOT_TIME_WINDOW", "LOCK_DEVICE_NOW", "LOCK_DEVICE_NOW_KEEP_SCREEN_ON", "DEBUG_START_BACKGROUND_ASSET_DOWNLOAD_NOW", "GET_REGION_CODE", "GET_CHARGE_SUMMARY_ENABLED", "SET_CHARGE_SUMMARY_ENABLED", "GET_JAWS_UBER_LANGUAGE_PACK_VERSION", "SET_KEYBOARD_VIBRATION_ENABLED", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceSettingsMethods implements AidlMethods {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DeviceSettingsMethods[] $VALUES;
    public static final DeviceSettingsMethods GET_SCREENLOCK_MILLIS = new DeviceSettingsMethods("GET_SCREENLOCK_MILLIS", 0);
    public static final DeviceSettingsMethods SET_SCREENLOCK_MILLIS = new DeviceSettingsMethods("SET_SCREENLOCK_MILLIS", 1);
    public static final DeviceSettingsMethods GET_LOCK_SCREEN_AFTER_TIMEOUT_MILLIS = new DeviceSettingsMethods("GET_LOCK_SCREEN_AFTER_TIMEOUT_MILLIS", 2);
    public static final DeviceSettingsMethods SET_LOCK_SCREEN_AFTER_TIMEOUT_MILLIS = new DeviceSettingsMethods("SET_LOCK_SCREEN_AFTER_TIMEOUT_MILLIS", 3);
    public static final DeviceSettingsMethods GET_HAPTIC_FEEDBACK_ENABLED = new DeviceSettingsMethods("GET_HAPTIC_FEEDBACK_ENABLED", 4);
    public static final DeviceSettingsMethods SET_HAPTIC_FEEDBACK_ENABLED = new DeviceSettingsMethods("SET_HAPTIC_FEEDBACK_ENABLED", 5);
    public static final DeviceSettingsMethods GET_DISPLAY_BRIGHTNESS_LEVEL = new DeviceSettingsMethods("GET_DISPLAY_BRIGHTNESS_LEVEL", 6);
    public static final DeviceSettingsMethods SET_DISPLAY_BRIGHTNESS_LEVEL = new DeviceSettingsMethods("SET_DISPLAY_BRIGHTNESS_LEVEL", 7);
    public static final DeviceSettingsMethods GET_DISPLAY_BRIGHTNESS_AUTOMATIC = new DeviceSettingsMethods("GET_DISPLAY_BRIGHTNESS_AUTOMATIC", 8);
    public static final DeviceSettingsMethods SET_DISPLAY_BRIGHTNESS_AUTOMATIC = new DeviceSettingsMethods("SET_DISPLAY_BRIGHTNESS_AUTOMATIC", 9);
    public static final DeviceSettingsMethods GET_ACCESSIBILITY_TALKBACK_ENABLED = new DeviceSettingsMethods("GET_ACCESSIBILITY_TALKBACK_ENABLED", 10);
    public static final DeviceSettingsMethods SET_ACCESSIBILITY_TALKBACK_ENABLED = new DeviceSettingsMethods("SET_ACCESSIBILITY_TALKBACK_ENABLED", 11);
    public static final DeviceSettingsMethods GET_ACCESSIBILITY_INVERT_COLOR_ENABLED = new DeviceSettingsMethods("GET_ACCESSIBILITY_INVERT_COLOR_ENABLED", 12);
    public static final DeviceSettingsMethods SET_ACCESSIBILITY_INVERT_COLOR_ENABLED = new DeviceSettingsMethods("SET_ACCESSIBILITY_INVERT_COLOR_ENABLED", 13);
    public static final DeviceSettingsMethods GET_ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED = new DeviceSettingsMethods("GET_ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED", 14);
    public static final DeviceSettingsMethods SET_ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED = new DeviceSettingsMethods("SET_ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED", 15);
    public static final DeviceSettingsMethods GET_NIGHT_MODE_ENABLED = new DeviceSettingsMethods("GET_NIGHT_MODE_ENABLED", 16);
    public static final DeviceSettingsMethods SET_NIGHT_MODE_ENABLED = new DeviceSettingsMethods("SET_NIGHT_MODE_ENABLED", 17);
    public static final DeviceSettingsMethods GET_ACCESSIBILITY_COLOR_FILTER = new DeviceSettingsMethods("GET_ACCESSIBILITY_COLOR_FILTER", 18);
    public static final DeviceSettingsMethods SET_ACCESSIBILITY_COLOR_FILTER = new DeviceSettingsMethods("SET_ACCESSIBILITY_COLOR_FILTER", 19);
    public static final DeviceSettingsMethods PERFORM_FACTORY_RESET = new DeviceSettingsMethods("PERFORM_FACTORY_RESET", 20);
    public static final DeviceSettingsMethods GET_SETTINGS_INTENT = new DeviceSettingsMethods("GET_SETTINGS_INTENT", 21);
    public static final DeviceSettingsMethods GET_SETTINGS_LANGUAGE_INTENT = new DeviceSettingsMethods("GET_SETTINGS_LANGUAGE_INTENT", 22);
    public static final DeviceSettingsMethods GET_SETTINGS_NETWORK_INTENT = new DeviceSettingsMethods("GET_SETTINGS_NETWORK_INTENT", 23);
    public static final DeviceSettingsMethods GET_SETTINGS_REGION_INTENT = new DeviceSettingsMethods("GET_SETTINGS_REGION_INTENT", 24);
    public static final DeviceSettingsMethods GET_FACTORY_RESET_INTENT = new DeviceSettingsMethods("GET_FACTORY_RESET_INTENT", 25);
    public static final DeviceSettingsMethods GET_UPDATES_FLOW_INTENT = new DeviceSettingsMethods("GET_UPDATES_FLOW_INTENT", 26);
    public static final DeviceSettingsMethods GET_DEVICE_SERIAL = new DeviceSettingsMethods("GET_DEVICE_SERIAL", 27);
    public static final DeviceSettingsMethods GET_DEVICE_NAME = new DeviceSettingsMethods("GET_DEVICE_NAME", 28);
    public static final DeviceSettingsMethods SET_DEVICE_NAME = new DeviceSettingsMethods("SET_DEVICE_NAME", 29);
    public static final DeviceSettingsMethods CLEAR_REBOOT_HOUR = new DeviceSettingsMethods("CLEAR_REBOOT_HOUR", 30);
    public static final DeviceSettingsMethods GET_REBOOT_TIME_STATUS = new DeviceSettingsMethods("GET_REBOOT_TIME_STATUS", 31);
    public static final DeviceSettingsMethods SET_REBOOT_TIME_WINDOW = new DeviceSettingsMethods("SET_REBOOT_TIME_WINDOW", 32);
    public static final DeviceSettingsMethods LOCK_DEVICE_NOW = new DeviceSettingsMethods("LOCK_DEVICE_NOW", 33);
    public static final DeviceSettingsMethods LOCK_DEVICE_NOW_KEEP_SCREEN_ON = new DeviceSettingsMethods("LOCK_DEVICE_NOW_KEEP_SCREEN_ON", 34);
    public static final DeviceSettingsMethods DEBUG_START_BACKGROUND_ASSET_DOWNLOAD_NOW = new DeviceSettingsMethods("DEBUG_START_BACKGROUND_ASSET_DOWNLOAD_NOW", 35);
    public static final DeviceSettingsMethods GET_REGION_CODE = new DeviceSettingsMethods("GET_REGION_CODE", 36);
    public static final DeviceSettingsMethods GET_CHARGE_SUMMARY_ENABLED = new DeviceSettingsMethods("GET_CHARGE_SUMMARY_ENABLED", 37);
    public static final DeviceSettingsMethods SET_CHARGE_SUMMARY_ENABLED = new DeviceSettingsMethods("SET_CHARGE_SUMMARY_ENABLED", 38);
    public static final DeviceSettingsMethods GET_JAWS_UBER_LANGUAGE_PACK_VERSION = new DeviceSettingsMethods("GET_JAWS_UBER_LANGUAGE_PACK_VERSION", 39);
    public static final DeviceSettingsMethods SET_KEYBOARD_VIBRATION_ENABLED = new DeviceSettingsMethods("SET_KEYBOARD_VIBRATION_ENABLED", 40);

    private static final /* synthetic */ DeviceSettingsMethods[] $values() {
        return new DeviceSettingsMethods[]{GET_SCREENLOCK_MILLIS, SET_SCREENLOCK_MILLIS, GET_LOCK_SCREEN_AFTER_TIMEOUT_MILLIS, SET_LOCK_SCREEN_AFTER_TIMEOUT_MILLIS, GET_HAPTIC_FEEDBACK_ENABLED, SET_HAPTIC_FEEDBACK_ENABLED, GET_DISPLAY_BRIGHTNESS_LEVEL, SET_DISPLAY_BRIGHTNESS_LEVEL, GET_DISPLAY_BRIGHTNESS_AUTOMATIC, SET_DISPLAY_BRIGHTNESS_AUTOMATIC, GET_ACCESSIBILITY_TALKBACK_ENABLED, SET_ACCESSIBILITY_TALKBACK_ENABLED, GET_ACCESSIBILITY_INVERT_COLOR_ENABLED, SET_ACCESSIBILITY_INVERT_COLOR_ENABLED, GET_ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED, SET_ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED, GET_NIGHT_MODE_ENABLED, SET_NIGHT_MODE_ENABLED, GET_ACCESSIBILITY_COLOR_FILTER, SET_ACCESSIBILITY_COLOR_FILTER, PERFORM_FACTORY_RESET, GET_SETTINGS_INTENT, GET_SETTINGS_LANGUAGE_INTENT, GET_SETTINGS_NETWORK_INTENT, GET_SETTINGS_REGION_INTENT, GET_FACTORY_RESET_INTENT, GET_UPDATES_FLOW_INTENT, GET_DEVICE_SERIAL, GET_DEVICE_NAME, SET_DEVICE_NAME, CLEAR_REBOOT_HOUR, GET_REBOOT_TIME_STATUS, SET_REBOOT_TIME_WINDOW, LOCK_DEVICE_NOW, LOCK_DEVICE_NOW_KEEP_SCREEN_ON, DEBUG_START_BACKGROUND_ASSET_DOWNLOAD_NOW, GET_REGION_CODE, GET_CHARGE_SUMMARY_ENABLED, SET_CHARGE_SUMMARY_ENABLED, GET_JAWS_UBER_LANGUAGE_PACK_VERSION, SET_KEYBOARD_VIBRATION_ENABLED};
    }

    public static EnumEntries<DeviceSettingsMethods> getEntries() {
        return $ENTRIES;
    }

    public static DeviceSettingsMethods valueOf(String str) {
        return (DeviceSettingsMethods) Enum.valueOf(DeviceSettingsMethods.class, str);
    }

    public static DeviceSettingsMethods[] values() {
        return (DeviceSettingsMethods[]) $VALUES.clone();
    }

    private DeviceSettingsMethods(String str, int i) {
    }

    static {
        DeviceSettingsMethods[] deviceSettingsMethodsArr$values = $values();
        $VALUES = deviceSettingsMethodsArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(deviceSettingsMethodsArr$values);
    }
}
