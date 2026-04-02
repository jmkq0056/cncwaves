package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: CreatePaymentIntentRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest$Builder;", "create_payment_intent_request", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "options", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreatePaymentIntentRequest extends Message<CreatePaymentIntentRequest, Builder> {
    public static final ProtoAdapter<CreatePaymentIntentRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.rest.CreatePaymentIntentRequest#ADAPTER", jsonName = "createPaymentIntentRequest", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final com.stripe.proto.api.rest.CreatePaymentIntentRequest create_payment_intent_request;

    @WireField(adapter = "com.stripe.proto.api.sdk.CreatePaymentIntentOptions#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 3)
    public final CreatePaymentIntentOptions options;

    public CreatePaymentIntentRequest() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ CreatePaymentIntentRequest(com.stripe.proto.api.rest.CreatePaymentIntentRequest createPaymentIntentRequest, CreatePaymentIntentOptions createPaymentIntentOptions, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : createPaymentIntentRequest, (i & 2) != 0 ? null : createPaymentIntentOptions, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreatePaymentIntentRequest(com.stripe.proto.api.rest.CreatePaymentIntentRequest createPaymentIntentRequest, CreatePaymentIntentOptions createPaymentIntentOptions, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.create_payment_intent_request = createPaymentIntentRequest;
        this.options = createPaymentIntentOptions;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.create_payment_intent_request = this.create_payment_intent_request;
        builder.options = this.options;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CreatePaymentIntentRequest)) {
            return false;
        }
        CreatePaymentIntentRequest createPaymentIntentRequest = (CreatePaymentIntentRequest) other;
        return Intrinsics.areEqual(unknownFields(), createPaymentIntentRequest.unknownFields()) && Intrinsics.areEqual(this.create_payment_intent_request, createPaymentIntentRequest.create_payment_intent_request) && Intrinsics.areEqual(this.options, createPaymentIntentRequest.options);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        com.stripe.proto.api.rest.CreatePaymentIntentRequest createPaymentIntentRequest = this.create_payment_intent_request;
        int iHashCode2 = (iHashCode + (createPaymentIntentRequest != null ? createPaymentIntentRequest.hashCode() : 0)) * 37;
        CreatePaymentIntentOptions createPaymentIntentOptions = this.options;
        int iHashCode3 = iHashCode2 + (createPaymentIntentOptions != null ? createPaymentIntentOptions.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.create_payment_intent_request != null) {
            arrayList.add("create_payment_intent_request=" + this.create_payment_intent_request);
        }
        if (this.options != null) {
            arrayList.add("options=" + this.options);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CreatePaymentIntentRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CreatePaymentIntentRequest copy$default(CreatePaymentIntentRequest createPaymentIntentRequest, com.stripe.proto.api.rest.CreatePaymentIntentRequest createPaymentIntentRequest2, CreatePaymentIntentOptions createPaymentIntentOptions, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            createPaymentIntentRequest2 = createPaymentIntentRequest.create_payment_intent_request;
        }
        if ((i & 2) != 0) {
            createPaymentIntentOptions = createPaymentIntentRequest.options;
        }
        if ((i & 4) != 0) {
            byteString = createPaymentIntentRequest.unknownFields();
        }
        return createPaymentIntentRequest.copy(createPaymentIntentRequest2, createPaymentIntentOptions, byteString);
    }

    public final CreatePaymentIntentRequest copy(com.stripe.proto.api.rest.CreatePaymentIntentRequest create_payment_intent_request, CreatePaymentIntentOptions options, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CreatePaymentIntentRequest(create_payment_intent_request, options, unknownFields);
    }

    /* JADX INFO: compiled from: CreatePaymentIntentRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;", "()V", "create_payment_intent_request", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "options", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CreatePaymentIntentRequest, Builder> {
        public com.stripe.proto.api.rest.CreatePaymentIntentRequest create_payment_intent_request;
        public CreatePaymentIntentOptions options;

        public final Builder create_payment_intent_request(com.stripe.proto.api.rest.CreatePaymentIntentRequest create_payment_intent_request) {
            this.create_payment_intent_request = create_payment_intent_request;
            return this;
        }

        public final Builder options(CreatePaymentIntentOptions options) {
            this.options = options;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CreatePaymentIntentRequest build() {
            return new CreatePaymentIntentRequest(this.create_payment_intent_request, this.options, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CreatePaymentIntentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CreatePaymentIntentRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CreatePaymentIntentRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CreatePaymentIntentRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CreatePaymentIntentRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CreatePaymentIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.create_payment_intent_request != null) {
                    size += com.stripe.proto.api.rest.CreatePaymentIntentRequest.ADAPTER.encodedSizeWithTag(1, value.create_payment_intent_request);
                }
                return value.options != null ? size + CreatePaymentIntentOptions.ADAPTER.encodedSizeWithTag(3, value.options) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CreatePaymentIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.create_payment_intent_request != null) {
                    com.stripe.proto.api.rest.CreatePaymentIntentRequest.ADAPTER.encodeWithTag(writer, 1, value.create_payment_intent_request);
                }
                if (value.options != null) {
                    CreatePaymentIntentOptions.ADAPTER.encodeWithTag(writer, 3, value.options);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CreatePaymentIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.options != null) {
                    CreatePaymentIntentOptions.ADAPTER.encodeWithTag(writer, 3, value.options);
                }
                if (value.create_payment_intent_request != null) {
                    com.stripe.proto.api.rest.CreatePaymentIntentRequest.ADAPTER.encodeWithTag(writer, 1, value.create_payment_intent_request);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CreatePaymentIntentRequest redact(CreatePaymentIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                com.stripe.proto.api.rest.CreatePaymentIntentRequest createPaymentIntentRequest = value.create_payment_intent_request;
                com.stripe.proto.api.rest.CreatePaymentIntentRequest createPaymentIntentRequestRedact = createPaymentIntentRequest != null ? com.stripe.proto.api.rest.CreatePaymentIntentRequest.ADAPTER.redact(createPaymentIntentRequest) : null;
                CreatePaymentIntentOptions createPaymentIntentOptions = value.options;
                return value.copy(createPaymentIntentRequestRedact, createPaymentIntentOptions != null ? CreatePaymentIntentOptions.ADAPTER.redact(createPaymentIntentOptions) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CreatePaymentIntentRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                com.stripe.proto.api.rest.CreatePaymentIntentRequest createPaymentIntentRequestDecode = null;
                CreatePaymentIntentOptions createPaymentIntentOptionsDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CreatePaymentIntentRequest(createPaymentIntentRequestDecode, createPaymentIntentOptionsDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        createPaymentIntentRequestDecode = com.stripe.proto.api.rest.CreatePaymentIntentRequest.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        createPaymentIntentOptionsDecode = CreatePaymentIntentOptions.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
