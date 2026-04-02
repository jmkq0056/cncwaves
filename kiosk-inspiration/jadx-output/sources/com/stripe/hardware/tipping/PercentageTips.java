package com.stripe.hardware.tipping;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.CurrencyCode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TipConfigValidationResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\nHÆ\u0003J7\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0010R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/stripe/hardware/tipping/PercentageTips;", "Lcom/stripe/hardware/tipping/TipConfigValidationResult;", FirebaseAnalytics.Param.CURRENCY, "Lcom/stripe/currency/CurrencyCode;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "percentageTips", "", "", "isSmartTip", "", "(Lcom/stripe/currency/CurrencyCode;JLjava/util/List;Z)V", "getAmount", "()J", "getCurrency", "()Lcom/stripe/currency/CurrencyCode;", "()Z", "getPercentageTips", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "", "hashCode", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PercentageTips extends TipConfigValidationResult {
    private final long amount;
    private final CurrencyCode currency;
    private final boolean isSmartTip;
    private final List<Integer> percentageTips;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PercentageTips copy$default(PercentageTips percentageTips, CurrencyCode currencyCode, long j, List list, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            currencyCode = percentageTips.currency;
        }
        if ((i & 2) != 0) {
            j = percentageTips.amount;
        }
        if ((i & 4) != 0) {
            list = percentageTips.percentageTips;
        }
        if ((i & 8) != 0) {
            z = percentageTips.isSmartTip;
        }
        return percentageTips.copy(currencyCode, j, list, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final CurrencyCode getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getAmount() {
        return this.amount;
    }

    public final List<Integer> component3() {
        return this.percentageTips;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsSmartTip() {
        return this.isSmartTip;
    }

    public final PercentageTips copy(CurrencyCode currency, long amount, List<Integer> percentageTips, boolean isSmartTip) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(percentageTips, "percentageTips");
        return new PercentageTips(currency, amount, percentageTips, isSmartTip);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PercentageTips)) {
            return false;
        }
        PercentageTips percentageTips = (PercentageTips) other;
        return this.currency == percentageTips.currency && this.amount == percentageTips.amount && Intrinsics.areEqual(this.percentageTips, percentageTips.percentageTips) && this.isSmartTip == percentageTips.isSmartTip;
    }

    public int hashCode() {
        return (((((this.currency.hashCode() * 31) + Long.hashCode(this.amount)) * 31) + this.percentageTips.hashCode()) * 31) + Boolean.hashCode(this.isSmartTip);
    }

    public String toString() {
        return "PercentageTips(currency=" + this.currency + ", amount=" + this.amount + ", percentageTips=" + this.percentageTips + ", isSmartTip=" + this.isSmartTip + ')';
    }

    public final CurrencyCode getCurrency() {
        return this.currency;
    }

    public final long getAmount() {
        return this.amount;
    }

    public final List<Integer> getPercentageTips() {
        return this.percentageTips;
    }

    public final boolean isSmartTip() {
        return this.isSmartTip;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PercentageTips(CurrencyCode currency, long j, List<Integer> percentageTips, boolean z) {
        super(null);
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(percentageTips, "percentageTips");
        this.currency = currency;
        this.amount = j;
        this.percentageTips = percentageTips;
        this.isSmartTip = z;
    }
}
