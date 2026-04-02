package com.stripe.core.bbpos.hardware;

import com.stripe.core.device.ClientDeviceType;
import com.stripe.hardware.status.ReaderInfo;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: BbposReaderInfoFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010$\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006Jä\u0001\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\f\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\n2\b\u0010\u0017\u001a\u0004\u0018\u00010\n2\b\u0010\u0018\u001a\u0004\u0018\u00010\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\n2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\n2\b\u0010\u001e\u001a\u0004\u0018\u00010\n2\b\u0010\u001f\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/core/bbpos/hardware/DefaultBbposReaderInfoFactory;", "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;", "isDebug", "", "clientDeviceType", "Lcom/stripe/core/device/ClientDeviceType;", "(ZLcom/stripe/core/device/ClientDeviceType;)V", "create", "Lcom/stripe/hardware/status/ReaderInfo;", "pinKsn", "", "emvKsn", "macKsn", "trackKsn", "batteryPercentage", "configVersion", "deviceSettingVersion", "bootloaderVersion", "emvKeyProfileId", "firmwareVersion", "hardwareVersion", "macKeyProfileId", "pinKeyProfileId", "serialNumber", "trackKeyProfileId", "isCharging", "rawReaderData", "", "serial", "firmwareId", "coinCellBatteryVoltage", "isUsbConnected", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultBbposReaderInfoFactory implements BbposReaderInfoFactory {
    private final ClientDeviceType clientDeviceType;
    private final boolean isDebug;

    public DefaultBbposReaderInfoFactory(boolean z, ClientDeviceType clientDeviceType) {
        Intrinsics.checkNotNullParameter(clientDeviceType, "clientDeviceType");
        this.isDebug = z;
        this.clientDeviceType = clientDeviceType;
    }

    @Override // com.stripe.core.bbpos.hardware.BbposReaderInfoFactory
    public ReaderInfo create(String pinKsn, String emvKsn, String macKsn, String trackKsn, String batteryPercentage, String configVersion, String deviceSettingVersion, String bootloaderVersion, String emvKeyProfileId, String firmwareVersion, String hardwareVersion, String macKeyProfileId, String pinKeyProfileId, String serialNumber, String trackKeyProfileId, String isCharging, Map<String, String> rawReaderData, String serial, String firmwareId, String coinCellBatteryVoltage, String isUsbConnected) {
        String str;
        String str2;
        String str3;
        String str4;
        Intrinsics.checkNotNullParameter(rawReaderData, "rawReaderData");
        Integer intOrNull = batteryPercentage != null ? StringsKt.toIntOrNull(batteryPercentage) : null;
        Float fValueOf = intOrNull != null ? Float.valueOf(intOrNull.intValue() / 100.0f) : null;
        if (pinKsn != null) {
            String strSubstring = pinKsn.substring(0, Math.min(6, pinKsn.length()));
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            str = strSubstring;
        } else {
            str = null;
        }
        if (macKsn != null) {
            String strSubstring2 = macKsn.substring(0, Math.min(6, macKsn.length()));
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
            str2 = strSubstring2;
        } else {
            str2 = null;
        }
        if (emvKsn != null) {
            String strSubstring3 = emvKsn.substring(0, Math.min(6, emvKsn.length()));
            Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
            str3 = strSubstring3;
        } else {
            str3 = null;
        }
        if (trackKsn != null) {
            String strSubstring4 = trackKsn.substring(0, Math.min(6, trackKsn.length()));
            Intrinsics.checkNotNullExpressionValue(strSubstring4, "substring(...)");
            str4 = strSubstring4;
        } else {
            str4 = null;
        }
        return new ReaderInfo(intOrNull, fValueOf, configVersion, deviceSettingVersion, bootloaderVersion, firmwareVersion, hardwareVersion, pinKeyProfileId, macKeyProfileId, trackKeyProfileId, emvKeyProfileId, str, str2, str4, str3, serial == null ? serialNumber : serial, null, Boolean.valueOf(this.isDebug), rawReaderData, Boolean.valueOf(Intrinsics.areEqual("true", isCharging)), this.clientDeviceType.getIsDevKit(), firmwareId, coinCellBatteryVoltage != null ? StringsKt.toFloatOrNull(coinCellBatteryVoltage) : null, Boolean.valueOf(Intrinsics.areEqual("true", isUsbConnected)), 65536, null);
    }
}
