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

/* JADX INFO: compiled from: CancelPaymentIntentResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse$Builder;", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "error", "Lcom/stripe/proto/model/sdk/Error;", "wrapped_error", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/ErrorWrapper;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CancelPaymentIntentResponse extends Message<CancelPaymentIntentResponse, Builder> {
    public static final ProtoAdapter<CancelPaymentIntentResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", oneofName = "payment_intent_result", schemaIndex = 1, tag = 2)
    public final Error error;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentIntent#ADAPTER", jsonName = "paymentIntent", oneofName = "payment_intent_result", schemaIndex = 0, tag = 1)
    public final PaymentIntent payment_intent;

    @WireField(adapter = "com.stripe.proto.model.rest.ErrorWrapper#ADAPTER", jsonName = "wrappedError", oneofName = "payment_intent_result", schemaIndex = 2, tag = 3)
    public final ErrorWrapper wrapped_error;

    public CancelPaymentIntentResponse() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ CancelPaymentIntentResponse(PaymentIntent paymentIntent, Error error, ErrorWrapper errorWrapper, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : paymentIntent, (i & 2) != 0 ? null : error, (i & 4) != 0 ? null : errorWrapper, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CancelPaymentIntentResponse(PaymentIntent paymentIntent, Error error, ErrorWrapper errorWrapper, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.payment_intent = paymentIntent;
        this.error = error;
        this.wrapped_error = errorWrapper;
        if (Internal.countNonNull(paymentIntent, error, errorWrapper) > 1) {
            throw new IllegalArgumentException("At most one of payment_intent, error, wrapped_error may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.payment_intent = this.payment_intent;
        builder.error = this.error;
        builder.wrapped_error = this.wrapped_error;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CancelPaymentIntentResponse)) {
            return false;
        }
        CancelPaymentIntentResponse cancelPaymentIntentResponse = (CancelPaymentIntentResponse) other;
        return Intrinsics.areEqual(unknownFields(), cancelPaymentIntentResponse.unknownFields()) && Intrinsics.areEqual(this.payment_intent, cancelPaymentIntentResponse.payment_intent) && Intrinsics.areEqual(this.error, cancelPaymentIntentResponse.error) && Intrinsics.areEqual(this.wrapped_error, cancelPaymentIntentResponse.wrapped_error);
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
        ErrorWrapper errorWrapper = this.wrapped_error;
        int iHashCode4 = iHashCode3 + (errorWrapper != null ? errorWrapper.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
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
        if (this.wrapped_error != null) {
            arrayList.add("wrapped_error=" + this.wrapped_error);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CancelPaymentIntentResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CancelPaymentIntentResponse copy$default(CancelPaymentIntentResponse cancelPaymentIntentResponse, PaymentIntent paymentIntent, Error error, ErrorWrapper errorWrapper, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            paymentIntent = cancelPaymentIntentResponse.payment_intent;
        }
        if ((i & 2) != 0) {
            error = cancelPaymentIntentResponse.error;
        }
        if ((i & 4) != 0) {
            errorWrapper = cancelPaymentIntentResponse.wrapped_error;
        }
        if ((i & 8) != 0) {
            byteString = cancelPaymentIntentResponse.unknownFields();
        }
        return cancelPaymentIntentResponse.copy(paymentIntent, error, errorWrapper, byteString);
    }

    public final CancelPaymentIntentResponse copy(PaymentIntent payment_intent, Error error, ErrorWrapper wrapped_error, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CancelPaymentIntentResponse(payment_intent, error, wrapped_error, unknownFields);
    }

    /* JADX INFO: compiled from: CancelPaymentIntentResponse.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse;", "()V", "error", "Lcom/stripe/proto/model/sdk/Error;", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "wrapped_error", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CancelPaymentIntentResponse, Builder> {
        public Error error;
        public PaymentIntent payment_intent;
        public ErrorWrapper wrapped_error;

        public final Builder payment_intent(PaymentIntent payment_intent) {
            this.payment_intent = payment_intent;
            this.error = null;
            this.wrapped_error = null;
            return this;
        }

        public final Builder error(Error error) {
            this.error = error;
            this.payment_intent = null;
            this.wrapped_error = null;
            return this;
        }

        public final Builder wrapped_error(ErrorWrapper wrapped_error) {
            this.wrapped_error = wrapped_error;
            this.payment_intent = null;
            this.error = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CancelPaymentIntentResponse build() {
            return new CancelPaymentIntentResponse(this.payment_intent, this.error, this.wrapped_error, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CancelPaymentIntentResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CancelPaymentIntentResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CancelPaymentIntentResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CancelPaymentIntentResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CancelPaymentIntentResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CancelPaymentIntentResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + PaymentIntent.ADAPTER.encodedSizeWithTag(1, value.payment_intent) + Error.ADAPTER.encodedSizeWithTag(2, value.error) + ErrorWrapper.ADAPTER.encodedSizeWithTag(3, value.wrapped_error);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CancelPaymentIntentResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                PaymentIntent.ADAPTER.encodeWithTag(writer, 1, value.payment_intent);
                Error.ADAPTER.encodeWithTag(writer, 2, value.error);
                ErrorWrapper.ADAPTER.encodeWithTag(writer, 3, value.wrapped_error);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CancelPaymentIntentResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ErrorWrapper.ADAPTER.encodeWithTag(writer, 3, value.wrapped_error);
                Error.ADAPTER.encodeWithTag(writer, 2, value.error);
                PaymentIntent.ADAPTER.encodeWithTag(writer, 1, value.payment_intent);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CancelPaymentIntentResponse redact(CancelPaymentIntentResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PaymentIntent paymentIntent = value.payment_intent;
                PaymentIntent paymentIntentRedact = paymentIntent != null ? PaymentIntent.ADAPTER.redact(paymentIntent) : null;
                Error error = value.error;
                Error errorRedact = error != null ? Error.ADAPTER.redact(error) : null;
                ErrorWrapper errorWrapper = value.wrapped_error;
                return value.copy(paymentIntentRedact, errorRedact, errorWrapper != null ? ErrorWrapper.ADAPTER.redact(errorWrapper) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CancelPaymentIntentResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                PaymentIntent paymentIntentDecode = null;
                Error errorDecode = null;
                ErrorWrapper errorWrapperDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CancelPaymentIntentResponse(paymentIntentDecode, errorDecode, errorWrapperDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        paymentIntentDecode = PaymentIntent.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        errorDecode = Error.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        errorWrapperDecode = ErrorWrapper.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
