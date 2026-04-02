package com.stripe.proto.model.common;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.stripe.proto.model.common.ClientVersionSpecPb;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
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

/* JADX INFO: compiled from: ClientVersionSpecPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003 !\"Ba\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013Jb\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0002H\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0016R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0014\u0010\u0015¨\u0006#"}, d2 = {"Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "client_upgrade_arg", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;", "version_metadata", "Lcom/stripe/proto/model/common/SignedAssetPb;", "presigned_url", "Lcom/stripe/proto/model/common/UrlPb;", "install_type", "Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;", "asset_version", "Lcom/stripe/proto/model/common/DeviceAssetInfo;", "asset_version_metadata", "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;)V", "getVersion_metadata$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "InstallType", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ClientVersionSpecPb extends Message<ClientVersionSpecPb, Builder> {
    public static final ProtoAdapter<ClientVersionSpecPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceAssetInfo#ADAPTER", jsonName = "assetVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 7)
    public final DeviceAssetInfo asset_version;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceAssetVersionMetadata#ADAPTER", jsonName = "assetVersionMetadata", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 8)
    public final DeviceAssetVersionMetadata asset_version_metadata;

    @WireField(adapter = "com.stripe.proto.model.common.ClientUpgradeArgumentPb#ADAPTER", jsonName = "clientUpgradeArg", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 3)
    public final ClientUpgradeArgumentPb client_upgrade_arg;

    @WireField(adapter = "com.stripe.proto.model.common.ClientVersionSpecPb$InstallType#ADAPTER", jsonName = "installType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 6)
    public final InstallType install_type;

    @WireField(adapter = "com.stripe.proto.model.common.UrlPb#ADAPTER", jsonName = "presignedUrl", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 5)
    public final UrlPb presigned_url;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "versionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final VersionInfoPb version_info;

    @WireField(adapter = "com.stripe.proto.model.common.SignedAssetPb#ADAPTER", jsonName = "versionMetadata", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 4)
    public final SignedAssetPb version_metadata;

    public ClientVersionSpecPb() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    @Deprecated(message = "version_metadata is deprecated")
    public static /* synthetic */ void getVersion_metadata$annotations() {
    }

    public /* synthetic */ ClientVersionSpecPb(VersionInfoPb versionInfoPb, ClientUpgradeArgumentPb clientUpgradeArgumentPb, SignedAssetPb signedAssetPb, UrlPb urlPb, InstallType installType, DeviceAssetInfo deviceAssetInfo, DeviceAssetVersionMetadata deviceAssetVersionMetadata, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : versionInfoPb, (i & 2) != 0 ? null : clientUpgradeArgumentPb, (i & 4) != 0 ? null : signedAssetPb, (i & 8) != 0 ? null : urlPb, (i & 16) != 0 ? InstallType.INCREMENTAL : installType, (i & 32) != 0 ? null : deviceAssetInfo, (i & 64) != 0 ? null : deviceAssetVersionMetadata, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientVersionSpecPb(VersionInfoPb versionInfoPb, ClientUpgradeArgumentPb clientUpgradeArgumentPb, SignedAssetPb signedAssetPb, UrlPb urlPb, InstallType install_type, DeviceAssetInfo deviceAssetInfo, DeviceAssetVersionMetadata deviceAssetVersionMetadata, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(install_type, "install_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.version_info = versionInfoPb;
        this.client_upgrade_arg = clientUpgradeArgumentPb;
        this.version_metadata = signedAssetPb;
        this.presigned_url = urlPb;
        this.install_type = install_type;
        this.asset_version = deviceAssetInfo;
        this.asset_version_metadata = deviceAssetVersionMetadata;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.version_info = this.version_info;
        builder.client_upgrade_arg = this.client_upgrade_arg;
        builder.version_metadata = this.version_metadata;
        builder.presigned_url = this.presigned_url;
        builder.install_type = this.install_type;
        builder.asset_version = this.asset_version;
        builder.asset_version_metadata = this.asset_version_metadata;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ClientVersionSpecPb)) {
            return false;
        }
        ClientVersionSpecPb clientVersionSpecPb = (ClientVersionSpecPb) other;
        return Intrinsics.areEqual(unknownFields(), clientVersionSpecPb.unknownFields()) && Intrinsics.areEqual(this.version_info, clientVersionSpecPb.version_info) && Intrinsics.areEqual(this.client_upgrade_arg, clientVersionSpecPb.client_upgrade_arg) && Intrinsics.areEqual(this.version_metadata, clientVersionSpecPb.version_metadata) && Intrinsics.areEqual(this.presigned_url, clientVersionSpecPb.presigned_url) && this.install_type == clientVersionSpecPb.install_type && Intrinsics.areEqual(this.asset_version, clientVersionSpecPb.asset_version) && Intrinsics.areEqual(this.asset_version_metadata, clientVersionSpecPb.asset_version_metadata);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        VersionInfoPb versionInfoPb = this.version_info;
        int iHashCode2 = (iHashCode + (versionInfoPb != null ? versionInfoPb.hashCode() : 0)) * 37;
        ClientUpgradeArgumentPb clientUpgradeArgumentPb = this.client_upgrade_arg;
        int iHashCode3 = (iHashCode2 + (clientUpgradeArgumentPb != null ? clientUpgradeArgumentPb.hashCode() : 0)) * 37;
        SignedAssetPb signedAssetPb = this.version_metadata;
        int iHashCode4 = (iHashCode3 + (signedAssetPb != null ? signedAssetPb.hashCode() : 0)) * 37;
        UrlPb urlPb = this.presigned_url;
        int iHashCode5 = (((iHashCode4 + (urlPb != null ? urlPb.hashCode() : 0)) * 37) + this.install_type.hashCode()) * 37;
        DeviceAssetInfo deviceAssetInfo = this.asset_version;
        int iHashCode6 = (iHashCode5 + (deviceAssetInfo != null ? deviceAssetInfo.hashCode() : 0)) * 37;
        DeviceAssetVersionMetadata deviceAssetVersionMetadata = this.asset_version_metadata;
        int iHashCode7 = iHashCode6 + (deviceAssetVersionMetadata != null ? deviceAssetVersionMetadata.hashCode() : 0);
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.version_info != null) {
            arrayList.add("version_info=" + this.version_info);
        }
        if (this.client_upgrade_arg != null) {
            arrayList.add("client_upgrade_arg=" + this.client_upgrade_arg);
        }
        if (this.version_metadata != null) {
            arrayList.add("version_metadata=" + this.version_metadata);
        }
        if (this.presigned_url != null) {
            arrayList.add("presigned_url=" + this.presigned_url);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("install_type=" + this.install_type);
        if (this.asset_version != null) {
            arrayList2.add("asset_version=" + this.asset_version);
        }
        if (this.asset_version_metadata != null) {
            arrayList2.add("asset_version_metadata=" + this.asset_version_metadata);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ClientVersionSpecPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ClientVersionSpecPb copy$default(ClientVersionSpecPb clientVersionSpecPb, VersionInfoPb versionInfoPb, ClientUpgradeArgumentPb clientUpgradeArgumentPb, SignedAssetPb signedAssetPb, UrlPb urlPb, InstallType installType, DeviceAssetInfo deviceAssetInfo, DeviceAssetVersionMetadata deviceAssetVersionMetadata, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            versionInfoPb = clientVersionSpecPb.version_info;
        }
        if ((i & 2) != 0) {
            clientUpgradeArgumentPb = clientVersionSpecPb.client_upgrade_arg;
        }
        if ((i & 4) != 0) {
            signedAssetPb = clientVersionSpecPb.version_metadata;
        }
        if ((i & 8) != 0) {
            urlPb = clientVersionSpecPb.presigned_url;
        }
        if ((i & 16) != 0) {
            installType = clientVersionSpecPb.install_type;
        }
        if ((i & 32) != 0) {
            deviceAssetInfo = clientVersionSpecPb.asset_version;
        }
        if ((i & 64) != 0) {
            deviceAssetVersionMetadata = clientVersionSpecPb.asset_version_metadata;
        }
        if ((i & 128) != 0) {
            byteString = clientVersionSpecPb.unknownFields();
        }
        DeviceAssetVersionMetadata deviceAssetVersionMetadata2 = deviceAssetVersionMetadata;
        ByteString byteString2 = byteString;
        InstallType installType2 = installType;
        DeviceAssetInfo deviceAssetInfo2 = deviceAssetInfo;
        return clientVersionSpecPb.copy(versionInfoPb, clientUpgradeArgumentPb, signedAssetPb, urlPb, installType2, deviceAssetInfo2, deviceAssetVersionMetadata2, byteString2);
    }

    public final ClientVersionSpecPb copy(VersionInfoPb version_info, ClientUpgradeArgumentPb client_upgrade_arg, SignedAssetPb version_metadata, UrlPb presigned_url, InstallType install_type, DeviceAssetInfo asset_version, DeviceAssetVersionMetadata asset_version_metadata, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(install_type, "install_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ClientVersionSpecPb(version_info, client_upgrade_arg, version_metadata, presigned_url, install_type, asset_version, asset_version_metadata, unknownFields);
    }

    /* JADX INFO: compiled from: ClientVersionSpecPb.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0012\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "()V", "asset_version", "Lcom/stripe/proto/model/common/DeviceAssetInfo;", "asset_version_metadata", "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;", "client_upgrade_arg", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;", "install_type", "Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;", "presigned_url", "Lcom/stripe/proto/model/common/UrlPb;", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "version_metadata", "Lcom/stripe/proto/model/common/SignedAssetPb;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ClientVersionSpecPb, Builder> {
        public DeviceAssetInfo asset_version;
        public DeviceAssetVersionMetadata asset_version_metadata;
        public ClientUpgradeArgumentPb client_upgrade_arg;
        public InstallType install_type = InstallType.INCREMENTAL;
        public UrlPb presigned_url;
        public VersionInfoPb version_info;
        public SignedAssetPb version_metadata;

        public final Builder version_info(VersionInfoPb version_info) {
            this.version_info = version_info;
            return this;
        }

        public final Builder client_upgrade_arg(ClientUpgradeArgumentPb client_upgrade_arg) {
            this.client_upgrade_arg = client_upgrade_arg;
            return this;
        }

        @Deprecated(message = "version_metadata is deprecated")
        public final Builder version_metadata(SignedAssetPb version_metadata) {
            this.version_metadata = version_metadata;
            return this;
        }

        public final Builder presigned_url(UrlPb presigned_url) {
            this.presigned_url = presigned_url;
            return this;
        }

        public final Builder install_type(InstallType install_type) {
            Intrinsics.checkNotNullParameter(install_type, "install_type");
            this.install_type = install_type;
            return this;
        }

        public final Builder asset_version(DeviceAssetInfo asset_version) {
            this.asset_version = asset_version;
            return this;
        }

        public final Builder asset_version_metadata(DeviceAssetVersionMetadata asset_version_metadata) {
            this.asset_version_metadata = asset_version_metadata;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ClientVersionSpecPb build() {
            return new ClientVersionSpecPb(this.version_info, this.client_upgrade_arg, this.version_metadata, this.presigned_url, this.install_type, this.asset_version, this.asset_version_metadata, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ClientVersionSpecPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/ClientVersionSpecPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ClientVersionSpecPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ClientVersionSpecPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ClientVersionSpecPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.ClientVersionSpecPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ClientVersionSpecPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(1, value.version_info);
                }
                if (value.client_upgrade_arg != null) {
                    size += ClientUpgradeArgumentPb.ADAPTER.encodedSizeWithTag(3, value.client_upgrade_arg);
                }
                if (value.version_metadata != null) {
                    size += SignedAssetPb.ADAPTER.encodedSizeWithTag(4, value.version_metadata);
                }
                if (value.presigned_url != null) {
                    size += UrlPb.ADAPTER.encodedSizeWithTag(5, value.presigned_url);
                }
                if (value.install_type != ClientVersionSpecPb.InstallType.INCREMENTAL) {
                    size += ClientVersionSpecPb.InstallType.ADAPTER.encodedSizeWithTag(6, value.install_type);
                }
                if (value.asset_version != null) {
                    size += DeviceAssetInfo.ADAPTER.encodedSizeWithTag(7, value.asset_version);
                }
                return value.asset_version_metadata != null ? size + DeviceAssetVersionMetadata.ADAPTER.encodedSizeWithTag(8, value.asset_version_metadata) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ClientVersionSpecPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 1, value.version_info);
                }
                if (value.client_upgrade_arg != null) {
                    ClientUpgradeArgumentPb.ADAPTER.encodeWithTag(writer, 3, value.client_upgrade_arg);
                }
                if (value.version_metadata != null) {
                    SignedAssetPb.ADAPTER.encodeWithTag(writer, 4, value.version_metadata);
                }
                if (value.presigned_url != null) {
                    UrlPb.ADAPTER.encodeWithTag(writer, 5, value.presigned_url);
                }
                if (value.install_type != ClientVersionSpecPb.InstallType.INCREMENTAL) {
                    ClientVersionSpecPb.InstallType.ADAPTER.encodeWithTag(writer, 6, value.install_type);
                }
                if (value.asset_version != null) {
                    DeviceAssetInfo.ADAPTER.encodeWithTag(writer, 7, value.asset_version);
                }
                if (value.asset_version_metadata != null) {
                    DeviceAssetVersionMetadata.ADAPTER.encodeWithTag(writer, 8, value.asset_version_metadata);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ClientVersionSpecPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.asset_version_metadata != null) {
                    DeviceAssetVersionMetadata.ADAPTER.encodeWithTag(writer, 8, value.asset_version_metadata);
                }
                if (value.asset_version != null) {
                    DeviceAssetInfo.ADAPTER.encodeWithTag(writer, 7, value.asset_version);
                }
                if (value.install_type != ClientVersionSpecPb.InstallType.INCREMENTAL) {
                    ClientVersionSpecPb.InstallType.ADAPTER.encodeWithTag(writer, 6, value.install_type);
                }
                if (value.presigned_url != null) {
                    UrlPb.ADAPTER.encodeWithTag(writer, 5, value.presigned_url);
                }
                if (value.version_metadata != null) {
                    SignedAssetPb.ADAPTER.encodeWithTag(writer, 4, value.version_metadata);
                }
                if (value.client_upgrade_arg != null) {
                    ClientUpgradeArgumentPb.ADAPTER.encodeWithTag(writer, 3, value.client_upgrade_arg);
                }
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 1, value.version_info);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /*  JADX ERROR: UnsupportedOperationException in pass: SwitchBreakVisitor
                java.lang.UnsupportedOperationException
                	at java.base/java.util.AbstractList.remove(AbstractList.java:167)
                	at jadx.core.utils.ListUtils.removeLast(ListUtils.java:82)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.removeBreak(SwitchBreakVisitor.java:254)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processBranchRegion(SwitchBreakVisitor.java:110)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processRegion(SwitchBreakVisitor.java:64)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.enterRegion(SwitchBreakVisitor.java:202)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$IterativeSwitchRegionVisitor.leaveRegion(SwitchBreakVisitor.java:177)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.runSwitchTraverse(SwitchBreakVisitor.java:52)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.visit(SwitchBreakVisitor.java:45)
                */
            @Override // com.squareup.wire.ProtoAdapter
            public com.stripe.proto.model.common.ClientVersionSpecPb decode(com.squareup.wire.ProtoReader r21) throws java.io.IOException {
                /*
                    r20 = this;
                    r1 = r21
                    java.lang.String r0 = "reader"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                    com.stripe.proto.model.common.ClientVersionSpecPb$InstallType r0 = com.stripe.proto.model.common.ClientVersionSpecPb.InstallType.INCREMENTAL
                    long r2 = r1.beginMessage()
                    r4 = 0
                    r5 = r4
                    r6 = r5
                    r7 = r6
                    r8 = r7
                    r9 = r8
                    r10 = r9
                L14:
                    r4 = r0
                L15:
                    int r11 = r1.nextTag()
                    r0 = -1
                    if (r11 == r0) goto L68
                    switch(r11) {
                        case 1: goto L60;
                        case 2: goto L1f;
                        case 3: goto L58;
                        case 4: goto L50;
                        case 5: goto L48;
                        case 6: goto L33;
                        case 7: goto L2b;
                        case 8: goto L23;
                        default: goto L1f;
                    }
                L1f:
                    r1.readUnknownField(r11)
                    goto L15
                L23:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.common.DeviceAssetVersionMetadata> r0 = com.stripe.proto.model.common.DeviceAssetVersionMetadata.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r10 = r0
                    goto L15
                L2b:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.common.DeviceAssetInfo> r0 = com.stripe.proto.model.common.DeviceAssetInfo.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r9 = r0
                    goto L15
                L33:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.common.ClientVersionSpecPb$InstallType> r0 = com.stripe.proto.model.common.ClientVersionSpecPb.InstallType.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L3a
                    java.lang.Object r0 = r0.decode(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L3a
                    goto L14
                L3a:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r12 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r13 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r13)
                    r1.addUnknownField(r11, r12, r0)
                    goto L15
                L48:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.common.UrlPb> r0 = com.stripe.proto.model.common.UrlPb.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r8 = r0
                    goto L15
                L50:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.common.SignedAssetPb> r0 = com.stripe.proto.model.common.SignedAssetPb.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r7 = r0
                    goto L15
                L58:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.common.ClientUpgradeArgumentPb> r0 = com.stripe.proto.model.common.ClientUpgradeArgumentPb.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r6 = r0
                    goto L15
                L60:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.common.VersionInfoPb> r0 = com.stripe.proto.model.common.VersionInfoPb.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r5 = r0
                    goto L15
                L68:
                    okio.ByteString r19 = r1.endMessageAndGetUnknownFields(r2)
                    com.stripe.proto.model.common.ClientVersionSpecPb r11 = new com.stripe.proto.model.common.ClientVersionSpecPb
                    r12 = r5
                    com.stripe.proto.model.common.VersionInfoPb r12 = (com.stripe.proto.model.common.VersionInfoPb) r12
                    r13 = r6
                    com.stripe.proto.model.common.ClientUpgradeArgumentPb r13 = (com.stripe.proto.model.common.ClientUpgradeArgumentPb) r13
                    r14 = r7
                    com.stripe.proto.model.common.SignedAssetPb r14 = (com.stripe.proto.model.common.SignedAssetPb) r14
                    r15 = r8
                    com.stripe.proto.model.common.UrlPb r15 = (com.stripe.proto.model.common.UrlPb) r15
                    r16 = r4
                    com.stripe.proto.model.common.ClientVersionSpecPb$InstallType r16 = (com.stripe.proto.model.common.ClientVersionSpecPb.InstallType) r16
                    r17 = r9
                    com.stripe.proto.model.common.DeviceAssetInfo r17 = (com.stripe.proto.model.common.DeviceAssetInfo) r17
                    r18 = r10
                    com.stripe.proto.model.common.DeviceAssetVersionMetadata r18 = (com.stripe.proto.model.common.DeviceAssetVersionMetadata) r18
                    r11.<init>(r12, r13, r14, r15, r16, r17, r18, r19)
                    return r11
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.model.common.ClientVersionSpecPb$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.model.common.ClientVersionSpecPb");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ClientVersionSpecPb redact(ClientVersionSpecPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                VersionInfoPb versionInfoPb = value.version_info;
                VersionInfoPb versionInfoPbRedact = versionInfoPb != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb) : null;
                ClientUpgradeArgumentPb clientUpgradeArgumentPb = value.client_upgrade_arg;
                ClientUpgradeArgumentPb clientUpgradeArgumentPbRedact = clientUpgradeArgumentPb != null ? ClientUpgradeArgumentPb.ADAPTER.redact(clientUpgradeArgumentPb) : null;
                SignedAssetPb signedAssetPb = value.version_metadata;
                SignedAssetPb signedAssetPbRedact = signedAssetPb != null ? SignedAssetPb.ADAPTER.redact(signedAssetPb) : null;
                UrlPb urlPb = value.presigned_url;
                UrlPb urlPbRedact = urlPb != null ? UrlPb.ADAPTER.redact(urlPb) : null;
                DeviceAssetInfo deviceAssetInfo = value.asset_version;
                DeviceAssetInfo deviceAssetInfoRedact = deviceAssetInfo != null ? DeviceAssetInfo.ADAPTER.redact(deviceAssetInfo) : null;
                DeviceAssetVersionMetadata deviceAssetVersionMetadata = value.asset_version_metadata;
                return ClientVersionSpecPb.copy$default(value, versionInfoPbRedact, clientUpgradeArgumentPbRedact, signedAssetPbRedact, urlPbRedact, null, deviceAssetInfoRedact, deviceAssetVersionMetadata != null ? DeviceAssetVersionMetadata.ADAPTER.redact(deviceAssetVersionMetadata) : null, ByteString.EMPTY, 16, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ClientVersionSpecPb.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INCREMENTAL", "CLEAN", "UNINSTALL", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class InstallType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ InstallType[] $VALUES;
        public static final ProtoAdapter<InstallType> ADAPTER;
        public static final InstallType CLEAN;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final InstallType INCREMENTAL;
        public static final InstallType UNINSTALL;
        private final int value;

        private static final /* synthetic */ InstallType[] $values() {
            return new InstallType[]{INCREMENTAL, CLEAN, UNINSTALL};
        }

        @JvmStatic
        public static final InstallType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<InstallType> getEntries() {
            return $ENTRIES;
        }

        public static InstallType valueOf(String str) {
            return (InstallType) Enum.valueOf(InstallType.class, str);
        }

        public static InstallType[] values() {
            return (InstallType[]) $VALUES.clone();
        }

        private InstallType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final InstallType installType = new InstallType("INCREMENTAL", 0, 0);
            INCREMENTAL = installType;
            CLEAN = new InstallType("CLEAN", 1, 1);
            UNINSTALL = new InstallType("UNINSTALL", 2, 2);
            InstallType[] installTypeArr$values = $values();
            $VALUES = installTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(installTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InstallType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<InstallType>(orCreateKotlinClass, syntax, installType) { // from class: com.stripe.proto.model.common.ClientVersionSpecPb$InstallType$Companion$ADAPTER$1
                {
                    ClientVersionSpecPb.InstallType installType2 = installType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ClientVersionSpecPb.InstallType fromValue(int value) {
                    return ClientVersionSpecPb.InstallType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ClientVersionSpecPb.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final InstallType fromValue(int value) {
                if (value == 0) {
                    return InstallType.INCREMENTAL;
                }
                if (value == 1) {
                    return InstallType.CLEAN;
                }
                if (value != 2) {
                    return null;
                }
                return InstallType.UNINSTALL;
            }
        }
    }
}
