package com.stripe.proto.model.trace;

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

/* JADX INFO: compiled from: RequestInfoPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001c\u001dB\u0089\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\u0014\b\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\u008a\u0001\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\u0014\b\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u0007H\u0016J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\b\u0010\u001b\u001a\u00020\u0004H\u0016R\u0010\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/model/trace/RequestInfoPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;", "user_agent", "", "ip_address", "remote_port", "", "entry_point", "service_name", "method_name", "host_name", "host_ip_address", "headers", "", "api_method", "grpc_service_name", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RequestInfoPb extends Message<RequestInfoPb, Builder> {
    public static final ProtoAdapter<RequestInfoPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "apiMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final String api_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "entryPoint", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 3)
    public final String entry_point;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "grpcServiceName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final String grpc_service_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 8, tag = 9)
    public final Map<String, String> headers;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "hostIpAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String host_ip_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "hostName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String host_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "ipAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String ip_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "methodName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 5)
    public final String method_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "remotePort", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 6)
    public final int remote_port;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "serviceName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 4)
    public final String service_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "userAgent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String user_agent;

    public RequestInfoPb() {
        this(null, null, 0, null, null, null, null, null, null, null, null, null, 4095, null);
    }

    public /* synthetic */ RequestInfoPb(String str, String str2, int i, String str3, String str4, String str5, String str6, String str7, Map map, String str8, String str9, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? "" : str3, (i2 & 16) != 0 ? "" : str4, (i2 & 32) != 0 ? "" : str5, (i2 & 64) != 0 ? "" : str6, (i2 & 128) != 0 ? "" : str7, (i2 & 256) != 0 ? MapsKt.emptyMap() : map, (i2 & 512) != 0 ? "" : str8, (i2 & 1024) != 0 ? "" : str9, (i2 & 2048) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestInfoPb(String user_agent, String ip_address, int i, String entry_point, String service_name, String method_name, String host_name, String host_ip_address, Map<String, String> headers, String api_method, String grpc_service_name, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(user_agent, "user_agent");
        Intrinsics.checkNotNullParameter(ip_address, "ip_address");
        Intrinsics.checkNotNullParameter(entry_point, "entry_point");
        Intrinsics.checkNotNullParameter(service_name, "service_name");
        Intrinsics.checkNotNullParameter(method_name, "method_name");
        Intrinsics.checkNotNullParameter(host_name, "host_name");
        Intrinsics.checkNotNullParameter(host_ip_address, "host_ip_address");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(api_method, "api_method");
        Intrinsics.checkNotNullParameter(grpc_service_name, "grpc_service_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.user_agent = user_agent;
        this.ip_address = ip_address;
        this.remote_port = i;
        this.entry_point = entry_point;
        this.service_name = service_name;
        this.method_name = method_name;
        this.host_name = host_name;
        this.host_ip_address = host_ip_address;
        this.api_method = api_method;
        this.grpc_service_name = grpc_service_name;
        this.headers = Internal.immutableCopyOf("headers", headers);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.user_agent = this.user_agent;
        builder.ip_address = this.ip_address;
        builder.remote_port = this.remote_port;
        builder.entry_point = this.entry_point;
        builder.service_name = this.service_name;
        builder.method_name = this.method_name;
        builder.host_name = this.host_name;
        builder.host_ip_address = this.host_ip_address;
        builder.headers = this.headers;
        builder.api_method = this.api_method;
        builder.grpc_service_name = this.grpc_service_name;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RequestInfoPb)) {
            return false;
        }
        RequestInfoPb requestInfoPb = (RequestInfoPb) other;
        return Intrinsics.areEqual(unknownFields(), requestInfoPb.unknownFields()) && Intrinsics.areEqual(this.user_agent, requestInfoPb.user_agent) && Intrinsics.areEqual(this.ip_address, requestInfoPb.ip_address) && this.remote_port == requestInfoPb.remote_port && Intrinsics.areEqual(this.entry_point, requestInfoPb.entry_point) && Intrinsics.areEqual(this.service_name, requestInfoPb.service_name) && Intrinsics.areEqual(this.method_name, requestInfoPb.method_name) && Intrinsics.areEqual(this.host_name, requestInfoPb.host_name) && Intrinsics.areEqual(this.host_ip_address, requestInfoPb.host_ip_address) && Intrinsics.areEqual(this.headers, requestInfoPb.headers) && Intrinsics.areEqual(this.api_method, requestInfoPb.api_method) && Intrinsics.areEqual(this.grpc_service_name, requestInfoPb.grpc_service_name);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((((((unknownFields().hashCode() * 37) + this.user_agent.hashCode()) * 37) + this.ip_address.hashCode()) * 37) + Integer.hashCode(this.remote_port)) * 37) + this.entry_point.hashCode()) * 37) + this.service_name.hashCode()) * 37) + this.method_name.hashCode()) * 37) + this.host_name.hashCode()) * 37) + this.host_ip_address.hashCode()) * 37) + this.headers.hashCode()) * 37) + this.api_method.hashCode()) * 37) + this.grpc_service_name.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("user_agent=" + Internal.sanitize(this.user_agent));
        arrayList2.add("ip_address=" + Internal.sanitize(this.ip_address));
        arrayList2.add("remote_port=" + this.remote_port);
        arrayList2.add("entry_point=" + Internal.sanitize(this.entry_point));
        arrayList2.add("service_name=" + Internal.sanitize(this.service_name));
        arrayList2.add("method_name=" + Internal.sanitize(this.method_name));
        arrayList2.add("host_name=" + Internal.sanitize(this.host_name));
        arrayList2.add("host_ip_address=" + Internal.sanitize(this.host_ip_address));
        if (!this.headers.isEmpty()) {
            arrayList2.add("headers=" + this.headers);
        }
        arrayList2.add("api_method=" + Internal.sanitize(this.api_method));
        arrayList2.add("grpc_service_name=" + Internal.sanitize(this.grpc_service_name));
        return CollectionsKt.joinToString$default(arrayList, ", ", "RequestInfoPb{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RequestInfoPb copy$default(RequestInfoPb requestInfoPb, String str, String str2, int i, String str3, String str4, String str5, String str6, String str7, Map map, String str8, String str9, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = requestInfoPb.user_agent;
        }
        if ((i2 & 2) != 0) {
            str2 = requestInfoPb.ip_address;
        }
        if ((i2 & 4) != 0) {
            i = requestInfoPb.remote_port;
        }
        if ((i2 & 8) != 0) {
            str3 = requestInfoPb.entry_point;
        }
        if ((i2 & 16) != 0) {
            str4 = requestInfoPb.service_name;
        }
        if ((i2 & 32) != 0) {
            str5 = requestInfoPb.method_name;
        }
        if ((i2 & 64) != 0) {
            str6 = requestInfoPb.host_name;
        }
        if ((i2 & 128) != 0) {
            str7 = requestInfoPb.host_ip_address;
        }
        if ((i2 & 256) != 0) {
            map = requestInfoPb.headers;
        }
        if ((i2 & 512) != 0) {
            str8 = requestInfoPb.api_method;
        }
        if ((i2 & 1024) != 0) {
            str9 = requestInfoPb.grpc_service_name;
        }
        if ((i2 & 2048) != 0) {
            byteString = requestInfoPb.unknownFields();
        }
        String str10 = str9;
        ByteString byteString2 = byteString;
        Map map2 = map;
        String str11 = str8;
        String str12 = str6;
        String str13 = str7;
        String str14 = str4;
        String str15 = str5;
        return requestInfoPb.copy(str, str2, i, str3, str14, str15, str12, str13, map2, str11, str10, byteString2);
    }

    public final RequestInfoPb copy(String user_agent, String ip_address, int remote_port, String entry_point, String service_name, String method_name, String host_name, String host_ip_address, Map<String, String> headers, String api_method, String grpc_service_name, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(user_agent, "user_agent");
        Intrinsics.checkNotNullParameter(ip_address, "ip_address");
        Intrinsics.checkNotNullParameter(entry_point, "entry_point");
        Intrinsics.checkNotNullParameter(service_name, "service_name");
        Intrinsics.checkNotNullParameter(method_name, "method_name");
        Intrinsics.checkNotNullParameter(host_name, "host_name");
        Intrinsics.checkNotNullParameter(host_ip_address, "host_ip_address");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(api_method, "api_method");
        Intrinsics.checkNotNullParameter(grpc_service_name, "grpc_service_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RequestInfoPb(user_agent, ip_address, remote_port, entry_point, service_name, method_name, host_name, host_ip_address, headers, api_method, grpc_service_name, unknownFields);
    }

    /* JADX INFO: compiled from: RequestInfoPb.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u001a\u0010\b\u001a\u00020\u00002\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/trace/RequestInfoPb;", "()V", "api_method", "", "entry_point", "grpc_service_name", "headers", "", "host_ip_address", "host_name", "ip_address", "method_name", "remote_port", "", "service_name", "user_agent", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RequestInfoPb, Builder> {
        public int remote_port;
        public String user_agent = "";
        public String ip_address = "";
        public String entry_point = "";
        public String service_name = "";
        public String method_name = "";
        public String host_name = "";
        public String host_ip_address = "";
        public Map<String, String> headers = MapsKt.emptyMap();
        public String api_method = "";
        public String grpc_service_name = "";

        public final Builder user_agent(String user_agent) {
            Intrinsics.checkNotNullParameter(user_agent, "user_agent");
            this.user_agent = user_agent;
            return this;
        }

        public final Builder ip_address(String ip_address) {
            Intrinsics.checkNotNullParameter(ip_address, "ip_address");
            this.ip_address = ip_address;
            return this;
        }

        public final Builder remote_port(int remote_port) {
            this.remote_port = remote_port;
            return this;
        }

        public final Builder entry_point(String entry_point) {
            Intrinsics.checkNotNullParameter(entry_point, "entry_point");
            this.entry_point = entry_point;
            return this;
        }

        public final Builder service_name(String service_name) {
            Intrinsics.checkNotNullParameter(service_name, "service_name");
            this.service_name = service_name;
            return this;
        }

        public final Builder method_name(String method_name) {
            Intrinsics.checkNotNullParameter(method_name, "method_name");
            this.method_name = method_name;
            return this;
        }

        public final Builder host_name(String host_name) {
            Intrinsics.checkNotNullParameter(host_name, "host_name");
            this.host_name = host_name;
            return this;
        }

        public final Builder host_ip_address(String host_ip_address) {
            Intrinsics.checkNotNullParameter(host_ip_address, "host_ip_address");
            this.host_ip_address = host_ip_address;
            return this;
        }

        public final Builder headers(Map<String, String> headers) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            this.headers = headers;
            return this;
        }

        public final Builder api_method(String api_method) {
            Intrinsics.checkNotNullParameter(api_method, "api_method");
            this.api_method = api_method;
            return this;
        }

        public final Builder grpc_service_name(String grpc_service_name) {
            Intrinsics.checkNotNullParameter(grpc_service_name, "grpc_service_name");
            this.grpc_service_name = grpc_service_name;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RequestInfoPb build() {
            return new RequestInfoPb(this.user_agent, this.ip_address, this.remote_port, this.entry_point, this.service_name, this.method_name, this.host_name, this.host_ip_address, this.headers, this.api_method, this.grpc_service_name, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RequestInfoPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/trace/RequestInfoPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/trace/RequestInfoPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RequestInfoPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RequestInfoPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RequestInfoPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.trace.RequestInfoPb$Companion$ADAPTER$1

            /* JADX INFO: renamed from: headersAdapter$delegate, reason: from kotlin metadata */
            private final Lazy headersAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.trace.RequestInfoPb$Companion$ADAPTER$1$headersAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getHeadersAdapter() {
                return (ProtoAdapter) this.headersAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RequestInfoPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.user_agent, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.user_agent);
                }
                if (!Intrinsics.areEqual(value.ip_address, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.ip_address);
                }
                if (value.remote_port != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(6, Integer.valueOf(value.remote_port));
                }
                if (!Intrinsics.areEqual(value.entry_point, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.entry_point);
                }
                if (!Intrinsics.areEqual(value.service_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.service_name);
                }
                if (!Intrinsics.areEqual(value.method_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.method_name);
                }
                if (!Intrinsics.areEqual(value.host_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.host_name);
                }
                if (!Intrinsics.areEqual(value.host_ip_address, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.host_ip_address);
                }
                int iEncodedSizeWithTag = size + getHeadersAdapter().encodedSizeWithTag(9, value.headers);
                if (!Intrinsics.areEqual(value.api_method, "")) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING.encodedSizeWithTag(10, value.api_method);
                }
                return !Intrinsics.areEqual(value.grpc_service_name, "") ? iEncodedSizeWithTag + ProtoAdapter.STRING.encodedSizeWithTag(11, value.grpc_service_name) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RequestInfoPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.user_agent, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.user_agent);
                }
                if (!Intrinsics.areEqual(value.ip_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.ip_address);
                }
                if (value.remote_port != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 6, Integer.valueOf(value.remote_port));
                }
                if (!Intrinsics.areEqual(value.entry_point, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.entry_point);
                }
                if (!Intrinsics.areEqual(value.service_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.service_name);
                }
                if (!Intrinsics.areEqual(value.method_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.method_name);
                }
                if (!Intrinsics.areEqual(value.host_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.host_name);
                }
                if (!Intrinsics.areEqual(value.host_ip_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.host_ip_address);
                }
                getHeadersAdapter().encodeWithTag(writer, 9, value.headers);
                if (!Intrinsics.areEqual(value.api_method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.api_method);
                }
                if (!Intrinsics.areEqual(value.grpc_service_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.grpc_service_name);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RequestInfoPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.grpc_service_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.grpc_service_name);
                }
                if (!Intrinsics.areEqual(value.api_method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.api_method);
                }
                getHeadersAdapter().encodeWithTag(writer, 9, value.headers);
                if (!Intrinsics.areEqual(value.host_ip_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.host_ip_address);
                }
                if (!Intrinsics.areEqual(value.host_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.host_name);
                }
                if (!Intrinsics.areEqual(value.method_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.method_name);
                }
                if (!Intrinsics.areEqual(value.service_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.service_name);
                }
                if (!Intrinsics.areEqual(value.entry_point, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.entry_point);
                }
                if (value.remote_port != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 6, Integer.valueOf(value.remote_port));
                }
                if (!Intrinsics.areEqual(value.ip_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.ip_address);
                }
                if (Intrinsics.areEqual(value.user_agent, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.user_agent);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RequestInfoPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
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
                                iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 7:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                linkedHashMap.putAll(getHeadersAdapter().decode(reader));
                                break;
                            case 10:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 11:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new RequestInfoPb(strDecode, strDecode9, iIntValue, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, linkedHashMap, strDecode7, strDecode8, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RequestInfoPb redact(RequestInfoPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return RequestInfoPb.copy$default(value, null, null, 0, null, null, null, null, null, null, null, null, ByteString.EMPTY, 2047, null);
            }
        };
    }
}
