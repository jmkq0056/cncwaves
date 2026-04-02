package com.stripe.stripeterminal.external.models;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: PaymentMethodOptions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 $2\u00060\u0001j\u0002`\u0002:\u0002#$B-\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB\u001b\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\fJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\bHÆ\u0003J!\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J&\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!HÁ\u0001¢\u0006\u0002\b\"R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006%"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "card", "Lcom/stripe/stripeterminal/external/models/CardOptions;", "cardPresent", "Lcom/stripe/stripeterminal/external/models/CardPresentOptions;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/stripe/stripeterminal/external/models/CardOptions;Lcom/stripe/stripeterminal/external/models/CardPresentOptions;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/stripe/stripeterminal/external/models/CardOptions;Lcom/stripe/stripeterminal/external/models/CardPresentOptions;)V", "getCard", "()Lcom/stripe/stripeterminal/external/models/CardOptions;", "getCardPresent", "()Lcom/stripe/stripeterminal/external/models/CardPresentOptions;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class PaymentMethodOptions implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final CardOptions card;
    private final CardPresentOptions cardPresent;

    public static /* synthetic */ PaymentMethodOptions copy$default(PaymentMethodOptions paymentMethodOptions, CardOptions cardOptions, CardPresentOptions cardPresentOptions, int i, Object obj) {
        if ((i & 1) != 0) {
            cardOptions = paymentMethodOptions.card;
        }
        if ((i & 2) != 0) {
            cardPresentOptions = paymentMethodOptions.cardPresent;
        }
        return paymentMethodOptions.copy(cardOptions, cardPresentOptions);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final CardOptions getCard() {
        return this.card;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final CardPresentOptions getCardPresent() {
        return this.cardPresent;
    }

    public final PaymentMethodOptions copy(CardOptions card, CardPresentOptions cardPresent) {
        return new PaymentMethodOptions(card, cardPresent);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaymentMethodOptions)) {
            return false;
        }
        PaymentMethodOptions paymentMethodOptions = (PaymentMethodOptions) other;
        return Intrinsics.areEqual(this.card, paymentMethodOptions.card) && Intrinsics.areEqual(this.cardPresent, paymentMethodOptions.cardPresent);
    }

    public int hashCode() {
        CardOptions cardOptions = this.card;
        int iHashCode = (cardOptions == null ? 0 : cardOptions.hashCode()) * 31;
        CardPresentOptions cardPresentOptions = this.cardPresent;
        return iHashCode + (cardPresentOptions != null ? cardPresentOptions.hashCode() : 0);
    }

    public String toString() {
        return "PaymentMethodOptions(card=" + this.card + ", cardPresent=" + this.cardPresent + ')';
    }

    /* JADX INFO: compiled from: PaymentMethodOptions.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<PaymentMethodOptions> serializer() {
            return PaymentMethodOptions$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ PaymentMethodOptions(int i, CardOptions cardOptions, CardPresentOptions cardPresentOptions, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, PaymentMethodOptions$$serializer.INSTANCE.getDescriptor());
        }
        this.card = cardOptions;
        if ((i & 2) == 0) {
            this.cardPresent = null;
        } else {
            this.cardPresent = cardPresentOptions;
        }
    }

    public PaymentMethodOptions(CardOptions cardOptions, CardPresentOptions cardPresentOptions) {
        this.card = cardOptions;
        this.cardPresent = cardPresentOptions;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(PaymentMethodOptions self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeNullableSerializableElement(serialDesc, 0, CardOptions$$serializer.INSTANCE, self.card);
        if (!output.shouldEncodeElementDefault(serialDesc, 1) && self.cardPresent == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 1, CardPresentOptions$$serializer.INSTANCE, self.cardPresent);
    }

    public /* synthetic */ PaymentMethodOptions(CardOptions cardOptions, CardPresentOptions cardPresentOptions, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cardOptions, (i & 2) != 0 ? null : cardPresentOptions);
    }

    public final CardOptions getCard() {
        return this.card;
    }

    public final CardPresentOptions getCardPresent() {
        return this.cardPresent;
    }
}
