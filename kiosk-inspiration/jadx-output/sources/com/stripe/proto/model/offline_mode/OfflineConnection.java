package com.stripe.proto.model.offline_mode;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.ConnectionType;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
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

/* JADX INFO: compiled from: OfflineConnection.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 &2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002%&B¹\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\b\b\u0002\u0010\u0016\u001a\u00020\t\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010\u001bJº\u0001\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\b\u0002\u0010\u0016\u001a\u00020\t2\b\b\u0002\u0010\u0017\u001a\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u00042\b\b\u0002\u0010\u0019\u001a\u00020\u001aJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\b\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020\u0002H\u0016J\b\u0010$\u001a\u00020\u0004H\u0016R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;", "firmware_version", "", "config_version", "key_id", OfflineStorageConstantsKt.ACCOUNT_ID, OfflineStorageConstantsKt.ID, "", OfflineStorageConstantsKt.READER_ID, "created_at", "device_type", "pos_version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "pos_device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "reader_device_info", BbposAdapter.CONNECTION_TYPE_TAG_KEY, "Lcom/stripe/proto/api/rest/ConnectionType;", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "location_id", "ip_address", "base_url", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineConnection extends Message<OfflineConnection, Builder> {
    public static final ProtoAdapter<OfflineConnection> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "accountId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String account_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "baseUrl", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 15, tag = 16)
    public final String base_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "configVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String config_version;

    @WireField(adapter = "com.stripe.proto.api.rest.ConnectionType#ADAPTER", jsonName = "connectionType", oneofName = "optional_connection_type", schemaIndex = 11, tag = 12)
    public final ConnectionType connection_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "createdAt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final long created_at;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String device_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "firmwareVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String firmware_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final long id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "ipAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
    public final String ip_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "keyId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String key_id;

    @WireField(adapter = "com.stripe.proto.model.merchant.ApiLocationPb#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final ApiLocationPb location;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "locationId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 14)
    public final long location_id;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "posDeviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final DeviceInfo pos_device_info;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "posVersionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final VersionInfoPb pos_version_info;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "readerDeviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final DeviceInfo reader_device_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "readerId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final long reader_id;

    public OfflineConnection() {
        this(null, null, null, null, 0L, 0L, 0L, null, null, null, null, null, null, 0L, null, null, null, 131071, null);
    }

    public /* synthetic */ OfflineConnection(String str, String str2, String str3, String str4, long j, long j2, long j3, String str5, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, DeviceInfo deviceInfo2, ConnectionType connectionType, ApiLocationPb apiLocationPb, long j4, String str6, String str7, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? 0L : j, (i & 32) != 0 ? 0L : j2, (i & 64) != 0 ? 0L : j3, (i & 128) != 0 ? "" : str5, (i & 256) != 0 ? null : versionInfoPb, (i & 512) != 0 ? null : deviceInfo, (i & 1024) != 0 ? null : deviceInfo2, (i & 2048) != 0 ? null : connectionType, (i & 4096) == 0 ? apiLocationPb : null, (i & 8192) != 0 ? 0L : j4, (i & 16384) != 0 ? "" : str6, (i & 32768) == 0 ? str7 : "", (i & 65536) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineConnection(String firmware_version, String config_version, String key_id, String account_id, long j, long j2, long j3, String device_type, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, DeviceInfo deviceInfo2, ConnectionType connectionType, ApiLocationPb apiLocationPb, long j4, String ip_address, String base_url, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(firmware_version, "firmware_version");
        Intrinsics.checkNotNullParameter(config_version, "config_version");
        Intrinsics.checkNotNullParameter(key_id, "key_id");
        Intrinsics.checkNotNullParameter(account_id, "account_id");
        Intrinsics.checkNotNullParameter(device_type, "device_type");
        Intrinsics.checkNotNullParameter(ip_address, "ip_address");
        Intrinsics.checkNotNullParameter(base_url, "base_url");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.firmware_version = firmware_version;
        this.config_version = config_version;
        this.key_id = key_id;
        this.account_id = account_id;
        this.id = j;
        this.reader_id = j2;
        this.created_at = j3;
        this.device_type = device_type;
        this.pos_version_info = versionInfoPb;
        this.pos_device_info = deviceInfo;
        this.reader_device_info = deviceInfo2;
        this.connection_type = connectionType;
        this.location = apiLocationPb;
        this.location_id = j4;
        this.ip_address = ip_address;
        this.base_url = base_url;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.firmware_version = this.firmware_version;
        builder.config_version = this.config_version;
        builder.key_id = this.key_id;
        builder.account_id = this.account_id;
        builder.id = this.id;
        builder.reader_id = this.reader_id;
        builder.created_at = this.created_at;
        builder.device_type = this.device_type;
        builder.pos_version_info = this.pos_version_info;
        builder.pos_device_info = this.pos_device_info;
        builder.reader_device_info = this.reader_device_info;
        builder.connection_type = this.connection_type;
        builder.location = this.location;
        builder.location_id = this.location_id;
        builder.ip_address = this.ip_address;
        builder.base_url = this.base_url;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof OfflineConnection)) {
            return false;
        }
        OfflineConnection offlineConnection = (OfflineConnection) other;
        return Intrinsics.areEqual(unknownFields(), offlineConnection.unknownFields()) && Intrinsics.areEqual(this.firmware_version, offlineConnection.firmware_version) && Intrinsics.areEqual(this.config_version, offlineConnection.config_version) && Intrinsics.areEqual(this.key_id, offlineConnection.key_id) && Intrinsics.areEqual(this.account_id, offlineConnection.account_id) && this.id == offlineConnection.id && this.reader_id == offlineConnection.reader_id && this.created_at == offlineConnection.created_at && Intrinsics.areEqual(this.device_type, offlineConnection.device_type) && Intrinsics.areEqual(this.pos_version_info, offlineConnection.pos_version_info) && Intrinsics.areEqual(this.pos_device_info, offlineConnection.pos_device_info) && Intrinsics.areEqual(this.reader_device_info, offlineConnection.reader_device_info) && this.connection_type == offlineConnection.connection_type && Intrinsics.areEqual(this.location, offlineConnection.location) && this.location_id == offlineConnection.location_id && Intrinsics.areEqual(this.ip_address, offlineConnection.ip_address) && Intrinsics.areEqual(this.base_url, offlineConnection.base_url);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((((((((unknownFields().hashCode() * 37) + this.firmware_version.hashCode()) * 37) + this.config_version.hashCode()) * 37) + this.key_id.hashCode()) * 37) + this.account_id.hashCode()) * 37) + Long.hashCode(this.id)) * 37) + Long.hashCode(this.reader_id)) * 37) + Long.hashCode(this.created_at)) * 37) + this.device_type.hashCode()) * 37;
        VersionInfoPb versionInfoPb = this.pos_version_info;
        int iHashCode2 = (iHashCode + (versionInfoPb != null ? versionInfoPb.hashCode() : 0)) * 37;
        DeviceInfo deviceInfo = this.pos_device_info;
        int iHashCode3 = (iHashCode2 + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37;
        DeviceInfo deviceInfo2 = this.reader_device_info;
        int iHashCode4 = (iHashCode3 + (deviceInfo2 != null ? deviceInfo2.hashCode() : 0)) * 37;
        ConnectionType connectionType = this.connection_type;
        int iHashCode5 = (iHashCode4 + (connectionType != null ? connectionType.hashCode() : 0)) * 37;
        ApiLocationPb apiLocationPb = this.location;
        int iHashCode6 = ((((((iHashCode5 + (apiLocationPb != null ? apiLocationPb.hashCode() : 0)) * 37) + Long.hashCode(this.location_id)) * 37) + this.ip_address.hashCode()) * 37) + this.base_url.hashCode();
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("firmware_version=" + Internal.sanitize(this.firmware_version));
        arrayList2.add("config_version=" + Internal.sanitize(this.config_version));
        arrayList2.add("key_id=" + Internal.sanitize(this.key_id));
        arrayList2.add("account_id=" + Internal.sanitize(this.account_id));
        arrayList2.add("id=" + this.id);
        arrayList2.add("reader_id=" + this.reader_id);
        arrayList2.add("created_at=" + this.created_at);
        arrayList2.add("device_type=" + Internal.sanitize(this.device_type));
        if (this.pos_version_info != null) {
            arrayList2.add("pos_version_info=" + this.pos_version_info);
        }
        if (this.pos_device_info != null) {
            arrayList2.add("pos_device_info=" + this.pos_device_info);
        }
        if (this.reader_device_info != null) {
            arrayList2.add("reader_device_info=" + this.reader_device_info);
        }
        if (this.connection_type != null) {
            arrayList2.add("connection_type=" + this.connection_type);
        }
        if (this.location != null) {
            arrayList2.add("location=" + this.location);
        }
        arrayList2.add("location_id=" + this.location_id);
        arrayList2.add("ip_address=" + Internal.sanitize(this.ip_address));
        arrayList2.add("base_url=" + Internal.sanitize(this.base_url));
        return CollectionsKt.joinToString$default(arrayList, ", ", "OfflineConnection{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ OfflineConnection copy$default(OfflineConnection offlineConnection, String str, String str2, String str3, String str4, long j, long j2, long j3, String str5, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, DeviceInfo deviceInfo2, ConnectionType connectionType, ApiLocationPb apiLocationPb, long j4, String str6, String str7, ByteString byteString, int i, Object obj) {
        String str8 = (i & 1) != 0 ? offlineConnection.firmware_version : str;
        return offlineConnection.copy(str8, (i & 2) != 0 ? offlineConnection.config_version : str2, (i & 4) != 0 ? offlineConnection.key_id : str3, (i & 8) != 0 ? offlineConnection.account_id : str4, (i & 16) != 0 ? offlineConnection.id : j, (i & 32) != 0 ? offlineConnection.reader_id : j2, (i & 64) != 0 ? offlineConnection.created_at : j3, (i & 128) != 0 ? offlineConnection.device_type : str5, (i & 256) != 0 ? offlineConnection.pos_version_info : versionInfoPb, (i & 512) != 0 ? offlineConnection.pos_device_info : deviceInfo, (i & 1024) != 0 ? offlineConnection.reader_device_info : deviceInfo2, (i & 2048) != 0 ? offlineConnection.connection_type : connectionType, (i & 4096) != 0 ? offlineConnection.location : apiLocationPb, (i & 8192) != 0 ? offlineConnection.location_id : j4, (i & 16384) != 0 ? offlineConnection.ip_address : str6, (32768 & i) != 0 ? offlineConnection.base_url : str7, (i & 65536) != 0 ? offlineConnection.unknownFields() : byteString);
    }

    public final OfflineConnection copy(String firmware_version, String config_version, String key_id, String account_id, long id, long reader_id, long created_at, String device_type, VersionInfoPb pos_version_info, DeviceInfo pos_device_info, DeviceInfo reader_device_info, ConnectionType connection_type, ApiLocationPb location, long location_id, String ip_address, String base_url, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(firmware_version, "firmware_version");
        Intrinsics.checkNotNullParameter(config_version, "config_version");
        Intrinsics.checkNotNullParameter(key_id, "key_id");
        Intrinsics.checkNotNullParameter(account_id, "account_id");
        Intrinsics.checkNotNullParameter(device_type, "device_type");
        Intrinsics.checkNotNullParameter(ip_address, "ip_address");
        Intrinsics.checkNotNullParameter(base_url, "base_url");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new OfflineConnection(firmware_version, config_version, key_id, account_id, id, reader_id, created_at, device_type, pos_version_info, pos_device_info, reader_device_info, connection_type, location, location_id, ip_address, base_url, unknownFields);
    }

    /* JADX INFO: compiled from: OfflineConnection.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u000bJ\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0015J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "()V", OfflineStorageConstantsKt.ACCOUNT_ID, "", "base_url", "config_version", BbposAdapter.CONNECTION_TYPE_TAG_KEY, "Lcom/stripe/proto/api/rest/ConnectionType;", "created_at", "", "device_type", "firmware_version", OfflineStorageConstantsKt.ID, "ip_address", "key_id", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "location_id", "pos_device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "pos_version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "reader_device_info", OfflineStorageConstantsKt.READER_ID, "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<OfflineConnection, Builder> {
        public ConnectionType connection_type;
        public long created_at;
        public long id;
        public ApiLocationPb location;
        public long location_id;
        public DeviceInfo pos_device_info;
        public VersionInfoPb pos_version_info;
        public DeviceInfo reader_device_info;
        public long reader_id;
        public String firmware_version = "";
        public String config_version = "";
        public String key_id = "";
        public String account_id = "";
        public String device_type = "";
        public String ip_address = "";
        public String base_url = "";

        public final Builder firmware_version(String firmware_version) {
            Intrinsics.checkNotNullParameter(firmware_version, "firmware_version");
            this.firmware_version = firmware_version;
            return this;
        }

        public final Builder config_version(String config_version) {
            Intrinsics.checkNotNullParameter(config_version, "config_version");
            this.config_version = config_version;
            return this;
        }

        public final Builder key_id(String key_id) {
            Intrinsics.checkNotNullParameter(key_id, "key_id");
            this.key_id = key_id;
            return this;
        }

        public final Builder account_id(String account_id) {
            Intrinsics.checkNotNullParameter(account_id, "account_id");
            this.account_id = account_id;
            return this;
        }

        public final Builder id(long id) {
            this.id = id;
            return this;
        }

        public final Builder reader_id(long reader_id) {
            this.reader_id = reader_id;
            return this;
        }

        public final Builder created_at(long created_at) {
            this.created_at = created_at;
            return this;
        }

        public final Builder device_type(String device_type) {
            Intrinsics.checkNotNullParameter(device_type, "device_type");
            this.device_type = device_type;
            return this;
        }

        public final Builder pos_version_info(VersionInfoPb pos_version_info) {
            this.pos_version_info = pos_version_info;
            return this;
        }

        public final Builder pos_device_info(DeviceInfo pos_device_info) {
            this.pos_device_info = pos_device_info;
            return this;
        }

        public final Builder reader_device_info(DeviceInfo reader_device_info) {
            this.reader_device_info = reader_device_info;
            return this;
        }

        public final Builder location(ApiLocationPb location) {
            this.location = location;
            return this;
        }

        public final Builder location_id(long location_id) {
            this.location_id = location_id;
            return this;
        }

        public final Builder ip_address(String ip_address) {
            Intrinsics.checkNotNullParameter(ip_address, "ip_address");
            this.ip_address = ip_address;
            return this;
        }

        public final Builder base_url(String base_url) {
            Intrinsics.checkNotNullParameter(base_url, "base_url");
            this.base_url = base_url;
            return this;
        }

        public final Builder connection_type(ConnectionType connection_type) {
            this.connection_type = connection_type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public OfflineConnection build() {
            return new OfflineConnection(this.firmware_version, this.config_version, this.key_id, this.account_id, this.id, this.reader_id, this.created_at, this.device_type, this.pos_version_info, this.pos_device_info, this.reader_device_info, this.connection_type, this.location, this.location_id, this.ip_address, this.base_url, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: OfflineConnection.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineConnection$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/offline_mode/OfflineConnection$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ OfflineConnection build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OfflineConnection.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<OfflineConnection>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.offline_mode.OfflineConnection$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(OfflineConnection value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.firmware_version, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.firmware_version);
                }
                if (!Intrinsics.areEqual(value.config_version, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.config_version);
                }
                if (!Intrinsics.areEqual(value.key_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.key_id);
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.account_id);
                }
                if (value.id != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(5, Long.valueOf(value.id));
                }
                if (value.reader_id != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(6, Long.valueOf(value.reader_id));
                }
                if (value.created_at != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(7, Long.valueOf(value.created_at));
                }
                if (!Intrinsics.areEqual(value.device_type, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.device_type);
                }
                if (value.pos_version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(9, value.pos_version_info);
                }
                if (value.pos_device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(10, value.pos_device_info);
                }
                if (value.reader_device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(11, value.reader_device_info);
                }
                int iEncodedSizeWithTag = size + ConnectionType.ADAPTER.encodedSizeWithTag(12, value.connection_type);
                if (value.location != null) {
                    iEncodedSizeWithTag += ApiLocationPb.ADAPTER.encodedSizeWithTag(13, value.location);
                }
                if (value.location_id != 0) {
                    iEncodedSizeWithTag += ProtoAdapter.UINT64.encodedSizeWithTag(14, Long.valueOf(value.location_id));
                }
                if (!Intrinsics.areEqual(value.ip_address, "")) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING.encodedSizeWithTag(15, value.ip_address);
                }
                return !Intrinsics.areEqual(value.base_url, "") ? iEncodedSizeWithTag + ProtoAdapter.STRING.encodedSizeWithTag(16, value.base_url) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, OfflineConnection value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.firmware_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.firmware_version);
                }
                if (!Intrinsics.areEqual(value.config_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.config_version);
                }
                if (!Intrinsics.areEqual(value.key_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.key_id);
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.account_id);
                }
                if (value.id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 5, Long.valueOf(value.id));
                }
                if (value.reader_id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 6, Long.valueOf(value.reader_id));
                }
                if (value.created_at != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 7, Long.valueOf(value.created_at));
                }
                if (!Intrinsics.areEqual(value.device_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.device_type);
                }
                if (value.pos_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 9, value.pos_version_info);
                }
                if (value.pos_device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 10, value.pos_device_info);
                }
                if (value.reader_device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 11, value.reader_device_info);
                }
                if (value.location != null) {
                    ApiLocationPb.ADAPTER.encodeWithTag(writer, 13, value.location);
                }
                if (value.location_id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 14, Long.valueOf(value.location_id));
                }
                if (!Intrinsics.areEqual(value.ip_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.ip_address);
                }
                if (!Intrinsics.areEqual(value.base_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 16, value.base_url);
                }
                ConnectionType.ADAPTER.encodeWithTag(writer, 12, value.connection_type);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, OfflineConnection value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ConnectionType.ADAPTER.encodeWithTag(writer, 12, value.connection_type);
                if (!Intrinsics.areEqual(value.base_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 16, value.base_url);
                }
                if (!Intrinsics.areEqual(value.ip_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.ip_address);
                }
                if (value.location_id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 14, Long.valueOf(value.location_id));
                }
                if (value.location != null) {
                    ApiLocationPb.ADAPTER.encodeWithTag(writer, 13, value.location);
                }
                if (value.reader_device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 11, value.reader_device_info);
                }
                if (value.pos_device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 10, value.pos_device_info);
                }
                if (value.pos_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 9, value.pos_version_info);
                }
                if (!Intrinsics.areEqual(value.device_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.device_type);
                }
                if (value.created_at != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 7, Long.valueOf(value.created_at));
                }
                if (value.reader_id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 6, Long.valueOf(value.reader_id));
                }
                if (value.id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 5, Long.valueOf(value.id));
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.account_id);
                }
                if (!Intrinsics.areEqual(value.key_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.key_id);
                }
                if (!Intrinsics.areEqual(value.config_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.config_version);
                }
                if (Intrinsics.areEqual(value.firmware_version, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.firmware_version);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public OfflineConnection redact(OfflineConnection value) {
                Intrinsics.checkNotNullParameter(value, "value");
                VersionInfoPb versionInfoPb = value.pos_version_info;
                VersionInfoPb versionInfoPbRedact = versionInfoPb != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb) : null;
                DeviceInfo deviceInfo = value.pos_device_info;
                DeviceInfo deviceInfoRedact = deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null;
                DeviceInfo deviceInfo2 = value.reader_device_info;
                DeviceInfo deviceInfoRedact2 = deviceInfo2 != null ? DeviceInfo.ADAPTER.redact(deviceInfo2) : null;
                ApiLocationPb apiLocationPb = value.location;
                return OfflineConnection.copy$default(value, null, null, null, null, 0L, 0L, 0L, null, versionInfoPbRedact, deviceInfoRedact, deviceInfoRedact2, null, apiLocationPb != null ? ApiLocationPb.ADAPTER.redact(apiLocationPb) : null, 0L, null, null, ByteString.EMPTY, 59647, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public OfflineConnection decode(ProtoReader reader) throws IOException {
                String str;
                String str2;
                String str3;
                String str4;
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                long jLongValue = 0;
                long jLongValue2 = 0;
                long jLongValue3 = 0;
                long jLongValue4 = 0;
                VersionInfoPb versionInfoPbDecode = null;
                DeviceInfo deviceInfoDecode = null;
                DeviceInfo deviceInfoDecode2 = null;
                ConnectionType connectionTypeDecode = null;
                ApiLocationPb apiLocationPbDecode = null;
                String strDecode6 = strDecode5;
                String strDecode7 = strDecode6;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                str4 = strDecode6;
                                jLongValue = ProtoAdapter.UINT64.decode(reader).longValue();
                                strDecode6 = str4;
                                break;
                            case 6:
                                str4 = strDecode6;
                                jLongValue2 = ProtoAdapter.UINT64.decode(reader).longValue();
                                strDecode6 = str4;
                                break;
                            case 7:
                                str4 = strDecode6;
                                jLongValue3 = ProtoAdapter.UINT64.decode(reader).longValue();
                                strDecode6 = str4;
                                break;
                            case 8:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                versionInfoPbDecode = VersionInfoPb.ADAPTER.decode(reader);
                                break;
                            case 10:
                                deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                                break;
                            case 11:
                                deviceInfoDecode2 = DeviceInfo.ADAPTER.decode(reader);
                                break;
                            case 12:
                                try {
                                    connectionTypeDecode = ConnectionType.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    str = strDecode6;
                                    str2 = strDecode7;
                                    str3 = strDecode;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    strDecode6 = str;
                                    strDecode7 = str2;
                                    strDecode = str3;
                                }
                                break;
                            case 13:
                                apiLocationPbDecode = ApiLocationPb.ADAPTER.decode(reader);
                                break;
                            case 14:
                                jLongValue4 = ProtoAdapter.UINT64.decode(reader).longValue();
                                break;
                            case 15:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 16:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                str = strDecode6;
                                str2 = strDecode7;
                                str3 = strDecode;
                                reader.readUnknownField(iNextTag);
                                strDecode6 = str;
                                strDecode7 = str2;
                                strDecode = str3;
                                break;
                        }
                    } else {
                        return new OfflineConnection(strDecode5, strDecode6, strDecode7, strDecode, jLongValue, jLongValue2, jLongValue3, strDecode2, versionInfoPbDecode, deviceInfoDecode, deviceInfoDecode2, connectionTypeDecode, apiLocationPbDecode, jLongValue4, strDecode3, strDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
