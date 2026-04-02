package com.stripe.proto.net.rpc.base;

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

/* JADX INFO: compiled from: RpcResponse.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019BA\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0002\u0010\u000eJB\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\nH\u0016R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/net/rpc/base/RpcResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;", "request_id", "", "rpc_error_code", "Lcom/stripe/proto/net/rpc/base/RpcEC;", "app_error_code", "Lcom/stripe/proto/net/rpc/base/ApplicationEC;", "error", "", FirebaseAnalytics.Param.CONTENT, "Lokio/ByteString;", "unknownFields", "(JLcom/stripe/proto/net/rpc/base/RpcEC;Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RpcResponse extends Message<RpcResponse, Builder> {
    public static final ProtoAdapter<RpcResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.net.rpc.base.ApplicationEC#ADAPTER", jsonName = "appErrorCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final ApplicationEC app_error_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final ByteString content;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String error;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "requestId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long request_id;

    @WireField(adapter = "com.stripe.proto.net.rpc.base.RpcEC#ADAPTER", jsonName = "rpcErrorCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final RpcEC rpc_error_code;

    public RpcResponse() {
        this(0L, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ RpcResponse(long j, RpcEC rpcEC, ApplicationEC applicationEC, String str, ByteString byteString, ByteString byteString2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? RpcEC.RPC_EC_INVALID : rpcEC, (i & 4) != 0 ? ApplicationEC.APPLICATION_EC_INVALID : applicationEC, (i & 8) != 0 ? "" : str, (i & 16) != 0 ? ByteString.EMPTY : byteString, (i & 32) != 0 ? ByteString.EMPTY : byteString2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RpcResponse(long j, RpcEC rpc_error_code, ApplicationEC app_error_code, String error, ByteString content, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(rpc_error_code, "rpc_error_code");
        Intrinsics.checkNotNullParameter(app_error_code, "app_error_code");
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.request_id = j;
        this.rpc_error_code = rpc_error_code;
        this.app_error_code = app_error_code;
        this.error = error;
        this.content = content;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.request_id = this.request_id;
        builder.rpc_error_code = this.rpc_error_code;
        builder.app_error_code = this.app_error_code;
        builder.error = this.error;
        builder.content = this.content;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RpcResponse)) {
            return false;
        }
        RpcResponse rpcResponse = (RpcResponse) other;
        return Intrinsics.areEqual(unknownFields(), rpcResponse.unknownFields()) && this.request_id == rpcResponse.request_id && this.rpc_error_code == rpcResponse.rpc_error_code && this.app_error_code == rpcResponse.app_error_code && Intrinsics.areEqual(this.error, rpcResponse.error) && Intrinsics.areEqual(this.content, rpcResponse.content);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((unknownFields().hashCode() * 37) + Long.hashCode(this.request_id)) * 37) + this.rpc_error_code.hashCode()) * 37) + this.app_error_code.hashCode()) * 37) + this.error.hashCode()) * 37) + this.content.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("request_id=" + this.request_id);
        arrayList2.add("rpc_error_code=" + this.rpc_error_code);
        arrayList2.add("app_error_code=" + this.app_error_code);
        arrayList2.add("error=" + Internal.sanitize(this.error));
        arrayList2.add("content=" + this.content);
        return CollectionsKt.joinToString$default(arrayList, ", ", "RpcResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ RpcResponse copy$default(RpcResponse rpcResponse, long j, RpcEC rpcEC, ApplicationEC applicationEC, String str, ByteString byteString, ByteString byteString2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = rpcResponse.request_id;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            rpcEC = rpcResponse.rpc_error_code;
        }
        RpcEC rpcEC2 = rpcEC;
        if ((i & 4) != 0) {
            applicationEC = rpcResponse.app_error_code;
        }
        ApplicationEC applicationEC2 = applicationEC;
        if ((i & 8) != 0) {
            str = rpcResponse.error;
        }
        String str2 = str;
        if ((i & 16) != 0) {
            byteString = rpcResponse.content;
        }
        ByteString byteString3 = byteString;
        if ((i & 32) != 0) {
            byteString2 = rpcResponse.unknownFields();
        }
        return rpcResponse.copy(j2, rpcEC2, applicationEC2, str2, byteString3, byteString2);
    }

    public final RpcResponse copy(long request_id, RpcEC rpc_error_code, ApplicationEC app_error_code, String error, ByteString content, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(rpc_error_code, "rpc_error_code");
        Intrinsics.checkNotNullParameter(app_error_code, "app_error_code");
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RpcResponse(request_id, rpc_error_code, app_error_code, error, content, unknownFields);
    }

    /* JADX INFO: compiled from: RpcResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/net/rpc/base/RpcResponse;", "()V", "app_error_code", "Lcom/stripe/proto/net/rpc/base/ApplicationEC;", FirebaseAnalytics.Param.CONTENT, "Lokio/ByteString;", "error", "", "request_id", "", "rpc_error_code", "Lcom/stripe/proto/net/rpc/base/RpcEC;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RpcResponse, Builder> {
        public long request_id;
        public RpcEC rpc_error_code = RpcEC.RPC_EC_INVALID;
        public ApplicationEC app_error_code = ApplicationEC.APPLICATION_EC_INVALID;
        public String error = "";
        public ByteString content = ByteString.EMPTY;

        public final Builder request_id(long request_id) {
            this.request_id = request_id;
            return this;
        }

        public final Builder rpc_error_code(RpcEC rpc_error_code) {
            Intrinsics.checkNotNullParameter(rpc_error_code, "rpc_error_code");
            this.rpc_error_code = rpc_error_code;
            return this;
        }

        public final Builder app_error_code(ApplicationEC app_error_code) {
            Intrinsics.checkNotNullParameter(app_error_code, "app_error_code");
            this.app_error_code = app_error_code;
            return this;
        }

        public final Builder error(String error) {
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
            return this;
        }

        public final Builder content(ByteString content) {
            Intrinsics.checkNotNullParameter(content, "content");
            this.content = content;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RpcResponse build() {
            return new RpcResponse(this.request_id, this.rpc_error_code, this.app_error_code, this.error, this.content, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RpcResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/net/rpc/base/RpcResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RpcResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RpcResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RpcResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.net.rpc.base.RpcResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RpcResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.request_id != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(1, Long.valueOf(value.request_id));
                }
                if (value.rpc_error_code != RpcEC.RPC_EC_INVALID) {
                    size += RpcEC.ADAPTER.encodedSizeWithTag(2, value.rpc_error_code);
                }
                if (value.app_error_code != ApplicationEC.APPLICATION_EC_INVALID) {
                    size += ApplicationEC.ADAPTER.encodedSizeWithTag(3, value.app_error_code);
                }
                if (!Intrinsics.areEqual(value.error, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.error);
                }
                return !Intrinsics.areEqual(value.content, ByteString.EMPTY) ? size + ProtoAdapter.BYTES.encodedSizeWithTag(5, value.content) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RpcResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.request_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.request_id));
                }
                if (value.rpc_error_code != RpcEC.RPC_EC_INVALID) {
                    RpcEC.ADAPTER.encodeWithTag(writer, 2, value.rpc_error_code);
                }
                if (value.app_error_code != ApplicationEC.APPLICATION_EC_INVALID) {
                    ApplicationEC.ADAPTER.encodeWithTag(writer, 3, value.app_error_code);
                }
                if (!Intrinsics.areEqual(value.error, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.error);
                }
                if (!Intrinsics.areEqual(value.content, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 5, value.content);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RpcResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.content, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 5, value.content);
                }
                if (!Intrinsics.areEqual(value.error, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.error);
                }
                if (value.app_error_code != ApplicationEC.APPLICATION_EC_INVALID) {
                    ApplicationEC.ADAPTER.encodeWithTag(writer, 3, value.app_error_code);
                }
                if (value.rpc_error_code != RpcEC.RPC_EC_INVALID) {
                    RpcEC.ADAPTER.encodeWithTag(writer, 2, value.rpc_error_code);
                }
                if (value.request_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.request_id));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RpcResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                RpcEC rpcECDecode = RpcEC.RPC_EC_INVALID;
                ApplicationEC applicationEC = ApplicationEC.APPLICATION_EC_INVALID;
                ByteString byteString = ByteString.EMPTY;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                long jLongValue = 0;
                ByteString byteStringDecode = byteString;
                ApplicationEC applicationECDecode = applicationEC;
                while (true) {
                    RpcEC rpcEC = rpcECDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new RpcResponse(jLongValue, rpcEC, applicationECDecode, strDecode, byteStringDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                        } else if (iNextTag == 2) {
                            try {
                                rpcECDecode = RpcEC.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 3) {
                            try {
                                applicationECDecode = ApplicationEC.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                            }
                        } else if (iNextTag == 4) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 5) {
                            byteStringDecode = ProtoAdapter.BYTES.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RpcResponse redact(RpcResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return RpcResponse.copy$default(value, 0L, null, null, null, null, ByteString.EMPTY, 31, null);
            }
        };
    }
}
