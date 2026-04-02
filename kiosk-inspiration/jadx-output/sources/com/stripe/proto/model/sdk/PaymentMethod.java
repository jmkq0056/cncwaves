package com.stripe.proto.model.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.proto.model.sdk.PaymentMethod;
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

/* JADX INFO: compiled from: PaymentMethod.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0018\u0019\u001aB3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\rR\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/model/sdk/PaymentMethod;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;", "card_payment", "Lcom/stripe/proto/model/sdk/CardPaymentMethod;", "tip_selection", "Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;", "non_card_payment", "Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;)V", "getCard_payment$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "TipSelection", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentMethod extends Message<PaymentMethod, Builder> {
    public static final ProtoAdapter<PaymentMethod> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.CardPaymentMethod#ADAPTER", jsonName = "cardPayment", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final CardPaymentMethod card_payment;

    @WireField(adapter = "com.stripe.proto.model.sdk.NonCardPaymentMethod#ADAPTER", jsonName = "nonCardPayment", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final NonCardPaymentMethod non_card_payment;

    @WireField(adapter = "com.stripe.proto.model.sdk.PaymentMethod$TipSelection#ADAPTER", jsonName = "tipSelection", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final TipSelection tip_selection;

    public PaymentMethod() {
        this(null, null, null, null, 15, null);
    }

    @Deprecated(message = "card_payment is deprecated")
    public static /* synthetic */ void getCard_payment$annotations() {
    }

    public /* synthetic */ PaymentMethod(CardPaymentMethod cardPaymentMethod, TipSelection tipSelection, NonCardPaymentMethod nonCardPaymentMethod, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : cardPaymentMethod, (i & 2) != 0 ? null : tipSelection, (i & 4) != 0 ? null : nonCardPaymentMethod, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentMethod(CardPaymentMethod cardPaymentMethod, TipSelection tipSelection, NonCardPaymentMethod nonCardPaymentMethod, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.card_payment = cardPaymentMethod;
        this.tip_selection = tipSelection;
        this.non_card_payment = nonCardPaymentMethod;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.card_payment = this.card_payment;
        builder.tip_selection = this.tip_selection;
        builder.non_card_payment = this.non_card_payment;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PaymentMethod)) {
            return false;
        }
        PaymentMethod paymentMethod = (PaymentMethod) other;
        return Intrinsics.areEqual(unknownFields(), paymentMethod.unknownFields()) && Intrinsics.areEqual(this.card_payment, paymentMethod.card_payment) && Intrinsics.areEqual(this.tip_selection, paymentMethod.tip_selection) && Intrinsics.areEqual(this.non_card_payment, paymentMethod.non_card_payment);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        CardPaymentMethod cardPaymentMethod = this.card_payment;
        int iHashCode2 = (iHashCode + (cardPaymentMethod != null ? cardPaymentMethod.hashCode() : 0)) * 37;
        TipSelection tipSelection = this.tip_selection;
        int iHashCode3 = (iHashCode2 + (tipSelection != null ? tipSelection.hashCode() : 0)) * 37;
        NonCardPaymentMethod nonCardPaymentMethod = this.non_card_payment;
        int iHashCode4 = iHashCode3 + (nonCardPaymentMethod != null ? nonCardPaymentMethod.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.card_payment != null) {
            arrayList.add("card_payment=" + this.card_payment);
        }
        if (this.tip_selection != null) {
            arrayList.add("tip_selection=" + this.tip_selection);
        }
        if (this.non_card_payment != null) {
            arrayList.add("non_card_payment=" + this.non_card_payment);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PaymentMethod{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PaymentMethod copy$default(PaymentMethod paymentMethod, CardPaymentMethod cardPaymentMethod, TipSelection tipSelection, NonCardPaymentMethod nonCardPaymentMethod, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            cardPaymentMethod = paymentMethod.card_payment;
        }
        if ((i & 2) != 0) {
            tipSelection = paymentMethod.tip_selection;
        }
        if ((i & 4) != 0) {
            nonCardPaymentMethod = paymentMethod.non_card_payment;
        }
        if ((i & 8) != 0) {
            byteString = paymentMethod.unknownFields();
        }
        return paymentMethod.copy(cardPaymentMethod, tipSelection, nonCardPaymentMethod, byteString);
    }

    public final PaymentMethod copy(CardPaymentMethod card_payment, TipSelection tip_selection, NonCardPaymentMethod non_card_payment, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PaymentMethod(card_payment, tip_selection, non_card_payment, unknownFields);
    }

    /* JADX INFO: compiled from: PaymentMethod.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0012\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "()V", "card_payment", "Lcom/stripe/proto/model/sdk/CardPaymentMethod;", "non_card_payment", "Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;", "tip_selection", "Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PaymentMethod, Builder> {
        public CardPaymentMethod card_payment;
        public NonCardPaymentMethod non_card_payment;
        public TipSelection tip_selection;

        @Deprecated(message = "card_payment is deprecated")
        public final Builder card_payment(CardPaymentMethod card_payment) {
            this.card_payment = card_payment;
            return this;
        }

        public final Builder tip_selection(TipSelection tip_selection) {
            this.tip_selection = tip_selection;
            return this;
        }

        public final Builder non_card_payment(NonCardPaymentMethod non_card_payment) {
            this.non_card_payment = non_card_payment;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PaymentMethod build() {
            return new PaymentMethod(this.card_payment, this.tip_selection, this.non_card_payment, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PaymentMethod.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/sdk/PaymentMethod$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PaymentMethod build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PaymentMethod.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PaymentMethod>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.sdk.PaymentMethod$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PaymentMethod value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.card_payment != null) {
                    size += CardPaymentMethod.ADAPTER.encodedSizeWithTag(1, value.card_payment);
                }
                if (value.tip_selection != null) {
                    size += PaymentMethod.TipSelection.ADAPTER.encodedSizeWithTag(2, value.tip_selection);
                }
                return value.non_card_payment != null ? size + NonCardPaymentMethod.ADAPTER.encodedSizeWithTag(3, value.non_card_payment) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PaymentMethod value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.card_payment != null) {
                    CardPaymentMethod.ADAPTER.encodeWithTag(writer, 1, value.card_payment);
                }
                if (value.tip_selection != null) {
                    PaymentMethod.TipSelection.ADAPTER.encodeWithTag(writer, 2, value.tip_selection);
                }
                if (value.non_card_payment != null) {
                    NonCardPaymentMethod.ADAPTER.encodeWithTag(writer, 3, value.non_card_payment);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PaymentMethod value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.non_card_payment != null) {
                    NonCardPaymentMethod.ADAPTER.encodeWithTag(writer, 3, value.non_card_payment);
                }
                if (value.tip_selection != null) {
                    PaymentMethod.TipSelection.ADAPTER.encodeWithTag(writer, 2, value.tip_selection);
                }
                if (value.card_payment != null) {
                    CardPaymentMethod.ADAPTER.encodeWithTag(writer, 1, value.card_payment);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PaymentMethod redact(PaymentMethod value) {
                Intrinsics.checkNotNullParameter(value, "value");
                CardPaymentMethod cardPaymentMethod = value.card_payment;
                CardPaymentMethod cardPaymentMethodRedact = cardPaymentMethod != null ? CardPaymentMethod.ADAPTER.redact(cardPaymentMethod) : null;
                PaymentMethod.TipSelection tipSelection = value.tip_selection;
                PaymentMethod.TipSelection tipSelectionRedact = tipSelection != null ? PaymentMethod.TipSelection.ADAPTER.redact(tipSelection) : null;
                NonCardPaymentMethod nonCardPaymentMethod = value.non_card_payment;
                return value.copy(cardPaymentMethodRedact, tipSelectionRedact, nonCardPaymentMethod != null ? NonCardPaymentMethod.ADAPTER.redact(nonCardPaymentMethod) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PaymentMethod decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                CardPaymentMethod cardPaymentMethodDecode = null;
                PaymentMethod.TipSelection tipSelectionDecode = null;
                NonCardPaymentMethod nonCardPaymentMethodDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PaymentMethod(cardPaymentMethodDecode, tipSelectionDecode, nonCardPaymentMethodDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        cardPaymentMethodDecode = CardPaymentMethod.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        tipSelectionDecode = PaymentMethod.TipSelection.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        nonCardPaymentMethodDecode = NonCardPaymentMethod.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: PaymentMethod.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection$Builder;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "unknownFields", "Lokio/ByteString;", "(JLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TipSelection extends Message<TipSelection, Builder> {
        public static final ProtoAdapter<TipSelection> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final long amount;

        public TipSelection() {
            this(0L, null, 3, null);
        }

        public /* synthetic */ TipSelection(long j, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TipSelection(long j, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.amount = j;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.amount = this.amount;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof TipSelection)) {
                return false;
            }
            TipSelection tipSelection = (TipSelection) other;
            return Intrinsics.areEqual(unknownFields(), tipSelection.unknownFields()) && this.amount == tipSelection.amount;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + Long.hashCode(this.amount);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("amount=" + this.amount);
            return CollectionsKt.joinToString$default(arrayList, ", ", "TipSelection{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ TipSelection copy$default(TipSelection tipSelection, long j, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                j = tipSelection.amount;
            }
            if ((i & 2) != 0) {
                byteString = tipSelection.unknownFields();
            }
            return tipSelection.copy(j, byteString);
        }

        public final TipSelection copy(long amount, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new TipSelection(amount, unknownFields);
        }

        /* JADX INFO: compiled from: PaymentMethod.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u0006\u001a\u00020\u0002H\u0016R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;", "()V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<TipSelection, Builder> {
            public long amount;

            public final Builder amount(long amount) {
                this.amount = amount;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public TipSelection build() {
                return new TipSelection(this.amount, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: PaymentMethod.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ TipSelection build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TipSelection.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<TipSelection>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.sdk.PaymentMethod$TipSelection$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(PaymentMethod.TipSelection value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.amount != 0 ? size + ProtoAdapter.INT64.encodedSizeWithTag(1, Long.valueOf(value.amount)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, PaymentMethod.TipSelection value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.amount != 0) {
                        ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.amount));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, PaymentMethod.TipSelection value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.amount != 0) {
                        ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.amount));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public PaymentMethod.TipSelection redact(PaymentMethod.TipSelection value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return PaymentMethod.TipSelection.copy$default(value, 0L, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public PaymentMethod.TipSelection decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    long jLongValue = 0;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new PaymentMethod.TipSelection(jLongValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
