package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.sdk.Error;
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

/* JADX INFO: compiled from: CreatePaymentIntentResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJL\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "error", "Lcom/stripe/proto/model/sdk/Error;", "decline_response", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "options", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreatePaymentIntentResponse extends Message<CreatePaymentIntentResponse, Builder> {
    public static final ProtoAdapter<CreatePaymentIntentResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.rest.ErrorWrapper#ADAPTER", jsonName = "declineResponse", oneofName = "payment_intent_result", schemaIndex = 2, tag = 3)
    public final ErrorWrapper decline_response;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", oneofName = "payment_intent_result", schemaIndex = 1, tag = 2)
    public final Error error;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflinePaymentDetails#ADAPTER", jsonName = "offlineDetails", schemaIndex = 4, tag = 5)
    public final OfflinePaymentDetails offline_details;

    @WireField(adapter = "com.stripe.proto.api.sdk.CreatePaymentIntentOptions#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final CreatePaymentIntentOptions options;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentIntent#ADAPTER", jsonName = "paymentIntent", oneofName = "payment_intent_result", schemaIndex = 0, tag = 1)
    public final PaymentIntent payment_intent;

    public CreatePaymentIntentResponse() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ CreatePaymentIntentResponse(PaymentIntent paymentIntent, Error error, ErrorWrapper errorWrapper, CreatePaymentIntentOptions createPaymentIntentOptions, OfflinePaymentDetails offlinePaymentDetails, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : paymentIntent, (i & 2) != 0 ? null : error, (i & 4) != 0 ? null : errorWrapper, (i & 8) != 0 ? null : createPaymentIntentOptions, (i & 16) != 0 ? null : offlinePaymentDetails, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreatePaymentIntentResponse(PaymentIntent paymentIntent, Error error, ErrorWrapper errorWrapper, CreatePaymentIntentOptions createPaymentIntentOptions, OfflinePaymentDetails offlinePaymentDetails, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.payment_intent = paymentIntent;
        this.error = error;
        this.decline_response = errorWrapper;
        this.options = createPaymentIntentOptions;
        this.offline_details = offlinePaymentDetails;
        if (Internal.countNonNull(paymentIntent, error, errorWrapper) > 1) {
            throw new IllegalArgumentException("At most one of payment_intent, error, decline_response may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.payment_intent = this.payment_intent;
        builder.error = this.error;
        builder.decline_response = this.decline_response;
        builder.options = this.options;
        builder.offline_details = this.offline_details;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CreatePaymentIntentResponse)) {
            return false;
        }
        CreatePaymentIntentResponse createPaymentIntentResponse = (CreatePaymentIntentResponse) other;
        return Intrinsics.areEqual(unknownFields(), createPaymentIntentResponse.unknownFields()) && Intrinsics.areEqual(this.payment_intent, createPaymentIntentResponse.payment_intent) && Intrinsics.areEqual(this.error, createPaymentIntentResponse.error) && Intrinsics.areEqual(this.decline_response, createPaymentIntentResponse.decline_response) && Intrinsics.areEqual(this.options, createPaymentIntentResponse.options) && Intrinsics.areEqual(this.offline_details, createPaymentIntentResponse.offline_details);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        PaymentIntent paymentIntent = this.payment_intent;
        int iHashCode2 = (iHashCode + (paymentIntent != null ? paymentIntent.hashCode() : 0)) * 37;
        Error error = this.error;
        int iHashCode3 = (iHashCode2 + (error != null ? error.hashCode() : 0)) * 37;
        ErrorWrapper errorWrapper = this.decline_response;
        int iHashCode4 = (iHashCode3 + (errorWrapper != null ? errorWrapper.hashCode() : 0)) * 37;
        CreatePaymentIntentOptions createPaymentIntentOptions = this.options;
        int iHashCode5 = (iHashCode4 + (createPaymentIntentOptions != null ? createPaymentIntentOptions.hashCode() : 0)) * 37;
        OfflinePaymentDetails offlinePaymentDetails = this.offline_details;
        int iHashCode6 = iHashCode5 + (offlinePaymentDetails != null ? offlinePaymentDetails.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.payment_intent != null) {
            arrayList.add("payment_intent=" + this.payment_intent);
        }
        if (this.error != null) {
            arrayList.add("error=" + this.error);
        }
        if (this.decline_response != null) {
            arrayList.add("decline_response=" + this.decline_response);
        }
        if (this.options != null) {
            arrayList.add("options=" + this.options);
        }
        if (this.offline_details != null) {
            arrayList.add("offline_details=" + this.offline_details);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CreatePaymentIntentResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CreatePaymentIntentResponse copy$default(CreatePaymentIntentResponse createPaymentIntentResponse, PaymentIntent paymentIntent, Error error, ErrorWrapper errorWrapper, CreatePaymentIntentOptions createPaymentIntentOptions, OfflinePaymentDetails offlinePaymentDetails, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            paymentIntent = createPaymentIntentResponse.payment_intent;
        }
        if ((i & 2) != 0) {
            error = createPaymentIntentResponse.error;
        }
        if ((i & 4) != 0) {
            errorWrapper = createPaymentIntentResponse.decline_response;
        }
        if ((i & 8) != 0) {
            createPaymentIntentOptions = createPaymentIntentResponse.options;
        }
        if ((i & 16) != 0) {
            offlinePaymentDetails = createPaymentIntentResponse.offline_details;
        }
        if ((i & 32) != 0) {
            byteString = createPaymentIntentResponse.unknownFields();
        }
        OfflinePaymentDetails offlinePaymentDetails2 = offlinePaymentDetails;
        ByteString byteString2 = byteString;
        return createPaymentIntentResponse.copy(paymentIntent, error, errorWrapper, createPaymentIntentOptions, offlinePaymentDetails2, byteString2);
    }

    public final CreatePaymentIntentResponse copy(PaymentIntent payment_intent, Error error, ErrorWrapper decline_response, CreatePaymentIntentOptions options, OfflinePaymentDetails offline_details, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CreatePaymentIntentResponse(payment_intent, error, decline_response, options, offline_details, unknownFields);
    }

    /* JADX INFO: compiled from: CreatePaymentIntentResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;", "()V", "decline_response", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "error", "Lcom/stripe/proto/model/sdk/Error;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "options", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CreatePaymentIntentResponse, Builder> {
        public ErrorWrapper decline_response;
        public Error error;
        public OfflinePaymentDetails offline_details;
        public CreatePaymentIntentOptions options;
        public PaymentIntent payment_intent;

        public final Builder options(CreatePaymentIntentOptions options) {
            this.options = options;
            return this;
        }

        public final Builder offline_details(OfflinePaymentDetails offline_details) {
            this.offline_details = offline_details;
            return this;
        }

        public final Builder payment_intent(PaymentIntent payment_intent) {
            this.payment_intent = payment_intent;
            this.error = null;
            this.decline_response = null;
            return this;
        }

        public final Builder error(Error error) {
            this.error = error;
            this.payment_intent = null;
            this.decline_response = null;
            return this;
        }

        public final Builder decline_response(ErrorWrapper decline_response) {
            this.decline_response = decline_response;
            this.payment_intent = null;
            this.error = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CreatePaymentIntentResponse build() {
            return new CreatePaymentIntentResponse(this.payment_intent, this.error, this.decline_response, this.options, this.offline_details, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CreatePaymentIntentResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CreatePaymentIntentResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CreatePaymentIntentResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CreatePaymentIntentResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CreatePaymentIntentResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CreatePaymentIntentResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + PaymentIntent.ADAPTER.encodedSizeWithTag(1, value.payment_intent) + Error.ADAPTER.encodedSizeWithTag(2, value.error) + ErrorWrapper.ADAPTER.encodedSizeWithTag(3, value.decline_response);
                if (value.options != null) {
                    size += CreatePaymentIntentOptions.ADAPTER.encodedSizeWithTag(4, value.options);
                }
                return size + OfflinePaymentDetails.ADAPTER.encodedSizeWithTag(5, value.offline_details);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CreatePaymentIntentResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.options != null) {
                    CreatePaymentIntentOptions.ADAPTER.encodeWithTag(writer, 4, value.options);
                }
                OfflinePaymentDetails.ADAPTER.encodeWithTag(writer, 5, value.offline_details);
                PaymentIntent.ADAPTER.encodeWithTag(writer, 1, value.payment_intent);
                Error.ADAPTER.encodeWithTag(writer, 2, value.error);
                ErrorWrapper.ADAPTER.encodeWithTag(writer, 3, value.decline_response);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CreatePaymentIntentResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ErrorWrapper.ADAPTER.encodeWithTag(writer, 3, value.decline_response);
                Error.ADAPTER.encodeWithTag(writer, 2, value.error);
                PaymentIntent.ADAPTER.encodeWithTag(writer, 1, value.payment_intent);
                OfflinePaymentDetails.ADAPTER.encodeWithTag(writer, 5, value.offline_details);
                if (value.options != null) {
                    CreatePaymentIntentOptions.ADAPTER.encodeWithTag(writer, 4, value.options);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CreatePaymentIntentResponse redact(CreatePaymentIntentResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PaymentIntent paymentIntent = value.payment_intent;
                PaymentIntent paymentIntentRedact = paymentIntent != null ? PaymentIntent.ADAPTER.redact(paymentIntent) : null;
                Error error = value.error;
                Error errorRedact = error != null ? Error.ADAPTER.redact(error) : null;
                ErrorWrapper errorWrapper = value.decline_response;
                ErrorWrapper errorWrapperRedact = errorWrapper != null ? ErrorWrapper.ADAPTER.redact(errorWrapper) : null;
                CreatePaymentIntentOptions createPaymentIntentOptions = value.options;
                CreatePaymentIntentOptions createPaymentIntentOptionsRedact = createPaymentIntentOptions != null ? CreatePaymentIntentOptions.ADAPTER.redact(createPaymentIntentOptions) : null;
                OfflinePaymentDetails offlinePaymentDetails = value.offline_details;
                return value.copy(paymentIntentRedact, errorRedact, errorWrapperRedact, createPaymentIntentOptionsRedact, offlinePaymentDetails != null ? OfflinePaymentDetails.ADAPTER.redact(offlinePaymentDetails) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CreatePaymentIntentResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                PaymentIntent paymentIntentDecode = null;
                Error errorDecode = null;
                ErrorWrapper errorWrapperDecode = null;
                CreatePaymentIntentOptions createPaymentIntentOptionsDecode = null;
                OfflinePaymentDetails offlinePaymentDetailsDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CreatePaymentIntentResponse(paymentIntentDecode, errorDecode, errorWrapperDecode, createPaymentIntentOptionsDecode, offlinePaymentDetailsDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        paymentIntentDecode = PaymentIntent.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        errorDecode = Error.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        errorWrapperDecode = ErrorWrapper.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        createPaymentIntentOptionsDecode = CreatePaymentIntentOptions.ADAPTER.decode(reader);
                    } else if (iNextTag == 5) {
                        offlinePaymentDetailsDecode = OfflinePaymentDetails.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
