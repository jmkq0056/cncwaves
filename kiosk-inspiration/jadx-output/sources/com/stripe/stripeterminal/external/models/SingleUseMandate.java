package com.stripe.stripeterminal.external.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SingleUseMandate.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SingleUseMandate;", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", FirebaseAnalytics.Param.CURRENCY, "", "(JLjava/lang/String;)V", "getAmount", "()J", "getCurrency", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SingleUseMandate {
    private final long amount;
    private final String currency;

    public static /* synthetic */ SingleUseMandate copy$default(SingleUseMandate singleUseMandate, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = singleUseMandate.amount;
        }
        if ((i & 2) != 0) {
            str = singleUseMandate.currency;
        }
        return singleUseMandate.copy(j, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    public final SingleUseMandate copy(long amount, String currency) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        return new SingleUseMandate(amount, currency);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SingleUseMandate)) {
            return false;
        }
        SingleUseMandate singleUseMandate = (SingleUseMandate) other;
        return this.amount == singleUseMandate.amount && Intrinsics.areEqual(this.currency, singleUseMandate.currency);
    }

    public int hashCode() {
        return (Long.hashCode(this.amount) * 31) + this.currency.hashCode();
    }

    public String toString() {
        return "SingleUseMandate(amount=" + this.amount + ", currency=" + this.currency + ')';
    }

    public SingleUseMandate(long j, String currency) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        this.amount = j;
        this.currency = currency;
    }

    public final long getAmount() {
        return this.amount;
    }

    public final String getCurrency() {
        return this.currency;
    }
}
