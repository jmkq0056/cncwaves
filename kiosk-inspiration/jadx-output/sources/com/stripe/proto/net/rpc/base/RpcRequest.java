package com.stripe.proto.net.rpc.base;

import androidx.core.app.NotificationCompat;
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
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.model.trace.RequestInfoPb;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: RpcRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 #2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\"#B\u008d\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\t¢\u0006\u0002\u0010\u0016J\u008e\u0001\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\tJ\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0096\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u0002H\u0016J\b\u0010!\u001a\u00020\u0006H\u0016R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0017\u0010\u0018R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/stripe/proto/net/rpc/base/RpcRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;", OfflineStorageConstantsKt.ID, "", NotificationCompat.CATEGORY_SERVICE, "", FirebaseAnalytics.Param.METHOD, FirebaseAnalytics.Param.CONTENT, "Lokio/ByteString;", "deadline", "parent_trace_id", "local_ip_address", "session_token", "request_info", "Lcom/stripe/proto/model/trace/RequestInfoPb;", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "parent_id", "unknownFields", "(JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;JLokio/ByteString;)V", "getParent_trace_id$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RpcRequest extends Message<RpcRequest, Builder> {
    public static final ProtoAdapter<RpcRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final ByteString content;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final long deadline;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 13)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "localIpAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String local_ip_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "parentId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 14)
    public final long parent_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "parentTraceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String parent_trace_id;

    @WireField(adapter = "com.stripe.proto.model.trace.RequestInfoPb#ADAPTER", jsonName = "requestInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 10)
    public final RequestInfoPb request_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String service;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "sessionToken", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 9)
    public final String session_token;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "versionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 12)
    public final VersionInfoPb version_info;

    public RpcRequest() {
        this(0L, null, null, null, 0L, null, null, null, null, null, null, 0L, null, 8191, null);
    }

    @Deprecated(message = "parent_trace_id is deprecated")
    public static /* synthetic */ void getParent_trace_id$annotations() {
    }

    public /* synthetic */ RpcRequest(long j, String str, String str2, ByteString byteString, long j2, String str3, String str4, String str5, RequestInfoPb requestInfoPb, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, long j3, ByteString byteString2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? ByteString.EMPTY : byteString, (i & 16) != 0 ? 0L : j2, (i & 32) != 0 ? "" : str3, (i & 64) != 0 ? "" : str4, (i & 128) == 0 ? str5 : "", (i & 256) != 0 ? null : requestInfoPb, (i & 512) != 0 ? null : versionInfoPb, (i & 1024) == 0 ? deviceInfo : null, (i & 2048) != 0 ? 0L : j3, (i & 4096) != 0 ? ByteString.EMPTY : byteString2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RpcRequest(long j, String service, String method, ByteString content, long j2, String parent_trace_id, String local_ip_address, String session_token, RequestInfoPb requestInfoPb, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, long j3, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(parent_trace_id, "parent_trace_id");
        Intrinsics.checkNotNullParameter(local_ip_address, "local_ip_address");
        Intrinsics.checkNotNullParameter(session_token, "session_token");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = j;
        this.service = service;
        this.method = method;
        this.content = content;
        this.deadline = j2;
        this.parent_trace_id = parent_trace_id;
        this.local_ip_address = local_ip_address;
        this.session_token = session_token;
        this.request_info = requestInfoPb;
        this.version_info = versionInfoPb;
        this.device_info = deviceInfo;
        this.parent_id = j3;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.service = this.service;
        builder.method = this.method;
        builder.content = this.content;
        builder.deadline = this.deadline;
        builder.parent_trace_id = this.parent_trace_id;
        builder.local_ip_address = this.local_ip_address;
        builder.session_token = this.session_token;
        builder.request_info = this.request_info;
        builder.version_info = this.version_info;
        builder.device_info = this.device_info;
        builder.parent_id = this.parent_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RpcRequest)) {
            return false;
        }
        RpcRequest rpcRequest = (RpcRequest) other;
        return Intrinsics.areEqual(unknownFields(), rpcRequest.unknownFields()) && this.id == rpcRequest.id && Intrinsics.areEqual(this.service, rpcRequest.service) && Intrinsics.areEqual(this.method, rpcRequest.method) && Intrinsics.areEqual(this.content, rpcRequest.content) && this.deadline == rpcRequest.deadline && Intrinsics.areEqual(this.parent_trace_id, rpcRequest.parent_trace_id) && Intrinsics.areEqual(this.local_ip_address, rpcRequest.local_ip_address) && Intrinsics.areEqual(this.session_token, rpcRequest.session_token) && Intrinsics.areEqual(this.request_info, rpcRequest.request_info) && Intrinsics.areEqual(this.version_info, rpcRequest.version_info) && Intrinsics.areEqual(this.device_info, rpcRequest.device_info) && this.parent_id == rpcRequest.parent_id;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((((((((unknownFields().hashCode() * 37) + Long.hashCode(this.id)) * 37) + this.service.hashCode()) * 37) + this.method.hashCode()) * 37) + this.content.hashCode()) * 37) + Long.hashCode(this.deadline)) * 37) + this.parent_trace_id.hashCode()) * 37) + this.local_ip_address.hashCode()) * 37) + this.session_token.hashCode()) * 37;
        RequestInfoPb requestInfoPb = this.request_info;
        int iHashCode2 = (iHashCode + (requestInfoPb != null ? requestInfoPb.hashCode() : 0)) * 37;
        VersionInfoPb versionInfoPb = this.version_info;
        int iHashCode3 = (iHashCode2 + (versionInfoPb != null ? versionInfoPb.hashCode() : 0)) * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode4 = ((iHashCode3 + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37) + Long.hashCode(this.parent_id);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("id=" + this.id);
        arrayList2.add("service=" + Internal.sanitize(this.service));
        arrayList2.add("method=" + Internal.sanitize(this.method));
        arrayList2.add("content=" + this.content);
        arrayList2.add("deadline=" + this.deadline);
        arrayList2.add("parent_trace_id=" + Internal.sanitize(this.parent_trace_id));
        arrayList2.add("local_ip_address=" + Internal.sanitize(this.local_ip_address));
        arrayList2.add("session_token=" + Internal.sanitize(this.session_token));
        if (this.request_info != null) {
            arrayList2.add("request_info=" + this.request_info);
        }
        if (this.version_info != null) {
            arrayList2.add("version_info=" + this.version_info);
        }
        if (this.device_info != null) {
            arrayList2.add("device_info=" + this.device_info);
        }
        arrayList2.add("parent_id=" + this.parent_id);
        return CollectionsKt.joinToString$default(arrayList, ", ", "RpcRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ RpcRequest copy$default(RpcRequest rpcRequest, long j, String str, String str2, ByteString byteString, long j2, String str3, String str4, String str5, RequestInfoPb requestInfoPb, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, long j3, ByteString byteString2, int i, Object obj) {
        long j4;
        long j5;
        long j6 = (i & 1) != 0 ? rpcRequest.id : j;
        String str6 = (i & 2) != 0 ? rpcRequest.service : str;
        String str7 = (i & 4) != 0 ? rpcRequest.method : str2;
        ByteString byteString3 = (i & 8) != 0 ? rpcRequest.content : byteString;
        long j7 = (i & 16) != 0 ? rpcRequest.deadline : j2;
        String str8 = (i & 32) != 0 ? rpcRequest.parent_trace_id : str3;
        String str9 = (i & 64) != 0 ? rpcRequest.local_ip_address : str4;
        String str10 = (i & 128) != 0 ? rpcRequest.session_token : str5;
        RequestInfoPb requestInfoPb2 = (i & 256) != 0 ? rpcRequest.request_info : requestInfoPb;
        VersionInfoPb versionInfoPb2 = (i & 512) != 0 ? rpcRequest.version_info : versionInfoPb;
        DeviceInfo deviceInfo2 = (i & 1024) != 0 ? rpcRequest.device_info : deviceInfo;
        if ((i & 2048) != 0) {
            j4 = j6;
            j5 = rpcRequest.parent_id;
        } else {
            j4 = j6;
            j5 = j3;
        }
        return rpcRequest.copy(j4, str6, str7, byteString3, j7, str8, str9, str10, requestInfoPb2, versionInfoPb2, deviceInfo2, j5, (i & 4096) != 0 ? rpcRequest.unknownFields() : byteString2);
    }

    public final RpcRequest copy(long id, String service, String method, ByteString content, long deadline, String parent_trace_id, String local_ip_address, String session_token, RequestInfoPb request_info, VersionInfoPb version_info, DeviceInfo device_info, long parent_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(parent_trace_id, "parent_trace_id");
        Intrinsics.checkNotNullParameter(local_ip_address, "local_ip_address");
        Intrinsics.checkNotNullParameter(session_token, "session_token");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RpcRequest(id, service, method, content, deadline, parent_trace_id, local_ip_address, session_token, request_info, version_info, device_info, parent_id, unknownFields);
    }

    /* JADX INFO: compiled from: RpcRequest.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\fH\u0007J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\fJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\fJ\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/net/rpc/base/RpcRequest;", "()V", FirebaseAnalytics.Param.CONTENT, "Lokio/ByteString;", "deadline", "", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", OfflineStorageConstantsKt.ID, "local_ip_address", "", FirebaseAnalytics.Param.METHOD, "parent_id", "parent_trace_id", "request_info", "Lcom/stripe/proto/model/trace/RequestInfoPb;", NotificationCompat.CATEGORY_SERVICE, "session_token", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RpcRequest, Builder> {
        public long deadline;
        public DeviceInfo device_info;
        public long id;
        public long parent_id;
        public RequestInfoPb request_info;
        public VersionInfoPb version_info;
        public String service = "";
        public String method = "";
        public ByteString content = ByteString.EMPTY;
        public String parent_trace_id = "";
        public String local_ip_address = "";
        public String session_token = "";

        public final Builder id(long id) {
            this.id = id;
            return this;
        }

        public final Builder service(String service) {
            Intrinsics.checkNotNullParameter(service, "service");
            this.service = service;
            return this;
        }

        public final Builder method(String method) {
            Intrinsics.checkNotNullParameter(method, "method");
            this.method = method;
            return this;
        }

        public final Builder content(ByteString content) {
            Intrinsics.checkNotNullParameter(content, "content");
            this.content = content;
            return this;
        }

        public final Builder deadline(long deadline) {
            this.deadline = deadline;
            return this;
        }

        @Deprecated(message = "parent_trace_id is deprecated")
        public final Builder parent_trace_id(String parent_trace_id) {
            Intrinsics.checkNotNullParameter(parent_trace_id, "parent_trace_id");
            this.parent_trace_id = parent_trace_id;
            return this;
        }

        public final Builder local_ip_address(String local_ip_address) {
            Intrinsics.checkNotNullParameter(local_ip_address, "local_ip_address");
            this.local_ip_address = local_ip_address;
            return this;
        }

        public final Builder session_token(String session_token) {
            Intrinsics.checkNotNullParameter(session_token, "session_token");
            this.session_token = session_token;
            return this;
        }

        public final Builder request_info(RequestInfoPb request_info) {
            this.request_info = request_info;
            return this;
        }

        public final Builder version_info(VersionInfoPb version_info) {
            this.version_info = version_info;
            return this;
        }

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder parent_id(long parent_id) {
            this.parent_id = parent_id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RpcRequest build() {
            return new RpcRequest(this.id, this.service, this.method, this.content, this.deadline, this.parent_trace_id, this.local_ip_address, this.session_token, this.request_info, this.version_info, this.device_info, this.parent_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RpcRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/net/rpc/base/RpcRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/net/rpc/base/RpcRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RpcRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RpcRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RpcRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.net.rpc.base.RpcRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RpcRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(1, Long.valueOf(value.id));
                }
                if (!Intrinsics.areEqual(value.service, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.service);
                }
                if (!Intrinsics.areEqual(value.method, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.method);
                }
                if (!Intrinsics.areEqual(value.content, ByteString.EMPTY)) {
                    size += ProtoAdapter.BYTES.encodedSizeWithTag(4, value.content);
                }
                if (value.deadline != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(5, Long.valueOf(value.deadline));
                }
                if (!Intrinsics.areEqual(value.parent_trace_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.parent_trace_id);
                }
                if (!Intrinsics.areEqual(value.local_ip_address, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.local_ip_address);
                }
                if (!Intrinsics.areEqual(value.session_token, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(9, value.session_token);
                }
                if (value.request_info != null) {
                    size += RequestInfoPb.ADAPTER.encodedSizeWithTag(10, value.request_info);
                }
                if (value.version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(12, value.version_info);
                }
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(13, value.device_info);
                }
                return value.parent_id != 0 ? size + ProtoAdapter.INT64.encodedSizeWithTag(14, Long.valueOf(value.parent_id)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RpcRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.id));
                }
                if (!Intrinsics.areEqual(value.service, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.service);
                }
                if (!Intrinsics.areEqual(value.method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.method);
                }
                if (!Intrinsics.areEqual(value.content, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 4, value.content);
                }
                if (value.deadline != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.deadline));
                }
                if (!Intrinsics.areEqual(value.parent_trace_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.parent_trace_id);
                }
                if (!Intrinsics.areEqual(value.local_ip_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.local_ip_address);
                }
                if (!Intrinsics.areEqual(value.session_token, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.session_token);
                }
                if (value.request_info != null) {
                    RequestInfoPb.ADAPTER.encodeWithTag(writer, 10, value.request_info);
                }
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 12, value.version_info);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 13, value.device_info);
                }
                if (value.parent_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 14, Long.valueOf(value.parent_id));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RpcRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.parent_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 14, Long.valueOf(value.parent_id));
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 13, value.device_info);
                }
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 12, value.version_info);
                }
                if (value.request_info != null) {
                    RequestInfoPb.ADAPTER.encodeWithTag(writer, 10, value.request_info);
                }
                if (!Intrinsics.areEqual(value.session_token, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.session_token);
                }
                if (!Intrinsics.areEqual(value.local_ip_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.local_ip_address);
                }
                if (!Intrinsics.areEqual(value.parent_trace_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.parent_trace_id);
                }
                if (value.deadline != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 5, Long.valueOf(value.deadline));
                }
                if (!Intrinsics.areEqual(value.content, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 4, value.content);
                }
                if (!Intrinsics.areEqual(value.method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.method);
                }
                if (!Intrinsics.areEqual(value.service, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.service);
                }
                if (value.id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.id));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RpcRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ByteString byteString = ByteString.EMPTY;
                long jBeginMessage = reader.beginMessage();
                ByteString byteStringDecode = byteString;
                long jLongValue = 0;
                long jLongValue2 = 0;
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                RequestInfoPb requestInfoPbDecode = null;
                VersionInfoPb versionInfoPbDecode = null;
                DeviceInfo deviceInfoDecode = null;
                long jLongValue3 = 0;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                while (true) {
                    int iNextTag = reader.nextTag();
                    String str = strDecode4;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                jLongValue3 = ProtoAdapter.INT64.decode(reader).longValue();
                                break;
                            case 2:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 3:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                byteStringDecode = ProtoAdapter.BYTES.decode(reader);
                                break;
                            case 5:
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                break;
                            case 6:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                            case 11:
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                            case 9:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 10:
                                requestInfoPbDecode = RequestInfoPb.ADAPTER.decode(reader);
                                break;
                            case 12:
                                versionInfoPbDecode = VersionInfoPb.ADAPTER.decode(reader);
                                break;
                            case 13:
                                deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                                break;
                            case 14:
                                jLongValue2 = ProtoAdapter.INT64.decode(reader).longValue();
                                break;
                        }
                        strDecode4 = str;
                    } else {
                        return new RpcRequest(jLongValue3, str, strDecode5, byteStringDecode, jLongValue, strDecode, strDecode2, strDecode3, requestInfoPbDecode, versionInfoPbDecode, deviceInfoDecode, jLongValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RpcRequest redact(RpcRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                RequestInfoPb requestInfoPb = value.request_info;
                RequestInfoPb requestInfoPbRedact = requestInfoPb != null ? RequestInfoPb.ADAPTER.redact(requestInfoPb) : null;
                VersionInfoPb versionInfoPb = value.version_info;
                VersionInfoPb versionInfoPbRedact = versionInfoPb != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb) : null;
                DeviceInfo deviceInfo = value.device_info;
                return RpcRequest.copy$default(value, 0L, null, null, null, 0L, null, null, null, requestInfoPbRedact, versionInfoPbRedact, deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null, 0L, ByteString.EMPTY, 2303, null);
            }
        };
    }
}
