package com.stripe.proto.model.attestation;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
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

/* JADX INFO: compiled from: InstallationFingerprint.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBs\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011Jt\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\rH\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u0004H\u0016R\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/model/attestation/InstallationFingerprint;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;", "installation_uuid", "", "package_name", "package_version", "package_signature", "sdk_version", "sdk_signature", "device_manufacturer", "device_model", "android_api_level", "", "android_patch_level", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InstallationFingerprint extends Message<InstallationFingerprint, Builder> {
    public static final ProtoAdapter<InstallationFingerprint> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "androidApiLevel", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final int android_api_level;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "androidPatchLevel", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final String android_patch_level;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceManufacturer", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String device_manufacturer;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceModel", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String device_model;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "installationUuid", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String installation_uuid;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String package_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "packageSignature", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String package_signature;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "packageVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String package_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "sdkSignature", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String sdk_signature;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = RemoteConfigConstants.RequestFieldKey.SDK_VERSION, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String sdk_version;

    public InstallationFingerprint() {
        this(null, null, null, null, null, null, null, null, 0, null, null, 2047, null);
    }

    public /* synthetic */ InstallationFingerprint(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i, String str9, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? "" : str4, (i2 & 16) != 0 ? "" : str5, (i2 & 32) != 0 ? "" : str6, (i2 & 64) != 0 ? "" : str7, (i2 & 128) != 0 ? "" : str8, (i2 & 256) != 0 ? 0 : i, (i2 & 512) != 0 ? "" : str9, (i2 & 1024) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstallationFingerprint(String installation_uuid, String package_name, String package_version, String package_signature, String sdk_version, String sdk_signature, String device_manufacturer, String device_model, int i, String android_patch_level, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(installation_uuid, "installation_uuid");
        Intrinsics.checkNotNullParameter(package_name, "package_name");
        Intrinsics.checkNotNullParameter(package_version, "package_version");
        Intrinsics.checkNotNullParameter(package_signature, "package_signature");
        Intrinsics.checkNotNullParameter(sdk_version, "sdk_version");
        Intrinsics.checkNotNullParameter(sdk_signature, "sdk_signature");
        Intrinsics.checkNotNullParameter(device_manufacturer, "device_manufacturer");
        Intrinsics.checkNotNullParameter(device_model, "device_model");
        Intrinsics.checkNotNullParameter(android_patch_level, "android_patch_level");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.installation_uuid = installation_uuid;
        this.package_name = package_name;
        this.package_version = package_version;
        this.package_signature = package_signature;
        this.sdk_version = sdk_version;
        this.sdk_signature = sdk_signature;
        this.device_manufacturer = device_manufacturer;
        this.device_model = device_model;
        this.android_api_level = i;
        this.android_patch_level = android_patch_level;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.installation_uuid = this.installation_uuid;
        builder.package_name = this.package_name;
        builder.package_version = this.package_version;
        builder.package_signature = this.package_signature;
        builder.sdk_version = this.sdk_version;
        builder.sdk_signature = this.sdk_signature;
        builder.device_manufacturer = this.device_manufacturer;
        builder.device_model = this.device_model;
        builder.android_api_level = this.android_api_level;
        builder.android_patch_level = this.android_patch_level;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof InstallationFingerprint)) {
            return false;
        }
        InstallationFingerprint installationFingerprint = (InstallationFingerprint) other;
        return Intrinsics.areEqual(unknownFields(), installationFingerprint.unknownFields()) && Intrinsics.areEqual(this.installation_uuid, installationFingerprint.installation_uuid) && Intrinsics.areEqual(this.package_name, installationFingerprint.package_name) && Intrinsics.areEqual(this.package_version, installationFingerprint.package_version) && Intrinsics.areEqual(this.package_signature, installationFingerprint.package_signature) && Intrinsics.areEqual(this.sdk_version, installationFingerprint.sdk_version) && Intrinsics.areEqual(this.sdk_signature, installationFingerprint.sdk_signature) && Intrinsics.areEqual(this.device_manufacturer, installationFingerprint.device_manufacturer) && Intrinsics.areEqual(this.device_model, installationFingerprint.device_model) && this.android_api_level == installationFingerprint.android_api_level && Intrinsics.areEqual(this.android_patch_level, installationFingerprint.android_patch_level);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((((unknownFields().hashCode() * 37) + this.installation_uuid.hashCode()) * 37) + this.package_name.hashCode()) * 37) + this.package_version.hashCode()) * 37) + this.package_signature.hashCode()) * 37) + this.sdk_version.hashCode()) * 37) + this.sdk_signature.hashCode()) * 37) + this.device_manufacturer.hashCode()) * 37) + this.device_model.hashCode()) * 37) + Integer.hashCode(this.android_api_level)) * 37) + this.android_patch_level.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("installation_uuid=" + Internal.sanitize(this.installation_uuid));
        arrayList2.add("package_name=" + Internal.sanitize(this.package_name));
        arrayList2.add("package_version=" + Internal.sanitize(this.package_version));
        arrayList2.add("package_signature=" + Internal.sanitize(this.package_signature));
        arrayList2.add("sdk_version=" + Internal.sanitize(this.sdk_version));
        arrayList2.add("sdk_signature=" + Internal.sanitize(this.sdk_signature));
        arrayList2.add("device_manufacturer=" + Internal.sanitize(this.device_manufacturer));
        arrayList2.add("device_model=" + Internal.sanitize(this.device_model));
        arrayList2.add("android_api_level=" + this.android_api_level);
        arrayList2.add("android_patch_level=" + Internal.sanitize(this.android_patch_level));
        return CollectionsKt.joinToString$default(arrayList, ", ", "InstallationFingerprint{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ InstallationFingerprint copy$default(InstallationFingerprint installationFingerprint, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i, String str9, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = installationFingerprint.installation_uuid;
        }
        if ((i2 & 2) != 0) {
            str2 = installationFingerprint.package_name;
        }
        if ((i2 & 4) != 0) {
            str3 = installationFingerprint.package_version;
        }
        if ((i2 & 8) != 0) {
            str4 = installationFingerprint.package_signature;
        }
        if ((i2 & 16) != 0) {
            str5 = installationFingerprint.sdk_version;
        }
        if ((i2 & 32) != 0) {
            str6 = installationFingerprint.sdk_signature;
        }
        if ((i2 & 64) != 0) {
            str7 = installationFingerprint.device_manufacturer;
        }
        if ((i2 & 128) != 0) {
            str8 = installationFingerprint.device_model;
        }
        if ((i2 & 256) != 0) {
            i = installationFingerprint.android_api_level;
        }
        if ((i2 & 512) != 0) {
            str9 = installationFingerprint.android_patch_level;
        }
        if ((i2 & 1024) != 0) {
            byteString = installationFingerprint.unknownFields();
        }
        String str10 = str9;
        ByteString byteString2 = byteString;
        String str11 = str8;
        int i3 = i;
        String str12 = str6;
        String str13 = str7;
        String str14 = str5;
        String str15 = str3;
        return installationFingerprint.copy(str, str2, str15, str4, str14, str12, str13, str11, i3, str10, byteString2);
    }

    public final InstallationFingerprint copy(String installation_uuid, String package_name, String package_version, String package_signature, String sdk_version, String sdk_signature, String device_manufacturer, String device_model, int android_api_level, String android_patch_level, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(installation_uuid, "installation_uuid");
        Intrinsics.checkNotNullParameter(package_name, "package_name");
        Intrinsics.checkNotNullParameter(package_version, "package_version");
        Intrinsics.checkNotNullParameter(package_signature, "package_signature");
        Intrinsics.checkNotNullParameter(sdk_version, "sdk_version");
        Intrinsics.checkNotNullParameter(sdk_signature, "sdk_signature");
        Intrinsics.checkNotNullParameter(device_manufacturer, "device_manufacturer");
        Intrinsics.checkNotNullParameter(device_model, "device_model");
        Intrinsics.checkNotNullParameter(android_patch_level, "android_patch_level");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new InstallationFingerprint(installation_uuid, package_name, package_version, package_signature, sdk_version, sdk_signature, device_manufacturer, device_model, android_api_level, android_patch_level, unknownFields);
    }

    /* JADX INFO: compiled from: InstallationFingerprint.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0007J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/attestation/InstallationFingerprint;", "()V", "android_api_level", "", "android_patch_level", "", "device_manufacturer", "device_model", "installation_uuid", "package_name", "package_signature", "package_version", "sdk_signature", "sdk_version", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<InstallationFingerprint, Builder> {
        public int android_api_level;
        public String installation_uuid = "";
        public String package_name = "";
        public String package_version = "";
        public String package_signature = "";
        public String sdk_version = "";
        public String sdk_signature = "";
        public String device_manufacturer = "";
        public String device_model = "";
        public String android_patch_level = "";

        public final Builder installation_uuid(String installation_uuid) {
            Intrinsics.checkNotNullParameter(installation_uuid, "installation_uuid");
            this.installation_uuid = installation_uuid;
            return this;
        }

        public final Builder package_name(String package_name) {
            Intrinsics.checkNotNullParameter(package_name, "package_name");
            this.package_name = package_name;
            return this;
        }

        public final Builder package_version(String package_version) {
            Intrinsics.checkNotNullParameter(package_version, "package_version");
            this.package_version = package_version;
            return this;
        }

        public final Builder package_signature(String package_signature) {
            Intrinsics.checkNotNullParameter(package_signature, "package_signature");
            this.package_signature = package_signature;
            return this;
        }

        public final Builder sdk_version(String sdk_version) {
            Intrinsics.checkNotNullParameter(sdk_version, "sdk_version");
            this.sdk_version = sdk_version;
            return this;
        }

        public final Builder sdk_signature(String sdk_signature) {
            Intrinsics.checkNotNullParameter(sdk_signature, "sdk_signature");
            this.sdk_signature = sdk_signature;
            return this;
        }

        public final Builder device_manufacturer(String device_manufacturer) {
            Intrinsics.checkNotNullParameter(device_manufacturer, "device_manufacturer");
            this.device_manufacturer = device_manufacturer;
            return this;
        }

        public final Builder device_model(String device_model) {
            Intrinsics.checkNotNullParameter(device_model, "device_model");
            this.device_model = device_model;
            return this;
        }

        public final Builder android_api_level(int android_api_level) {
            this.android_api_level = android_api_level;
            return this;
        }

        public final Builder android_patch_level(String android_patch_level) {
            Intrinsics.checkNotNullParameter(android_patch_level, "android_patch_level");
            this.android_patch_level = android_patch_level;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public InstallationFingerprint build() {
            return new InstallationFingerprint(this.installation_uuid, this.package_name, this.package_version, this.package_signature, this.sdk_version, this.sdk_signature, this.device_manufacturer, this.device_model, this.android_api_level, this.android_patch_level, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: InstallationFingerprint.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/attestation/InstallationFingerprint$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/attestation/InstallationFingerprint;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ InstallationFingerprint build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InstallationFingerprint.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<InstallationFingerprint>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.attestation.InstallationFingerprint$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(InstallationFingerprint value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.installation_uuid, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.installation_uuid);
                }
                if (!Intrinsics.areEqual(value.package_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.package_name);
                }
                if (!Intrinsics.areEqual(value.package_version, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.package_version);
                }
                if (!Intrinsics.areEqual(value.package_signature, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.package_signature);
                }
                if (!Intrinsics.areEqual(value.sdk_version, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.sdk_version);
                }
                if (!Intrinsics.areEqual(value.sdk_signature, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.sdk_signature);
                }
                if (!Intrinsics.areEqual(value.device_manufacturer, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.device_manufacturer);
                }
                if (!Intrinsics.areEqual(value.device_model, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.device_model);
                }
                if (value.android_api_level != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(9, Integer.valueOf(value.android_api_level));
                }
                return !Intrinsics.areEqual(value.android_patch_level, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(10, value.android_patch_level) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, InstallationFingerprint value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.installation_uuid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.installation_uuid);
                }
                if (!Intrinsics.areEqual(value.package_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.package_name);
                }
                if (!Intrinsics.areEqual(value.package_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.package_version);
                }
                if (!Intrinsics.areEqual(value.package_signature, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.package_signature);
                }
                if (!Intrinsics.areEqual(value.sdk_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.sdk_version);
                }
                if (!Intrinsics.areEqual(value.sdk_signature, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.sdk_signature);
                }
                if (!Intrinsics.areEqual(value.device_manufacturer, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.device_manufacturer);
                }
                if (!Intrinsics.areEqual(value.device_model, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.device_model);
                }
                if (value.android_api_level != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 9, Integer.valueOf(value.android_api_level));
                }
                if (!Intrinsics.areEqual(value.android_patch_level, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.android_patch_level);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, InstallationFingerprint value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.android_patch_level, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.android_patch_level);
                }
                if (value.android_api_level != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 9, Integer.valueOf(value.android_api_level));
                }
                if (!Intrinsics.areEqual(value.device_model, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.device_model);
                }
                if (!Intrinsics.areEqual(value.device_manufacturer, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.device_manufacturer);
                }
                if (!Intrinsics.areEqual(value.sdk_signature, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.sdk_signature);
                }
                if (!Intrinsics.areEqual(value.sdk_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.sdk_version);
                }
                if (!Intrinsics.areEqual(value.package_signature, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.package_signature);
                }
                if (!Intrinsics.areEqual(value.package_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.package_version);
                }
                if (!Intrinsics.areEqual(value.package_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.package_name);
                }
                if (Intrinsics.areEqual(value.installation_uuid, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.installation_uuid);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public InstallationFingerprint redact(InstallationFingerprint value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return InstallationFingerprint.copy$default(value, null, null, null, null, null, null, null, null, 0, null, ByteString.EMPTY, WinUser.CF_GDIOBJLAST, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public InstallationFingerprint decode(ProtoReader reader) throws IOException {
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
                int iIntValue = 0;
                String strDecode9 = strDecode8;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode9 = ProtoAdapter.STRING.decode(reader);
                                break;
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
                                iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 10:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new InstallationFingerprint(strDecode, strDecode9, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, iIntValue, strDecode8, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
