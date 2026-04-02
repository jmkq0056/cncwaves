package com.stripe.bbpos.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.sun.jna.platform.win32.WinNT;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: DeviceInfo.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002#$Bó\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0018¢\u0006\u0002\u0010\u0019Jô\u0001\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0017\u001a\u00020\u0018J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u0002H\u0016J\b\u0010\"\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/stripe/bbpos/sdk/DeviceInfo;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;", "pinKsn", "", "batteryPercentage", "terminalSettingVersion", "deviceSettingVersion", "bootloaderVersion", "emvKeyProfileId", "firmwareVersion", "hardwareVersion", "macKeyProfileId", "pinKeyProfileId", "serialNumber", "trackKeyProfileId", "isCharging", "firmwareId", "coinCellBatteryVoltage", "macKsn", "emvKsn", "trackKsn", "isUsbConnected", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceInfo extends Message<DeviceInfo, Builder> {
    public static final ProtoAdapter<DeviceInfo> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 1, tag = 2)
    public final String batteryPercentage;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 4, tag = 5)
    public final String bootloaderVersion;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 14, tag = 15)
    public final String coinCellBatteryVoltage;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 3, tag = 4)
    public final String deviceSettingVersion;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 5, tag = 6)
    public final String emvKeyProfileId;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 16, tag = 17)
    public final String emvKsn;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 13, tag = 14)
    public final String firmwareId;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 6, tag = 7)
    public final String firmwareVersion;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 7, tag = 8)
    public final String hardwareVersion;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 12, tag = 13)
    public final String isCharging;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 18, tag = 19)
    public final String isUsbConnected;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 8, tag = 9)
    public final String macKeyProfileId;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 15, tag = 16)
    public final String macKsn;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 9, tag = 10)
    public final String pinKeyProfileId;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 0, tag = 1)
    public final String pinKsn;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 10, tag = 11)
    public final String serialNumber;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 2, tag = 3)
    public final String terminalSettingVersion;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 11, tag = 12)
    public final String trackKeyProfileId;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 17, tag = 18)
    public final String trackKsn;

    public DeviceInfo() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, WinNT.NLS_VALID_LOCALE_MASK, null);
    }

    public /* synthetic */ DeviceInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : str8, (i & 256) != 0 ? null : str9, (i & 512) != 0 ? null : str10, (i & 1024) != 0 ? null : str11, (i & 2048) != 0 ? null : str12, (i & 4096) != 0 ? null : str13, (i & 8192) != 0 ? null : str14, (i & 16384) != 0 ? null : str15, (i & 32768) != 0 ? null : str16, (i & 65536) != 0 ? null : str17, (i & 131072) != 0 ? null : str18, (i & 262144) != 0 ? null : str19, (i & 524288) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.pinKsn = str;
        this.batteryPercentage = str2;
        this.terminalSettingVersion = str3;
        this.deviceSettingVersion = str4;
        this.bootloaderVersion = str5;
        this.emvKeyProfileId = str6;
        this.firmwareVersion = str7;
        this.hardwareVersion = str8;
        this.macKeyProfileId = str9;
        this.pinKeyProfileId = str10;
        this.serialNumber = str11;
        this.trackKeyProfileId = str12;
        this.isCharging = str13;
        this.firmwareId = str14;
        this.coinCellBatteryVoltage = str15;
        this.macKsn = str16;
        this.emvKsn = str17;
        this.trackKsn = str18;
        this.isUsbConnected = str19;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.pinKsn = this.pinKsn;
        builder.batteryPercentage = this.batteryPercentage;
        builder.terminalSettingVersion = this.terminalSettingVersion;
        builder.deviceSettingVersion = this.deviceSettingVersion;
        builder.bootloaderVersion = this.bootloaderVersion;
        builder.emvKeyProfileId = this.emvKeyProfileId;
        builder.firmwareVersion = this.firmwareVersion;
        builder.hardwareVersion = this.hardwareVersion;
        builder.macKeyProfileId = this.macKeyProfileId;
        builder.pinKeyProfileId = this.pinKeyProfileId;
        builder.serialNumber = this.serialNumber;
        builder.trackKeyProfileId = this.trackKeyProfileId;
        builder.isCharging = this.isCharging;
        builder.firmwareId = this.firmwareId;
        builder.coinCellBatteryVoltage = this.coinCellBatteryVoltage;
        builder.macKsn = this.macKsn;
        builder.emvKsn = this.emvKsn;
        builder.trackKsn = this.trackKsn;
        builder.isUsbConnected = this.isUsbConnected;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeviceInfo)) {
            return false;
        }
        DeviceInfo deviceInfo = (DeviceInfo) other;
        return Intrinsics.areEqual(unknownFields(), deviceInfo.unknownFields()) && Intrinsics.areEqual(this.pinKsn, deviceInfo.pinKsn) && Intrinsics.areEqual(this.batteryPercentage, deviceInfo.batteryPercentage) && Intrinsics.areEqual(this.terminalSettingVersion, deviceInfo.terminalSettingVersion) && Intrinsics.areEqual(this.deviceSettingVersion, deviceInfo.deviceSettingVersion) && Intrinsics.areEqual(this.bootloaderVersion, deviceInfo.bootloaderVersion) && Intrinsics.areEqual(this.emvKeyProfileId, deviceInfo.emvKeyProfileId) && Intrinsics.areEqual(this.firmwareVersion, deviceInfo.firmwareVersion) && Intrinsics.areEqual(this.hardwareVersion, deviceInfo.hardwareVersion) && Intrinsics.areEqual(this.macKeyProfileId, deviceInfo.macKeyProfileId) && Intrinsics.areEqual(this.pinKeyProfileId, deviceInfo.pinKeyProfileId) && Intrinsics.areEqual(this.serialNumber, deviceInfo.serialNumber) && Intrinsics.areEqual(this.trackKeyProfileId, deviceInfo.trackKeyProfileId) && Intrinsics.areEqual(this.isCharging, deviceInfo.isCharging) && Intrinsics.areEqual(this.firmwareId, deviceInfo.firmwareId) && Intrinsics.areEqual(this.coinCellBatteryVoltage, deviceInfo.coinCellBatteryVoltage) && Intrinsics.areEqual(this.macKsn, deviceInfo.macKsn) && Intrinsics.areEqual(this.emvKsn, deviceInfo.emvKsn) && Intrinsics.areEqual(this.trackKsn, deviceInfo.trackKsn) && Intrinsics.areEqual(this.isUsbConnected, deviceInfo.isUsbConnected);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.pinKsn;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.batteryPercentage;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.terminalSettingVersion;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.deviceSettingVersion;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.bootloaderVersion;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.emvKeyProfileId;
        int iHashCode7 = (iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.firmwareVersion;
        int iHashCode8 = (iHashCode7 + (str7 != null ? str7.hashCode() : 0)) * 37;
        String str8 = this.hardwareVersion;
        int iHashCode9 = (iHashCode8 + (str8 != null ? str8.hashCode() : 0)) * 37;
        String str9 = this.macKeyProfileId;
        int iHashCode10 = (iHashCode9 + (str9 != null ? str9.hashCode() : 0)) * 37;
        String str10 = this.pinKeyProfileId;
        int iHashCode11 = (iHashCode10 + (str10 != null ? str10.hashCode() : 0)) * 37;
        String str11 = this.serialNumber;
        int iHashCode12 = (iHashCode11 + (str11 != null ? str11.hashCode() : 0)) * 37;
        String str12 = this.trackKeyProfileId;
        int iHashCode13 = (iHashCode12 + (str12 != null ? str12.hashCode() : 0)) * 37;
        String str13 = this.isCharging;
        int iHashCode14 = (iHashCode13 + (str13 != null ? str13.hashCode() : 0)) * 37;
        String str14 = this.firmwareId;
        int iHashCode15 = (iHashCode14 + (str14 != null ? str14.hashCode() : 0)) * 37;
        String str15 = this.coinCellBatteryVoltage;
        int iHashCode16 = (iHashCode15 + (str15 != null ? str15.hashCode() : 0)) * 37;
        String str16 = this.macKsn;
        int iHashCode17 = (iHashCode16 + (str16 != null ? str16.hashCode() : 0)) * 37;
        String str17 = this.emvKsn;
        int iHashCode18 = (iHashCode17 + (str17 != null ? str17.hashCode() : 0)) * 37;
        String str18 = this.trackKsn;
        int iHashCode19 = (iHashCode18 + (str18 != null ? str18.hashCode() : 0)) * 37;
        String str19 = this.isUsbConnected;
        int iHashCode20 = iHashCode19 + (str19 != null ? str19.hashCode() : 0);
        this.hashCode = iHashCode20;
        return iHashCode20;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.pinKsn != null) {
            arrayList.add("pinKsn=" + Internal.sanitize(this.pinKsn));
        }
        if (this.batteryPercentage != null) {
            arrayList.add("batteryPercentage=" + Internal.sanitize(this.batteryPercentage));
        }
        if (this.terminalSettingVersion != null) {
            arrayList.add("terminalSettingVersion=" + Internal.sanitize(this.terminalSettingVersion));
        }
        if (this.deviceSettingVersion != null) {
            arrayList.add("deviceSettingVersion=" + Internal.sanitize(this.deviceSettingVersion));
        }
        if (this.bootloaderVersion != null) {
            arrayList.add("bootloaderVersion=" + Internal.sanitize(this.bootloaderVersion));
        }
        if (this.emvKeyProfileId != null) {
            arrayList.add("emvKeyProfileId=" + Internal.sanitize(this.emvKeyProfileId));
        }
        if (this.firmwareVersion != null) {
            arrayList.add("firmwareVersion=" + Internal.sanitize(this.firmwareVersion));
        }
        if (this.hardwareVersion != null) {
            arrayList.add("hardwareVersion=" + Internal.sanitize(this.hardwareVersion));
        }
        if (this.macKeyProfileId != null) {
            arrayList.add("macKeyProfileId=" + Internal.sanitize(this.macKeyProfileId));
        }
        if (this.pinKeyProfileId != null) {
            arrayList.add("pinKeyProfileId=" + Internal.sanitize(this.pinKeyProfileId));
        }
        if (this.serialNumber != null) {
            arrayList.add("serialNumber=" + Internal.sanitize(this.serialNumber));
        }
        if (this.trackKeyProfileId != null) {
            arrayList.add("trackKeyProfileId=" + Internal.sanitize(this.trackKeyProfileId));
        }
        if (this.isCharging != null) {
            arrayList.add("isCharging=" + Internal.sanitize(this.isCharging));
        }
        if (this.firmwareId != null) {
            arrayList.add("firmwareId=" + Internal.sanitize(this.firmwareId));
        }
        if (this.coinCellBatteryVoltage != null) {
            arrayList.add("coinCellBatteryVoltage=" + Internal.sanitize(this.coinCellBatteryVoltage));
        }
        if (this.macKsn != null) {
            arrayList.add("macKsn=" + Internal.sanitize(this.macKsn));
        }
        if (this.emvKsn != null) {
            arrayList.add("emvKsn=" + Internal.sanitize(this.emvKsn));
        }
        if (this.trackKsn != null) {
            arrayList.add("trackKsn=" + Internal.sanitize(this.trackKsn));
        }
        if (this.isUsbConnected != null) {
            arrayList.add("isUsbConnected=" + Internal.sanitize(this.isUsbConnected));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeviceInfo{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DeviceInfo copy$default(DeviceInfo deviceInfo, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, ByteString byteString, int i, Object obj) {
        String str20 = (i & 1) != 0 ? deviceInfo.pinKsn : str;
        return deviceInfo.copy(str20, (i & 2) != 0 ? deviceInfo.batteryPercentage : str2, (i & 4) != 0 ? deviceInfo.terminalSettingVersion : str3, (i & 8) != 0 ? deviceInfo.deviceSettingVersion : str4, (i & 16) != 0 ? deviceInfo.bootloaderVersion : str5, (i & 32) != 0 ? deviceInfo.emvKeyProfileId : str6, (i & 64) != 0 ? deviceInfo.firmwareVersion : str7, (i & 128) != 0 ? deviceInfo.hardwareVersion : str8, (i & 256) != 0 ? deviceInfo.macKeyProfileId : str9, (i & 512) != 0 ? deviceInfo.pinKeyProfileId : str10, (i & 1024) != 0 ? deviceInfo.serialNumber : str11, (i & 2048) != 0 ? deviceInfo.trackKeyProfileId : str12, (i & 4096) != 0 ? deviceInfo.isCharging : str13, (i & 8192) != 0 ? deviceInfo.firmwareId : str14, (i & 16384) != 0 ? deviceInfo.coinCellBatteryVoltage : str15, (i & 32768) != 0 ? deviceInfo.macKsn : str16, (i & 65536) != 0 ? deviceInfo.emvKsn : str17, (i & 131072) != 0 ? deviceInfo.trackKsn : str18, (i & 262144) != 0 ? deviceInfo.isUsbConnected : str19, (i & 524288) != 0 ? deviceInfo.unknownFields() : byteString);
    }

    public final DeviceInfo copy(String pinKsn, String batteryPercentage, String terminalSettingVersion, String deviceSettingVersion, String bootloaderVersion, String emvKeyProfileId, String firmwareVersion, String hardwareVersion, String macKeyProfileId, String pinKeyProfileId, String serialNumber, String trackKeyProfileId, String isCharging, String firmwareId, String coinCellBatteryVoltage, String macKsn, String emvKsn, String trackKsn, String isUsbConnected, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeviceInfo(pinKsn, batteryPercentage, terminalSettingVersion, deviceSettingVersion, bootloaderVersion, emvKeyProfileId, firmwareVersion, hardwareVersion, macKeyProfileId, pinKeyProfileId, serialNumber, trackKeyProfileId, isCharging, firmwareId, coinCellBatteryVoltage, macKsn, emvKsn, trackKsn, isUsbConnected, unknownFields);
    }

    /* JADX INFO: compiled from: DeviceInfo.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/DeviceInfo;", "()V", "batteryPercentage", "", "bootloaderVersion", "coinCellBatteryVoltage", "deviceSettingVersion", "emvKeyProfileId", "emvKsn", "firmwareId", "firmwareVersion", "hardwareVersion", "isCharging", "isUsbConnected", "macKeyProfileId", "macKsn", "pinKeyProfileId", "pinKsn", "serialNumber", "terminalSettingVersion", "trackKeyProfileId", "trackKsn", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeviceInfo, Builder> {
        public String batteryPercentage;
        public String bootloaderVersion;
        public String coinCellBatteryVoltage;
        public String deviceSettingVersion;
        public String emvKeyProfileId;
        public String emvKsn;
        public String firmwareId;
        public String firmwareVersion;
        public String hardwareVersion;
        public String isCharging;
        public String isUsbConnected;
        public String macKeyProfileId;
        public String macKsn;
        public String pinKeyProfileId;
        public String pinKsn;
        public String serialNumber;
        public String terminalSettingVersion;
        public String trackKeyProfileId;
        public String trackKsn;

        public final Builder pinKsn(String pinKsn) {
            this.pinKsn = pinKsn;
            return this;
        }

        public final Builder batteryPercentage(String batteryPercentage) {
            this.batteryPercentage = batteryPercentage;
            return this;
        }

        public final Builder terminalSettingVersion(String terminalSettingVersion) {
            this.terminalSettingVersion = terminalSettingVersion;
            return this;
        }

        public final Builder deviceSettingVersion(String deviceSettingVersion) {
            this.deviceSettingVersion = deviceSettingVersion;
            return this;
        }

        public final Builder bootloaderVersion(String bootloaderVersion) {
            this.bootloaderVersion = bootloaderVersion;
            return this;
        }

        public final Builder emvKeyProfileId(String emvKeyProfileId) {
            this.emvKeyProfileId = emvKeyProfileId;
            return this;
        }

        public final Builder firmwareVersion(String firmwareVersion) {
            this.firmwareVersion = firmwareVersion;
            return this;
        }

        public final Builder hardwareVersion(String hardwareVersion) {
            this.hardwareVersion = hardwareVersion;
            return this;
        }

        public final Builder macKeyProfileId(String macKeyProfileId) {
            this.macKeyProfileId = macKeyProfileId;
            return this;
        }

        public final Builder pinKeyProfileId(String pinKeyProfileId) {
            this.pinKeyProfileId = pinKeyProfileId;
            return this;
        }

        public final Builder serialNumber(String serialNumber) {
            this.serialNumber = serialNumber;
            return this;
        }

        public final Builder trackKeyProfileId(String trackKeyProfileId) {
            this.trackKeyProfileId = trackKeyProfileId;
            return this;
        }

        public final Builder isCharging(String isCharging) {
            this.isCharging = isCharging;
            return this;
        }

        public final Builder firmwareId(String firmwareId) {
            this.firmwareId = firmwareId;
            return this;
        }

        public final Builder coinCellBatteryVoltage(String coinCellBatteryVoltage) {
            this.coinCellBatteryVoltage = coinCellBatteryVoltage;
            return this;
        }

        public final Builder macKsn(String macKsn) {
            this.macKsn = macKsn;
            return this;
        }

        public final Builder emvKsn(String emvKsn) {
            this.emvKsn = emvKsn;
            return this;
        }

        public final Builder trackKsn(String trackKsn) {
            this.trackKsn = trackKsn;
            return this;
        }

        public final Builder isUsbConnected(String isUsbConnected) {
            this.isUsbConnected = isUsbConnected;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeviceInfo build() {
            return new DeviceInfo(this.pinKsn, this.batteryPercentage, this.terminalSettingVersion, this.deviceSettingVersion, this.bootloaderVersion, this.emvKeyProfileId, this.firmwareVersion, this.hardwareVersion, this.macKeyProfileId, this.pinKeyProfileId, this.serialNumber, this.trackKeyProfileId, this.isCharging, this.firmwareId, this.coinCellBatteryVoltage, this.macKsn, this.emvKsn, this.trackKsn, this.isUsbConnected, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeviceInfo.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/DeviceInfo$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/DeviceInfo;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeviceInfo build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceInfo.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeviceInfo>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.DeviceInfo$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeviceInfo value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ProtoAdapter.STRING.encodedSizeWithTag(1, value.pinKsn) + ProtoAdapter.STRING.encodedSizeWithTag(2, value.batteryPercentage) + ProtoAdapter.STRING.encodedSizeWithTag(3, value.terminalSettingVersion) + ProtoAdapter.STRING.encodedSizeWithTag(4, value.deviceSettingVersion) + ProtoAdapter.STRING.encodedSizeWithTag(5, value.bootloaderVersion) + ProtoAdapter.STRING.encodedSizeWithTag(6, value.emvKeyProfileId) + ProtoAdapter.STRING.encodedSizeWithTag(7, value.firmwareVersion) + ProtoAdapter.STRING.encodedSizeWithTag(8, value.hardwareVersion) + ProtoAdapter.STRING.encodedSizeWithTag(9, value.macKeyProfileId) + ProtoAdapter.STRING.encodedSizeWithTag(10, value.pinKeyProfileId) + ProtoAdapter.STRING.encodedSizeWithTag(11, value.serialNumber) + ProtoAdapter.STRING.encodedSizeWithTag(12, value.trackKeyProfileId) + ProtoAdapter.STRING.encodedSizeWithTag(13, value.isCharging) + ProtoAdapter.STRING.encodedSizeWithTag(14, value.firmwareId) + ProtoAdapter.STRING.encodedSizeWithTag(15, value.coinCellBatteryVoltage) + ProtoAdapter.STRING.encodedSizeWithTag(16, value.macKsn) + ProtoAdapter.STRING.encodedSizeWithTag(17, value.emvKsn) + ProtoAdapter.STRING.encodedSizeWithTag(18, value.trackKsn) + ProtoAdapter.STRING.encodedSizeWithTag(19, value.isUsbConnected);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeviceInfo value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.pinKsn);
                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.batteryPercentage);
                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.terminalSettingVersion);
                ProtoAdapter.STRING.encodeWithTag(writer, 4, value.deviceSettingVersion);
                ProtoAdapter.STRING.encodeWithTag(writer, 5, value.bootloaderVersion);
                ProtoAdapter.STRING.encodeWithTag(writer, 6, value.emvKeyProfileId);
                ProtoAdapter.STRING.encodeWithTag(writer, 7, value.firmwareVersion);
                ProtoAdapter.STRING.encodeWithTag(writer, 8, value.hardwareVersion);
                ProtoAdapter.STRING.encodeWithTag(writer, 9, value.macKeyProfileId);
                ProtoAdapter.STRING.encodeWithTag(writer, 10, value.pinKeyProfileId);
                ProtoAdapter.STRING.encodeWithTag(writer, 11, value.serialNumber);
                ProtoAdapter.STRING.encodeWithTag(writer, 12, value.trackKeyProfileId);
                ProtoAdapter.STRING.encodeWithTag(writer, 13, value.isCharging);
                ProtoAdapter.STRING.encodeWithTag(writer, 14, value.firmwareId);
                ProtoAdapter.STRING.encodeWithTag(writer, 15, value.coinCellBatteryVoltage);
                ProtoAdapter.STRING.encodeWithTag(writer, 16, value.macKsn);
                ProtoAdapter.STRING.encodeWithTag(writer, 17, value.emvKsn);
                ProtoAdapter.STRING.encodeWithTag(writer, 18, value.trackKsn);
                ProtoAdapter.STRING.encodeWithTag(writer, 19, value.isUsbConnected);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeviceInfo value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.encodeWithTag(writer, 19, value.isUsbConnected);
                ProtoAdapter.STRING.encodeWithTag(writer, 18, value.trackKsn);
                ProtoAdapter.STRING.encodeWithTag(writer, 17, value.emvKsn);
                ProtoAdapter.STRING.encodeWithTag(writer, 16, value.macKsn);
                ProtoAdapter.STRING.encodeWithTag(writer, 15, value.coinCellBatteryVoltage);
                ProtoAdapter.STRING.encodeWithTag(writer, 14, value.firmwareId);
                ProtoAdapter.STRING.encodeWithTag(writer, 13, value.isCharging);
                ProtoAdapter.STRING.encodeWithTag(writer, 12, value.trackKeyProfileId);
                ProtoAdapter.STRING.encodeWithTag(writer, 11, value.serialNumber);
                ProtoAdapter.STRING.encodeWithTag(writer, 10, value.pinKeyProfileId);
                ProtoAdapter.STRING.encodeWithTag(writer, 9, value.macKeyProfileId);
                ProtoAdapter.STRING.encodeWithTag(writer, 8, value.hardwareVersion);
                ProtoAdapter.STRING.encodeWithTag(writer, 7, value.firmwareVersion);
                ProtoAdapter.STRING.encodeWithTag(writer, 6, value.emvKeyProfileId);
                ProtoAdapter.STRING.encodeWithTag(writer, 5, value.bootloaderVersion);
                ProtoAdapter.STRING.encodeWithTag(writer, 4, value.deviceSettingVersion);
                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.terminalSettingVersion);
                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.batteryPercentage);
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.pinKsn);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeviceInfo redact(DeviceInfo value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return DeviceInfo.copy$default(value, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ByteString.EMPTY, 524287, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeviceInfo decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                String strDecode6 = null;
                String strDecode7 = null;
                String strDecode8 = null;
                String strDecode9 = null;
                String strDecode10 = null;
                String strDecode11 = null;
                String strDecode12 = null;
                String strDecode13 = null;
                String strDecode14 = null;
                String strDecode15 = null;
                String strDecode16 = null;
                String strDecode17 = null;
                String strDecode18 = null;
                String strDecode19 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    String str = strDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode19 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 10:
                                strDecode9 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 11:
                                strDecode10 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 12:
                                strDecode11 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 13:
                                strDecode12 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 14:
                                strDecode13 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 15:
                                strDecode14 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 16:
                                strDecode15 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 17:
                                strDecode16 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 18:
                                strDecode17 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 19:
                                strDecode18 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        strDecode = str;
                    } else {
                        return new DeviceInfo(strDecode19, str, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, strDecode8, strDecode9, strDecode10, strDecode11, strDecode12, strDecode13, strDecode14, strDecode15, strDecode16, strDecode17, strDecode18, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
