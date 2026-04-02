package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: BbposSystemProperties.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 #2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\"#BÅ\u0001\u0012\u0014\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\u0005\u0012\b\b\u0002\u0010\r\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u0018JÆ\u0001\u0010\u0019\u001a\u00020\u00002\u0014\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00052\b\b\u0002\u0010\u0012\u001a\u00020\u00052\b\b\u0002\u0010\u0013\u001a\u00020\u00052\b\b\u0002\u0010\u0014\u001a\u00020\u00052\b\b\u0002\u0010\u0015\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u0017J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0096\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u0002H\u0016J\b\u0010!\u001a\u00020\u0005H\u0016R\u0010\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;", "unknown_system_properties", "", "", "allowed_settings_intent_adb", "bbpos_debug", "firmware_version", "disable_volume_key", "press_recovery_enable", "enable_apk_permission", "p2pe_apk_verify", "p2pe_rom_verify", "is_device_configured", "random_reboot_enable", "enable_apk_verify", "close_bootloader", "statusbar_disable", "reload_certificates_without_reboot", "devkit_watermark_move_interval_seconds", "auto_reboot_enable", "unknownFields", "Lokio/ByteString;", "(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposSystemProperties extends Message<BbposSystemProperties, Builder> {
    public static final ProtoAdapter<BbposSystemProperties> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "allowedSettingsIntentAdb", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String allowed_settings_intent_adb;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "autoRebootEnable", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 16, tag = 17)
    public final String auto_reboot_enable;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "bbposDebug", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String bbpos_debug;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "closeBootloader", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final String close_bootloader;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "devkitWatermarkMoveIntervalSeconds", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 15, tag = 16)
    public final String devkit_watermark_move_interval_seconds;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "disableVolumeKey", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String disable_volume_key;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "enableApkPermission", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String enable_apk_permission;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "enableApkVerify", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final String enable_apk_verify;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "firmwareVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String firmware_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "isDeviceConfigured", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final String is_device_configured;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "p2peApkVerify", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String p2pe_apk_verify;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "p2peRomVerify", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final String p2pe_rom_verify;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "pressRecoveryEnable", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String press_recovery_enable;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "randomRebootEnable", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final String random_reboot_enable;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "reloadCertificatesWithoutReboot", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
    public final String reload_certificates_without_reboot;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "statusbarDisable", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 14)
    public final String statusbar_disable;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "unknownSystemProperties", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 0, tag = 1)
    public final Map<String, String> unknown_system_properties;

    public BbposSystemProperties() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 262143, null);
    }

    public /* synthetic */ BbposSystemProperties(Map map, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? MapsKt.emptyMap() : map, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? "" : str4, (i & 32) != 0 ? "" : str5, (i & 64) != 0 ? "" : str6, (i & 128) != 0 ? "" : str7, (i & 256) != 0 ? "" : str8, (i & 512) != 0 ? "" : str9, (i & 1024) != 0 ? "" : str10, (i & 2048) != 0 ? "" : str11, (i & 4096) != 0 ? "" : str12, (i & 8192) != 0 ? "" : str13, (i & 16384) != 0 ? "" : str14, (i & 32768) != 0 ? "" : str15, (i & 65536) == 0 ? str16 : "", (i & 131072) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BbposSystemProperties(Map<String, String> unknown_system_properties, String allowed_settings_intent_adb, String bbpos_debug, String firmware_version, String disable_volume_key, String press_recovery_enable, String enable_apk_permission, String p2pe_apk_verify, String p2pe_rom_verify, String is_device_configured, String random_reboot_enable, String enable_apk_verify, String close_bootloader, String statusbar_disable, String reload_certificates_without_reboot, String devkit_watermark_move_interval_seconds, String auto_reboot_enable, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknown_system_properties, "unknown_system_properties");
        Intrinsics.checkNotNullParameter(allowed_settings_intent_adb, "allowed_settings_intent_adb");
        Intrinsics.checkNotNullParameter(bbpos_debug, "bbpos_debug");
        Intrinsics.checkNotNullParameter(firmware_version, "firmware_version");
        Intrinsics.checkNotNullParameter(disable_volume_key, "disable_volume_key");
        Intrinsics.checkNotNullParameter(press_recovery_enable, "press_recovery_enable");
        Intrinsics.checkNotNullParameter(enable_apk_permission, "enable_apk_permission");
        Intrinsics.checkNotNullParameter(p2pe_apk_verify, "p2pe_apk_verify");
        Intrinsics.checkNotNullParameter(p2pe_rom_verify, "p2pe_rom_verify");
        Intrinsics.checkNotNullParameter(is_device_configured, "is_device_configured");
        Intrinsics.checkNotNullParameter(random_reboot_enable, "random_reboot_enable");
        Intrinsics.checkNotNullParameter(enable_apk_verify, "enable_apk_verify");
        Intrinsics.checkNotNullParameter(close_bootloader, "close_bootloader");
        Intrinsics.checkNotNullParameter(statusbar_disable, "statusbar_disable");
        Intrinsics.checkNotNullParameter(reload_certificates_without_reboot, "reload_certificates_without_reboot");
        Intrinsics.checkNotNullParameter(devkit_watermark_move_interval_seconds, "devkit_watermark_move_interval_seconds");
        Intrinsics.checkNotNullParameter(auto_reboot_enable, "auto_reboot_enable");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.allowed_settings_intent_adb = allowed_settings_intent_adb;
        this.bbpos_debug = bbpos_debug;
        this.firmware_version = firmware_version;
        this.disable_volume_key = disable_volume_key;
        this.press_recovery_enable = press_recovery_enable;
        this.enable_apk_permission = enable_apk_permission;
        this.p2pe_apk_verify = p2pe_apk_verify;
        this.p2pe_rom_verify = p2pe_rom_verify;
        this.is_device_configured = is_device_configured;
        this.random_reboot_enable = random_reboot_enable;
        this.enable_apk_verify = enable_apk_verify;
        this.close_bootloader = close_bootloader;
        this.statusbar_disable = statusbar_disable;
        this.reload_certificates_without_reboot = reload_certificates_without_reboot;
        this.devkit_watermark_move_interval_seconds = devkit_watermark_move_interval_seconds;
        this.auto_reboot_enable = auto_reboot_enable;
        this.unknown_system_properties = Internal.immutableCopyOf("unknown_system_properties", unknown_system_properties);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.unknown_system_properties = this.unknown_system_properties;
        builder.allowed_settings_intent_adb = this.allowed_settings_intent_adb;
        builder.bbpos_debug = this.bbpos_debug;
        builder.firmware_version = this.firmware_version;
        builder.disable_volume_key = this.disable_volume_key;
        builder.press_recovery_enable = this.press_recovery_enable;
        builder.enable_apk_permission = this.enable_apk_permission;
        builder.p2pe_apk_verify = this.p2pe_apk_verify;
        builder.p2pe_rom_verify = this.p2pe_rom_verify;
        builder.is_device_configured = this.is_device_configured;
        builder.random_reboot_enable = this.random_reboot_enable;
        builder.enable_apk_verify = this.enable_apk_verify;
        builder.close_bootloader = this.close_bootloader;
        builder.statusbar_disable = this.statusbar_disable;
        builder.reload_certificates_without_reboot = this.reload_certificates_without_reboot;
        builder.devkit_watermark_move_interval_seconds = this.devkit_watermark_move_interval_seconds;
        builder.auto_reboot_enable = this.auto_reboot_enable;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof BbposSystemProperties)) {
            return false;
        }
        BbposSystemProperties bbposSystemProperties = (BbposSystemProperties) other;
        return Intrinsics.areEqual(unknownFields(), bbposSystemProperties.unknownFields()) && Intrinsics.areEqual(this.unknown_system_properties, bbposSystemProperties.unknown_system_properties) && Intrinsics.areEqual(this.allowed_settings_intent_adb, bbposSystemProperties.allowed_settings_intent_adb) && Intrinsics.areEqual(this.bbpos_debug, bbposSystemProperties.bbpos_debug) && Intrinsics.areEqual(this.firmware_version, bbposSystemProperties.firmware_version) && Intrinsics.areEqual(this.disable_volume_key, bbposSystemProperties.disable_volume_key) && Intrinsics.areEqual(this.press_recovery_enable, bbposSystemProperties.press_recovery_enable) && Intrinsics.areEqual(this.enable_apk_permission, bbposSystemProperties.enable_apk_permission) && Intrinsics.areEqual(this.p2pe_apk_verify, bbposSystemProperties.p2pe_apk_verify) && Intrinsics.areEqual(this.p2pe_rom_verify, bbposSystemProperties.p2pe_rom_verify) && Intrinsics.areEqual(this.is_device_configured, bbposSystemProperties.is_device_configured) && Intrinsics.areEqual(this.random_reboot_enable, bbposSystemProperties.random_reboot_enable) && Intrinsics.areEqual(this.enable_apk_verify, bbposSystemProperties.enable_apk_verify) && Intrinsics.areEqual(this.close_bootloader, bbposSystemProperties.close_bootloader) && Intrinsics.areEqual(this.statusbar_disable, bbposSystemProperties.statusbar_disable) && Intrinsics.areEqual(this.reload_certificates_without_reboot, bbposSystemProperties.reload_certificates_without_reboot) && Intrinsics.areEqual(this.devkit_watermark_move_interval_seconds, bbposSystemProperties.devkit_watermark_move_interval_seconds) && Intrinsics.areEqual(this.auto_reboot_enable, bbposSystemProperties.auto_reboot_enable);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((((((((((((((((((unknownFields().hashCode() * 37) + this.unknown_system_properties.hashCode()) * 37) + this.allowed_settings_intent_adb.hashCode()) * 37) + this.bbpos_debug.hashCode()) * 37) + this.firmware_version.hashCode()) * 37) + this.disable_volume_key.hashCode()) * 37) + this.press_recovery_enable.hashCode()) * 37) + this.enable_apk_permission.hashCode()) * 37) + this.p2pe_apk_verify.hashCode()) * 37) + this.p2pe_rom_verify.hashCode()) * 37) + this.is_device_configured.hashCode()) * 37) + this.random_reboot_enable.hashCode()) * 37) + this.enable_apk_verify.hashCode()) * 37) + this.close_bootloader.hashCode()) * 37) + this.statusbar_disable.hashCode()) * 37) + this.reload_certificates_without_reboot.hashCode()) * 37) + this.devkit_watermark_move_interval_seconds.hashCode()) * 37) + this.auto_reboot_enable.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.unknown_system_properties.isEmpty()) {
            arrayList.add("unknown_system_properties=" + this.unknown_system_properties);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("allowed_settings_intent_adb=" + Internal.sanitize(this.allowed_settings_intent_adb));
        arrayList2.add("bbpos_debug=" + Internal.sanitize(this.bbpos_debug));
        arrayList2.add("firmware_version=" + Internal.sanitize(this.firmware_version));
        arrayList2.add("disable_volume_key=" + Internal.sanitize(this.disable_volume_key));
        arrayList2.add("press_recovery_enable=" + Internal.sanitize(this.press_recovery_enable));
        arrayList2.add("enable_apk_permission=" + Internal.sanitize(this.enable_apk_permission));
        arrayList2.add("p2pe_apk_verify=" + Internal.sanitize(this.p2pe_apk_verify));
        arrayList2.add("p2pe_rom_verify=" + Internal.sanitize(this.p2pe_rom_verify));
        arrayList2.add("is_device_configured=" + Internal.sanitize(this.is_device_configured));
        arrayList2.add("random_reboot_enable=" + Internal.sanitize(this.random_reboot_enable));
        arrayList2.add("enable_apk_verify=" + Internal.sanitize(this.enable_apk_verify));
        arrayList2.add("close_bootloader=" + Internal.sanitize(this.close_bootloader));
        arrayList2.add("statusbar_disable=" + Internal.sanitize(this.statusbar_disable));
        arrayList2.add("reload_certificates_without_reboot=" + Internal.sanitize(this.reload_certificates_without_reboot));
        arrayList2.add("devkit_watermark_move_interval_seconds=" + Internal.sanitize(this.devkit_watermark_move_interval_seconds));
        arrayList2.add("auto_reboot_enable=" + Internal.sanitize(this.auto_reboot_enable));
        return CollectionsKt.joinToString$default(arrayList, ", ", "BbposSystemProperties{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BbposSystemProperties copy$default(BbposSystemProperties bbposSystemProperties, Map map, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, ByteString byteString, int i, Object obj) {
        Map map2 = (i & 1) != 0 ? bbposSystemProperties.unknown_system_properties : map;
        return bbposSystemProperties.copy(map2, (i & 2) != 0 ? bbposSystemProperties.allowed_settings_intent_adb : str, (i & 4) != 0 ? bbposSystemProperties.bbpos_debug : str2, (i & 8) != 0 ? bbposSystemProperties.firmware_version : str3, (i & 16) != 0 ? bbposSystemProperties.disable_volume_key : str4, (i & 32) != 0 ? bbposSystemProperties.press_recovery_enable : str5, (i & 64) != 0 ? bbposSystemProperties.enable_apk_permission : str6, (i & 128) != 0 ? bbposSystemProperties.p2pe_apk_verify : str7, (i & 256) != 0 ? bbposSystemProperties.p2pe_rom_verify : str8, (i & 512) != 0 ? bbposSystemProperties.is_device_configured : str9, (i & 1024) != 0 ? bbposSystemProperties.random_reboot_enable : str10, (i & 2048) != 0 ? bbposSystemProperties.enable_apk_verify : str11, (i & 4096) != 0 ? bbposSystemProperties.close_bootloader : str12, (i & 8192) != 0 ? bbposSystemProperties.statusbar_disable : str13, (i & 16384) != 0 ? bbposSystemProperties.reload_certificates_without_reboot : str14, (i & 32768) != 0 ? bbposSystemProperties.devkit_watermark_move_interval_seconds : str15, (i & 65536) != 0 ? bbposSystemProperties.auto_reboot_enable : str16, (i & 131072) != 0 ? bbposSystemProperties.unknownFields() : byteString);
    }

    public final BbposSystemProperties copy(Map<String, String> unknown_system_properties, String allowed_settings_intent_adb, String bbpos_debug, String firmware_version, String disable_volume_key, String press_recovery_enable, String enable_apk_permission, String p2pe_apk_verify, String p2pe_rom_verify, String is_device_configured, String random_reboot_enable, String enable_apk_verify, String close_bootloader, String statusbar_disable, String reload_certificates_without_reboot, String devkit_watermark_move_interval_seconds, String auto_reboot_enable, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknown_system_properties, "unknown_system_properties");
        Intrinsics.checkNotNullParameter(allowed_settings_intent_adb, "allowed_settings_intent_adb");
        Intrinsics.checkNotNullParameter(bbpos_debug, "bbpos_debug");
        Intrinsics.checkNotNullParameter(firmware_version, "firmware_version");
        Intrinsics.checkNotNullParameter(disable_volume_key, "disable_volume_key");
        Intrinsics.checkNotNullParameter(press_recovery_enable, "press_recovery_enable");
        Intrinsics.checkNotNullParameter(enable_apk_permission, "enable_apk_permission");
        Intrinsics.checkNotNullParameter(p2pe_apk_verify, "p2pe_apk_verify");
        Intrinsics.checkNotNullParameter(p2pe_rom_verify, "p2pe_rom_verify");
        Intrinsics.checkNotNullParameter(is_device_configured, "is_device_configured");
        Intrinsics.checkNotNullParameter(random_reboot_enable, "random_reboot_enable");
        Intrinsics.checkNotNullParameter(enable_apk_verify, "enable_apk_verify");
        Intrinsics.checkNotNullParameter(close_bootloader, "close_bootloader");
        Intrinsics.checkNotNullParameter(statusbar_disable, "statusbar_disable");
        Intrinsics.checkNotNullParameter(reload_certificates_without_reboot, "reload_certificates_without_reboot");
        Intrinsics.checkNotNullParameter(devkit_watermark_move_interval_seconds, "devkit_watermark_move_interval_seconds");
        Intrinsics.checkNotNullParameter(auto_reboot_enable, "auto_reboot_enable");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new BbposSystemProperties(unknown_system_properties, allowed_settings_intent_adb, bbpos_debug, firmware_version, disable_volume_key, press_recovery_enable, enable_apk_permission, p2pe_apk_verify, p2pe_rom_verify, is_device_configured, random_reboot_enable, enable_apk_verify, close_bootloader, statusbar_disable, reload_certificates_without_reboot, devkit_watermark_move_interval_seconds, auto_reboot_enable, unknownFields);
    }

    /* JADX INFO: compiled from: BbposSystemProperties.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010$\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005J\u001a\u0010\u0015\u001a\u00020\u00002\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0016R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties;", "()V", "allowed_settings_intent_adb", "", "auto_reboot_enable", "bbpos_debug", "close_bootloader", "devkit_watermark_move_interval_seconds", "disable_volume_key", "enable_apk_permission", "enable_apk_verify", "firmware_version", "is_device_configured", "p2pe_apk_verify", "p2pe_rom_verify", "press_recovery_enable", "random_reboot_enable", "reload_certificates_without_reboot", "statusbar_disable", "unknown_system_properties", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<BbposSystemProperties, Builder> {
        public Map<String, String> unknown_system_properties = MapsKt.emptyMap();
        public String allowed_settings_intent_adb = "";
        public String bbpos_debug = "";
        public String firmware_version = "";
        public String disable_volume_key = "";
        public String press_recovery_enable = "";
        public String enable_apk_permission = "";
        public String p2pe_apk_verify = "";
        public String p2pe_rom_verify = "";
        public String is_device_configured = "";
        public String random_reboot_enable = "";
        public String enable_apk_verify = "";
        public String close_bootloader = "";
        public String statusbar_disable = "";
        public String reload_certificates_without_reboot = "";
        public String devkit_watermark_move_interval_seconds = "";
        public String auto_reboot_enable = "";

        public final Builder unknown_system_properties(Map<String, String> unknown_system_properties) {
            Intrinsics.checkNotNullParameter(unknown_system_properties, "unknown_system_properties");
            this.unknown_system_properties = unknown_system_properties;
            return this;
        }

        public final Builder allowed_settings_intent_adb(String allowed_settings_intent_adb) {
            Intrinsics.checkNotNullParameter(allowed_settings_intent_adb, "allowed_settings_intent_adb");
            this.allowed_settings_intent_adb = allowed_settings_intent_adb;
            return this;
        }

        public final Builder bbpos_debug(String bbpos_debug) {
            Intrinsics.checkNotNullParameter(bbpos_debug, "bbpos_debug");
            this.bbpos_debug = bbpos_debug;
            return this;
        }

        public final Builder firmware_version(String firmware_version) {
            Intrinsics.checkNotNullParameter(firmware_version, "firmware_version");
            this.firmware_version = firmware_version;
            return this;
        }

        public final Builder disable_volume_key(String disable_volume_key) {
            Intrinsics.checkNotNullParameter(disable_volume_key, "disable_volume_key");
            this.disable_volume_key = disable_volume_key;
            return this;
        }

        public final Builder press_recovery_enable(String press_recovery_enable) {
            Intrinsics.checkNotNullParameter(press_recovery_enable, "press_recovery_enable");
            this.press_recovery_enable = press_recovery_enable;
            return this;
        }

        public final Builder enable_apk_permission(String enable_apk_permission) {
            Intrinsics.checkNotNullParameter(enable_apk_permission, "enable_apk_permission");
            this.enable_apk_permission = enable_apk_permission;
            return this;
        }

        public final Builder p2pe_apk_verify(String p2pe_apk_verify) {
            Intrinsics.checkNotNullParameter(p2pe_apk_verify, "p2pe_apk_verify");
            this.p2pe_apk_verify = p2pe_apk_verify;
            return this;
        }

        public final Builder p2pe_rom_verify(String p2pe_rom_verify) {
            Intrinsics.checkNotNullParameter(p2pe_rom_verify, "p2pe_rom_verify");
            this.p2pe_rom_verify = p2pe_rom_verify;
            return this;
        }

        public final Builder is_device_configured(String is_device_configured) {
            Intrinsics.checkNotNullParameter(is_device_configured, "is_device_configured");
            this.is_device_configured = is_device_configured;
            return this;
        }

        public final Builder random_reboot_enable(String random_reboot_enable) {
            Intrinsics.checkNotNullParameter(random_reboot_enable, "random_reboot_enable");
            this.random_reboot_enable = random_reboot_enable;
            return this;
        }

        public final Builder enable_apk_verify(String enable_apk_verify) {
            Intrinsics.checkNotNullParameter(enable_apk_verify, "enable_apk_verify");
            this.enable_apk_verify = enable_apk_verify;
            return this;
        }

        public final Builder close_bootloader(String close_bootloader) {
            Intrinsics.checkNotNullParameter(close_bootloader, "close_bootloader");
            this.close_bootloader = close_bootloader;
            return this;
        }

        public final Builder statusbar_disable(String statusbar_disable) {
            Intrinsics.checkNotNullParameter(statusbar_disable, "statusbar_disable");
            this.statusbar_disable = statusbar_disable;
            return this;
        }

        public final Builder reload_certificates_without_reboot(String reload_certificates_without_reboot) {
            Intrinsics.checkNotNullParameter(reload_certificates_without_reboot, "reload_certificates_without_reboot");
            this.reload_certificates_without_reboot = reload_certificates_without_reboot;
            return this;
        }

        public final Builder devkit_watermark_move_interval_seconds(String devkit_watermark_move_interval_seconds) {
            Intrinsics.checkNotNullParameter(devkit_watermark_move_interval_seconds, "devkit_watermark_move_interval_seconds");
            this.devkit_watermark_move_interval_seconds = devkit_watermark_move_interval_seconds;
            return this;
        }

        public final Builder auto_reboot_enable(String auto_reboot_enable) {
            Intrinsics.checkNotNullParameter(auto_reboot_enable, "auto_reboot_enable");
            this.auto_reboot_enable = auto_reboot_enable;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public BbposSystemProperties build() {
            return new BbposSystemProperties(this.unknown_system_properties, this.allowed_settings_intent_adb, this.bbpos_debug, this.firmware_version, this.disable_volume_key, this.press_recovery_enable, this.enable_apk_permission, this.p2pe_apk_verify, this.p2pe_rom_verify, this.is_device_configured, this.random_reboot_enable, this.enable_apk_verify, this.close_bootloader, this.statusbar_disable, this.reload_certificates_without_reboot, this.devkit_watermark_move_interval_seconds, this.auto_reboot_enable, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: BbposSystemProperties.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ BbposSystemProperties build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BbposSystemProperties.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<BbposSystemProperties>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.BbposSystemProperties$Companion$ADAPTER$1

            /* JADX INFO: renamed from: unknown_system_propertiesAdapter$delegate, reason: from kotlin metadata */
            private final Lazy unknown_system_propertiesAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.BbposSystemProperties$Companion$ADAPTER$1$unknown_system_propertiesAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getUnknown_system_propertiesAdapter() {
                return (ProtoAdapter) this.unknown_system_propertiesAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(BbposSystemProperties value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + getUnknown_system_propertiesAdapter().encodedSizeWithTag(1, value.unknown_system_properties);
                if (!Intrinsics.areEqual(value.allowed_settings_intent_adb, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.allowed_settings_intent_adb);
                }
                if (!Intrinsics.areEqual(value.bbpos_debug, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.bbpos_debug);
                }
                if (!Intrinsics.areEqual(value.firmware_version, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.firmware_version);
                }
                if (!Intrinsics.areEqual(value.disable_volume_key, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.disable_volume_key);
                }
                if (!Intrinsics.areEqual(value.press_recovery_enable, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.press_recovery_enable);
                }
                if (!Intrinsics.areEqual(value.enable_apk_permission, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.enable_apk_permission);
                }
                if (!Intrinsics.areEqual(value.p2pe_apk_verify, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.p2pe_apk_verify);
                }
                if (!Intrinsics.areEqual(value.p2pe_rom_verify, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(9, value.p2pe_rom_verify);
                }
                if (!Intrinsics.areEqual(value.is_device_configured, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(10, value.is_device_configured);
                }
                if (!Intrinsics.areEqual(value.random_reboot_enable, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(11, value.random_reboot_enable);
                }
                if (!Intrinsics.areEqual(value.enable_apk_verify, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(12, value.enable_apk_verify);
                }
                if (!Intrinsics.areEqual(value.close_bootloader, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(13, value.close_bootloader);
                }
                if (!Intrinsics.areEqual(value.statusbar_disable, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(14, value.statusbar_disable);
                }
                if (!Intrinsics.areEqual(value.reload_certificates_without_reboot, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(15, value.reload_certificates_without_reboot);
                }
                if (!Intrinsics.areEqual(value.devkit_watermark_move_interval_seconds, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(16, value.devkit_watermark_move_interval_seconds);
                }
                return !Intrinsics.areEqual(value.auto_reboot_enable, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(17, value.auto_reboot_enable) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, BbposSystemProperties value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                getUnknown_system_propertiesAdapter().encodeWithTag(writer, 1, value.unknown_system_properties);
                if (!Intrinsics.areEqual(value.allowed_settings_intent_adb, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.allowed_settings_intent_adb);
                }
                if (!Intrinsics.areEqual(value.bbpos_debug, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.bbpos_debug);
                }
                if (!Intrinsics.areEqual(value.firmware_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.firmware_version);
                }
                if (!Intrinsics.areEqual(value.disable_volume_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.disable_volume_key);
                }
                if (!Intrinsics.areEqual(value.press_recovery_enable, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.press_recovery_enable);
                }
                if (!Intrinsics.areEqual(value.enable_apk_permission, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.enable_apk_permission);
                }
                if (!Intrinsics.areEqual(value.p2pe_apk_verify, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.p2pe_apk_verify);
                }
                if (!Intrinsics.areEqual(value.p2pe_rom_verify, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.p2pe_rom_verify);
                }
                if (!Intrinsics.areEqual(value.is_device_configured, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.is_device_configured);
                }
                if (!Intrinsics.areEqual(value.random_reboot_enable, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.random_reboot_enable);
                }
                if (!Intrinsics.areEqual(value.enable_apk_verify, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.enable_apk_verify);
                }
                if (!Intrinsics.areEqual(value.close_bootloader, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.close_bootloader);
                }
                if (!Intrinsics.areEqual(value.statusbar_disable, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 14, value.statusbar_disable);
                }
                if (!Intrinsics.areEqual(value.reload_certificates_without_reboot, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.reload_certificates_without_reboot);
                }
                if (!Intrinsics.areEqual(value.devkit_watermark_move_interval_seconds, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 16, value.devkit_watermark_move_interval_seconds);
                }
                if (!Intrinsics.areEqual(value.auto_reboot_enable, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 17, value.auto_reboot_enable);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, BbposSystemProperties value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.auto_reboot_enable, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 17, value.auto_reboot_enable);
                }
                if (!Intrinsics.areEqual(value.devkit_watermark_move_interval_seconds, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 16, value.devkit_watermark_move_interval_seconds);
                }
                if (!Intrinsics.areEqual(value.reload_certificates_without_reboot, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.reload_certificates_without_reboot);
                }
                if (!Intrinsics.areEqual(value.statusbar_disable, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 14, value.statusbar_disable);
                }
                if (!Intrinsics.areEqual(value.close_bootloader, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.close_bootloader);
                }
                if (!Intrinsics.areEqual(value.enable_apk_verify, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.enable_apk_verify);
                }
                if (!Intrinsics.areEqual(value.random_reboot_enable, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.random_reboot_enable);
                }
                if (!Intrinsics.areEqual(value.is_device_configured, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.is_device_configured);
                }
                if (!Intrinsics.areEqual(value.p2pe_rom_verify, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.p2pe_rom_verify);
                }
                if (!Intrinsics.areEqual(value.p2pe_apk_verify, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.p2pe_apk_verify);
                }
                if (!Intrinsics.areEqual(value.enable_apk_permission, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.enable_apk_permission);
                }
                if (!Intrinsics.areEqual(value.press_recovery_enable, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.press_recovery_enable);
                }
                if (!Intrinsics.areEqual(value.disable_volume_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.disable_volume_key);
                }
                if (!Intrinsics.areEqual(value.firmware_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.firmware_version);
                }
                if (!Intrinsics.areEqual(value.bbpos_debug, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.bbpos_debug);
                }
                if (!Intrinsics.areEqual(value.allowed_settings_intent_adb, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.allowed_settings_intent_adb);
                }
                getUnknown_system_propertiesAdapter().encodeWithTag(writer, 1, value.unknown_system_properties);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public BbposSystemProperties decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                String strDecode7 = strDecode6;
                String strDecode8 = strDecode7;
                String strDecode9 = strDecode8;
                String strDecode10 = strDecode9;
                String strDecode11 = strDecode10;
                String strDecode12 = strDecode11;
                String strDecode13 = strDecode12;
                String strDecode14 = strDecode13;
                String strDecode15 = strDecode14;
                String strDecode16 = strDecode15;
                while (true) {
                    int iNextTag = reader.nextTag();
                    String str = strDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                linkedHashMap.putAll(getUnknown_system_propertiesAdapter().decode(reader));
                                break;
                            case 2:
                                strDecode16 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 4:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 10:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 11:
                                strDecode9 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 12:
                                strDecode10 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 13:
                                strDecode11 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 14:
                                strDecode12 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 15:
                                strDecode13 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 16:
                                strDecode14 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 17:
                                strDecode15 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        strDecode = str;
                    } else {
                        return new BbposSystemProperties(linkedHashMap, strDecode16, str, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, strDecode8, strDecode9, strDecode10, strDecode11, strDecode12, strDecode13, strDecode14, strDecode15, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public BbposSystemProperties redact(BbposSystemProperties value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return BbposSystemProperties.copy$default(value, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ByteString.EMPTY, 131071, null);
            }
        };
    }
}
