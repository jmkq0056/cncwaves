package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.sun.jna.platform.win32.WinUser;
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

/* JADX INFO: compiled from: ReaderInfo.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBs\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010Jt\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderInfo;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;", "configVersion", "", "deviceSettingVersion", "bootloaderVersion", "emvKeyProfileId", "firmwareVersion", "macKeyProfileId", "pinKeyProfileId", "pinKeysetId", "serial", "trackKeyProfileId", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderInfo extends Message<ReaderInfo, Builder> {
    public static final ProtoAdapter<ReaderInfo> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String bootloaderVersion;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String configVersion;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String deviceSettingVersion;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String emvKeyProfileId;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String firmwareVersion;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String macKeyProfileId;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String pinKeyProfileId;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String pinKeysetId;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final String serial;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final String trackKeyProfileId;

    public ReaderInfo() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    public /* synthetic */ ReaderInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? "" : str7, (i & 128) != 0 ? "" : str8, (i & 256) != 0 ? "" : str9, (i & 512) != 0 ? "" : str10, (i & 1024) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReaderInfo(String configVersion, String deviceSettingVersion, String bootloaderVersion, String emvKeyProfileId, String firmwareVersion, String macKeyProfileId, String pinKeyProfileId, String pinKeysetId, String serial, String trackKeyProfileId, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(configVersion, "configVersion");
        Intrinsics.checkNotNullParameter(deviceSettingVersion, "deviceSettingVersion");
        Intrinsics.checkNotNullParameter(bootloaderVersion, "bootloaderVersion");
        Intrinsics.checkNotNullParameter(emvKeyProfileId, "emvKeyProfileId");
        Intrinsics.checkNotNullParameter(firmwareVersion, "firmwareVersion");
        Intrinsics.checkNotNullParameter(macKeyProfileId, "macKeyProfileId");
        Intrinsics.checkNotNullParameter(pinKeyProfileId, "pinKeyProfileId");
        Intrinsics.checkNotNullParameter(pinKeysetId, "pinKeysetId");
        Intrinsics.checkNotNullParameter(serial, "serial");
        Intrinsics.checkNotNullParameter(trackKeyProfileId, "trackKeyProfileId");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.configVersion = configVersion;
        this.deviceSettingVersion = deviceSettingVersion;
        this.bootloaderVersion = bootloaderVersion;
        this.emvKeyProfileId = emvKeyProfileId;
        this.firmwareVersion = firmwareVersion;
        this.macKeyProfileId = macKeyProfileId;
        this.pinKeyProfileId = pinKeyProfileId;
        this.pinKeysetId = pinKeysetId;
        this.serial = serial;
        this.trackKeyProfileId = trackKeyProfileId;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.configVersion = this.configVersion;
        builder.deviceSettingVersion = this.deviceSettingVersion;
        builder.bootloaderVersion = this.bootloaderVersion;
        builder.emvKeyProfileId = this.emvKeyProfileId;
        builder.firmwareVersion = this.firmwareVersion;
        builder.macKeyProfileId = this.macKeyProfileId;
        builder.pinKeyProfileId = this.pinKeyProfileId;
        builder.pinKeysetId = this.pinKeysetId;
        builder.serial = this.serial;
        builder.trackKeyProfileId = this.trackKeyProfileId;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReaderInfo)) {
            return false;
        }
        ReaderInfo readerInfo = (ReaderInfo) other;
        return Intrinsics.areEqual(unknownFields(), readerInfo.unknownFields()) && Intrinsics.areEqual(this.configVersion, readerInfo.configVersion) && Intrinsics.areEqual(this.deviceSettingVersion, readerInfo.deviceSettingVersion) && Intrinsics.areEqual(this.bootloaderVersion, readerInfo.bootloaderVersion) && Intrinsics.areEqual(this.emvKeyProfileId, readerInfo.emvKeyProfileId) && Intrinsics.areEqual(this.firmwareVersion, readerInfo.firmwareVersion) && Intrinsics.areEqual(this.macKeyProfileId, readerInfo.macKeyProfileId) && Intrinsics.areEqual(this.pinKeyProfileId, readerInfo.pinKeyProfileId) && Intrinsics.areEqual(this.pinKeysetId, readerInfo.pinKeysetId) && Intrinsics.areEqual(this.serial, readerInfo.serial) && Intrinsics.areEqual(this.trackKeyProfileId, readerInfo.trackKeyProfileId);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((((unknownFields().hashCode() * 37) + this.configVersion.hashCode()) * 37) + this.deviceSettingVersion.hashCode()) * 37) + this.bootloaderVersion.hashCode()) * 37) + this.emvKeyProfileId.hashCode()) * 37) + this.firmwareVersion.hashCode()) * 37) + this.macKeyProfileId.hashCode()) * 37) + this.pinKeyProfileId.hashCode()) * 37) + this.pinKeysetId.hashCode()) * 37) + this.serial.hashCode()) * 37) + this.trackKeyProfileId.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("configVersion=" + Internal.sanitize(this.configVersion));
        arrayList2.add("deviceSettingVersion=" + Internal.sanitize(this.deviceSettingVersion));
        arrayList2.add("bootloaderVersion=" + Internal.sanitize(this.bootloaderVersion));
        arrayList2.add("emvKeyProfileId=" + Internal.sanitize(this.emvKeyProfileId));
        arrayList2.add("firmwareVersion=" + Internal.sanitize(this.firmwareVersion));
        arrayList2.add("macKeyProfileId=" + Internal.sanitize(this.macKeyProfileId));
        arrayList2.add("pinKeyProfileId=" + Internal.sanitize(this.pinKeyProfileId));
        arrayList2.add("pinKeysetId=" + Internal.sanitize(this.pinKeysetId));
        arrayList2.add("serial=" + Internal.sanitize(this.serial));
        arrayList2.add("trackKeyProfileId=" + Internal.sanitize(this.trackKeyProfileId));
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReaderInfo{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReaderInfo copy$default(ReaderInfo readerInfo, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = readerInfo.configVersion;
        }
        if ((i & 2) != 0) {
            str2 = readerInfo.deviceSettingVersion;
        }
        if ((i & 4) != 0) {
            str3 = readerInfo.bootloaderVersion;
        }
        if ((i & 8) != 0) {
            str4 = readerInfo.emvKeyProfileId;
        }
        if ((i & 16) != 0) {
            str5 = readerInfo.firmwareVersion;
        }
        if ((i & 32) != 0) {
            str6 = readerInfo.macKeyProfileId;
        }
        if ((i & 64) != 0) {
            str7 = readerInfo.pinKeyProfileId;
        }
        if ((i & 128) != 0) {
            str8 = readerInfo.pinKeysetId;
        }
        if ((i & 256) != 0) {
            str9 = readerInfo.serial;
        }
        if ((i & 512) != 0) {
            str10 = readerInfo.trackKeyProfileId;
        }
        if ((i & 1024) != 0) {
            byteString = readerInfo.unknownFields();
        }
        String str11 = str10;
        ByteString byteString2 = byteString;
        String str12 = str8;
        String str13 = str9;
        String str14 = str6;
        String str15 = str7;
        String str16 = str5;
        String str17 = str3;
        return readerInfo.copy(str, str2, str17, str4, str16, str14, str15, str12, str13, str11, byteString2);
    }

    public final ReaderInfo copy(String configVersion, String deviceSettingVersion, String bootloaderVersion, String emvKeyProfileId, String firmwareVersion, String macKeyProfileId, String pinKeyProfileId, String pinKeysetId, String serial, String trackKeyProfileId, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(configVersion, "configVersion");
        Intrinsics.checkNotNullParameter(deviceSettingVersion, "deviceSettingVersion");
        Intrinsics.checkNotNullParameter(bootloaderVersion, "bootloaderVersion");
        Intrinsics.checkNotNullParameter(emvKeyProfileId, "emvKeyProfileId");
        Intrinsics.checkNotNullParameter(firmwareVersion, "firmwareVersion");
        Intrinsics.checkNotNullParameter(macKeyProfileId, "macKeyProfileId");
        Intrinsics.checkNotNullParameter(pinKeyProfileId, "pinKeyProfileId");
        Intrinsics.checkNotNullParameter(pinKeysetId, "pinKeysetId");
        Intrinsics.checkNotNullParameter(serial, "serial");
        Intrinsics.checkNotNullParameter(trackKeyProfileId, "trackKeyProfileId");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReaderInfo(configVersion, deviceSettingVersion, bootloaderVersion, emvKeyProfileId, firmwareVersion, macKeyProfileId, pinKeyProfileId, pinKeysetId, serial, trackKeyProfileId, unknownFields);
    }

    /* JADX INFO: compiled from: ReaderInfo.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ReaderInfo;", "()V", "bootloaderVersion", "", "configVersion", "deviceSettingVersion", "emvKeyProfileId", "firmwareVersion", "macKeyProfileId", "pinKeyProfileId", "pinKeysetId", "serial", "trackKeyProfileId", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReaderInfo, Builder> {
        public String configVersion = "";
        public String deviceSettingVersion = "";
        public String bootloaderVersion = "";
        public String emvKeyProfileId = "";
        public String firmwareVersion = "";
        public String macKeyProfileId = "";
        public String pinKeyProfileId = "";
        public String pinKeysetId = "";
        public String serial = "";
        public String trackKeyProfileId = "";

        public final Builder configVersion(String configVersion) {
            Intrinsics.checkNotNullParameter(configVersion, "configVersion");
            this.configVersion = configVersion;
            return this;
        }

        public final Builder deviceSettingVersion(String deviceSettingVersion) {
            Intrinsics.checkNotNullParameter(deviceSettingVersion, "deviceSettingVersion");
            this.deviceSettingVersion = deviceSettingVersion;
            return this;
        }

        public final Builder bootloaderVersion(String bootloaderVersion) {
            Intrinsics.checkNotNullParameter(bootloaderVersion, "bootloaderVersion");
            this.bootloaderVersion = bootloaderVersion;
            return this;
        }

        public final Builder emvKeyProfileId(String emvKeyProfileId) {
            Intrinsics.checkNotNullParameter(emvKeyProfileId, "emvKeyProfileId");
            this.emvKeyProfileId = emvKeyProfileId;
            return this;
        }

        public final Builder firmwareVersion(String firmwareVersion) {
            Intrinsics.checkNotNullParameter(firmwareVersion, "firmwareVersion");
            this.firmwareVersion = firmwareVersion;
            return this;
        }

        public final Builder macKeyProfileId(String macKeyProfileId) {
            Intrinsics.checkNotNullParameter(macKeyProfileId, "macKeyProfileId");
            this.macKeyProfileId = macKeyProfileId;
            return this;
        }

        public final Builder pinKeyProfileId(String pinKeyProfileId) {
            Intrinsics.checkNotNullParameter(pinKeyProfileId, "pinKeyProfileId");
            this.pinKeyProfileId = pinKeyProfileId;
            return this;
        }

        public final Builder pinKeysetId(String pinKeysetId) {
            Intrinsics.checkNotNullParameter(pinKeysetId, "pinKeysetId");
            this.pinKeysetId = pinKeysetId;
            return this;
        }

        public final Builder serial(String serial) {
            Intrinsics.checkNotNullParameter(serial, "serial");
            this.serial = serial;
            return this;
        }

        public final Builder trackKeyProfileId(String trackKeyProfileId) {
            Intrinsics.checkNotNullParameter(trackKeyProfileId, "trackKeyProfileId");
            this.trackKeyProfileId = trackKeyProfileId;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReaderInfo build() {
            return new ReaderInfo(this.configVersion, this.deviceSettingVersion, this.bootloaderVersion, this.emvKeyProfileId, this.firmwareVersion, this.macKeyProfileId, this.pinKeyProfileId, this.pinKeysetId, this.serial, this.trackKeyProfileId, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReaderInfo.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderInfo$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ReaderInfo;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReaderInfo build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReaderInfo.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReaderInfo>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ReaderInfo$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReaderInfo value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.configVersion, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.configVersion);
                }
                if (!Intrinsics.areEqual(value.deviceSettingVersion, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.deviceSettingVersion);
                }
                if (!Intrinsics.areEqual(value.bootloaderVersion, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.bootloaderVersion);
                }
                if (!Intrinsics.areEqual(value.emvKeyProfileId, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.emvKeyProfileId);
                }
                if (!Intrinsics.areEqual(value.firmwareVersion, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.firmwareVersion);
                }
                if (!Intrinsics.areEqual(value.macKeyProfileId, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.macKeyProfileId);
                }
                if (!Intrinsics.areEqual(value.pinKeyProfileId, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.pinKeyProfileId);
                }
                if (!Intrinsics.areEqual(value.pinKeysetId, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.pinKeysetId);
                }
                if (!Intrinsics.areEqual(value.serial, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(9, value.serial);
                }
                return !Intrinsics.areEqual(value.trackKeyProfileId, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(10, value.trackKeyProfileId) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReaderInfo value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.configVersion, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.configVersion);
                }
                if (!Intrinsics.areEqual(value.deviceSettingVersion, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.deviceSettingVersion);
                }
                if (!Intrinsics.areEqual(value.bootloaderVersion, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.bootloaderVersion);
                }
                if (!Intrinsics.areEqual(value.emvKeyProfileId, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.emvKeyProfileId);
                }
                if (!Intrinsics.areEqual(value.firmwareVersion, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.firmwareVersion);
                }
                if (!Intrinsics.areEqual(value.macKeyProfileId, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.macKeyProfileId);
                }
                if (!Intrinsics.areEqual(value.pinKeyProfileId, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.pinKeyProfileId);
                }
                if (!Intrinsics.areEqual(value.pinKeysetId, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.pinKeysetId);
                }
                if (!Intrinsics.areEqual(value.serial, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.serial);
                }
                if (!Intrinsics.areEqual(value.trackKeyProfileId, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.trackKeyProfileId);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReaderInfo value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.trackKeyProfileId, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.trackKeyProfileId);
                }
                if (!Intrinsics.areEqual(value.serial, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.serial);
                }
                if (!Intrinsics.areEqual(value.pinKeysetId, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.pinKeysetId);
                }
                if (!Intrinsics.areEqual(value.pinKeyProfileId, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.pinKeyProfileId);
                }
                if (!Intrinsics.areEqual(value.macKeyProfileId, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.macKeyProfileId);
                }
                if (!Intrinsics.areEqual(value.firmwareVersion, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.firmwareVersion);
                }
                if (!Intrinsics.areEqual(value.emvKeyProfileId, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.emvKeyProfileId);
                }
                if (!Intrinsics.areEqual(value.bootloaderVersion, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.bootloaderVersion);
                }
                if (!Intrinsics.areEqual(value.deviceSettingVersion, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.deviceSettingVersion);
                }
                if (Intrinsics.areEqual(value.configVersion, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.configVersion);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReaderInfo redact(ReaderInfo value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ReaderInfo.copy$default(value, null, null, null, null, null, null, null, null, null, null, ByteString.EMPTY, WinUser.CF_GDIOBJLAST, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReaderInfo decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                String strDecode7 = strDecode6;
                String strDecode8 = strDecode7;
                String strDecode9 = strDecode8;
                String strDecode10 = strDecode9;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                strDecode9 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 10:
                                strDecode10 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new ReaderInfo(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, strDecode8, strDecode9, strDecode10, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
