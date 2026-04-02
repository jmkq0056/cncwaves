package com.stripe.proto.iot_relay.pub.api;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.iot_relay.pub.message.IotCommandResponse;
import com.stripe.proto.model.common.DeviceInfo;
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

/* JADX INFO: compiled from: PostResponseRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B1\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ2\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\bH\u0016R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\rR\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/PostResponseRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/api/PostResponseRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "response", "Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;", "client_id", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;Ljava/lang/String;Lokio/ByteString;)V", "getDevice_info$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PostResponseRequest extends Message<PostResponseRequest, Builder> {
    public static final ProtoAdapter<PostResponseRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "clientId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String client_id;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.stripe.proto.iot_relay.pub.message.IotCommandResponse#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final IotCommandResponse response;

    public PostResponseRequest() {
        this(null, null, null, null, 15, null);
    }

    @Deprecated(message = "device_info is deprecated")
    public static /* synthetic */ void getDevice_info$annotations() {
    }

    public /* synthetic */ PostResponseRequest(DeviceInfo deviceInfo, IotCommandResponse iotCommandResponse, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? null : iotCommandResponse, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostResponseRequest(DeviceInfo deviceInfo, IotCommandResponse iotCommandResponse, String client_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(client_id, "client_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.response = iotCommandResponse;
        this.client_id = client_id;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.response = this.response;
        builder.client_id = this.client_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PostResponseRequest)) {
            return false;
        }
        PostResponseRequest postResponseRequest = (PostResponseRequest) other;
        return Intrinsics.areEqual(unknownFields(), postResponseRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, postResponseRequest.device_info) && Intrinsics.areEqual(this.response, postResponseRequest.response) && Intrinsics.areEqual(this.client_id, postResponseRequest.client_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = (iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37;
        IotCommandResponse iotCommandResponse = this.response;
        int iHashCode3 = ((iHashCode2 + (iotCommandResponse != null ? iotCommandResponse.hashCode() : 0)) * 37) + this.client_id.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_info != null) {
            arrayList.add("device_info=" + this.device_info);
        }
        if (this.response != null) {
            arrayList.add("response=" + this.response);
        }
        arrayList.add("client_id=" + Internal.sanitize(this.client_id));
        return CollectionsKt.joinToString$default(arrayList, ", ", "PostResponseRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PostResponseRequest copy$default(PostResponseRequest postResponseRequest, DeviceInfo deviceInfo, IotCommandResponse iotCommandResponse, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = postResponseRequest.device_info;
        }
        if ((i & 2) != 0) {
            iotCommandResponse = postResponseRequest.response;
        }
        if ((i & 4) != 0) {
            str = postResponseRequest.client_id;
        }
        if ((i & 8) != 0) {
            byteString = postResponseRequest.unknownFields();
        }
        return postResponseRequest.copy(deviceInfo, iotCommandResponse, str, byteString);
    }

    public final PostResponseRequest copy(DeviceInfo device_info, IotCommandResponse response, String client_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(client_id, "client_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PostResponseRequest(device_info, response, client_id, unknownFields);
    }

    /* JADX INFO: compiled from: PostResponseRequest.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0012\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/PostResponseRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/api/PostResponseRequest;", "()V", "client_id", "", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "response", "Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PostResponseRequest, Builder> {
        public String client_id = "";
        public DeviceInfo device_info;
        public IotCommandResponse response;

        @Deprecated(message = "device_info is deprecated")
        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder response(IotCommandResponse response) {
            this.response = response;
            return this;
        }

        public final Builder client_id(String client_id) {
            Intrinsics.checkNotNullParameter(client_id, "client_id");
            this.client_id = client_id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PostResponseRequest build() {
            return new PostResponseRequest(this.device_info, this.response, this.client_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PostResponseRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/PostResponseRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/PostResponseRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/api/PostResponseRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PostResponseRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PostResponseRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PostResponseRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.api.PostResponseRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PostResponseRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                if (value.response != null) {
                    size += IotCommandResponse.ADAPTER.encodedSizeWithTag(2, value.response);
                }
                return !Intrinsics.areEqual(value.client_id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(3, value.client_id) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PostResponseRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                if (value.response != null) {
                    IotCommandResponse.ADAPTER.encodeWithTag(writer, 2, value.response);
                }
                if (!Intrinsics.areEqual(value.client_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.client_id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PostResponseRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.client_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.client_id);
                }
                if (value.response != null) {
                    IotCommandResponse.ADAPTER.encodeWithTag(writer, 2, value.response);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PostResponseRequest redact(PostResponseRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                DeviceInfo deviceInfoRedact = deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null;
                IotCommandResponse iotCommandResponse = value.response;
                return PostResponseRequest.copy$default(value, deviceInfoRedact, iotCommandResponse != null ? IotCommandResponse.ADAPTER.redact(iotCommandResponse) : null, null, ByteString.EMPTY, 4, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PostResponseRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                String strDecode = "";
                IotCommandResponse iotCommandResponseDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PostResponseRequest(deviceInfoDecode, iotCommandResponseDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        iotCommandResponseDecode = IotCommandResponse.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
