package com.stripe.hardware.status;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderInfo.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\bA\b\u0086\b\u0018\u00002\u00020\u0001B¯\u0002\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0016\b\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0017\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0017\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010\u001fJ\u0010\u0010;\u001a\u0004\u0018\u00010\u0003HÂ\u0003¢\u0006\u0002\u0010<J\u000b\u0010=\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010E\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010.J\u0017\u0010F\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0019HÆ\u0003J\u0010\u0010G\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010!J\u0010\u0010H\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010.J\t\u0010I\u001a\u00020\u0017HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010K\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010!J\u0010\u0010L\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010.J\u000b\u0010M\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0007HÆ\u0003J¸\u0002\u0010T\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0016\b\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u001b\u001a\u00020\u00172\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0017HÆ\u0001¢\u0006\u0002\u0010UJ\u0013\u0010V\u001a\u00020\u00172\b\u0010W\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010X\u001a\u00020\u0003HÖ\u0001J\t\u0010Y\u001a\u00020\u0007HÖ\u0001R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b \u0010!R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010#R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0015\u0010\u001d\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b&\u0010!R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b'\u0010%R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b(\u0010%R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b)\u0010%R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b*\u0010%R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b+\u0010%R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b,\u0010%R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b-\u0010%R\u0015\u0010\u001a\u001a\u0004\u0018\u00010\u0017¢\u0006\n\n\u0002\u0010/\u001a\u0004\b\u001a\u0010.R\u0015\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\n\n\u0002\u0010/\u001a\u0004\b\u0016\u0010.R\u0011\u0010\u001b\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u00100R\u0015\u0010\u001e\u001a\u0004\u0018\u00010\u0017¢\u0006\n\n\u0002\u0010/\u001a\u0004\b\u001e\u0010.R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b1\u0010%R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b2\u0010%R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b3\u0010%R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b4\u0010%R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b5\u0010%R\u001f\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0019¢\u0006\b\n\u0000\u001a\u0004\b6\u00107R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b8\u0010%R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b9\u0010%R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b:\u0010%¨\u0006Z"}, d2 = {"Lcom/stripe/hardware/status/ReaderInfo;", "", "batteryPercentage", "", "batteryLevel", "", "configVersion", "", "deviceSettingVersion", "bootloaderVersion", "firmwareVersion", "hardwareVersion", "pinKeyProfileId", "macKeyProfileId", "trackKeyProfileId", "emvKeyProfileId", "pinKeysetId", "macKeysetId", "trackKeysetId", "emvKeysetId", "serial", "label", "isDebug", "", "rawReaderData", "", "isCharging", "isDevKit", "firmwareId", "coinCellBatteryVoltage", "isUsbConnected", "(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;)V", "getBatteryLevel", "()Ljava/lang/Float;", "Ljava/lang/Float;", "Ljava/lang/Integer;", "getBootloaderVersion", "()Ljava/lang/String;", "getCoinCellBatteryVoltage", "getConfigVersion", "getDeviceSettingVersion", "getEmvKeyProfileId", "getEmvKeysetId", "getFirmwareId", "getFirmwareVersion", "getHardwareVersion", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "()Z", "getLabel", "getMacKeyProfileId", "getMacKeysetId", "getPinKeyProfileId", "getPinKeysetId", "getRawReaderData", "()Ljava/util/Map;", "getSerial", "getTrackKeyProfileId", "getTrackKeysetId", "component1", "()Ljava/lang/Integer;", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;)Lcom/stripe/hardware/status/ReaderInfo;", "equals", "other", "hashCode", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ReaderInfo {
    private final Float batteryLevel;
    private final Integer batteryPercentage;
    private final String bootloaderVersion;
    private final Float coinCellBatteryVoltage;
    private final String configVersion;
    private final String deviceSettingVersion;
    private final String emvKeyProfileId;
    private final String emvKeysetId;
    private final String firmwareId;
    private final String firmwareVersion;
    private final String hardwareVersion;
    private final Boolean isCharging;
    private final Boolean isDebug;
    private final boolean isDevKit;
    private final Boolean isUsbConnected;
    private final String label;
    private final String macKeyProfileId;
    private final String macKeysetId;
    private final String pinKeyProfileId;
    private final String pinKeysetId;
    private final Map<String, String> rawReaderData;
    private final String serial;
    private final String trackKeyProfileId;
    private final String trackKeysetId;

    public ReaderInfo() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, 16777215, null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    private final Integer getBatteryPercentage() {
        return this.batteryPercentage;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ReaderInfo copy$default(ReaderInfo readerInfo, Integer num, Float f, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, Boolean bool, Map map, Boolean bool2, boolean z, String str16, Float f2, Boolean bool3, int i, Object obj) {
        Boolean bool4;
        Float f3;
        Integer num2 = (i & 1) != 0 ? readerInfo.batteryPercentage : num;
        Float f4 = (i & 2) != 0 ? readerInfo.batteryLevel : f;
        String str17 = (i & 4) != 0 ? readerInfo.configVersion : str;
        String str18 = (i & 8) != 0 ? readerInfo.deviceSettingVersion : str2;
        String str19 = (i & 16) != 0 ? readerInfo.bootloaderVersion : str3;
        String str20 = (i & 32) != 0 ? readerInfo.firmwareVersion : str4;
        String str21 = (i & 64) != 0 ? readerInfo.hardwareVersion : str5;
        String str22 = (i & 128) != 0 ? readerInfo.pinKeyProfileId : str6;
        String str23 = (i & 256) != 0 ? readerInfo.macKeyProfileId : str7;
        String str24 = (i & 512) != 0 ? readerInfo.trackKeyProfileId : str8;
        String str25 = (i & 1024) != 0 ? readerInfo.emvKeyProfileId : str9;
        String str26 = (i & 2048) != 0 ? readerInfo.pinKeysetId : str10;
        String str27 = (i & 4096) != 0 ? readerInfo.macKeysetId : str11;
        String str28 = (i & 8192) != 0 ? readerInfo.trackKeysetId : str12;
        Integer num3 = num2;
        String str29 = (i & 16384) != 0 ? readerInfo.emvKeysetId : str13;
        String str30 = (i & 32768) != 0 ? readerInfo.serial : str14;
        String str31 = (i & 65536) != 0 ? readerInfo.label : str15;
        Boolean bool5 = (i & 131072) != 0 ? readerInfo.isDebug : bool;
        Map map2 = (i & 262144) != 0 ? readerInfo.rawReaderData : map;
        Boolean bool6 = (i & 524288) != 0 ? readerInfo.isCharging : bool2;
        boolean z2 = (i & 1048576) != 0 ? readerInfo.isDevKit : z;
        String str32 = (i & 2097152) != 0 ? readerInfo.firmwareId : str16;
        Float f5 = (i & 4194304) != 0 ? readerInfo.coinCellBatteryVoltage : f2;
        if ((i & 8388608) != 0) {
            f3 = f5;
            bool4 = readerInfo.isUsbConnected;
        } else {
            bool4 = bool3;
            f3 = f5;
        }
        return readerInfo.copy(num3, f4, str17, str18, str19, str20, str21, str22, str23, str24, str25, str26, str27, str28, str29, str30, str31, bool5, map2, bool6, z2, str32, f3, bool4);
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getTrackKeyProfileId() {
        return this.trackKeyProfileId;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getEmvKeyProfileId() {
        return this.emvKeyProfileId;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getPinKeysetId() {
        return this.pinKeysetId;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getMacKeysetId() {
        return this.macKeysetId;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getTrackKeysetId() {
        return this.trackKeysetId;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getEmvKeysetId() {
        return this.emvKeysetId;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getSerial() {
        return this.serial;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final Boolean getIsDebug() {
        return this.isDebug;
    }

    public final Map<String, String> component19() {
        return this.rawReaderData;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Float getBatteryLevel() {
        return this.batteryLevel;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final Boolean getIsCharging() {
        return this.isCharging;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final boolean getIsDevKit() {
        return this.isDevKit;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getFirmwareId() {
        return this.firmwareId;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final Float getCoinCellBatteryVoltage() {
        return this.coinCellBatteryVoltage;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final Boolean getIsUsbConnected() {
        return this.isUsbConnected;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getConfigVersion() {
        return this.configVersion;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDeviceSettingVersion() {
        return this.deviceSettingVersion;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getBootloaderVersion() {
        return this.bootloaderVersion;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getFirmwareVersion() {
        return this.firmwareVersion;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getHardwareVersion() {
        return this.hardwareVersion;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getPinKeyProfileId() {
        return this.pinKeyProfileId;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getMacKeyProfileId() {
        return this.macKeyProfileId;
    }

    public final ReaderInfo copy(Integer batteryPercentage, Float batteryLevel, String configVersion, String deviceSettingVersion, String bootloaderVersion, String firmwareVersion, String hardwareVersion, String pinKeyProfileId, String macKeyProfileId, String trackKeyProfileId, String emvKeyProfileId, String pinKeysetId, String macKeysetId, String trackKeysetId, String emvKeysetId, String serial, String label, Boolean isDebug, Map<String, String> rawReaderData, Boolean isCharging, boolean isDevKit, String firmwareId, Float coinCellBatteryVoltage, Boolean isUsbConnected) {
        return new ReaderInfo(batteryPercentage, batteryLevel, configVersion, deviceSettingVersion, bootloaderVersion, firmwareVersion, hardwareVersion, pinKeyProfileId, macKeyProfileId, trackKeyProfileId, emvKeyProfileId, pinKeysetId, macKeysetId, trackKeysetId, emvKeysetId, serial, label, isDebug, rawReaderData, isCharging, isDevKit, firmwareId, coinCellBatteryVoltage, isUsbConnected);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderInfo)) {
            return false;
        }
        ReaderInfo readerInfo = (ReaderInfo) other;
        return Intrinsics.areEqual(this.batteryPercentage, readerInfo.batteryPercentage) && Intrinsics.areEqual((Object) this.batteryLevel, (Object) readerInfo.batteryLevel) && Intrinsics.areEqual(this.configVersion, readerInfo.configVersion) && Intrinsics.areEqual(this.deviceSettingVersion, readerInfo.deviceSettingVersion) && Intrinsics.areEqual(this.bootloaderVersion, readerInfo.bootloaderVersion) && Intrinsics.areEqual(this.firmwareVersion, readerInfo.firmwareVersion) && Intrinsics.areEqual(this.hardwareVersion, readerInfo.hardwareVersion) && Intrinsics.areEqual(this.pinKeyProfileId, readerInfo.pinKeyProfileId) && Intrinsics.areEqual(this.macKeyProfileId, readerInfo.macKeyProfileId) && Intrinsics.areEqual(this.trackKeyProfileId, readerInfo.trackKeyProfileId) && Intrinsics.areEqual(this.emvKeyProfileId, readerInfo.emvKeyProfileId) && Intrinsics.areEqual(this.pinKeysetId, readerInfo.pinKeysetId) && Intrinsics.areEqual(this.macKeysetId, readerInfo.macKeysetId) && Intrinsics.areEqual(this.trackKeysetId, readerInfo.trackKeysetId) && Intrinsics.areEqual(this.emvKeysetId, readerInfo.emvKeysetId) && Intrinsics.areEqual(this.serial, readerInfo.serial) && Intrinsics.areEqual(this.label, readerInfo.label) && Intrinsics.areEqual(this.isDebug, readerInfo.isDebug) && Intrinsics.areEqual(this.rawReaderData, readerInfo.rawReaderData) && Intrinsics.areEqual(this.isCharging, readerInfo.isCharging) && this.isDevKit == readerInfo.isDevKit && Intrinsics.areEqual(this.firmwareId, readerInfo.firmwareId) && Intrinsics.areEqual((Object) this.coinCellBatteryVoltage, (Object) readerInfo.coinCellBatteryVoltage) && Intrinsics.areEqual(this.isUsbConnected, readerInfo.isUsbConnected);
    }

    public int hashCode() {
        Integer num = this.batteryPercentage;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Float f = this.batteryLevel;
        int iHashCode2 = (iHashCode + (f == null ? 0 : f.hashCode())) * 31;
        String str = this.configVersion;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.deviceSettingVersion;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.bootloaderVersion;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.firmwareVersion;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.hardwareVersion;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.pinKeyProfileId;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.macKeyProfileId;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.trackKeyProfileId;
        int iHashCode10 = (iHashCode9 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.emvKeyProfileId;
        int iHashCode11 = (iHashCode10 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.pinKeysetId;
        int iHashCode12 = (iHashCode11 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.macKeysetId;
        int iHashCode13 = (iHashCode12 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.trackKeysetId;
        int iHashCode14 = (iHashCode13 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.emvKeysetId;
        int iHashCode15 = (iHashCode14 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.serial;
        int iHashCode16 = (iHashCode15 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.label;
        int iHashCode17 = (iHashCode16 + (str15 == null ? 0 : str15.hashCode())) * 31;
        Boolean bool = this.isDebug;
        int iHashCode18 = (iHashCode17 + (bool == null ? 0 : bool.hashCode())) * 31;
        Map<String, String> map = this.rawReaderData;
        int iHashCode19 = (iHashCode18 + (map == null ? 0 : map.hashCode())) * 31;
        Boolean bool2 = this.isCharging;
        int iHashCode20 = (((iHashCode19 + (bool2 == null ? 0 : bool2.hashCode())) * 31) + Boolean.hashCode(this.isDevKit)) * 31;
        String str16 = this.firmwareId;
        int iHashCode21 = (iHashCode20 + (str16 == null ? 0 : str16.hashCode())) * 31;
        Float f2 = this.coinCellBatteryVoltage;
        int iHashCode22 = (iHashCode21 + (f2 == null ? 0 : f2.hashCode())) * 31;
        Boolean bool3 = this.isUsbConnected;
        return iHashCode22 + (bool3 != null ? bool3.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ReaderInfo(batteryPercentage=");
        sb.append(this.batteryPercentage).append(", batteryLevel=").append(this.batteryLevel).append(", configVersion=").append(this.configVersion).append(", deviceSettingVersion=").append(this.deviceSettingVersion).append(", bootloaderVersion=").append(this.bootloaderVersion).append(", firmwareVersion=").append(this.firmwareVersion).append(", hardwareVersion=").append(this.hardwareVersion).append(", pinKeyProfileId=").append(this.pinKeyProfileId).append(", macKeyProfileId=").append(this.macKeyProfileId).append(", trackKeyProfileId=").append(this.trackKeyProfileId).append(", emvKeyProfileId=").append(this.emvKeyProfileId).append(", pinKeysetId=");
        sb.append(this.pinKeysetId).append(", macKeysetId=").append(this.macKeysetId).append(", trackKeysetId=").append(this.trackKeysetId).append(", emvKeysetId=").append(this.emvKeysetId).append(", serial=").append(this.serial).append(", label=").append(this.label).append(", isDebug=").append(this.isDebug).append(", rawReaderData=").append(this.rawReaderData).append(", isCharging=").append(this.isCharging).append(", isDevKit=").append(this.isDevKit).append(", firmwareId=").append(this.firmwareId).append(", coinCellBatteryVoltage=").append(this.coinCellBatteryVoltage);
        sb.append(", isUsbConnected=").append(this.isUsbConnected).append(')');
        return sb.toString();
    }

    public ReaderInfo(Integer num, Float f, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, Boolean bool, Map<String, String> map, Boolean bool2, boolean z, String str16, Float f2, Boolean bool3) {
        this.batteryPercentage = num;
        this.batteryLevel = f;
        this.configVersion = str;
        this.deviceSettingVersion = str2;
        this.bootloaderVersion = str3;
        this.firmwareVersion = str4;
        this.hardwareVersion = str5;
        this.pinKeyProfileId = str6;
        this.macKeyProfileId = str7;
        this.trackKeyProfileId = str8;
        this.emvKeyProfileId = str9;
        this.pinKeysetId = str10;
        this.macKeysetId = str11;
        this.trackKeysetId = str12;
        this.emvKeysetId = str13;
        this.serial = str14;
        this.label = str15;
        this.isDebug = bool;
        this.rawReaderData = map;
        this.isCharging = bool2;
        this.isDevKit = z;
        this.firmwareId = str16;
        this.coinCellBatteryVoltage = f2;
        this.isUsbConnected = bool3;
    }

    public final Float getBatteryLevel() {
        return this.batteryLevel;
    }

    public final String getConfigVersion() {
        return this.configVersion;
    }

    public final String getDeviceSettingVersion() {
        return this.deviceSettingVersion;
    }

    public final String getBootloaderVersion() {
        return this.bootloaderVersion;
    }

    public final String getFirmwareVersion() {
        return this.firmwareVersion;
    }

    public final String getHardwareVersion() {
        return this.hardwareVersion;
    }

    public final String getPinKeyProfileId() {
        return this.pinKeyProfileId;
    }

    public final String getMacKeyProfileId() {
        return this.macKeyProfileId;
    }

    public final String getTrackKeyProfileId() {
        return this.trackKeyProfileId;
    }

    public final String getEmvKeyProfileId() {
        return this.emvKeyProfileId;
    }

    public final String getPinKeysetId() {
        return this.pinKeysetId;
    }

    public final String getMacKeysetId() {
        return this.macKeysetId;
    }

    public final String getTrackKeysetId() {
        return this.trackKeysetId;
    }

    public final String getEmvKeysetId() {
        return this.emvKeysetId;
    }

    public final String getSerial() {
        return this.serial;
    }

    public final String getLabel() {
        return this.label;
    }

    public /* synthetic */ ReaderInfo(Integer num, Float f, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, Boolean bool, Map map, Boolean bool2, boolean z, String str16, Float f2, Boolean bool3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : f, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? null : str6, (i & 256) != 0 ? null : str7, (i & 512) != 0 ? null : str8, (i & 1024) != 0 ? null : str9, (i & 2048) != 0 ? null : str10, (i & 4096) != 0 ? null : str11, (i & 8192) != 0 ? null : str12, (i & 16384) != 0 ? null : str13, (i & 32768) != 0 ? null : str14, (i & 65536) != 0 ? null : str15, (i & 131072) != 0 ? false : bool, (i & 262144) != 0 ? null : map, (i & 524288) != 0 ? null : bool2, (i & 1048576) == 0 ? z : false, (i & 2097152) != 0 ? null : str16, (i & 4194304) != 0 ? null : f2, (i & 8388608) != 0 ? null : bool3);
    }

    public final Boolean isDebug() {
        return this.isDebug;
    }

    public final Map<String, String> getRawReaderData() {
        return this.rawReaderData;
    }

    public final Boolean isCharging() {
        return this.isCharging;
    }

    public final boolean isDevKit() {
        return this.isDevKit;
    }

    public final String getFirmwareId() {
        return this.firmwareId;
    }

    public final Float getCoinCellBatteryVoltage() {
        return this.coinCellBatteryVoltage;
    }

    public final Boolean isUsbConnected() {
        return this.isUsbConnected;
    }
}
