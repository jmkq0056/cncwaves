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

/* JADX INFO: compiled from: CreateSetupIntentRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest$Builder;", "create_setup_intent_request", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "options", "Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreateSetupIntentRequest extends Message<CreateSetupIntentRequest, Builder> {
    public static final ProtoAdapter<CreateSetupIntentRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.rest.CreateSetupIntentRequest#ADAPTER", jsonName = "createSetupIntentRequest", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final com.stripe.proto.api.rest.CreateSetupIntentRequest create_setup_intent_request;

    @WireField(adapter = "com.stripe.proto.api.sdk.CreateSetupIntentOptions#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final CreateSetupIntentOptions options;

    public CreateSetupIntentRequest() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ CreateSetupIntentRequest(com.stripe.proto.api.rest.CreateSetupIntentRequest createSetupIntentRequest, CreateSetupIntentOptions createSetupIntentOptions, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : createSetupIntentRequest, (i & 2) != 0 ? null : createSetupIntentOptions, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateSetupIntentRequest(com.stripe.proto.api.rest.CreateSetupIntentRequest createSetupIntentRequest, CreateSetupIntentOptions createSetupIntentOptions, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.create_setup_intent_request = createSetupIntentRequest;
        this.options = createSetupIntentOptions;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.create_setup_intent_request = this.create_setup_intent_request;
        builder.options = this.options;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CreateSetupIntentRequest)) {
            return false;
        }
        CreateSetupIntentRequest createSetupIntentRequest = (CreateSetupIntentRequest) other;
        return Intrinsics.areEqual(unknownFields(), createSetupIntentRequest.unknownFields()) && Intrinsics.areEqual(this.create_setup_intent_request, createSetupIntentRequest.create_setup_intent_request) && Intrinsics.areEqual(this.options, createSetupIntentRequest.options);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        com.stripe.proto.api.rest.CreateSetupIntentRequest createSetupIntentRequest = this.create_setup_intent_request;
        int iHashCode2 = (iHashCode + (createSetupIntentRequest != null ? createSetupIntentRequest.hashCode() : 0)) * 37;
        CreateSetupIntentOptions createSetupIntentOptions = this.options;
        int iHashCode3 = iHashCode2 + (createSetupIntentOptions != null ? createSetupIntentOptions.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.create_setup_intent_request != null) {
            arrayList.add("create_setup_intent_request=" + this.create_setup_intent_request);
        }
        if (this.options != null) {
            arrayList.add("options=" + this.options);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CreateSetupIntentRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CreateSetupIntentRequest copy$default(CreateSetupIntentRequest createSetupIntentRequest, com.stripe.proto.api.rest.CreateSetupIntentRequest createSetupIntentRequest2, CreateSetupIntentOptions createSetupIntentOptions, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            createSetupIntentRequest2 = createSetupIntentRequest.create_setup_intent_request;
        }
        if ((i & 2) != 0) {
            createSetupIntentOptions = createSetupIntentRequest.options;
        }
        if ((i & 4) != 0) {
            byteString = createSetupIntentRequest.unknownFields();
        }
        return createSetupIntentRequest.copy(createSetupIntentRequest2, createSetupIntentOptions, byteString);
    }

    public final CreateSetupIntentRequest copy(com.stripe.proto.api.rest.CreateSetupIntentRequest create_setup_intent_request, CreateSetupIntentOptions options, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CreateSetupIntentRequest(create_setup_intent_request, options, unknownFields);
    }

    /* JADX INFO: compiled from: CreateSetupIntentRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;", "()V", "create_setup_intent_request", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "options", "Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CreateSetupIntentRequest, Builder> {
        public com.stripe.proto.api.rest.CreateSetupIntentRequest create_setup_intent_request;
        public CreateSetupIntentOptions options;

        public final Builder create_setup_intent_request(com.stripe.proto.api.rest.CreateSetupIntentRequest create_setup_intent_request) {
            this.create_setup_intent_request = create_setup_intent_request;
            return this;
        }

        public final Builder options(CreateSetupIntentOptions options) {
            this.options = options;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CreateSetupIntentRequest build() {
            return new CreateSetupIntentRequest(this.create_setup_intent_request, this.options, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CreateSetupIntentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CreateSetupIntentRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CreateSetupIntentRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CreateSetupIntentRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CreateSetupIntentRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CreateSetupIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.create_setup_intent_request != null) {
                    size += com.stripe.proto.api.rest.CreateSetupIntentRequest.ADAPTER.encodedSizeWithTag(1, value.create_setup_intent_request);
                }
                return value.options != null ? size + CreateSetupIntentOptions.ADAPTER.encodedSizeWithTag(2, value.options) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CreateSetupIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.create_setup_intent_request != null) {
                    com.stripe.proto.api.rest.CreateSetupIntentRequest.ADAPTER.encodeWithTag(writer, 1, value.create_setup_intent_request);
                }
                if (value.options != null) {
                    CreateSetupIntentOptions.ADAPTER.encodeWithTag(writer, 2, value.options);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CreateSetupIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.options != null) {
                    CreateSetupIntentOptions.ADAPTER.encodeWithTag(writer, 2, value.options);
                }
                if (value.create_setup_intent_request != null) {
                    com.stripe.proto.api.rest.CreateSetupIntentRequest.ADAPTER.encodeWithTag(writer, 1, value.create_setup_intent_request);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CreateSetupIntentRequest redact(CreateSetupIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                com.stripe.proto.api.rest.CreateSetupIntentRequest createSetupIntentRequest = value.create_setup_intent_request;
                com.stripe.proto.api.rest.CreateSetupIntentRequest createSetupIntentRequestRedact = createSetupIntentRequest != null ? com.stripe.proto.api.rest.CreateSetupIntentRequest.ADAPTER.redact(createSetupIntentRequest) : null;
                CreateSetupIntentOptions createSetupIntentOptions = value.options;
                return value.copy(createSetupIntentRequestRedact, createSetupIntentOptions != null ? CreateSetupIntentOptions.ADAPTER.redact(createSetupIntentOptions) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CreateSetupIntentRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                com.stripe.proto.api.rest.CreateSetupIntentRequest createSetupIntentRequestDecode = null;
                CreateSetupIntentOptions createSetupIntentOptionsDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CreateSetupIntentRequest(createSetupIntentRequestDecode, createSetupIntentOptionsDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        createSetupIntentRequestDecode = com.stripe.proto.api.rest.CreateSetupIntentRequest.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        createSetupIntentOptionsDecode = CreateSetupIntentOptions.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
