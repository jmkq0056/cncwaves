package com.stripe.transaction;

import com.stripe.stripeterminal.external.models.PaymentMethodType;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NonCardPaymentMethodData.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/transaction/NonCardPaymentMethodData;", "", "type", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "data", "", "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;[B)V", "getData", "()[B", "getType", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class NonCardPaymentMethodData {
    private final byte[] data;
    private final PaymentMethodType type;

    public static /* synthetic */ NonCardPaymentMethodData copy$default(NonCardPaymentMethodData nonCardPaymentMethodData, PaymentMethodType paymentMethodType, byte[] bArr, int i, Object obj) {
        if ((i & 1) != 0) {
            paymentMethodType = nonCardPaymentMethodData.type;
        }
        if ((i & 2) != 0) {
            bArr = nonCardPaymentMethodData.data;
        }
        return nonCardPaymentMethodData.copy(paymentMethodType, bArr);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PaymentMethodType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final byte[] getData() {
        return this.data;
    }

    public final NonCardPaymentMethodData copy(PaymentMethodType type, byte[] data) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        return new NonCardPaymentMethodData(type, data);
    }

    public String toString() {
        return "NonCardPaymentMethodData(type=" + this.type + ", data=" + Arrays.toString(this.data) + ')';
    }

    public NonCardPaymentMethodData(PaymentMethodType type, byte[] data) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        this.type = type;
        this.data = data;
    }

    public final PaymentMethodType getType() {
        return this.type;
    }

    public final byte[] getData() {
        return this.data;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || getClass() != other.getClass()) {
            return false;
        }
        NonCardPaymentMethodData nonCardPaymentMethodData = (NonCardPaymentMethodData) other;
        return this.type == nonCardPaymentMethodData.type && Arrays.equals(this.data, nonCardPaymentMethodData.data);
    }

    public int hashCode() {
        return (this.type.hashCode() * 31) + Arrays.hashCode(this.data);
    }
}
