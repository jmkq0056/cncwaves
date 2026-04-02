package com.stripe.currency;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Amount.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u000f\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0010\u001a\u00020\tHÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/stripe/currency/Amount;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "value", "", BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, "", "(JLjava/lang/String;)V", FirebaseAnalytics.Param.CURRENCY, "Lcom/stripe/currency/CurrencyCode;", "(JLcom/stripe/currency/CurrencyCode;)V", "getCurrency", "()Lcom/stripe/currency/CurrencyCode;", "getValue", "()J", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Amount implements Serializable {
    private final CurrencyCode currency;
    private final long value;

    public static /* synthetic */ Amount copy$default(Amount amount, long j, CurrencyCode currencyCode, int i, Object obj) {
        if ((i & 1) != 0) {
            j = amount.value;
        }
        if ((i & 2) != 0) {
            currencyCode = amount.currency;
        }
        return amount.copy(j, currencyCode);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getValue() {
        return this.value;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final CurrencyCode getCurrency() {
        return this.currency;
    }

    public final Amount copy(long value, CurrencyCode currency) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        return new Amount(value, currency);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Amount)) {
            return false;
        }
        Amount amount = (Amount) other;
        return this.value == amount.value && this.currency == amount.currency;
    }

    public int hashCode() {
        return (Long.hashCode(this.value) * 31) + this.currency.hashCode();
    }

    public String toString() {
        return "Amount(value=" + this.value + ", currency=" + this.currency + ')';
    }

    public Amount(long j, CurrencyCode currency) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        this.value = j;
        this.currency = currency;
    }

    public final long getValue() {
        return this.value;
    }

    public final CurrencyCode getCurrency() {
        return this.currency;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Amount(long r2, java.lang.String r4) throws java.lang.IllegalArgumentException {
        /*
            r1 = this;
            java.lang.String r0 = "currencyCode"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            r0 = r4
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            boolean r0 = kotlin.text.StringsKt.isBlank(r0)
            if (r0 != 0) goto L10
            r0 = r4
            goto L11
        L10:
            r0 = 0
        L11:
            if (r0 == 0) goto L33
            com.stripe.currency.CurrencyCode$Companion r0 = com.stripe.currency.CurrencyCode.INSTANCE
            com.stripe.currency.CurrencyCode r0 = r0.getByCodeIgnoreCase(r4)
            if (r0 == 0) goto L1e
            if (r0 == 0) goto L33
            goto L35
        L1e:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r0 = "Unsupported currency "
            r3.<init>(r0)
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            r2.<init>(r3)
            throw r2
        L33:
            com.stripe.currency.CurrencyCode r0 = com.stripe.currency.CurrencyCode.USD
        L35:
            r1.<init>(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.currency.Amount.<init>(long, java.lang.String):void");
    }
}
