package com.stripe.proto.api.rest;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
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

/* JADX INFO: compiled from: RedeemForOfflineConnectionTokenRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000  2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001f B{\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\u0081\u0001\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0002H\u0016J\b\u0010\u001e\u001a\u00020\u0004H\u0016R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0014¨\u0006!"}, d2 = {"Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;", "device_type", "", "device_serial_number", FirebaseAnalytics.Param.LOCATION, "reader_last_activated_online", "", OfflineStorageConstantsKt.READER_ID, "pos_version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "pos_device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "reader_", BbposAdapter.CONNECTION_TYPE_TAG_KEY, "Lcom/stripe/proto/api/rest/ConnectionType;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RedeemForOfflineConnectionTokenRequest extends Message<RedeemForOfflineConnectionTokenRequest, Builder> {
    public static final ProtoAdapter<RedeemForOfflineConnectionTokenRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.rest.ConnectionType#ADAPTER", jsonName = "connectionType", oneofName = "optional_connection_type", schemaIndex = 8, tag = 9)
    public final ConnectionType connection_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "deviceSerialNumber", schemaIndex = 1, tag = 2)
    public final String device_serial_number;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "deviceType", schemaIndex = 0, tag = 1)
    public final String device_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
    public final String location;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "posDeviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final DeviceInfo pos_device_info;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "posVersionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final VersionInfoPb pos_version_info;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", declaredName = OfflineStorageConstantsKt.READER, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final DeviceInfo reader_;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "readerId", schemaIndex = 4, tag = 5)
    public final String reader_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "readerLastActivatedOnline", schemaIndex = 3, tag = 4)
    public final Long reader_last_activated_online;

    public RedeemForOfflineConnectionTokenRequest() {
        this(null, null, null, null, null, null, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ RedeemForOfflineConnectionTokenRequest(String str, String str2, String str3, Long l, String str4, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, DeviceInfo deviceInfo2, ConnectionType connectionType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : l, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : versionInfoPb, (i & 64) != 0 ? null : deviceInfo, (i & 128) != 0 ? null : deviceInfo2, (i & 256) != 0 ? null : connectionType, (i & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RedeemForOfflineConnectionTokenRequest(String str, String str2, String str3, Long l, String str4, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, DeviceInfo deviceInfo2, ConnectionType connectionType, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_type = str;
        this.device_serial_number = str2;
        this.location = str3;
        this.reader_last_activated_online = l;
        this.reader_id = str4;
        this.pos_version_info = versionInfoPb;
        this.pos_device_info = deviceInfo;
        this.reader_ = deviceInfo2;
        this.connection_type = connectionType;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_type = this.device_type;
        builder.device_serial_number = this.device_serial_number;
        builder.location = this.location;
        builder.reader_last_activated_online = this.reader_last_activated_online;
        builder.reader_id = this.reader_id;
        builder.pos_version_info = this.pos_version_info;
        builder.pos_device_info = this.pos_device_info;
        builder.reader_ = this.reader_;
        builder.connection_type = this.connection_type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RedeemForOfflineConnectionTokenRequest)) {
            return false;
        }
        RedeemForOfflineConnectionTokenRequest redeemForOfflineConnectionTokenRequest = (RedeemForOfflineConnectionTokenRequest) other;
        return Intrinsics.areEqual(unknownFields(), redeemForOfflineConnectionTokenRequest.unknownFields()) && Intrinsics.areEqual(this.device_type, redeemForOfflineConnectionTokenRequest.device_type) && Intrinsics.areEqual(this.device_serial_number, redeemForOfflineConnectionTokenRequest.device_serial_number) && Intrinsics.areEqual(this.location, redeemForOfflineConnectionTokenRequest.location) && Intrinsics.areEqual(this.reader_last_activated_online, redeemForOfflineConnectionTokenRequest.reader_last_activated_online) && Intrinsics.areEqual(this.reader_id, redeemForOfflineConnectionTokenRequest.reader_id) && Intrinsics.areEqual(this.pos_version_info, redeemForOfflineConnectionTokenRequest.pos_version_info) && Intrinsics.areEqual(this.pos_device_info, redeemForOfflineConnectionTokenRequest.pos_device_info) && Intrinsics.areEqual(this.reader_, redeemForOfflineConnectionTokenRequest.reader_) && this.connection_type == redeemForOfflineConnectionTokenRequest.connection_type;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.device_type;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.device_serial_number;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.location;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        Long l = this.reader_last_activated_online;
        int iHashCode5 = (iHashCode4 + (l != null ? l.hashCode() : 0)) * 37;
        String str4 = this.reader_id;
        int iHashCode6 = (iHashCode5 + (str4 != null ? str4.hashCode() : 0)) * 37;
        VersionInfoPb versionInfoPb = this.pos_version_info;
        int iHashCode7 = (iHashCode6 + (versionInfoPb != null ? versionInfoPb.hashCode() : 0)) * 37;
        DeviceInfo deviceInfo = this.pos_device_info;
        int iHashCode8 = (iHashCode7 + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37;
        DeviceInfo deviceInfo2 = this.reader_;
        int iHashCode9 = (iHashCode8 + (deviceInfo2 != null ? deviceInfo2.hashCode() : 0)) * 37;
        ConnectionType connectionType = this.connection_type;
        int iHashCode10 = iHashCode9 + (connectionType != null ? connectionType.hashCode() : 0);
        this.hashCode = iHashCode10;
        return iHashCode10;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_type != null) {
            arrayList.add("device_type=" + this.device_type);
        }
        if (this.device_serial_number != null) {
            arrayList.add("device_serial_number=" + this.device_serial_number);
        }
        if (this.location != null) {
            arrayList.add("location=" + this.location);
        }
        if (this.reader_last_activated_online != null) {
            arrayList.add("reader_last_activated_online=" + this.reader_last_activated_online);
        }
        if (this.reader_id != null) {
            arrayList.add("reader_id=" + this.reader_id);
        }
        if (this.pos_version_info != null) {
            arrayList.add("pos_version_info=" + this.pos_version_info);
        }
        if (this.pos_device_info != null) {
            arrayList.add("pos_device_info=" + this.pos_device_info);
        }
        if (this.reader_ != null) {
            arrayList.add("reader_=" + this.reader_);
        }
        if (this.connection_type != null) {
            arrayList.add("connection_type=" + this.connection_type);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "RedeemForOfflineConnectionTokenRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ RedeemForOfflineConnectionTokenRequest copy$default(RedeemForOfflineConnectionTokenRequest redeemForOfflineConnectionTokenRequest, String str, String str2, String str3, Long l, String str4, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, DeviceInfo deviceInfo2, ConnectionType connectionType, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = redeemForOfflineConnectionTokenRequest.device_type;
        }
        if ((i & 2) != 0) {
            str2 = redeemForOfflineConnectionTokenRequest.device_serial_number;
        }
        if ((i & 4) != 0) {
            str3 = redeemForOfflineConnectionTokenRequest.location;
        }
        if ((i & 8) != 0) {
            l = redeemForOfflineConnectionTokenRequest.reader_last_activated_online;
        }
        if ((i & 16) != 0) {
            str4 = redeemForOfflineConnectionTokenRequest.reader_id;
        }
        if ((i & 32) != 0) {
            versionInfoPb = redeemForOfflineConnectionTokenRequest.pos_version_info;
        }
        if ((i & 64) != 0) {
            deviceInfo = redeemForOfflineConnectionTokenRequest.pos_device_info;
        }
        if ((i & 128) != 0) {
            deviceInfo2 = redeemForOfflineConnectionTokenRequest.reader_;
        }
        if ((i & 256) != 0) {
            connectionType = redeemForOfflineConnectionTokenRequest.connection_type;
        }
        if ((i & 512) != 0) {
            byteString = redeemForOfflineConnectionTokenRequest.unknownFields();
        }
        ConnectionType connectionType2 = connectionType;
        ByteString byteString2 = byteString;
        DeviceInfo deviceInfo3 = deviceInfo;
        DeviceInfo deviceInfo4 = deviceInfo2;
        String str5 = str4;
        VersionInfoPb versionInfoPb2 = versionInfoPb;
        return redeemForOfflineConnectionTokenRequest.copy(str, str2, str3, l, str5, versionInfoPb2, deviceInfo3, deviceInfo4, connectionType2, byteString2);
    }

    public final RedeemForOfflineConnectionTokenRequest copy(String device_type, String device_serial_number, String location, Long reader_last_activated_online, String reader_id, VersionInfoPb pos_version_info, DeviceInfo pos_device_info, DeviceInfo reader_, ConnectionType connection_type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RedeemForOfflineConnectionTokenRequest(device_type, device_serial_number, location, reader_last_activated_online, reader_id, pos_version_info, pos_device_info, reader_, connection_type, unknownFields);
    }

    /* JADX INFO: compiled from: RedeemForOfflineConnectionTokenRequest.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0007J\u0015\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0014R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;", "()V", BbposAdapter.CONNECTION_TYPE_TAG_KEY, "Lcom/stripe/proto/api/rest/ConnectionType;", "device_serial_number", "", "device_type", FirebaseAnalytics.Param.LOCATION, "pos_device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "pos_version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "reader_", OfflineStorageConstantsKt.READER_ID, "reader_last_activated_online", "", "Ljava/lang/Long;", "build", "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RedeemForOfflineConnectionTokenRequest, Builder> {
        public ConnectionType connection_type;
        public String device_serial_number;
        public String device_type;
        public String location;
        public DeviceInfo pos_device_info;
        public VersionInfoPb pos_version_info;
        public DeviceInfo reader_;
        public String reader_id;
        public Long reader_last_activated_online;

        public final Builder device_type(String device_type) {
            this.device_type = device_type;
            return this;
        }

        public final Builder device_serial_number(String device_serial_number) {
            this.device_serial_number = device_serial_number;
            return this;
        }

        public final Builder location(String location) {
            this.location = location;
            return this;
        }

        public final Builder reader_last_activated_online(Long reader_last_activated_online) {
            this.reader_last_activated_online = reader_last_activated_online;
            return this;
        }

        public final Builder reader_id(String reader_id) {
            this.reader_id = reader_id;
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

        public final Builder reader_(DeviceInfo reader_) {
            this.reader_ = reader_;
            return this;
        }

        public final Builder connection_type(ConnectionType connection_type) {
            this.connection_type = connection_type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RedeemForOfflineConnectionTokenRequest build() {
            return new RedeemForOfflineConnectionTokenRequest(this.device_type, this.device_serial_number, this.location, this.reader_last_activated_online, this.reader_id, this.pos_version_info, this.pos_device_info, this.reader_, this.connection_type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RedeemForOfflineConnectionTokenRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RedeemForOfflineConnectionTokenRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RedeemForOfflineConnectionTokenRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RedeemForOfflineConnectionTokenRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RedeemForOfflineConnectionTokenRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_type != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.device_type);
                }
                if (value.device_serial_number != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.device_serial_number);
                }
                if (value.location != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.location);
                }
                if (value.reader_last_activated_online != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(4, value.reader_last_activated_online);
                }
                if (value.reader_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.reader_id);
                }
                if (value.pos_version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(6, value.pos_version_info);
                }
                if (value.pos_device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(7, value.pos_device_info);
                }
                if (value.reader_ != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(8, value.reader_);
                }
                return size + ConnectionType.ADAPTER.encodedSizeWithTag(9, value.connection_type);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RedeemForOfflineConnectionTokenRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.device_type);
                }
                if (value.device_serial_number != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.device_serial_number);
                }
                if (value.location != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.location);
                }
                if (value.reader_last_activated_online != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 4, value.reader_last_activated_online);
                }
                if (value.reader_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.reader_id);
                }
                if (value.pos_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 6, value.pos_version_info);
                }
                if (value.pos_device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 7, value.pos_device_info);
                }
                if (value.reader_ != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 8, value.reader_);
                }
                ConnectionType.ADAPTER.encodeWithTag(writer, 9, value.connection_type);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RedeemForOfflineConnectionTokenRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ConnectionType.ADAPTER.encodeWithTag(writer, 9, value.connection_type);
                if (value.reader_ != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 8, value.reader_);
                }
                if (value.pos_device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 7, value.pos_device_info);
                }
                if (value.pos_version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 6, value.pos_version_info);
                }
                if (value.reader_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.reader_id);
                }
                if (value.reader_last_activated_online != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 4, value.reader_last_activated_online);
                }
                if (value.location != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.location);
                }
                if (value.device_serial_number != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.device_serial_number);
                }
                if (value.device_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.device_type);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RedeemForOfflineConnectionTokenRequest redact(RedeemForOfflineConnectionTokenRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.device_type;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.device_serial_number;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.location;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                Long l = value.reader_last_activated_online;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                String str4 = value.reader_id;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                VersionInfoPb versionInfoPb = value.pos_version_info;
                VersionInfoPb versionInfoPbRedact = versionInfoPb != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb) : null;
                DeviceInfo deviceInfo = value.pos_device_info;
                DeviceInfo deviceInfoRedact = deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null;
                DeviceInfo deviceInfo2 = value.reader_;
                return RedeemForOfflineConnectionTokenRequest.copy$default(value, strRedact, strRedact2, strRedact3, lRedact, strRedact4, versionInfoPbRedact, deviceInfoRedact, deviceInfo2 != null ? DeviceInfo.ADAPTER.redact(deviceInfo2) : null, null, ByteString.EMPTY, 256, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RedeemForOfflineConnectionTokenRequest decode(ProtoReader reader) throws IOException {
                String str;
                String str2;
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                Long lDecode = null;
                String strDecode4 = null;
                VersionInfoPb versionInfoPbDecode = null;
                DeviceInfo deviceInfoDecode = null;
                DeviceInfo deviceInfoDecode2 = null;
                ConnectionType connectionTypeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 2:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 3:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 4:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                continue;
                            case 5:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                continue;
                            case 6:
                                versionInfoPbDecode = VersionInfoPb.ADAPTER.decode(reader);
                                continue;
                            case 7:
                                deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                                continue;
                            case 8:
                                deviceInfoDecode2 = DeviceInfo.ADAPTER.decode(reader);
                                continue;
                            case 9:
                                try {
                                    connectionTypeDecode = ConnectionType.ADAPTER.decode(reader);
                                    continue;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    str = strDecode;
                                    str2 = strDecode2;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    strDecode = str;
                                    strDecode2 = str2;
                                }
                                break;
                            default:
                                str = strDecode;
                                str2 = strDecode2;
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        strDecode = str;
                        strDecode2 = str2;
                    } else {
                        return new RedeemForOfflineConnectionTokenRequest(strDecode, strDecode2, strDecode3, lDecode, strDecode4, versionInfoPbDecode, deviceInfoDecode, deviceInfoDecode2, connectionTypeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
