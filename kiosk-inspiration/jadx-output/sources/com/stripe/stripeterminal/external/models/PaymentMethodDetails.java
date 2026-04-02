package com.stripe.stripeterminal.external.models;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: PaymentMethodDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 62\u00060\u0001j\u0002`\u0002:\u000256BS\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010BC\b\u0000\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u0011J\u000b\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\rHÆ\u0003JE\u0010%\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\u0004HÖ\u0001J\t\u0010+\u001a\u00020,HÖ\u0001J&\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203HÁ\u0001¢\u0006\u0002\b4R\u001e\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u0018R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001d\u0010\u0013\u001a\u0004\b\u001e\u0010\u001f¨\u00067"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "type", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "cardPresentDetails", "Lcom/stripe/stripeterminal/external/models/CardPresentDetails;", "interacPresentDetails", "wechatPayDetails", "Lcom/stripe/stripeterminal/external/models/WechatPayDetails;", "affirmDetails", "Lcom/stripe/stripeterminal/external/models/AffirmDetails;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)V", "getAffirmDetails$annotations", "()V", "getAffirmDetails", "()Lcom/stripe/stripeterminal/external/models/AffirmDetails;", "getCardPresentDetails$annotations", "getCardPresentDetails", "()Lcom/stripe/stripeterminal/external/models/CardPresentDetails;", "getInteracPresentDetails$annotations", "getInteracPresentDetails", "getType", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "getWechatPayDetails$annotations", "getWechatPayDetails", "()Lcom/stripe/stripeterminal/external/models/WechatPayDetails;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class PaymentMethodDetails implements java.io.Serializable {
    private final AffirmDetails affirmDetails;
    private final CardPresentDetails cardPresentDetails;
    private final CardPresentDetails interacPresentDetails;
    private final PaymentMethodType type;
    private final WechatPayDetails wechatPayDetails;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {PaymentMethodType.INSTANCE.serializer(), null, null, null, null};

    public PaymentMethodDetails() {
        this((PaymentMethodType) null, (CardPresentDetails) null, (CardPresentDetails) null, (WechatPayDetails) null, (AffirmDetails) null, 31, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ PaymentMethodDetails copy$default(PaymentMethodDetails paymentMethodDetails, PaymentMethodType paymentMethodType, CardPresentDetails cardPresentDetails, CardPresentDetails cardPresentDetails2, WechatPayDetails wechatPayDetails, AffirmDetails affirmDetails, int i, Object obj) {
        if ((i & 1) != 0) {
            paymentMethodType = paymentMethodDetails.type;
        }
        if ((i & 2) != 0) {
            cardPresentDetails = paymentMethodDetails.cardPresentDetails;
        }
        if ((i & 4) != 0) {
            cardPresentDetails2 = paymentMethodDetails.interacPresentDetails;
        }
        if ((i & 8) != 0) {
            wechatPayDetails = paymentMethodDetails.wechatPayDetails;
        }
        if ((i & 16) != 0) {
            affirmDetails = paymentMethodDetails.affirmDetails;
        }
        AffirmDetails affirmDetails2 = affirmDetails;
        CardPresentDetails cardPresentDetails3 = cardPresentDetails2;
        return paymentMethodDetails.copy(paymentMethodType, cardPresentDetails, cardPresentDetails3, wechatPayDetails, affirmDetails2);
    }

    @SerialName("affirm")
    public static /* synthetic */ void getAffirmDetails$annotations() {
    }

    @SerialName("cardPresent")
    public static /* synthetic */ void getCardPresentDetails$annotations() {
    }

    @SerialName("interacPresent")
    public static /* synthetic */ void getInteracPresentDetails$annotations() {
    }

    @SerialName("wechatPay")
    public static /* synthetic */ void getWechatPayDetails$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PaymentMethodType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final CardPresentDetails getCardPresentDetails() {
        return this.cardPresentDetails;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final CardPresentDetails getInteracPresentDetails() {
        return this.interacPresentDetails;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final WechatPayDetails getWechatPayDetails() {
        return this.wechatPayDetails;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final AffirmDetails getAffirmDetails() {
        return this.affirmDetails;
    }

    public final PaymentMethodDetails copy(PaymentMethodType type, CardPresentDetails cardPresentDetails, CardPresentDetails interacPresentDetails, WechatPayDetails wechatPayDetails, AffirmDetails affirmDetails) {
        return new PaymentMethodDetails(type, cardPresentDetails, interacPresentDetails, wechatPayDetails, affirmDetails);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaymentMethodDetails)) {
            return false;
        }
        PaymentMethodDetails paymentMethodDetails = (PaymentMethodDetails) other;
        return this.type == paymentMethodDetails.type && Intrinsics.areEqual(this.cardPresentDetails, paymentMethodDetails.cardPresentDetails) && Intrinsics.areEqual(this.interacPresentDetails, paymentMethodDetails.interacPresentDetails) && Intrinsics.areEqual(this.wechatPayDetails, paymentMethodDetails.wechatPayDetails) && Intrinsics.areEqual(this.affirmDetails, paymentMethodDetails.affirmDetails);
    }

    public int hashCode() {
        PaymentMethodType paymentMethodType = this.type;
        int iHashCode = (paymentMethodType == null ? 0 : paymentMethodType.hashCode()) * 31;
        CardPresentDetails cardPresentDetails = this.cardPresentDetails;
        int iHashCode2 = (iHashCode + (cardPresentDetails == null ? 0 : cardPresentDetails.hashCode())) * 31;
        CardPresentDetails cardPresentDetails2 = this.interacPresentDetails;
        int iHashCode3 = (iHashCode2 + (cardPresentDetails2 == null ? 0 : cardPresentDetails2.hashCode())) * 31;
        WechatPayDetails wechatPayDetails = this.wechatPayDetails;
        int iHashCode4 = (iHashCode3 + (wechatPayDetails == null ? 0 : wechatPayDetails.hashCode())) * 31;
        AffirmDetails affirmDetails = this.affirmDetails;
        return iHashCode4 + (affirmDetails != null ? affirmDetails.hashCode() : 0);
    }

    public String toString() {
        return "PaymentMethodDetails(type=" + this.type + ", cardPresentDetails=" + this.cardPresentDetails + ", interacPresentDetails=" + this.interacPresentDetails + ", wechatPayDetails=" + this.wechatPayDetails + ", affirmDetails=" + this.affirmDetails + ')';
    }

    /* JADX INFO: compiled from: PaymentMethodDetails.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<PaymentMethodDetails> serializer() {
            return PaymentMethodDetails$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ PaymentMethodDetails(int i, PaymentMethodType paymentMethodType, @SerialName("cardPresent") CardPresentDetails cardPresentDetails, @SerialName("interacPresent") CardPresentDetails cardPresentDetails2, @SerialName("wechatPay") WechatPayDetails wechatPayDetails, @SerialName("affirm") AffirmDetails affirmDetails, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.type = null;
        } else {
            this.type = paymentMethodType;
        }
        if ((i & 2) == 0) {
            this.cardPresentDetails = null;
        } else {
            this.cardPresentDetails = cardPresentDetails;
        }
        if ((i & 4) == 0) {
            this.interacPresentDetails = null;
        } else {
            this.interacPresentDetails = cardPresentDetails2;
        }
        if ((i & 8) == 0) {
            this.wechatPayDetails = null;
        } else {
            this.wechatPayDetails = wechatPayDetails;
        }
        if ((i & 16) == 0) {
            this.affirmDetails = null;
        } else {
            this.affirmDetails = affirmDetails;
        }
    }

    public PaymentMethodDetails(PaymentMethodType paymentMethodType, CardPresentDetails cardPresentDetails, CardPresentDetails cardPresentDetails2, WechatPayDetails wechatPayDetails, AffirmDetails affirmDetails) {
        this.type = paymentMethodType;
        this.cardPresentDetails = cardPresentDetails;
        this.interacPresentDetails = cardPresentDetails2;
        this.wechatPayDetails = wechatPayDetails;
        this.affirmDetails = affirmDetails;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(PaymentMethodDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.type != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, kSerializerArr[0], self.type);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.cardPresentDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, CardPresentDetails$$serializer.INSTANCE, self.cardPresentDetails);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.interacPresentDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, CardPresentDetails$$serializer.INSTANCE, self.interacPresentDetails);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.wechatPayDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, WechatPayDetails$$serializer.INSTANCE, self.wechatPayDetails);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 4) && self.affirmDetails == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 4, AffirmDetails$$serializer.INSTANCE, self.affirmDetails);
    }

    public /* synthetic */ PaymentMethodDetails(PaymentMethodType paymentMethodType, CardPresentDetails cardPresentDetails, CardPresentDetails cardPresentDetails2, WechatPayDetails wechatPayDetails, AffirmDetails affirmDetails, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : paymentMethodType, (i & 2) != 0 ? null : cardPresentDetails, (i & 4) != 0 ? null : cardPresentDetails2, (i & 8) != 0 ? null : wechatPayDetails, (i & 16) != 0 ? null : affirmDetails);
    }

    public final PaymentMethodType getType() {
        return this.type;
    }

    public final CardPresentDetails getCardPresentDetails() {
        return this.cardPresentDetails;
    }

    public final CardPresentDetails getInteracPresentDetails() {
        return this.interacPresentDetails;
    }

    public final WechatPayDetails getWechatPayDetails() {
        return this.wechatPayDetails;
    }

    public final AffirmDetails getAffirmDetails() {
        return this.affirmDetails;
    }
}
