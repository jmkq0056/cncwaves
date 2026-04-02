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

/* JADX INFO: compiled from: IotCommandRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004¢\u0006\u0002\u0010\u000bJ:\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u0004J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\bH\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/message/IotCommandRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/message/IotCommandRequest$Builder;", "payload", "Lokio/ByteString;", "common_metadata", "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;", "response_topic", "", "queue_name", "unknownFields", "(Lokio/ByteString;Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IotCommandRequest extends Message<IotCommandRequest, Builder> {
    public static final ProtoAdapter<IotCommandRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.iot_relay.pub.message.IotMetadata#ADAPTER", jsonName = "commonMetadata", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final IotMetadata common_metadata;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ByteString payload;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "queueName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String queue_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "responseTopic", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String response_topic;

    public IotCommandRequest() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ IotCommandRequest(ByteString byteString, IotMetadata iotMetadata, String str, String str2, ByteString byteString2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ByteString.EMPTY : byteString, (i & 2) != 0 ? null : iotMetadata, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? ByteString.EMPTY : byteString2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IotCommandRequest(ByteString payload, IotMetadata iotMetadata, String response_topic, String queue_name, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(response_topic, "response_topic");
        Intrinsics.checkNotNullParameter(queue_name, "queue_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.payload = payload;
        this.common_metadata = iotMetadata;
        this.response_topic = response_topic;
        this.queue_name = queue_name;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.payload = this.payload;
        builder.common_metadata = this.common_metadata;
        builder.response_topic = this.response_topic;
        builder.queue_name = this.queue_name;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof IotCommandRequest)) {
            return false;
        }
        IotCommandRequest iotCommandRequest = (IotCommandRequest) other;
        return Intrinsics.areEqual(unknownFields(), iotCommandRequest.unknownFields()) && Intrinsics.areEqual(this.payload, iotCommandRequest.payload) && Intrinsics.areEqual(this.common_metadata, iotCommandRequest.common_metadata) && Intrinsics.areEqual(this.response_topic, iotCommandRequest.response_topic) && Intrinsics.areEqual(this.queue_name, iotCommandRequest.queue_name);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.payload.hashCode()) * 37;
        IotMetadata iotMetadata = this.common_metadata;
        int iHashCode2 = ((((iHashCode + (iotMetadata != null ? iotMetadata.hashCode() : 0)) * 37) + this.response_topic.hashCode()) * 37) + this.queue_name.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("payload=" + this.payload);
        if (this.common_metadata != null) {
            arrayList2.add("common_metadata=" + this.common_metadata);
        }
        arrayList2.add("response_topic=" + Internal.sanitize(this.response_topic));
        arrayList2.add("queue_name=" + Internal.sanitize(this.queue_name));
        return CollectionsKt.joinToString$default(arrayList, ", ", "IotCommandRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ IotCommandRequest copy$default(IotCommandRequest iotCommandRequest, ByteString byteString, IotMetadata iotMetadata, String str, String str2, ByteString byteString2, int i, Object obj) {
        if ((i & 1) != 0) {
            byteString = iotCommandRequest.payload;
        }
        if ((i & 2) != 0) {
            iotMetadata = iotCommandRequest.common_metadata;
        }
        if ((i & 4) != 0) {
            str = iotCommandRequest.response_topic;
        }
        if ((i & 8) != 0) {
            str2 = iotCommandRequest.queue_name;
        }
        if ((i & 16) != 0) {
            byteString2 = iotCommandRequest.unknownFields();
        }
        ByteString byteString3 = byteString2;
        String str3 = str;
        return iotCommandRequest.copy(byteString, iotMetadata, str3, str2, byteString3);
    }

    public final IotCommandRequest copy(ByteString payload, IotMetadata common_metadata, String response_topic, String queue_name, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(response_topic, "response_topic");
        Intrinsics.checkNotNullParameter(queue_name, "queue_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new IotCommandRequest(payload, common_metadata, response_topic, queue_name, unknownFields);
    }

    /* JADX INFO: compiled from: IotCommandRequest.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/message/IotCommandRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/message/IotCommandRequest;", "()V", "common_metadata", "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;", "payload", "Lokio/ByteString;", "queue_name", "", "response_topic", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<IotCommandRequest, Builder> {
        public IotMetadata common_metadata;
        public ByteString payload = ByteString.EMPTY;
        public String response_topic = "";
        public String queue_name = "";

        public final Builder payload(ByteString payload) {
            Intrinsics.checkNotNullParameter(payload, "payload");
            this.payload = payload;
            return this;
        }

        public final Builder common_metadata(IotMetadata common_metadata) {
            this.common_metadata = common_metadata;
            return this;
        }

        public final Builder response_topic(String response_topic) {
            Intrinsics.checkNotNullParameter(response_topic, "response_topic");
            this.response_topic = response_topic;
            return this;
        }

        public final Builder queue_name(String queue_name) {
            Intrinsics.checkNotNullParameter(queue_name, "queue_name");
            this.queue_name = queue_name;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public IotCommandRequest build() {
            return new IotCommandRequest(this.payload, this.common_metadata, this.response_topic, this.queue_name, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: IotCommandRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/message/IotCommandRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/message/IotCommandRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/message/IotCommandRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ IotCommandRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(IotCommandRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<IotCommandRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.message.IotCommandRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(IotCommandRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.payload, ByteString.EMPTY)) {
                    size += ProtoAdapter.BYTES.encodedSizeWithTag(1, value.payload);
                }
                if (value.common_metadata != null) {
                    size += IotMetadata.ADAPTER.encodedSizeWithTag(2, value.common_metadata);
                }
                if (!Intrinsics.areEqual(value.response_topic, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.response_topic);
                }
                return !Intrinsics.areEqual(value.queue_name, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.queue_name) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, IotCommandRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.payload, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 1, value.payload);
                }
                if (value.common_metadata != null) {
                    IotMetadata.ADAPTER.encodeWithTag(writer, 2, value.common_metadata);
                }
                if (!Intrinsics.areEqual(value.response_topic, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.response_topic);
                }
                if (!Intrinsics.areEqual(value.queue_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.queue_name);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, IotCommandRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.queue_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.queue_name);
                }
                if (!Intrinsics.areEqual(value.response_topic, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.response_topic);
                }
                if (value.common_metadata != null) {
                    IotMetadata.ADAPTER.encodeWithTag(writer, 2, value.common_metadata);
                }
                if (Intrinsics.areEqual(value.payload, ByteString.EMPTY)) {
                    return;
                }
                ProtoAdapter.BYTES.encodeWithTag(writer, 1, value.payload);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public IotCommandRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ByteString byteStringDecode = ByteString.EMPTY;
                long jBeginMessage = reader.beginMessage();
                IotMetadata iotMetadataDecode = null;
                String strDecode = "";
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new IotCommandRequest(byteStringDecode, iotMetadataDecode, strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        byteStringDecode = ProtoAdapter.BYTES.decode(reader);
                    } else if (iNextTag == 2) {
                        iotMetadataDecode = IotMetadata.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public IotCommandRequest redact(IotCommandRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                IotMetadata iotMetadata = value.common_metadata;
                return IotCommandRequest.copy$default(value, null, iotMetadata != null ? IotMetadata.ADAPTER.redact(iotMetadata) : null, null, null, ByteString.EMPTY, 13, null);
            }
        };
    }
}
