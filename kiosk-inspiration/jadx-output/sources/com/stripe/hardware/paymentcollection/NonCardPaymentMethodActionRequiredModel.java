package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NonCardPaymentMethodActionRequiredModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;", "", "paymentMethodType", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "imageData", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;[BLcom/stripe/currency/Amount;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getImageData", "()[B", "getPaymentMethodType", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class NonCardPaymentMethodActionRequiredModel {
    private final Amount amount;
    private final byte[] imageData;
    private final PaymentMethodType paymentMethodType;

    public static /* synthetic */ NonCardPaymentMethodActionRequiredModel copy$default(NonCardPaymentMethodActionRequiredModel nonCardPaymentMethodActionRequiredModel, PaymentMethodType paymentMethodType, byte[] bArr, Amount amount, int i, Object obj) {
        if ((i & 1) != 0) {
            paymentMethodType = nonCardPaymentMethodActionRequiredModel.paymentMethodType;
        }
        if ((i & 2) != 0) {
            bArr = nonCardPaymentMethodActionRequiredModel.imageData;
        }
        if ((i & 4) != 0) {
            amount = nonCardPaymentMethodActionRequiredModel.amount;
        }
        return nonCardPaymentMethodActionRequiredModel.copy(paymentMethodType, bArr, amount);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PaymentMethodType getPaymentMethodType() {
        return this.paymentMethodType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final byte[] getImageData() {
        return this.imageData;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    public final NonCardPaymentMethodActionRequiredModel copy(PaymentMethodType paymentMethodType, byte[] imageData, Amount amount) {
        Intrinsics.checkNotNullParameter(paymentMethodType, "paymentMethodType");
        Intrinsics.checkNotNullParameter(imageData, "imageData");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new NonCardPaymentMethodActionRequiredModel(paymentMethodType, imageData, amount);
    }

    public String toString() {
        return "NonCardPaymentMethodActionRequiredModel(paymentMethodType=" + this.paymentMethodType + ", imageData=" + Arrays.toString(this.imageData) + ", amount=" + this.amount + ')';
    }

    public NonCardPaymentMethodActionRequiredModel(PaymentMethodType paymentMethodType, byte[] imageData, Amount amount) {
        Intrinsics.checkNotNullParameter(paymentMethodType, "paymentMethodType");
        Intrinsics.checkNotNullParameter(imageData, "imageData");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.paymentMethodType = paymentMethodType;
        this.imageData = imageData;
        this.amount = amount;
    }

    public final PaymentMethodType getPaymentMethodType() {
        return this.paymentMethodType;
    }

    public final byte[] getImageData() {
        return this.imageData;
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || getClass() != other.getClass()) {
            return false;
        }
        NonCardPaymentMethodActionRequiredModel nonCardPaymentMethodActionRequiredModel = (NonCardPaymentMethodActionRequiredModel) other;
        return this.paymentMethodType == nonCardPaymentMethodActionRequiredModel.paymentMethodType && Arrays.equals(this.imageData, nonCardPaymentMethodActionRequiredModel.imageData) && Intrinsics.areEqual(this.amount, nonCardPaymentMethodActionRequiredModel.amount);
    }

    public int hashCode() {
        return (((this.paymentMethodType.hashCode() * 31) + Arrays.hashCode(this.imageData)) * 31) + this.amount.hashCode();
    }
}
