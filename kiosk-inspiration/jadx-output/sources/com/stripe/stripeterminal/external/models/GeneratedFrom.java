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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: GeneratedFrom.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 &2\u00060\u0001j\u0002`\u0002:\u0002%&B7\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fB+\b\u0000\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\rJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0003J-\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0004HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0006HÖ\u0001J&\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#HÁ\u0001¢\u0006\u0002\b$R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000f¨\u0006'"}, d2 = {"Lcom/stripe/stripeterminal/external/models/GeneratedFrom;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "charge", "", "paymentMethodDetails", "Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;", "setupAttempt", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;)V", "getCharge", "()Ljava/lang/String;", "getPaymentMethodDetails", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;", "getSetupAttempt", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class GeneratedFrom implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String charge;
    private final PaymentMethodDetails paymentMethodDetails;
    private final String setupAttempt;

    public GeneratedFrom() {
        this((String) null, (PaymentMethodDetails) null, (String) null, 7, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ GeneratedFrom copy$default(GeneratedFrom generatedFrom, String str, PaymentMethodDetails paymentMethodDetails, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = generatedFrom.charge;
        }
        if ((i & 2) != 0) {
            paymentMethodDetails = generatedFrom.paymentMethodDetails;
        }
        if ((i & 4) != 0) {
            str2 = generatedFrom.setupAttempt;
        }
        return generatedFrom.copy(str, paymentMethodDetails, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCharge() {
        return this.charge;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final PaymentMethodDetails getPaymentMethodDetails() {
        return this.paymentMethodDetails;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSetupAttempt() {
        return this.setupAttempt;
    }

    public final GeneratedFrom copy(String charge, PaymentMethodDetails paymentMethodDetails, String setupAttempt) {
        return new GeneratedFrom(charge, paymentMethodDetails, setupAttempt);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GeneratedFrom)) {
            return false;
        }
        GeneratedFrom generatedFrom = (GeneratedFrom) other;
        return Intrinsics.areEqual(this.charge, generatedFrom.charge) && Intrinsics.areEqual(this.paymentMethodDetails, generatedFrom.paymentMethodDetails) && Intrinsics.areEqual(this.setupAttempt, generatedFrom.setupAttempt);
    }

    public int hashCode() {
        String str = this.charge;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        PaymentMethodDetails paymentMethodDetails = this.paymentMethodDetails;
        int iHashCode2 = (iHashCode + (paymentMethodDetails == null ? 0 : paymentMethodDetails.hashCode())) * 31;
        String str2 = this.setupAttempt;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "GeneratedFrom(charge=" + this.charge + ", paymentMethodDetails=" + this.paymentMethodDetails + ", setupAttempt=" + this.setupAttempt + ')';
    }

    /* JADX INFO: compiled from: GeneratedFrom.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/GeneratedFrom$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/GeneratedFrom;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<GeneratedFrom> serializer() {
            return GeneratedFrom$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ GeneratedFrom(int i, String str, PaymentMethodDetails paymentMethodDetails, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.charge = null;
        } else {
            this.charge = str;
        }
        if ((i & 2) == 0) {
            this.paymentMethodDetails = null;
        } else {
            this.paymentMethodDetails = paymentMethodDetails;
        }
        if ((i & 4) == 0) {
            this.setupAttempt = null;
        } else {
            this.setupAttempt = str2;
        }
    }

    public GeneratedFrom(String str, PaymentMethodDetails paymentMethodDetails, String str2) {
        this.charge = str;
        this.paymentMethodDetails = paymentMethodDetails;
        this.setupAttempt = str2;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(GeneratedFrom self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.charge != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.charge);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.paymentMethodDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, PaymentMethodDetails$$serializer.INSTANCE, self.paymentMethodDetails);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 2) && self.setupAttempt == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.setupAttempt);
    }

    public /* synthetic */ GeneratedFrom(String str, PaymentMethodDetails paymentMethodDetails, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : paymentMethodDetails, (i & 4) != 0 ? null : str2);
    }

    public final String getCharge() {
        return this.charge;
    }

    public final PaymentMethodDetails getPaymentMethodDetails() {
        return this.paymentMethodDetails;
    }

    public final String getSetupAttempt() {
        return this.setupAttempt;
    }
}
