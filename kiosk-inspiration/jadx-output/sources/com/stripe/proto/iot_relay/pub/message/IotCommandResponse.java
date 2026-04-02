package com.stripe.proto.iot_relay.pub.message;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.common.InstantPb;
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

/* JADX INFO: compiled from: IotCommandResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001c\u001dB\u007f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\b¢\u0006\u0002\u0010\u0013J\u0080\u0001\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\bJ\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u0011H\u0016J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\b\u0010\u001b\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;", "message_id", "", "client_id", "trace_id", "payload", "Lokio/ByteString;", "sent_at", "Lcom/stripe/proto/model/common/InstantPb;", "request_topic", "service_name", "service_method", "queue_name", "routing_info", "processing_time_ms", "", "unknownFields", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IotCommandResponse extends Message<IotCommandResponse, Builder> {
    public static final ProtoAdapter<IotCommandResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "clientId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String client_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "messageId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String message_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final ByteString payload;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", jsonName = "processingTimeMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final int processing_time_ms;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "queueName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final String queue_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "requestTopic", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String request_topic;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "routingInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final String routing_info;

    @WireField(adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER", jsonName = "sentAt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final InstantPb sent_at;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "serviceMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String service_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "serviceName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String service_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "traceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String trace_id;

    public IotCommandResponse() {
        this(null, null, null, null, null, null, null, null, null, null, 0, null, 4095, null);
    }

    public /* synthetic */ IotCommandResponse(String str, String str2, String str3, ByteString byteString, InstantPb instantPb, String str4, String str5, String str6, String str7, String str8, int i, ByteString byteString2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? ByteString.EMPTY : byteString, (i2 & 16) != 0 ? null : instantPb, (i2 & 32) != 0 ? "" : str4, (i2 & 64) != 0 ? "" : str5, (i2 & 128) != 0 ? "" : str6, (i2 & 256) != 0 ? "" : str7, (i2 & 512) != 0 ? "" : str8, (i2 & 1024) != 0 ? 0 : i, (i2 & 2048) != 0 ? ByteString.EMPTY : byteString2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IotCommandResponse(String message_id, String client_id, String trace_id, ByteString payload, InstantPb instantPb, String request_topic, String service_name, String service_method, String queue_name, String routing_info, int i, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(message_id, "message_id");
        Intrinsics.checkNotNullParameter(client_id, "client_id");
        Intrinsics.checkNotNullParameter(trace_id, "trace_id");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(request_topic, "request_topic");
        Intrinsics.checkNotNullParameter(service_name, "service_name");
        Intrinsics.checkNotNullParameter(service_method, "service_method");
        Intrinsics.checkNotNullParameter(queue_name, "queue_name");
        Intrinsics.checkNotNullParameter(routing_info, "routing_info");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.message_id = message_id;
        this.client_id = client_id;
        this.trace_id = trace_id;
        this.payload = payload;
        this.sent_at = instantPb;
        this.request_topic = request_topic;
        this.service_name = service_name;
        this.service_method = service_method;
        this.queue_name = queue_name;
        this.routing_info = routing_info;
        this.processing_time_ms = i;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.message_id = this.message_id;
        builder.client_id = this.client_id;
        builder.trace_id = this.trace_id;
        builder.payload = this.payload;
        builder.sent_at = this.sent_at;
        builder.request_topic = this.request_topic;
        builder.service_name = this.service_name;
        builder.service_method = this.service_method;
        builder.queue_name = this.queue_name;
        builder.routing_info = this.routing_info;
        builder.processing_time_ms = this.processing_time_ms;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof IotCommandResponse)) {
            return false;
        }
        IotCommandResponse iotCommandResponse = (IotCommandResponse) other;
        return Intrinsics.areEqual(unknownFields(), iotCommandResponse.unknownFields()) && Intrinsics.areEqual(this.message_id, iotCommandResponse.message_id) && Intrinsics.areEqual(this.client_id, iotCommandResponse.client_id) && Intrinsics.areEqual(this.trace_id, iotCommandResponse.trace_id) && Intrinsics.areEqual(this.payload, iotCommandResponse.payload) && Intrinsics.areEqual(this.sent_at, iotCommandResponse.sent_at) && Intrinsics.areEqual(this.request_topic, iotCommandResponse.request_topic) && Intrinsics.areEqual(this.service_name, iotCommandResponse.service_name) && Intrinsics.areEqual(this.service_method, iotCommandResponse.service_method) && Intrinsics.areEqual(this.queue_name, iotCommandResponse.queue_name) && Intrinsics.areEqual(this.routing_info, iotCommandResponse.routing_info) && this.processing_time_ms == iotCommandResponse.processing_time_ms;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((unknownFields().hashCode() * 37) + this.message_id.hashCode()) * 37) + this.client_id.hashCode()) * 37) + this.trace_id.hashCode()) * 37) + this.payload.hashCode()) * 37;
        InstantPb instantPb = this.sent_at;
        int iHashCode2 = ((((((((((((iHashCode + (instantPb != null ? instantPb.hashCode() : 0)) * 37) + this.request_topic.hashCode()) * 37) + this.service_name.hashCode()) * 37) + this.service_method.hashCode()) * 37) + this.queue_name.hashCode()) * 37) + this.routing_info.hashCode()) * 37) + Integer.hashCode(this.processing_time_ms);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("message_id=" + Internal.sanitize(this.message_id));
        arrayList2.add("client_id=" + Internal.sanitize(this.client_id));
        arrayList2.add("trace_id=" + Internal.sanitize(this.trace_id));
        arrayList2.add("payload=" + this.payload);
        if (this.sent_at != null) {
            arrayList2.add("sent_at=" + this.sent_at);
        }
        arrayList2.add("request_topic=" + Internal.sanitize(this.request_topic));
        arrayList2.add("service_name=" + Internal.sanitize(this.service_name));
        arrayList2.add("service_method=" + Internal.sanitize(this.service_method));
        arrayList2.add("queue_name=" + Internal.sanitize(this.queue_name));
        arrayList2.add("routing_info=" + Internal.sanitize(this.routing_info));
        arrayList2.add("processing_time_ms=" + this.processing_time_ms);
        return CollectionsKt.joinToString$default(arrayList, ", ", "IotCommandResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ IotCommandResponse copy$default(IotCommandResponse iotCommandResponse, String str, String str2, String str3, ByteString byteString, InstantPb instantPb, String str4, String str5, String str6, String str7, String str8, int i, ByteString byteString2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = iotCommandResponse.message_id;
        }
        if ((i2 & 2) != 0) {
            str2 = iotCommandResponse.client_id;
        }
        if ((i2 & 4) != 0) {
            str3 = iotCommandResponse.trace_id;
        }
        if ((i2 & 8) != 0) {
            byteString = iotCommandResponse.payload;
        }
        if ((i2 & 16) != 0) {
            instantPb = iotCommandResponse.sent_at;
        }
        if ((i2 & 32) != 0) {
            str4 = iotCommandResponse.request_topic;
        }
        if ((i2 & 64) != 0) {
            str5 = iotCommandResponse.service_name;
        }
        if ((i2 & 128) != 0) {
            str6 = iotCommandResponse.service_method;
        }
        if ((i2 & 256) != 0) {
            str7 = iotCommandResponse.queue_name;
        }
        if ((i2 & 512) != 0) {
            str8 = iotCommandResponse.routing_info;
        }
        if ((i2 & 1024) != 0) {
            i = iotCommandResponse.processing_time_ms;
        }
        if ((i2 & 2048) != 0) {
            byteString2 = iotCommandResponse.unknownFields();
        }
        int i3 = i;
        ByteString byteString3 = byteString2;
        String str9 = str7;
        String str10 = str8;
        String str11 = str5;
        String str12 = str6;
        InstantPb instantPb2 = instantPb;
        String str13 = str4;
        return iotCommandResponse.copy(str, str2, str3, byteString, instantPb2, str13, str11, str12, str9, str10, i3, byteString3);
    }

    public final IotCommandResponse copy(String message_id, String client_id, String trace_id, ByteString payload, InstantPb sent_at, String request_topic, String service_name, String service_method, String queue_name, String routing_info, int processing_time_ms, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(message_id, "message_id");
        Intrinsics.checkNotNullParameter(client_id, "client_id");
        Intrinsics.checkNotNullParameter(trace_id, "trace_id");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(request_topic, "request_topic");
        Intrinsics.checkNotNullParameter(service_name, "service_name");
        Intrinsics.checkNotNullParameter(service_method, "service_method");
        Intrinsics.checkNotNullParameter(queue_name, "queue_name");
        Intrinsics.checkNotNullParameter(routing_info, "routing_info");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new IotCommandResponse(message_id, client_id, trace_id, payload, sent_at, request_topic, service_name, service_method, queue_name, routing_info, processing_time_ms, unknownFields);
    }

    /* JADX INFO: compiled from: IotCommandResponse.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;", "()V", "client_id", "", "message_id", "payload", "Lokio/ByteString;", "processing_time_ms", "", "queue_name", "request_topic", "routing_info", "sent_at", "Lcom/stripe/proto/model/common/InstantPb;", "service_method", "service_name", "trace_id", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<IotCommandResponse, Builder> {
        public int processing_time_ms;
        public InstantPb sent_at;
        public String message_id = "";
        public String client_id = "";
        public String trace_id = "";
        public ByteString payload = ByteString.EMPTY;
        public String request_topic = "";
        public String service_name = "";
        public String service_method = "";
        public String queue_name = "";
        public String routing_info = "";

        public final Builder message_id(String message_id) {
            Intrinsics.checkNotNullParameter(message_id, "message_id");
            this.message_id = message_id;
            return this;
        }

        public final Builder client_id(String client_id) {
            Intrinsics.checkNotNullParameter(client_id, "client_id");
            this.client_id = client_id;
            return this;
        }

        public final Builder trace_id(String trace_id) {
            Intrinsics.checkNotNullParameter(trace_id, "trace_id");
            this.trace_id = trace_id;
            return this;
        }

        public final Builder payload(ByteString payload) {
            Intrinsics.checkNotNullParameter(payload, "payload");
            this.payload = payload;
            return this;
        }

        public final Builder sent_at(InstantPb sent_at) {
            this.sent_at = sent_at;
            return this;
        }

        public final Builder request_topic(String request_topic) {
            Intrinsics.checkNotNullParameter(request_topic, "request_topic");
            this.request_topic = request_topic;
            return this;
        }

        public final Builder service_name(String service_name) {
            Intrinsics.checkNotNullParameter(service_name, "service_name");
            this.service_name = service_name;
            return this;
        }

        public final Builder service_method(String service_method) {
            Intrinsics.checkNotNullParameter(service_method, "service_method");
            this.service_method = service_method;
            return this;
        }

        public final Builder queue_name(String queue_name) {
            Intrinsics.checkNotNullParameter(queue_name, "queue_name");
            this.queue_name = queue_name;
            return this;
        }

        public final Builder routing_info(String routing_info) {
            Intrinsics.checkNotNullParameter(routing_info, "routing_info");
            this.routing_info = routing_info;
            return this;
        }

        public final Builder processing_time_ms(int processing_time_ms) {
            this.processing_time_ms = processing_time_ms;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public IotCommandResponse build() {
            return new IotCommandResponse(this.message_id, this.client_id, this.trace_id, this.payload, this.sent_at, this.request_topic, this.service_name, this.service_method, this.queue_name, this.routing_info, this.processing_time_ms, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: IotCommandResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ IotCommandResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(IotCommandResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<IotCommandResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.message.IotCommandResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(IotCommandResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.message_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.message_id);
                }
                if (!Intrinsics.areEqual(value.client_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.client_id);
                }
                if (!Intrinsics.areEqual(value.trace_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.trace_id);
                }
                if (!Intrinsics.areEqual(value.payload, ByteString.EMPTY)) {
                    size += ProtoAdapter.BYTES.encodedSizeWithTag(4, value.payload);
                }
                if (value.sent_at != null) {
                    size += InstantPb.ADAPTER.encodedSizeWithTag(5, value.sent_at);
                }
                if (!Intrinsics.areEqual(value.request_topic, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.request_topic);
                }
                if (!Intrinsics.areEqual(value.service_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.service_name);
                }
                if (!Intrinsics.areEqual(value.service_method, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.service_method);
                }
                if (!Intrinsics.areEqual(value.queue_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(9, value.queue_name);
                }
                if (!Intrinsics.areEqual(value.routing_info, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(10, value.routing_info);
                }
                return value.processing_time_ms != 0 ? size + ProtoAdapter.UINT32.encodedSizeWithTag(11, Integer.valueOf(value.processing_time_ms)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, IotCommandResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.message_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.message_id);
                }
                if (!Intrinsics.areEqual(value.client_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.client_id);
                }
                if (!Intrinsics.areEqual(value.trace_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.trace_id);
                }
                if (!Intrinsics.areEqual(value.payload, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 4, value.payload);
                }
                if (value.sent_at != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 5, value.sent_at);
                }
                if (!Intrinsics.areEqual(value.request_topic, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.request_topic);
                }
                if (!Intrinsics.areEqual(value.service_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.service_name);
                }
                if (!Intrinsics.areEqual(value.service_method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.service_method);
                }
                if (!Intrinsics.areEqual(value.queue_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.queue_name);
                }
                if (!Intrinsics.areEqual(value.routing_info, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.routing_info);
                }
                if (value.processing_time_ms != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 11, Integer.valueOf(value.processing_time_ms));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, IotCommandResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.processing_time_ms != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 11, Integer.valueOf(value.processing_time_ms));
                }
                if (!Intrinsics.areEqual(value.routing_info, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.routing_info);
                }
                if (!Intrinsics.areEqual(value.queue_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.queue_name);
                }
                if (!Intrinsics.areEqual(value.service_method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.service_method);
                }
                if (!Intrinsics.areEqual(value.service_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.service_name);
                }
                if (!Intrinsics.areEqual(value.request_topic, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.request_topic);
                }
                if (value.sent_at != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 5, value.sent_at);
                }
                if (!Intrinsics.areEqual(value.payload, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 4, value.payload);
                }
                if (!Intrinsics.areEqual(value.trace_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.trace_id);
                }
                if (!Intrinsics.areEqual(value.client_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.client_id);
                }
                if (Intrinsics.areEqual(value.message_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.message_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public IotCommandResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ByteString byteStringDecode = ByteString.EMPTY;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                InstantPb instantPbDecode = null;
                int iIntValue = 0;
                String strDecode7 = strDecode6;
                String strDecode8 = strDecode7;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                byteStringDecode = ProtoAdapter.BYTES.decode(reader);
                                break;
                            case 5:
                                instantPbDecode = InstantPb.ADAPTER.decode(reader);
                                break;
                            case 6:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 10:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 11:
                                iIntValue = ProtoAdapter.UINT32.decode(reader).intValue();
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new IotCommandResponse(strDecode, strDecode7, strDecode8, byteStringDecode, instantPbDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, iIntValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public IotCommandResponse redact(IotCommandResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                InstantPb instantPb = value.sent_at;
                return IotCommandResponse.copy$default(value, null, null, null, null, instantPb != null ? InstantPb.ADAPTER.redact(instantPb) : null, null, null, null, null, null, 0, ByteString.EMPTY, 2031, null);
            }
        };
    }
}
