package com.stripe.hardware.tipping;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.CurrencyCode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TipConfigValidationResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007HÆ\u0003J\t\u0010\u0015\u001a\u00020\tHÆ\u0003J7\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0011¨\u0006\u001e"}, d2 = {"Lcom/stripe/hardware/tipping/FixedAmountTips;", "Lcom/stripe/hardware/tipping/TipConfigValidationResult;", FirebaseAnalytics.Param.CURRENCY, "Lcom/stripe/currency/CurrencyCode;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "amountTips", "", "isSmartTip", "", "(Lcom/stripe/currency/CurrencyCode;JLjava/util/List;Z)V", "getAmount", "()J", "getAmountTips", "()Ljava/util/List;", "getCurrency", "()Lcom/stripe/currency/CurrencyCode;", "()Z", "component1", "component2", "component3", "component4", "copy", "equals", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class FixedAmountTips extends TipConfigValidationResult {
    private final long amount;
    private final List<Long> amountTips;
    private final CurrencyCode currency;
    private final boolean isSmartTip;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FixedAmountTips copy$default(FixedAmountTips fixedAmountTips, CurrencyCode currencyCode, long j, List list, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            currencyCode = fixedAmountTips.currency;
        }
        if ((i & 2) != 0) {
            j = fixedAmountTips.amount;
        }
        if ((i & 4) != 0) {
            list = fixedAmountTips.amountTips;
        }
        if ((i & 8) != 0) {
            z = fixedAmountTips.isSmartTip;
        }
        return fixedAmountTips.copy(currencyCode, j, list, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final CurrencyCode getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getAmount() {
        return this.amount;
    }

    public final List<Long> component3() {
        return this.amountTips;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsSmartTip() {
        return this.isSmartTip;
    }

    public final FixedAmountTips copy(CurrencyCode currency, long amount, List<Long> amountTips, boolean isSmartTip) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(amountTips, "amountTips");
        return new FixedAmountTips(currency, amount, amountTips, isSmartTip);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FixedAmountTips)) {
            return false;
        }
        FixedAmountTips fixedAmountTips = (FixedAmountTips) other;
        return this.currency == fixedAmountTips.currency && this.amount == fixedAmountTips.amount && Intrinsics.areEqual(this.amountTips, fixedAmountTips.amountTips) && this.isSmartTip == fixedAmountTips.isSmartTip;
    }

    public int hashCode() {
        return (((((this.currency.hashCode() * 31) + Long.hashCode(this.amount)) * 31) + this.amountTips.hashCode()) * 31) + Boolean.hashCode(this.isSmartTip);
    }

    public String toString() {
        return "FixedAmountTips(currency=" + this.currency + ", amount=" + this.amount + ", amountTips=" + this.amountTips + ", isSmartTip=" + this.isSmartTip + ')';
    }

    public final CurrencyCode getCurrency() {
        return this.currency;
    }

    public final long getAmount() {
        return this.amount;
    }

    public final List<Long> getAmountTips() {
        return this.amountTips;
    }

    public final boolean isSmartTip() {
        return this.isSmartTip;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FixedAmountTips(CurrencyCode currency, long j, List<Long> amountTips, boolean z) {
        super(null);
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(amountTips, "amountTips");
        this.currency = currency;
        this.amount = j;
        this.amountTips = amountTips;
        this.isSmartTip = z;
    }
}
