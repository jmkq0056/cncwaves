package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.rest.PaymentIntent;
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

/* JADX INFO: compiled from: ForwardedPayment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/sdk/ForwardedPayment;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ForwardedPayment$Builder;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "forwarding_error", "Lcom/stripe/proto/api/sdk/ForwardingError;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/api/sdk/ForwardingError;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ForwardedPayment extends Message<ForwardedPayment, Builder> {
    public static final ProtoAdapter<ForwardedPayment> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.sdk.ForwardingError#ADAPTER", jsonName = "forwardingError", schemaIndex = 2, tag = 3)
    public final ForwardingError forwarding_error;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflinePaymentDetails#ADAPTER", jsonName = "offlineDetails", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final OfflinePaymentDetails offline_details;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentIntent#ADAPTER", jsonName = "paymentIntent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final PaymentIntent payment_intent;

    public ForwardedPayment() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ ForwardedPayment(OfflinePaymentDetails offlinePaymentDetails, PaymentIntent paymentIntent, ForwardingError forwardingError, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : offlinePaymentDetails, (i & 2) != 0 ? null : paymentIntent, (i & 4) != 0 ? null : forwardingError, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForwardedPayment(OfflinePaymentDetails offlinePaymentDetails, PaymentIntent paymentIntent, ForwardingError forwardingError, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.offline_details = offlinePaymentDetails;
        this.payment_intent = paymentIntent;
        this.forwarding_error = forwardingError;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.offline_details = this.offline_details;
        builder.payment_intent = this.payment_intent;
        builder.forwarding_error = this.forwarding_error;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ForwardedPayment)) {
            return false;
        }
        ForwardedPayment forwardedPayment = (ForwardedPayment) other;
        return Intrinsics.areEqual(unknownFields(), forwardedPayment.unknownFields()) && Intrinsics.areEqual(this.offline_details, forwardedPayment.offline_details) && Intrinsics.areEqual(this.payment_intent, forwardedPayment.payment_intent) && Intrinsics.areEqual(this.forwarding_error, forwardedPayment.forwarding_error);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        OfflinePaymentDetails offlinePaymentDetails = this.offline_details;
        int iHashCode2 = (iHashCode + (offlinePaymentDetails != null ? offlinePaymentDetails.hashCode() : 0)) * 37;
        PaymentIntent paymentIntent = this.payment_intent;
        int iHashCode3 = (iHashCode2 + (paymentIntent != null ? paymentIntent.hashCode() : 0)) * 37;
        ForwardingError forwardingError = this.forwarding_error;
        int iHashCode4 = iHashCode3 + (forwardingError != null ? forwardingError.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.offline_details != null) {
            arrayList.add("offline_details=" + this.offline_details);
        }
        if (this.payment_intent != null) {
            arrayList.add("payment_intent=" + this.payment_intent);
        }
        if (this.forwarding_error != null) {
            arrayList.add("forwarding_error=" + this.forwarding_error);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ForwardedPayment{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ForwardedPayment copy$default(ForwardedPayment forwardedPayment, OfflinePaymentDetails offlinePaymentDetails, PaymentIntent paymentIntent, ForwardingError forwardingError, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            offlinePaymentDetails = forwardedPayment.offline_details;
        }
        if ((i & 2) != 0) {
            paymentIntent = forwardedPayment.payment_intent;
        }
        if ((i & 4) != 0) {
            forwardingError = forwardedPayment.forwarding_error;
        }
        if ((i & 8) != 0) {
            byteString = forwardedPayment.unknownFields();
        }
        return forwardedPayment.copy(offlinePaymentDetails, paymentIntent, forwardingError, byteString);
    }

    public final ForwardedPayment copy(OfflinePaymentDetails offline_details, PaymentIntent payment_intent, ForwardingError forwarding_error, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ForwardedPayment(offline_details, payment_intent, forwarding_error, unknownFields);
    }

    /* JADX INFO: compiled from: ForwardedPayment.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/ForwardedPayment$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ForwardedPayment;", "()V", "forwarding_error", "Lcom/stripe/proto/api/sdk/ForwardingError;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ForwardedPayment, Builder> {
        public ForwardingError forwarding_error;
        public OfflinePaymentDetails offline_details;
        public PaymentIntent payment_intent;

        public final Builder offline_details(OfflinePaymentDetails offline_details) {
            this.offline_details = offline_details;
            return this;
        }

        public final Builder payment_intent(PaymentIntent payment_intent) {
            this.payment_intent = payment_intent;
            return this;
        }

        public final Builder forwarding_error(ForwardingError forwarding_error) {
            this.forwarding_error = forwarding_error;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ForwardedPayment build() {
            return new ForwardedPayment(this.offline_details, this.payment_intent, this.forwarding_error, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ForwardedPayment.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ForwardedPayment$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ForwardedPayment;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ForwardedPayment$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ForwardedPayment build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ForwardedPayment.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ForwardedPayment>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ForwardedPayment$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ForwardedPayment value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.offline_details != null) {
                    size += OfflinePaymentDetails.ADAPTER.encodedSizeWithTag(1, value.offline_details);
                }
                if (value.payment_intent != null) {
                    size += PaymentIntent.ADAPTER.encodedSizeWithTag(2, value.payment_intent);
                }
                return size + ForwardingError.ADAPTER.encodedSizeWithTag(3, value.forwarding_error);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ForwardedPayment value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.offline_details != null) {
                    OfflinePaymentDetails.ADAPTER.encodeWithTag(writer, 1, value.offline_details);
                }
                if (value.payment_intent != null) {
                    PaymentIntent.ADAPTER.encodeWithTag(writer, 2, value.payment_intent);
                }
                ForwardingError.ADAPTER.encodeWithTag(writer, 3, value.forwarding_error);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ForwardedPayment value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ForwardingError.ADAPTER.encodeWithTag(writer, 3, value.forwarding_error);
                if (value.payment_intent != null) {
                    PaymentIntent.ADAPTER.encodeWithTag(writer, 2, value.payment_intent);
                }
                if (value.offline_details != null) {
                    OfflinePaymentDetails.ADAPTER.encodeWithTag(writer, 1, value.offline_details);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ForwardedPayment redact(ForwardedPayment value) {
                Intrinsics.checkNotNullParameter(value, "value");
                OfflinePaymentDetails offlinePaymentDetails = value.offline_details;
                OfflinePaymentDetails offlinePaymentDetailsRedact = offlinePaymentDetails != null ? OfflinePaymentDetails.ADAPTER.redact(offlinePaymentDetails) : null;
                PaymentIntent paymentIntent = value.payment_intent;
                PaymentIntent paymentIntentRedact = paymentIntent != null ? PaymentIntent.ADAPTER.redact(paymentIntent) : null;
                ForwardingError forwardingError = value.forwarding_error;
                return value.copy(offlinePaymentDetailsRedact, paymentIntentRedact, forwardingError != null ? ForwardingError.ADAPTER.redact(forwardingError) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ForwardedPayment decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                OfflinePaymentDetails offlinePaymentDetailsDecode = null;
                PaymentIntent paymentIntentDecode = null;
                ForwardingError forwardingErrorDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ForwardedPayment(offlinePaymentDetailsDecode, paymentIntentDecode, forwardingErrorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        offlinePaymentDetailsDecode = OfflinePaymentDetails.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        paymentIntentDecode = PaymentIntent.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        forwardingErrorDecode = ForwardingError.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
