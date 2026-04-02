package com.stripe.proto.event_channel.pub.api;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.event_channel.pub.message.Command;
import com.stripe.proto.event_channel.pub.message.ReaderResponse;
import com.stripe.proto.model.common.DeviceInfo;
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

/* JADX INFO: compiled from: PostReaderEventRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "reader_response", "Lcom/stripe/proto/event_channel/pub/message/ReaderResponse;", "command", "Lcom/stripe/proto/event_channel/pub/message/Command;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/event_channel/pub/message/ReaderResponse;Lcom/stripe/proto/event_channel/pub/message/Command;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PostReaderEventRequest extends Message<PostReaderEventRequest, Builder> {
    public static final ProtoAdapter<PostReaderEventRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.Command#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final Command command;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.ReaderResponse#ADAPTER", jsonName = "readerResponse", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ReaderResponse reader_response;

    public PostReaderEventRequest() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ PostReaderEventRequest(DeviceInfo deviceInfo, ReaderResponse readerResponse, Command command, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? null : readerResponse, (i & 4) != 0 ? null : command, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostReaderEventRequest(DeviceInfo deviceInfo, ReaderResponse readerResponse, Command command, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.reader_response = readerResponse;
        this.command = command;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.reader_response = this.reader_response;
        builder.command = this.command;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PostReaderEventRequest)) {
            return false;
        }
        PostReaderEventRequest postReaderEventRequest = (PostReaderEventRequest) other;
        return Intrinsics.areEqual(unknownFields(), postReaderEventRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, postReaderEventRequest.device_info) && Intrinsics.areEqual(this.reader_response, postReaderEventRequest.reader_response) && Intrinsics.areEqual(this.command, postReaderEventRequest.command);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = (iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37;
        ReaderResponse readerResponse = this.reader_response;
        int iHashCode3 = (iHashCode2 + (readerResponse != null ? readerResponse.hashCode() : 0)) * 37;
        Command command = this.command;
        int iHashCode4 = iHashCode3 + (command != null ? command.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_info != null) {
            arrayList.add("device_info=" + this.device_info);
        }
        if (this.reader_response != null) {
            arrayList.add("reader_response=" + this.reader_response);
        }
        if (this.command != null) {
            arrayList.add("command=" + this.command);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PostReaderEventRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PostReaderEventRequest copy$default(PostReaderEventRequest postReaderEventRequest, DeviceInfo deviceInfo, ReaderResponse readerResponse, Command command, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = postReaderEventRequest.device_info;
        }
        if ((i & 2) != 0) {
            readerResponse = postReaderEventRequest.reader_response;
        }
        if ((i & 4) != 0) {
            command = postReaderEventRequest.command;
        }
        if ((i & 8) != 0) {
            byteString = postReaderEventRequest.unknownFields();
        }
        return postReaderEventRequest.copy(deviceInfo, readerResponse, command, byteString);
    }

    public final PostReaderEventRequest copy(DeviceInfo device_info, ReaderResponse reader_response, Command command, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PostReaderEventRequest(device_info, reader_response, command, unknownFields);
    }

    /* JADX INFO: compiled from: PostReaderEventRequest.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest;", "()V", "command", "Lcom/stripe/proto/event_channel/pub/message/Command;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "reader_response", "Lcom/stripe/proto/event_channel/pub/message/ReaderResponse;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PostReaderEventRequest, Builder> {
        public Command command;
        public DeviceInfo device_info;
        public ReaderResponse reader_response;

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder reader_response(ReaderResponse reader_response) {
            this.reader_response = reader_response;
            return this;
        }

        public final Builder command(Command command) {
            this.command = command;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PostReaderEventRequest build() {
            return new PostReaderEventRequest(this.device_info, this.reader_response, this.command, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PostReaderEventRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PostReaderEventRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PostReaderEventRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PostReaderEventRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.event_channel.pub.api.PostReaderEventRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PostReaderEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                if (value.reader_response != null) {
                    size += ReaderResponse.ADAPTER.encodedSizeWithTag(2, value.reader_response);
                }
                return value.command != null ? size + Command.ADAPTER.encodedSizeWithTag(3, value.command) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PostReaderEventRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                if (value.reader_response != null) {
                    ReaderResponse.ADAPTER.encodeWithTag(writer, 2, value.reader_response);
                }
                if (value.command != null) {
                    Command.ADAPTER.encodeWithTag(writer, 3, value.command);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PostReaderEventRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.command != null) {
                    Command.ADAPTER.encodeWithTag(writer, 3, value.command);
                }
                if (value.reader_response != null) {
                    ReaderResponse.ADAPTER.encodeWithTag(writer, 2, value.reader_response);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PostReaderEventRequest redact(PostReaderEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                DeviceInfo deviceInfoRedact = deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null;
                ReaderResponse readerResponse = value.reader_response;
                ReaderResponse readerResponseRedact = readerResponse != null ? ReaderResponse.ADAPTER.redact(readerResponse) : null;
                Command command = value.command;
                return value.copy(deviceInfoRedact, readerResponseRedact, command != null ? Command.ADAPTER.redact(command) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PostReaderEventRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                ReaderResponse readerResponseDecode = null;
                Command commandDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PostReaderEventRequest(deviceInfoDecode, readerResponseDecode, commandDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        readerResponseDecode = ReaderResponse.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        commandDecode = Command.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
