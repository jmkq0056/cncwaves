package com.stripe.proto.api.rest;

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
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.sun.jna.platform.win32.Advapi32;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ActivateConnectionTokenRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 %2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002$%B¯\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n\u0012\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0018¢\u0006\u0002\u0010\u0019Jµ\u0001\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\n2\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0018¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u00162\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\u0002H\u0016J\b\u0010#\u001a\u00020\u0004H\u0016R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001aR\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;", "pos_device_id", "", "device_type", "device_serial_number", "reader_", "Lcom/stripe/proto/model/common/DeviceInfo;", "reader_version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "pos_device_info", "pos_version_info", "reported_reader_config", "Lcom/stripe/proto/api/rest/ReportedReaderConfig;", "register_to_location", BbposAdapter.CONNECTION_TYPE_TAG_KEY, "Lcom/stripe/proto/api/rest/ConnectionType;", "pos_secondary_version_info", "expand", "", "generate_offline_stripe_session_token", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ActivateConnectionTokenRequest extends Message<ActivateConnectionTokenRequest, Builder> {
    public static final ProtoAdapter<ActivateConnectionTokenRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.rest.ConnectionType#ADAPTER", jsonName = "connectionType", oneofName = "optional_connection_type", schemaIndex = 9, tag = 11)
    public final ConnectionType connection_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "deviceSerialNumber", schemaIndex = 2, tag = 4)
    public final String device_serial_number;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "deviceType", schemaIndex = 1, tag = 3)
    public final String device_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 11, tag = 13)
    public final List<String> expand;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "generateOfflineStripeSessionToken", schemaIndex = 12, tag = 14)
    public final Boolean generate_offline_stripe_session_token;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "posDeviceId", schemaIndex = 0, tag = 1)
    public final String pos_device_id;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "posDeviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 7)
    public final DeviceInfo pos_device_info;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "posSecondaryVersionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 12)
    public final VersionInfoPb pos_secondary_version_info;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "posVersionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 8)
    public final VersionInfoPb pos_version_info;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", declaredName = OfflineStorageConstantsKt.READER, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 5)
    public final DeviceInfo reader_;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "readerVersionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 6)
    public final VersionInfoPb reader_version_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "registerToLocation", schemaIndex = 8, tag = 10)
    public final String register_to_location;

    @WireField(adapter = "com.stripe.proto.api.rest.ReportedReaderConfig#ADAPTER", jsonName = "reportedReaderConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 9)
    public final ReportedReaderConfig reported_reader_config;

    public ActivateConnectionTokenRequest() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, Advapi32.MAX_VALUE_NAME, null);
    }

    public /* synthetic */ ActivateConnectionTokenRequest(String str, String str2, String str3, DeviceInfo deviceInfo, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo2, VersionInfoPb versionInfoPb2, ReportedReaderConfig reportedReaderConfig, String str4, ConnectionType connectionType, VersionInfoPb versionInfoPb3, List list, Boolean bool, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : deviceInfo, (i & 16) != 0 ? null : versionInfoPb, (i & 32) != 0 ? null : deviceInfo2, (i & 64) != 0 ? null : versionInfoPb2, (i & 128) != 0 ? null : reportedReaderConfig, (i & 256) != 0 ? null : str4, (i & 512) != 0 ? null : connectionType, (i & 1024) != 0 ? null : versionInfoPb3, (i & 2048) != 0 ? CollectionsKt.emptyList() : list, (i & 4096) == 0 ? bool : null, (i & 8192) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivateConnectionTokenRequest(String str, String str2, String str3, DeviceInfo deviceInfo, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo2, VersionInfoPb versionInfoPb2, ReportedReaderConfig reportedReaderConfig, String str4, ConnectionType connectionType, VersionInfoPb versionInfoPb3, List<String> expand, Boolean bool, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.pos_device_id = str;
        this.device_type = str2;
        this.device_serial_number = str3;
        this.reader_ = deviceInfo;
        this.reader_version_info = versionInfoPb;
        this.pos_device_info = deviceInfo2;
        this.pos_version_info = versionInfoPb2;
        this.reported_reader_config = reportedReaderConfig;
        this.register_to_location = str4;
        this.connection_type = connectionType;
        this.pos_secondary_version_info = versionInfoPb3;
        this.generate_offline_stripe_session_token = bool;
        this.expand = Internal.immutableCopyOf("expand", expand);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.pos_device_id = this.pos_device_id;
        builder.device_type = this.device_type;
        builder.device_serial_number = this.device_serial_number;
        builder.reader_ = this.reader_;
        builder.reader_version_info = this.reader_version_info;
        builder.pos_device_info = this.pos_device_info;
        builder.pos_version_info = this.pos_version_info;
        builder.reported_reader_config = this.reported_reader_config;
        builder.register_to_location = this.register_to_location;
        builder.connection_type = this.connection_type;
        builder.pos_secondary_version_info = this.pos_secondary_version_info;
        builder.expand = this.expand;
        builder.generate_offline_stripe_session_token = this.generate_offline_stripe_session_token;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ActivateConnectionTokenRequest)) {
            return false;
        }
        ActivateConnectionTokenRequest activateConnectionTokenRequest = (ActivateConnectionTokenRequest) other;
        return Intrinsics.areEqual(unknownFields(), activateConnectionTokenRequest.unknownFields()) && Intrinsics.areEqual(this.pos_device_id, activateConnectionTokenRequest.pos_device_id) && Intrinsics.areEqual(this.device_type, activateConnectionTokenRequest.device_type) && Intrinsics.areEqual(this.device_serial_number, activateConnectionTokenRequest.device_serial_number) && Intrinsics.areEqual(this.reader_, activateConnectionTokenRequest.reader_) && Intrinsics.areEqual(this.reader_version_info, activateConnectionTokenRequest.reader_version_info) && Intrinsics.areEqual(this.pos_device_info, activateConnectionTokenRequest.pos_device_info) && Intrinsics.areEqual(this.pos_version_info, activateConnectionTokenRequest.pos_version_info) && Intrinsics.areEqual(this.reported_reader_config, activateConnectionTokenRequest.reported_reader_config) && Intrinsics.areEqual(this.register_to_location, activateConnectionTokenRequest.register_to_location) && this.connection_type == activateConnectionTokenRequest.connection_type && Intrinsics.areEqual(this.pos_secondary_version_info, activateConnectionTokenRequest.pos_secondary_version_info) && Intrinsics.areEqual(this.expand, activateConnectionTokenRequest.expand) && Intrinsics.areEqual(this.generate_offline_stripe_session_token, activateConnectionTokenRequest.generate_offline_stripe_session_token);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.pos_device_id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.device_type;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.device_serial_number;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        DeviceInfo deviceInfo = this.reader_;
        int iHashCode5 = (iHashCode4 + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37;
        VersionInfoPb versionInfoPb = this.reader_version_info;
        int iHashCode6 = (iHashCode5 + (versionInfoPb != null ? versionInfoPb.hashCode() : 0)) * 37;
        DeviceInfo deviceInfo2 = this.pos_device_info;
        int iHashCode7 = (iHashCode6 + (deviceInfo2 != null ? deviceInfo2.hashCode() : 0)) * 37;
        VersionInfoPb versionInfoPb2 = this.pos_version_info;
        int iHashCode8 = (iHashCode7 + (versionInfoPb2 != null ? versionInfoPb2.hashCode() : 0)) * 37;
        ReportedReaderConfig reportedReaderConfig = this.reported_reader_config;
        int iHashCode9 = (iHashCode8 + (reportedReaderConfig != null ? reportedReaderConfig.hashCode() : 0)) * 37;
        String str4 = this.register_to_location;
        int iHashCode10 = (iHashCode9 + (str4 != null ? str4.hashCode() : 0)) * 37;
        ConnectionType connectionType = this.connection_type;
        int iHashCode11 = (iHashCode10 + (connectionType != null ? connectionType.hashCode() : 0)) * 37;
        VersionInfoPb versionInfoPb3 = this.pos_secondary_version_info;
        int iHashCode12 = (((iHashCode11 + (versionInfoPb3 != null ? versionInfoPb3.hashCode() : 0)) * 37) + this.expand.hashCode()) * 37;
        Boolean bool = this.generate_offline_stripe_session_token;
        int iHashCode13 = iHashCode12 + (bool != null ? bool.hashCode() : 0);
        this.hashCode = iHashCode13;
        return iHashCode13;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.pos_device_id != null) {
            arrayList.add("pos_device_id=" + this.pos_device_id);
        }
        if (this.device_type != null) {
            arrayList.add("device_type=" + this.device_type);
        }
        if (this.device_serial_number != null) {
            arrayList.add("device_serial_number=" + this.device_serial_number);
        }
        if (this.reader_ != null) {
            arrayList.add("reader_=" + this.reader_);
        }
        if (this.reader_version_info != null) {
            arrayList.add("reader_version_info=" + this.reader_version_info);
        }
        if (this.pos_device_info != null) {
            arrayList.add("pos_device_info=" + this.pos_device_info);
        }
        if (this.pos_version_info != null) {
            arrayList.add("pos_version_info=" + this.pos_version_info);
        }
        if (this.reported_reader_config != null) {
            arrayList.add("reported_reader_config=" + this.reported_reader_config);
        }
        if (this.register_to_location != null) {
            arrayList.add("register_to_location=" + this.register_to_location);
        }
        if (this.connection_type != null) {
            arrayList.add("connection_type=" + this.connection_type);
        }
        if (this.pos_secondary_version_info != null) {
            arrayList.add("pos_secondary_version_info=" + this.pos_secondary_version_info);
        }
        if (!this.expand.isEmpty()) {
            arrayList.add("expand=" + Internal.sanitize(this.expand));
        }
        if (this.generate_offline_stripe_session_token != null) {
            arrayList.add("generate_offline_stripe_session_token=" + this.generate_offline_stripe_session_token);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ActivateConnectionTokenRequest{", "}", 0, null, null, 56, null);
    }

    public final ActivateConnectionTokenRequest copy(String pos_device_id, String device_type, String device_serial_number, DeviceInfo reader_, VersionInfoPb reader_version_info, DeviceInfo pos_device_info, VersionInfoPb pos_version_info, ReportedReaderConfig reported_reader_config, String register_to_location, ConnectionType connection_type, VersionInfoPb pos_secondary_version_info, List<String> expand, Boolean generate_offline_stripe_session_token, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ActivateConnectionTokenRequest(pos_device_id, device_type, device_serial_number, reader_, reader_version_info, pos_device_info, pos_version_info, reported_reader_config, register_to_location, connection_type, pos_secondary_version_info, expand, generate_offline_stripe_session_token, unknownFields);
    }

    /* JADX INFO: compiled from: ActivateConnectionTokenRequest.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u0014\u0010\t\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\nJ\u0015\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u001aJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;", "()V", BbposAdapter.CONNECTION_TYPE_TAG_KEY, "Lcom/stripe/proto/api/rest/ConnectionType;", "device_serial_number", "", "device_type", "expand", "", "generate_offline_stripe_session_token", "", "Ljava/lang/Boolean;", "pos_device_id", "pos_device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "pos_secondary_version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "pos_version_info", "reader_", "reader_version_info", "register_to_location", "reported_reader_config", "Lcom/stripe/proto/api/rest/ReportedReaderConfig;", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ActivateConnectionTokenRequest, Builder> {
        public ConnectionType connection_type;
        public String device_serial_number;
        public String device_type;
        public List<String> expand = CollectionsKt.emptyList();
        public Boolean generate_offline_stripe_session_token;
        public String pos_device_id;
        public DeviceInfo pos_device_info;
        public VersionInfoPb pos_secondary_version_info;
        public VersionInfoPb pos_version_info;
        public DeviceInfo reader_;
        public VersionInfoPb reader_version_info;
        public String register_to_location;
        public ReportedReaderConfig reported_reader_config;

        public final Builder pos_device_id(String pos_device_id) {
            this.pos_device_id = pos_device_id;
            return this;
        }

        public final Builder device_type(String device_type) {
            this.device_type = device_type;
            return this;
        }

        public final Builder device_serial_number(String device_serial_number) {
            this.device_serial_number = device_serial_number;
            return this;
        }

        public final Builder reader_(DeviceInfo reader_) {
            this.reader_ = reader_;
            return this;
        }

        public final Builder reader_version_info(VersionInfoPb reader_version_info) {
            this.reader_version_info = reader_version_info;
            return this;
        }

        public final Builder pos_device_info(DeviceInfo pos_device_info) {
            this.pos_device_info = pos_device_info;
            return this;
        }

        public final Builder pos_version_info(VersionInfoPb pos_version_info) {
            this.pos_version_info = pos_version_info;
            return this;
        }

        public final Builder reported_reader_config(ReportedReaderConfig reported_reader_config) {
            this.reported_reader_config = reported_reader_config;
            return this;
        }

        public final Builder register_to_location(String register_to_location) {
            this.register_to_location = register_to_location;
            return this;
        }

        public final Builder pos_secondary_version_info(VersionInfoPb pos_secondary_version_info) {
            this.pos_secondary_version_info = pos_secondary_version_info;
            return this;
        }

        public final Builder expand(List<String> expand) {
            Intrinsics.checkNotNullParameter(expand, "expand");
            Internal.checkElementsNotNull(expand);
            this.expand = expand;
            return this;
        }

        public final Builder generate_offline_stripe_session_token(Boolean generate_offline_stripe_session_token) {
            this.generate_offline_stripe_session_token = generate_offline_stripe_session_token;
            return this;
        }

        public final Builder connection_type(ConnectionType connection_type) {
            this.connection_type = connection_type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ActivateConnectionTokenRequest build() {
            return new ActivateConnectionTokenRequest(this.pos_device_id, this.device_type, this.device_serial_number, this.reader_, this.reader_version_info, this.pos_device_info, this.pos_version_info, this.reported_reader_config, this.register_to_location, this.connection_type, this.pos_secondary_version_info, this.expand, this.generate_offline_stripe_session_token, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ActivateConnectionTokenRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ActivateConnectionTokenRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ActivateConnectionTokenRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ActivateConnectionTokenRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.ActivateConnectionTokenRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ActivateConnectionTokenRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.pos_device_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.pos_device_id);
                }
                if (value.device_type != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.device_type);
                }
                if (value.device_serial_number != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.device_serial_number);
                }
                if (value.reader_ != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(5, value.reader_);
                }
                if (value.reader_version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(6, value.reader_version_info);
                }
                if (value.pos_device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(7, value.pos_device_info);
                }
                if (value.pos_version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(8, value.pos_version_info);
                }
                if (value.reported_reader_config != null) {
                    size += ReportedReaderConfig.ADAPTER.encodedSizeWithTag(9, value.reported_reader_config);
                }
                if (value.register_to_location != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(10, value.register_to_location);
                }
                int iEncodedSizeWithTag = size + ConnectionType.ADAPTER.encodedSizeWithTag(11, value.connection_type);
                if (value.pos_secondary_version_info != null) {
                    iEncodedSizeWithTag += VersionInfoPb.ADAPTER.encodedSizeWithTag(12, value.pos_secondary_version_info);
                }
                int iEncodedSizeWithTag2 = iEncodedSizeWithTag + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(13, value.expand);
                return value.generate_offline_stripe_session_token != null ? iEncodedSizeWithTag2 + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(14, value.generate_offline_stripe_session_token) : iEncodedSizeWithTag2;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ActivateConnectionTokenRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.pos_device_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.pos_device_id);
                }
                if (value.device_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.device_type);
                }
                if (value.device_serial_number != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.device_serial_number);
                }
                if (value.reader_ != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 5, value.reader_);
                }
                if (value.reader_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 6, value.reader_version_info);
                }
                if (value.pos_device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 7, value.pos_device_info);
                }
                if (value.pos_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 8, value.pos_version_info);
                }
                if (value.reported_reader_config != null) {
                    ReportedReaderConfig.ADAPTER.encodeWithTag(writer, 9, value.reported_reader_config);
                }
                if (value.register_to_location != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.register_to_location);
                }
                if (value.pos_secondary_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 12, value.pos_secondary_version_info);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 13, value.expand);
                if (value.generate_offline_stripe_session_token != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 14, value.generate_offline_stripe_session_token);
                }
                ConnectionType.ADAPTER.encodeWithTag(writer, 11, value.connection_type);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ActivateConnectionTokenRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ConnectionType.ADAPTER.encodeWithTag(writer, 11, value.connection_type);
                if (value.generate_offline_stripe_session_token != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 14, value.generate_offline_stripe_session_token);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 13, value.expand);
                if (value.pos_secondary_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 12, value.pos_secondary_version_info);
                }
                if (value.register_to_location != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.register_to_location);
                }
                if (value.reported_reader_config != null) {
                    ReportedReaderConfig.ADAPTER.encodeWithTag(writer, 9, value.reported_reader_config);
                }
                if (value.pos_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 8, value.pos_version_info);
                }
                if (value.pos_device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 7, value.pos_device_info);
                }
                if (value.reader_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 6, value.reader_version_info);
                }
                if (value.reader_ != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 5, value.reader_);
                }
                if (value.device_serial_number != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.device_serial_number);
                }
                if (value.device_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.device_type);
                }
                if (value.pos_device_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.pos_device_id);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ActivateConnectionTokenRequest decode(ProtoReader reader) throws IOException {
                String str;
                String str2;
                DeviceInfo deviceInfo;
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                DeviceInfo deviceInfoDecode = null;
                VersionInfoPb versionInfoPbDecode = null;
                DeviceInfo deviceInfoDecode2 = null;
                VersionInfoPb versionInfoPbDecode2 = null;
                ReportedReaderConfig reportedReaderConfigDecode = null;
                String strDecode3 = null;
                ConnectionType connectionTypeDecode = null;
                VersionInfoPb versionInfoPbDecode3 = null;
                Boolean boolDecode = null;
                String strDecode4 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 2:
                            default:
                                str = strDecode;
                                str2 = strDecode2;
                                deviceInfo = deviceInfoDecode;
                                reader.readUnknownField(iNextTag);
                                break;
                            case 3:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 4:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 5:
                                deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                                continue;
                            case 6:
                                versionInfoPbDecode = VersionInfoPb.ADAPTER.decode(reader);
                                continue;
                            case 7:
                                deviceInfoDecode2 = DeviceInfo.ADAPTER.decode(reader);
                                continue;
                            case 8:
                                versionInfoPbDecode2 = VersionInfoPb.ADAPTER.decode(reader);
                                continue;
                            case 9:
                                reportedReaderConfigDecode = ReportedReaderConfig.ADAPTER.decode(reader);
                                continue;
                            case 10:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 11:
                                try {
                                    connectionTypeDecode = ConnectionType.ADAPTER.decode(reader);
                                    continue;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    str = strDecode;
                                    str2 = strDecode2;
                                    deviceInfo = deviceInfoDecode;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    strDecode = str;
                                    strDecode2 = str2;
                                    deviceInfoDecode = deviceInfo;
                                }
                                break;
                            case 12:
                                versionInfoPbDecode3 = VersionInfoPb.ADAPTER.decode(reader);
                                continue;
                            case 13:
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                str = strDecode;
                                str2 = strDecode2;
                                deviceInfo = deviceInfoDecode;
                                break;
                            case 14:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                continue;
                        }
                        strDecode = str;
                        strDecode2 = str2;
                        deviceInfoDecode = deviceInfo;
                    } else {
                        return new ActivateConnectionTokenRequest(strDecode4, strDecode, strDecode2, deviceInfoDecode, versionInfoPbDecode, deviceInfoDecode2, versionInfoPbDecode2, reportedReaderConfigDecode, strDecode3, connectionTypeDecode, versionInfoPbDecode3, arrayList, boolDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ActivateConnectionTokenRequest redact(ActivateConnectionTokenRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.pos_device_id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.device_type;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.device_serial_number;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                DeviceInfo deviceInfo = value.reader_;
                DeviceInfo deviceInfoRedact = deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null;
                VersionInfoPb versionInfoPb = value.reader_version_info;
                VersionInfoPb versionInfoPbRedact = versionInfoPb != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb) : null;
                DeviceInfo deviceInfo2 = value.pos_device_info;
                DeviceInfo deviceInfoRedact2 = deviceInfo2 != null ? DeviceInfo.ADAPTER.redact(deviceInfo2) : null;
                VersionInfoPb versionInfoPb2 = value.pos_version_info;
                VersionInfoPb versionInfoPbRedact2 = versionInfoPb2 != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb2) : null;
                ReportedReaderConfig reportedReaderConfig = value.reported_reader_config;
                ReportedReaderConfig reportedReaderConfigRedact = reportedReaderConfig != null ? ReportedReaderConfig.ADAPTER.redact(reportedReaderConfig) : null;
                String str4 = value.register_to_location;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                VersionInfoPb versionInfoPb3 = value.pos_secondary_version_info;
                VersionInfoPb versionInfoPbRedact3 = versionInfoPb3 != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb3) : null;
                Boolean bool = value.generate_offline_stripe_session_token;
                return value.copy((2560 & 1) != 0 ? value.pos_device_id : strRedact, (2560 & 2) != 0 ? value.device_type : strRedact2, (2560 & 4) != 0 ? value.device_serial_number : strRedact3, (2560 & 8) != 0 ? value.reader_ : deviceInfoRedact, (2560 & 16) != 0 ? value.reader_version_info : versionInfoPbRedact, (2560 & 32) != 0 ? value.pos_device_info : deviceInfoRedact2, (2560 & 64) != 0 ? value.pos_version_info : versionInfoPbRedact2, (2560 & 128) != 0 ? value.reported_reader_config : reportedReaderConfigRedact, (2560 & 256) != 0 ? value.register_to_location : strRedact4, (2560 & 512) != 0 ? value.connection_type : null, (2560 & 1024) != 0 ? value.pos_secondary_version_info : versionInfoPbRedact3, (2560 & 2048) != 0 ? value.expand : null, (2560 & 4096) != 0 ? value.generate_offline_stripe_session_token : bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null, (2560 & 8192) != 0 ? value.unknownFields() : ByteString.EMPTY);
            }
        };
    }
}
