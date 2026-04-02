package com.stripe.proto.terminal.terminal.pub.api.armada;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.iot_manage.pub.message.IotClientConfig;
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

/* JADX INFO: compiled from: FetchLatestIotClientConfigResponse.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/api/armada/FetchLatestIotClientConfigResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/api/armada/FetchLatestIotClientConfigResponse$Builder;", "config", "Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FetchLatestIotClientConfigResponse extends Message<FetchLatestIotClientConfigResponse, Builder> {
    public static final ProtoAdapter<FetchLatestIotClientConfigResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.iot_manage.pub.message.IotClientConfig#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final IotClientConfig config;

    /* JADX WARN: Multi-variable type inference failed */
    public FetchLatestIotClientConfigResponse() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ FetchLatestIotClientConfigResponse(IotClientConfig iotClientConfig, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : iotClientConfig, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchLatestIotClientConfigResponse(IotClientConfig iotClientConfig, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.config = iotClientConfig;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.config = this.config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof FetchLatestIotClientConfigResponse)) {
            return false;
        }
        FetchLatestIotClientConfigResponse fetchLatestIotClientConfigResponse = (FetchLatestIotClientConfigResponse) other;
        return Intrinsics.areEqual(unknownFields(), fetchLatestIotClientConfigResponse.unknownFields()) && Intrinsics.areEqual(this.config, fetchLatestIotClientConfigResponse.config);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        IotClientConfig iotClientConfig = this.config;
        int iHashCode2 = iHashCode + (iotClientConfig != null ? iotClientConfig.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.config != null) {
            arrayList.add("config=" + this.config);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "FetchLatestIotClientConfigResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ FetchLatestIotClientConfigResponse copy$default(FetchLatestIotClientConfigResponse fetchLatestIotClientConfigResponse, IotClientConfig iotClientConfig, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            iotClientConfig = fetchLatestIotClientConfigResponse.config;
        }
        if ((i & 2) != 0) {
            byteString = fetchLatestIotClientConfigResponse.unknownFields();
        }
        return fetchLatestIotClientConfigResponse.copy(iotClientConfig, byteString);
    }

    public final FetchLatestIotClientConfigResponse copy(IotClientConfig config, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new FetchLatestIotClientConfigResponse(config, unknownFields);
    }

    /* JADX INFO: compiled from: FetchLatestIotClientConfigResponse.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/api/armada/FetchLatestIotClientConfigResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/api/armada/FetchLatestIotClientConfigResponse;", "()V", "config", "Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<FetchLatestIotClientConfigResponse, Builder> {
        public IotClientConfig config;

        public final Builder config(IotClientConfig config) {
            this.config = config;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public FetchLatestIotClientConfigResponse build() {
            return new FetchLatestIotClientConfigResponse(this.config, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: FetchLatestIotClientConfigResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/api/armada/FetchLatestIotClientConfigResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/api/armada/FetchLatestIotClientConfigResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/api/armada/FetchLatestIotClientConfigResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ FetchLatestIotClientConfigResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(FetchLatestIotClientConfigResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<FetchLatestIotClientConfigResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.api.armada.FetchLatestIotClientConfigResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(FetchLatestIotClientConfigResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.config != null ? size + IotClientConfig.ADAPTER.encodedSizeWithTag(1, value.config) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, FetchLatestIotClientConfigResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.config != null) {
                    IotClientConfig.ADAPTER.encodeWithTag(writer, 1, value.config);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, FetchLatestIotClientConfigResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.config != null) {
                    IotClientConfig.ADAPTER.encodeWithTag(writer, 1, value.config);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public FetchLatestIotClientConfigResponse redact(FetchLatestIotClientConfigResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                IotClientConfig iotClientConfig = value.config;
                return value.copy(iotClientConfig != null ? IotClientConfig.ADAPTER.redact(iotClientConfig) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public FetchLatestIotClientConfigResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                IotClientConfig iotClientConfigDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new FetchLatestIotClientConfigResponse(iotClientConfigDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        iotClientConfigDecode = IotClientConfig.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
