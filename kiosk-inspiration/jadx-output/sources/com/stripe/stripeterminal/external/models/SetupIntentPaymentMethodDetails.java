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

/* JADX INFO: compiled from: SetupIntentPaymentMethodDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 +2\u00060\u0001j\u0002`\u0002:\u0002*+B;\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fB+\b\u0000\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\rJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0006HÀ\u0003¢\u0006\u0002\b\u0017J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\bHÆ\u0003J-\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020\u0004HÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001J&\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00002\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(HÁ\u0001¢\u0006\u0002\b)R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006,"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "type", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "cardPresentDetails", "Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;", "interacPresentDetails", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;)V", "getCardPresentDetails$annotations", "()V", "getCardPresentDetails", "()Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;", "getInteracPresentDetails$annotations", "getInteracPresentDetails", "getType$public_release", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "component1", "component1$public_release", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class SetupIntentPaymentMethodDetails implements java.io.Serializable {
    private final SetupIntentCardPresentDetails cardPresentDetails;
    private final SetupIntentCardPresentDetails interacPresentDetails;
    private final PaymentMethodType type;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {PaymentMethodType.INSTANCE.serializer(), null, null};

    public SetupIntentPaymentMethodDetails() {
        this((PaymentMethodType) null, (SetupIntentCardPresentDetails) null, (SetupIntentCardPresentDetails) null, 7, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ SetupIntentPaymentMethodDetails copy$default(SetupIntentPaymentMethodDetails setupIntentPaymentMethodDetails, PaymentMethodType paymentMethodType, SetupIntentCardPresentDetails setupIntentCardPresentDetails, SetupIntentCardPresentDetails setupIntentCardPresentDetails2, int i, Object obj) {
        if ((i & 1) != 0) {
            paymentMethodType = setupIntentPaymentMethodDetails.type;
        }
        if ((i & 2) != 0) {
            setupIntentCardPresentDetails = setupIntentPaymentMethodDetails.cardPresentDetails;
        }
        if ((i & 4) != 0) {
            setupIntentCardPresentDetails2 = setupIntentPaymentMethodDetails.interacPresentDetails;
        }
        return setupIntentPaymentMethodDetails.copy(paymentMethodType, setupIntentCardPresentDetails, setupIntentCardPresentDetails2);
    }

    @SerialName("cardPresent")
    public static /* synthetic */ void getCardPresentDetails$annotations() {
    }

    @SerialName("interacPresent")
    public static /* synthetic */ void getInteracPresentDetails$annotations() {
    }

    /* JADX INFO: renamed from: component1$public_release, reason: from getter */
    public final PaymentMethodType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final SetupIntentCardPresentDetails getCardPresentDetails() {
        return this.cardPresentDetails;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final SetupIntentCardPresentDetails getInteracPresentDetails() {
        return this.interacPresentDetails;
    }

    public final SetupIntentPaymentMethodDetails copy(PaymentMethodType type, SetupIntentCardPresentDetails cardPresentDetails, SetupIntentCardPresentDetails interacPresentDetails) {
        return new SetupIntentPaymentMethodDetails(type, cardPresentDetails, interacPresentDetails);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SetupIntentPaymentMethodDetails)) {
            return false;
        }
        SetupIntentPaymentMethodDetails setupIntentPaymentMethodDetails = (SetupIntentPaymentMethodDetails) other;
        return this.type == setupIntentPaymentMethodDetails.type && Intrinsics.areEqual(this.cardPresentDetails, setupIntentPaymentMethodDetails.cardPresentDetails) && Intrinsics.areEqual(this.interacPresentDetails, setupIntentPaymentMethodDetails.interacPresentDetails);
    }

    public int hashCode() {
        PaymentMethodType paymentMethodType = this.type;
        int iHashCode = (paymentMethodType == null ? 0 : paymentMethodType.hashCode()) * 31;
        SetupIntentCardPresentDetails setupIntentCardPresentDetails = this.cardPresentDetails;
        int iHashCode2 = (iHashCode + (setupIntentCardPresentDetails == null ? 0 : setupIntentCardPresentDetails.hashCode())) * 31;
        SetupIntentCardPresentDetails setupIntentCardPresentDetails2 = this.interacPresentDetails;
        return iHashCode2 + (setupIntentCardPresentDetails2 != null ? setupIntentCardPresentDetails2.hashCode() : 0);
    }

    public String toString() {
        return "SetupIntentPaymentMethodDetails(type=" + this.type + ", cardPresentDetails=" + this.cardPresentDetails + ", interacPresentDetails=" + this.interacPresentDetails + ')';
    }

    /* JADX INFO: compiled from: SetupIntentPaymentMethodDetails.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<SetupIntentPaymentMethodDetails> serializer() {
            return SetupIntentPaymentMethodDetails$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ SetupIntentPaymentMethodDetails(int i, PaymentMethodType paymentMethodType, @SerialName("cardPresent") SetupIntentCardPresentDetails setupIntentCardPresentDetails, @SerialName("interacPresent") SetupIntentCardPresentDetails setupIntentCardPresentDetails2, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.type = null;
        } else {
            this.type = paymentMethodType;
        }
        if ((i & 2) == 0) {
            this.cardPresentDetails = null;
        } else {
            this.cardPresentDetails = setupIntentCardPresentDetails;
        }
        if ((i & 4) == 0) {
            this.interacPresentDetails = null;
        } else {
            this.interacPresentDetails = setupIntentCardPresentDetails2;
        }
    }

    public SetupIntentPaymentMethodDetails(PaymentMethodType paymentMethodType, SetupIntentCardPresentDetails setupIntentCardPresentDetails, SetupIntentCardPresentDetails setupIntentCardPresentDetails2) {
        this.type = paymentMethodType;
        this.cardPresentDetails = setupIntentCardPresentDetails;
        this.interacPresentDetails = setupIntentCardPresentDetails2;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(SetupIntentPaymentMethodDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.type != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, kSerializerArr[0], self.type);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.cardPresentDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, SetupIntentCardPresentDetails$$serializer.INSTANCE, self.cardPresentDetails);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 2) && self.interacPresentDetails == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 2, SetupIntentCardPresentDetails$$serializer.INSTANCE, self.interacPresentDetails);
    }

    public /* synthetic */ SetupIntentPaymentMethodDetails(PaymentMethodType paymentMethodType, SetupIntentCardPresentDetails setupIntentCardPresentDetails, SetupIntentCardPresentDetails setupIntentCardPresentDetails2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : paymentMethodType, (i & 2) != 0 ? null : setupIntentCardPresentDetails, (i & 4) != 0 ? null : setupIntentCardPresentDetails2);
    }

    public final PaymentMethodType getType$public_release() {
        return this.type;
    }

    public final SetupIntentCardPresentDetails getCardPresentDetails() {
        return this.cardPresentDetails;
    }

    public final SetupIntentCardPresentDetails getInteracPresentDetails() {
        return this.interacPresentDetails;
    }
}
