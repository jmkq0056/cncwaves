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
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: AmountDetails.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 $2\u00060\u0001j\u0002`\u0002:\u0002#$B-\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB\u001d\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\fJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\bHÆ\u0003J!\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J&\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!HÁ\u0001¢\u0006\u0002\b\"R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006%"}, d2 = {"Lcom/stripe/stripeterminal/external/models/AmountDetails;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "tip", "Lcom/stripe/stripeterminal/external/models/Tip;", "surcharge", "Lcom/stripe/stripeterminal/external/models/SurchargeDetails;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;)V", "getSurcharge", "()Lcom/stripe/stripeterminal/external/models/SurchargeDetails;", "getTip", "()Lcom/stripe/stripeterminal/external/models/Tip;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class AmountDetails implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final SurchargeDetails surcharge;
    private final Tip tip;

    /* JADX WARN: Multi-variable type inference failed */
    public AmountDetails() {
        this((Tip) null, (SurchargeDetails) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public static /* synthetic */ AmountDetails copy$default(AmountDetails amountDetails, Tip tip, SurchargeDetails surchargeDetails, int i, Object obj) {
        if ((i & 1) != 0) {
            tip = amountDetails.tip;
        }
        if ((i & 2) != 0) {
            surchargeDetails = amountDetails.surcharge;
        }
        return amountDetails.copy(tip, surchargeDetails);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Tip getTip() {
        return this.tip;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final SurchargeDetails getSurcharge() {
        return this.surcharge;
    }

    public final AmountDetails copy(Tip tip, SurchargeDetails surcharge) {
        return new AmountDetails(tip, surcharge);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AmountDetails)) {
            return false;
        }
        AmountDetails amountDetails = (AmountDetails) other;
        return Intrinsics.areEqual(this.tip, amountDetails.tip) && Intrinsics.areEqual(this.surcharge, amountDetails.surcharge);
    }

    public int hashCode() {
        Tip tip = this.tip;
        int iHashCode = (tip == null ? 0 : tip.hashCode()) * 31;
        SurchargeDetails surchargeDetails = this.surcharge;
        return iHashCode + (surchargeDetails != null ? surchargeDetails.hashCode() : 0);
    }

    public String toString() {
        return "AmountDetails(tip=" + this.tip + ", surcharge=" + this.surcharge + ')';
    }

    /* JADX INFO: compiled from: AmountDetails.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/AmountDetails$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/AmountDetails;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<AmountDetails> serializer() {
            return AmountDetails$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ AmountDetails(int i, Tip tip, SurchargeDetails surchargeDetails, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.tip = null;
        } else {
            this.tip = tip;
        }
        if ((i & 2) == 0) {
            this.surcharge = null;
        } else {
            this.surcharge = surchargeDetails;
        }
    }

    public AmountDetails(Tip tip, SurchargeDetails surchargeDetails) {
        this.tip = tip;
        this.surcharge = surchargeDetails;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(AmountDetails self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.tip != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, Tip$$serializer.INSTANCE, self.tip);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 1) && self.surcharge == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 1, SurchargeDetails$$serializer.INSTANCE, self.surcharge);
    }

    public /* synthetic */ AmountDetails(Tip tip, SurchargeDetails surchargeDetails, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : tip, (i & 2) != 0 ? null : surchargeDetails);
    }

    public final Tip getTip() {
        return this.tip;
    }

    public final SurchargeDetails getSurcharge() {
        return this.surcharge;
    }
}
