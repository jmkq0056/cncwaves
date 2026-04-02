package com.stripe.proto.model.common;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.common.DeviceInfo;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: DeviceInfo.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 %2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003$%&B«\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0019¢\u0006\u0002\u0010\u001aJ¬\u0001\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u00062\b\b\u0002\u0010\u0013\u001a\u00020\u00062\b\b\u0002\u0010\u0014\u001a\u00020\u00062\b\b\u0002\u0010\u0015\u001a\u00020\u00062\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u0019J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\u0002H\u0016J\b\u0010#\u001a\u00020\u0006H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/stripe/proto/model/common/DeviceInfo;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/DeviceInfo$Builder;", "device_class", "Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;", "device_uuid", "", "hardware_model", "Lcom/stripe/proto/model/common/HardwareModel;", "app_model", "Lcom/stripe/proto/model/common/ApplicationModel;", "device_ip", "host_hw_version", "host_os_version", "hostname", "connectivity_source", "Lcom/stripe/proto/model/common/InternetConnectionSource;", "bbpos_firmware", "bbpos_base_config", "bbpos_key_profile", "bbpos_rom", "stripe_config_hash", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/proto/model/common/Location;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;Ljava/lang/String;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/ApplicationModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InternetConnectionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/Location;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "DeviceClass", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceInfo extends Message<DeviceInfo, Builder> {
    public static final ProtoAdapter<DeviceInfo> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.ApplicationModel#ADAPTER", jsonName = "appModel", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 7)
    public final ApplicationModel app_model;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "bbposBaseConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final String bbpos_base_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "bbposFirmware", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final String bbpos_firmware;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "bbposKeyProfile", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final String bbpos_key_profile;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "bbposRom", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final String bbpos_rom;

    @WireField(adapter = "com.stripe.proto.model.common.InternetConnectionSource#ADAPTER", jsonName = "connectivitySource", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final InternetConnectionSource connectivity_source;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo$DeviceClass#ADAPTER", jsonName = "deviceClass", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceClass device_class;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceIp", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 4)
    public final String device_ip;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceUuid", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String device_uuid;

    @WireField(adapter = "com.stripe.proto.model.common.HardwareModel#ADAPTER", jsonName = "hardwareModel", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final HardwareModel hardware_model;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "hostHwVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 5)
    public final String host_hw_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "hostOsVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 6)
    public final String host_os_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String hostname;

    @WireField(adapter = "com.stripe.proto.model.common.Location#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
    public final Location location;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeConfigHash", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 14)
    public final String stripe_config_hash;

    public DeviceInfo() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null);
    }

    public /* synthetic */ DeviceInfo(DeviceClass deviceClass, String str, HardwareModel hardwareModel, ApplicationModel applicationModel, String str2, String str3, String str4, String str5, InternetConnectionSource internetConnectionSource, String str6, String str7, String str8, String str9, String str10, Location location, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? DeviceClass.INVALID : deviceClass, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : hardwareModel, (i & 8) != 0 ? null : applicationModel, (i & 16) != 0 ? "" : str2, (i & 32) != 0 ? "" : str3, (i & 64) != 0 ? "" : str4, (i & 128) != 0 ? "" : str5, (i & 256) != 0 ? InternetConnectionSource.UNKNOWN : internetConnectionSource, (i & 512) != 0 ? "" : str6, (i & 1024) != 0 ? "" : str7, (i & 2048) != 0 ? "" : str8, (i & 4096) != 0 ? "" : str9, (i & 8192) == 0 ? str10 : "", (i & 16384) != 0 ? null : location, (i & 32768) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceInfo(DeviceClass device_class, String device_uuid, HardwareModel hardwareModel, ApplicationModel applicationModel, String device_ip, String host_hw_version, String host_os_version, String hostname, InternetConnectionSource connectivity_source, String bbpos_firmware, String bbpos_base_config, String bbpos_key_profile, String bbpos_rom, String stripe_config_hash, Location location, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(device_class, "device_class");
        Intrinsics.checkNotNullParameter(device_uuid, "device_uuid");
        Intrinsics.checkNotNullParameter(device_ip, "device_ip");
        Intrinsics.checkNotNullParameter(host_hw_version, "host_hw_version");
        Intrinsics.checkNotNullParameter(host_os_version, "host_os_version");
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Intrinsics.checkNotNullParameter(connectivity_source, "connectivity_source");
        Intrinsics.checkNotNullParameter(bbpos_firmware, "bbpos_firmware");
        Intrinsics.checkNotNullParameter(bbpos_base_config, "bbpos_base_config");
        Intrinsics.checkNotNullParameter(bbpos_key_profile, "bbpos_key_profile");
        Intrinsics.checkNotNullParameter(bbpos_rom, "bbpos_rom");
        Intrinsics.checkNotNullParameter(stripe_config_hash, "stripe_config_hash");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_class = device_class;
        this.device_uuid = device_uuid;
        this.hardware_model = hardwareModel;
        this.app_model = applicationModel;
        this.device_ip = device_ip;
        this.host_hw_version = host_hw_version;
        this.host_os_version = host_os_version;
        this.hostname = hostname;
        this.connectivity_source = connectivity_source;
        this.bbpos_firmware = bbpos_firmware;
        this.bbpos_base_config = bbpos_base_config;
        this.bbpos_key_profile = bbpos_key_profile;
        this.bbpos_rom = bbpos_rom;
        this.stripe_config_hash = stripe_config_hash;
        this.location = location;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_class = this.device_class;
        builder.device_uuid = this.device_uuid;
        builder.hardware_model = this.hardware_model;
        builder.app_model = this.app_model;
        builder.device_ip = this.device_ip;
        builder.host_hw_version = this.host_hw_version;
        builder.host_os_version = this.host_os_version;
        builder.hostname = this.hostname;
        builder.connectivity_source = this.connectivity_source;
        builder.bbpos_firmware = this.bbpos_firmware;
        builder.bbpos_base_config = this.bbpos_base_config;
        builder.bbpos_key_profile = this.bbpos_key_profile;
        builder.bbpos_rom = this.bbpos_rom;
        builder.stripe_config_hash = this.stripe_config_hash;
        builder.location = this.location;
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
        return Intrinsics.areEqual(unknownFields(), deviceInfo.unknownFields()) && this.device_class == deviceInfo.device_class && Intrinsics.areEqual(this.device_uuid, deviceInfo.device_uuid) && Intrinsics.areEqual(this.hardware_model, deviceInfo.hardware_model) && Intrinsics.areEqual(this.app_model, deviceInfo.app_model) && Intrinsics.areEqual(this.device_ip, deviceInfo.device_ip) && Intrinsics.areEqual(this.host_hw_version, deviceInfo.host_hw_version) && Intrinsics.areEqual(this.host_os_version, deviceInfo.host_os_version) && Intrinsics.areEqual(this.hostname, deviceInfo.hostname) && this.connectivity_source == deviceInfo.connectivity_source && Intrinsics.areEqual(this.bbpos_firmware, deviceInfo.bbpos_firmware) && Intrinsics.areEqual(this.bbpos_base_config, deviceInfo.bbpos_base_config) && Intrinsics.areEqual(this.bbpos_key_profile, deviceInfo.bbpos_key_profile) && Intrinsics.areEqual(this.bbpos_rom, deviceInfo.bbpos_rom) && Intrinsics.areEqual(this.stripe_config_hash, deviceInfo.stripe_config_hash) && Intrinsics.areEqual(this.location, deviceInfo.location);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((unknownFields().hashCode() * 37) + this.device_class.hashCode()) * 37) + this.device_uuid.hashCode()) * 37;
        HardwareModel hardwareModel = this.hardware_model;
        int iHashCode2 = (iHashCode + (hardwareModel != null ? hardwareModel.hashCode() : 0)) * 37;
        ApplicationModel applicationModel = this.app_model;
        int iHashCode3 = (((((((((((((((((((((iHashCode2 + (applicationModel != null ? applicationModel.hashCode() : 0)) * 37) + this.device_ip.hashCode()) * 37) + this.host_hw_version.hashCode()) * 37) + this.host_os_version.hashCode()) * 37) + this.hostname.hashCode()) * 37) + this.connectivity_source.hashCode()) * 37) + this.bbpos_firmware.hashCode()) * 37) + this.bbpos_base_config.hashCode()) * 37) + this.bbpos_key_profile.hashCode()) * 37) + this.bbpos_rom.hashCode()) * 37) + this.stripe_config_hash.hashCode()) * 37;
        Location location = this.location;
        int iHashCode4 = iHashCode3 + (location != null ? location.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("device_class=" + this.device_class);
        arrayList2.add("device_uuid=" + Internal.sanitize(this.device_uuid));
        if (this.hardware_model != null) {
            arrayList2.add("hardware_model=" + this.hardware_model);
        }
        if (this.app_model != null) {
            arrayList2.add("app_model=" + this.app_model);
        }
        arrayList2.add("device_ip=" + Internal.sanitize(this.device_ip));
        arrayList2.add("host_hw_version=" + Internal.sanitize(this.host_hw_version));
        arrayList2.add("host_os_version=" + Internal.sanitize(this.host_os_version));
        arrayList2.add("hostname=" + Internal.sanitize(this.hostname));
        arrayList2.add("connectivity_source=" + this.connectivity_source);
        arrayList2.add("bbpos_firmware=" + Internal.sanitize(this.bbpos_firmware));
        arrayList2.add("bbpos_base_config=" + Internal.sanitize(this.bbpos_base_config));
        arrayList2.add("bbpos_key_profile=" + Internal.sanitize(this.bbpos_key_profile));
        arrayList2.add("bbpos_rom=" + Internal.sanitize(this.bbpos_rom));
        arrayList2.add("stripe_config_hash=" + Internal.sanitize(this.stripe_config_hash));
        if (this.location != null) {
            arrayList2.add("location=" + this.location);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeviceInfo{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DeviceInfo copy$default(DeviceInfo deviceInfo, DeviceClass deviceClass, String str, HardwareModel hardwareModel, ApplicationModel applicationModel, String str2, String str3, String str4, String str5, InternetConnectionSource internetConnectionSource, String str6, String str7, String str8, String str9, String str10, Location location, ByteString byteString, int i, Object obj) {
        DeviceClass deviceClass2 = (i & 1) != 0 ? deviceInfo.device_class : deviceClass;
        return deviceInfo.copy(deviceClass2, (i & 2) != 0 ? deviceInfo.device_uuid : str, (i & 4) != 0 ? deviceInfo.hardware_model : hardwareModel, (i & 8) != 0 ? deviceInfo.app_model : applicationModel, (i & 16) != 0 ? deviceInfo.device_ip : str2, (i & 32) != 0 ? deviceInfo.host_hw_version : str3, (i & 64) != 0 ? deviceInfo.host_os_version : str4, (i & 128) != 0 ? deviceInfo.hostname : str5, (i & 256) != 0 ? deviceInfo.connectivity_source : internetConnectionSource, (i & 512) != 0 ? deviceInfo.bbpos_firmware : str6, (i & 1024) != 0 ? deviceInfo.bbpos_base_config : str7, (i & 2048) != 0 ? deviceInfo.bbpos_key_profile : str8, (i & 4096) != 0 ? deviceInfo.bbpos_rom : str9, (i & 8192) != 0 ? deviceInfo.stripe_config_hash : str10, (i & 16384) != 0 ? deviceInfo.location : location, (i & 32768) != 0 ? deviceInfo.unknownFields() : byteString);
    }

    public final DeviceInfo copy(DeviceClass device_class, String device_uuid, HardwareModel hardware_model, ApplicationModel app_model, String device_ip, String host_hw_version, String host_os_version, String hostname, InternetConnectionSource connectivity_source, String bbpos_firmware, String bbpos_base_config, String bbpos_key_profile, String bbpos_rom, String stripe_config_hash, Location location, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(device_class, "device_class");
        Intrinsics.checkNotNullParameter(device_uuid, "device_uuid");
        Intrinsics.checkNotNullParameter(device_ip, "device_ip");
        Intrinsics.checkNotNullParameter(host_hw_version, "host_hw_version");
        Intrinsics.checkNotNullParameter(host_os_version, "host_os_version");
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Intrinsics.checkNotNullParameter(connectivity_source, "connectivity_source");
        Intrinsics.checkNotNullParameter(bbpos_firmware, "bbpos_firmware");
        Intrinsics.checkNotNullParameter(bbpos_base_config, "bbpos_base_config");
        Intrinsics.checkNotNullParameter(bbpos_key_profile, "bbpos_key_profile");
        Intrinsics.checkNotNullParameter(bbpos_rom, "bbpos_rom");
        Intrinsics.checkNotNullParameter(stripe_config_hash, "stripe_config_hash");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeviceInfo(device_class, device_uuid, hardware_model, app_model, device_ip, host_hw_version, host_os_version, hostname, connectivity_source, bbpos_firmware, bbpos_base_config, bbpos_key_profile, bbpos_rom, stripe_config_hash, location, unknownFields);
    }

    /* JADX INFO: compiled from: DeviceInfo.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0007J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0007J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0007J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/model/common/DeviceInfo$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/DeviceInfo;", "()V", "app_model", "Lcom/stripe/proto/model/common/ApplicationModel;", "bbpos_base_config", "", "bbpos_firmware", "bbpos_key_profile", "bbpos_rom", "connectivity_source", "Lcom/stripe/proto/model/common/InternetConnectionSource;", "device_class", "Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;", "device_ip", "device_uuid", "hardware_model", "Lcom/stripe/proto/model/common/HardwareModel;", "host_hw_version", "host_os_version", "hostname", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/proto/model/common/Location;", "stripe_config_hash", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeviceInfo, Builder> {
        public ApplicationModel app_model;
        public HardwareModel hardware_model;
        public Location location;
        public DeviceClass device_class = DeviceClass.INVALID;
        public String device_uuid = "";
        public String device_ip = "";
        public String host_hw_version = "";
        public String host_os_version = "";
        public String hostname = "";
        public InternetConnectionSource connectivity_source = InternetConnectionSource.UNKNOWN;
        public String bbpos_firmware = "";
        public String bbpos_base_config = "";
        public String bbpos_key_profile = "";
        public String bbpos_rom = "";
        public String stripe_config_hash = "";

        public final Builder device_class(DeviceClass device_class) {
            Intrinsics.checkNotNullParameter(device_class, "device_class");
            this.device_class = device_class;
            return this;
        }

        public final Builder device_uuid(String device_uuid) {
            Intrinsics.checkNotNullParameter(device_uuid, "device_uuid");
            this.device_uuid = device_uuid;
            return this;
        }

        public final Builder hardware_model(HardwareModel hardware_model) {
            this.hardware_model = hardware_model;
            return this;
        }

        public final Builder app_model(ApplicationModel app_model) {
            this.app_model = app_model;
            return this;
        }

        public final Builder device_ip(String device_ip) {
            Intrinsics.checkNotNullParameter(device_ip, "device_ip");
            this.device_ip = device_ip;
            return this;
        }

        public final Builder host_hw_version(String host_hw_version) {
            Intrinsics.checkNotNullParameter(host_hw_version, "host_hw_version");
            this.host_hw_version = host_hw_version;
            return this;
        }

        public final Builder host_os_version(String host_os_version) {
            Intrinsics.checkNotNullParameter(host_os_version, "host_os_version");
            this.host_os_version = host_os_version;
            return this;
        }

        public final Builder hostname(String hostname) {
            Intrinsics.checkNotNullParameter(hostname, "hostname");
            this.hostname = hostname;
            return this;
        }

        public final Builder connectivity_source(InternetConnectionSource connectivity_source) {
            Intrinsics.checkNotNullParameter(connectivity_source, "connectivity_source");
            this.connectivity_source = connectivity_source;
            return this;
        }

        public final Builder bbpos_firmware(String bbpos_firmware) {
            Intrinsics.checkNotNullParameter(bbpos_firmware, "bbpos_firmware");
            this.bbpos_firmware = bbpos_firmware;
            return this;
        }

        public final Builder bbpos_base_config(String bbpos_base_config) {
            Intrinsics.checkNotNullParameter(bbpos_base_config, "bbpos_base_config");
            this.bbpos_base_config = bbpos_base_config;
            return this;
        }

        public final Builder bbpos_key_profile(String bbpos_key_profile) {
            Intrinsics.checkNotNullParameter(bbpos_key_profile, "bbpos_key_profile");
            this.bbpos_key_profile = bbpos_key_profile;
            return this;
        }

        public final Builder bbpos_rom(String bbpos_rom) {
            Intrinsics.checkNotNullParameter(bbpos_rom, "bbpos_rom");
            this.bbpos_rom = bbpos_rom;
            return this;
        }

        public final Builder stripe_config_hash(String stripe_config_hash) {
            Intrinsics.checkNotNullParameter(stripe_config_hash, "stripe_config_hash");
            this.stripe_config_hash = stripe_config_hash;
            return this;
        }

        public final Builder location(Location location) {
            this.location = location;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeviceInfo build() {
            return new DeviceInfo(this.device_class, this.device_uuid, this.hardware_model, this.app_model, this.device_ip, this.host_hw_version, this.host_os_version, this.hostname, this.connectivity_source, this.bbpos_firmware, this.bbpos_base_config, this.bbpos_key_profile, this.bbpos_rom, this.stripe_config_hash, this.location, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeviceInfo.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/DeviceInfo$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/DeviceInfo;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/DeviceInfo$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
        ADAPTER = new ProtoAdapter<DeviceInfo>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.DeviceInfo$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeviceInfo value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_class != DeviceInfo.DeviceClass.INVALID) {
                    size += DeviceInfo.DeviceClass.ADAPTER.encodedSizeWithTag(1, value.device_class);
                }
                if (!Intrinsics.areEqual(value.device_uuid, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.device_uuid);
                }
                if (value.hardware_model != null) {
                    size += HardwareModel.ADAPTER.encodedSizeWithTag(3, value.hardware_model);
                }
                if (value.app_model != null) {
                    size += ApplicationModel.ADAPTER.encodedSizeWithTag(7, value.app_model);
                }
                if (!Intrinsics.areEqual(value.device_ip, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.device_ip);
                }
                if (!Intrinsics.areEqual(value.host_hw_version, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.host_hw_version);
                }
                if (!Intrinsics.areEqual(value.host_os_version, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.host_os_version);
                }
                if (!Intrinsics.areEqual(value.hostname, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.hostname);
                }
                if (value.connectivity_source != InternetConnectionSource.UNKNOWN) {
                    size += InternetConnectionSource.ADAPTER.encodedSizeWithTag(9, value.connectivity_source);
                }
                if (!Intrinsics.areEqual(value.bbpos_firmware, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(10, value.bbpos_firmware);
                }
                if (!Intrinsics.areEqual(value.bbpos_base_config, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(11, value.bbpos_base_config);
                }
                if (!Intrinsics.areEqual(value.bbpos_key_profile, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(12, value.bbpos_key_profile);
                }
                if (!Intrinsics.areEqual(value.bbpos_rom, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(13, value.bbpos_rom);
                }
                if (!Intrinsics.areEqual(value.stripe_config_hash, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(14, value.stripe_config_hash);
                }
                return value.location != null ? size + Location.ADAPTER.encodedSizeWithTag(15, value.location) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeviceInfo value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_class != DeviceInfo.DeviceClass.INVALID) {
                    DeviceInfo.DeviceClass.ADAPTER.encodeWithTag(writer, 1, value.device_class);
                }
                if (!Intrinsics.areEqual(value.device_uuid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.device_uuid);
                }
                if (value.hardware_model != null) {
                    HardwareModel.ADAPTER.encodeWithTag(writer, 3, value.hardware_model);
                }
                if (value.app_model != null) {
                    ApplicationModel.ADAPTER.encodeWithTag(writer, 7, value.app_model);
                }
                if (!Intrinsics.areEqual(value.device_ip, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.device_ip);
                }
                if (!Intrinsics.areEqual(value.host_hw_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.host_hw_version);
                }
                if (!Intrinsics.areEqual(value.host_os_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.host_os_version);
                }
                if (!Intrinsics.areEqual(value.hostname, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.hostname);
                }
                if (value.connectivity_source != InternetConnectionSource.UNKNOWN) {
                    InternetConnectionSource.ADAPTER.encodeWithTag(writer, 9, value.connectivity_source);
                }
                if (!Intrinsics.areEqual(value.bbpos_firmware, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.bbpos_firmware);
                }
                if (!Intrinsics.areEqual(value.bbpos_base_config, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.bbpos_base_config);
                }
                if (!Intrinsics.areEqual(value.bbpos_key_profile, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.bbpos_key_profile);
                }
                if (!Intrinsics.areEqual(value.bbpos_rom, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.bbpos_rom);
                }
                if (!Intrinsics.areEqual(value.stripe_config_hash, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 14, value.stripe_config_hash);
                }
                if (value.location != null) {
                    Location.ADAPTER.encodeWithTag(writer, 15, value.location);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeviceInfo value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.location != null) {
                    Location.ADAPTER.encodeWithTag(writer, 15, value.location);
                }
                if (!Intrinsics.areEqual(value.stripe_config_hash, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 14, value.stripe_config_hash);
                }
                if (!Intrinsics.areEqual(value.bbpos_rom, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.bbpos_rom);
                }
                if (!Intrinsics.areEqual(value.bbpos_key_profile, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.bbpos_key_profile);
                }
                if (!Intrinsics.areEqual(value.bbpos_base_config, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.bbpos_base_config);
                }
                if (!Intrinsics.areEqual(value.bbpos_firmware, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.bbpos_firmware);
                }
                if (value.connectivity_source != InternetConnectionSource.UNKNOWN) {
                    InternetConnectionSource.ADAPTER.encodeWithTag(writer, 9, value.connectivity_source);
                }
                if (!Intrinsics.areEqual(value.hostname, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.hostname);
                }
                if (!Intrinsics.areEqual(value.host_os_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.host_os_version);
                }
                if (!Intrinsics.areEqual(value.host_hw_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.host_hw_version);
                }
                if (!Intrinsics.areEqual(value.device_ip, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.device_ip);
                }
                if (value.app_model != null) {
                    ApplicationModel.ADAPTER.encodeWithTag(writer, 7, value.app_model);
                }
                if (value.hardware_model != null) {
                    HardwareModel.ADAPTER.encodeWithTag(writer, 3, value.hardware_model);
                }
                if (!Intrinsics.areEqual(value.device_uuid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.device_uuid);
                }
                if (value.device_class != DeviceInfo.DeviceClass.INVALID) {
                    DeviceInfo.DeviceClass.ADAPTER.encodeWithTag(writer, 1, value.device_class);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeviceInfo decode(ProtoReader reader) throws IOException {
                InternetConnectionSource internetConnectionSource;
                String str;
                String str2;
                Intrinsics.checkNotNullParameter(reader, "reader");
                DeviceInfo.DeviceClass deviceClass = DeviceInfo.DeviceClass.INVALID;
                InternetConnectionSource internetConnectionSource2 = InternetConnectionSource.UNKNOWN;
                long jBeginMessage = reader.beginMessage();
                DeviceInfo.DeviceClass deviceClassDecode = deviceClass;
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                String strDecode7 = strDecode6;
                String strDecode8 = strDecode7;
                String strDecode9 = strDecode8;
                HardwareModel hardwareModelDecode = null;
                ApplicationModel applicationModelDecode = null;
                Location locationDecode = null;
                InternetConnectionSource internetConnectionSourceDecode = internetConnectionSource2;
                String strDecode10 = strDecode9;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                internetConnectionSource = internetConnectionSourceDecode;
                                str = strDecode10;
                                str2 = strDecode;
                                try {
                                    deviceClassDecode = DeviceInfo.DeviceClass.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                                break;
                            case 2:
                                strDecode10 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 3:
                                hardwareModelDecode = HardwareModel.ADAPTER.decode(reader);
                                continue;
                            case 4:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 5:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 6:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 7:
                                applicationModelDecode = ApplicationModel.ADAPTER.decode(reader);
                                continue;
                            case 8:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 9:
                                try {
                                    internetConnectionSourceDecode = InternetConnectionSource.ADAPTER.decode(reader);
                                    continue;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    internetConnectionSource = internetConnectionSourceDecode;
                                    str = strDecode10;
                                    str2 = strDecode;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                    internetConnectionSourceDecode = internetConnectionSource;
                                    strDecode10 = str;
                                    strDecode = str2;
                                }
                                break;
                            case 10:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 11:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 12:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 13:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 14:
                                strDecode9 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 15:
                                locationDecode = Location.ADAPTER.decode(reader);
                                continue;
                            default:
                                internetConnectionSource = internetConnectionSourceDecode;
                                str = strDecode10;
                                str2 = strDecode;
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        internetConnectionSourceDecode = internetConnectionSource;
                        strDecode10 = str;
                        strDecode = str2;
                    } else {
                        return new DeviceInfo(deviceClassDecode, strDecode10, hardwareModelDecode, applicationModelDecode, strDecode, strDecode2, strDecode3, strDecode4, internetConnectionSourceDecode, strDecode5, strDecode6, strDecode7, strDecode8, strDecode9, locationDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeviceInfo redact(DeviceInfo value) {
                Intrinsics.checkNotNullParameter(value, "value");
                HardwareModel hardwareModel = value.hardware_model;
                HardwareModel hardwareModelRedact = hardwareModel != null ? HardwareModel.ADAPTER.redact(hardwareModel) : null;
                ApplicationModel applicationModel = value.app_model;
                ApplicationModel applicationModelRedact = applicationModel != null ? ApplicationModel.ADAPTER.redact(applicationModel) : null;
                Location location = value.location;
                return DeviceInfo.copy$default(value, null, null, hardwareModelRedact, applicationModelRedact, null, null, null, null, null, null, null, null, null, null, location != null ? Location.ADAPTER.redact(location) : null, ByteString.EMPTY, 16371, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: DeviceInfo.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INVALID", "POS", "READER", "SERVER", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DeviceClass implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DeviceClass[] $VALUES;
        public static final ProtoAdapter<DeviceClass> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final DeviceClass INVALID;
        public static final DeviceClass POS;
        public static final DeviceClass READER;
        public static final DeviceClass SERVER;
        private final int value;

        private static final /* synthetic */ DeviceClass[] $values() {
            return new DeviceClass[]{INVALID, POS, READER, SERVER};
        }

        @JvmStatic
        public static final DeviceClass fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<DeviceClass> getEntries() {
            return $ENTRIES;
        }

        public static DeviceClass valueOf(String str) {
            return (DeviceClass) Enum.valueOf(DeviceClass.class, str);
        }

        public static DeviceClass[] values() {
            return (DeviceClass[]) $VALUES.clone();
        }

        private DeviceClass(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final DeviceClass deviceClass = new DeviceClass("INVALID", 0, 0);
            INVALID = deviceClass;
            POS = new DeviceClass("POS", 1, 1);
            READER = new DeviceClass("READER", 2, 2);
            SERVER = new DeviceClass("SERVER", 3, 3);
            DeviceClass[] deviceClassArr$values = $values();
            $VALUES = deviceClassArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(deviceClassArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceClass.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<DeviceClass>(orCreateKotlinClass, syntax, deviceClass) { // from class: com.stripe.proto.model.common.DeviceInfo$DeviceClass$Companion$ADAPTER$1
                {
                    DeviceInfo.DeviceClass deviceClass2 = deviceClass;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public DeviceInfo.DeviceClass fromValue(int value) {
                    return DeviceInfo.DeviceClass.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: DeviceInfo.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final DeviceClass fromValue(int value) {
                if (value == 0) {
                    return DeviceClass.INVALID;
                }
                if (value == 1) {
                    return DeviceClass.POS;
                }
                if (value == 2) {
                    return DeviceClass.READER;
                }
                if (value != 3) {
                    return null;
                }
                return DeviceClass.SERVER;
            }
        }
    }
}
