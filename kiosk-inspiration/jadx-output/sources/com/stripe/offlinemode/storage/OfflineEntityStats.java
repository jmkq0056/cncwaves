package com.stripe.offlinemode.storage;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineEntityStats.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u0015\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006HÆ\u0003J3\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0007HÖ\u0001R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineEntityStats;", "", "setupIntentCount", "", "paymentIntentCount", "paymentIntentAmountsByCurrency", "", "", "", "(IILjava/util/Map;)V", "getPaymentIntentAmountsByCurrency", "()Ljava/util/Map;", "getPaymentIntentCount", "()I", "getSetupIntentCount", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class OfflineEntityStats {
    private final Map<String, Long> paymentIntentAmountsByCurrency;
    private final int paymentIntentCount;
    private final int setupIntentCount;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OfflineEntityStats copy$default(OfflineEntityStats offlineEntityStats, int i, int i2, Map map, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = offlineEntityStats.setupIntentCount;
        }
        if ((i3 & 2) != 0) {
            i2 = offlineEntityStats.paymentIntentCount;
        }
        if ((i3 & 4) != 0) {
            map = offlineEntityStats.paymentIntentAmountsByCurrency;
        }
        return offlineEntityStats.copy(i, i2, map);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getSetupIntentCount() {
        return this.setupIntentCount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getPaymentIntentCount() {
        return this.paymentIntentCount;
    }

    public final Map<String, Long> component3() {
        return this.paymentIntentAmountsByCurrency;
    }

    public final OfflineEntityStats copy(int setupIntentCount, int paymentIntentCount, Map<String, Long> paymentIntentAmountsByCurrency) {
        Intrinsics.checkNotNullParameter(paymentIntentAmountsByCurrency, "paymentIntentAmountsByCurrency");
        return new OfflineEntityStats(setupIntentCount, paymentIntentCount, paymentIntentAmountsByCurrency);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineEntityStats)) {
            return false;
        }
        OfflineEntityStats offlineEntityStats = (OfflineEntityStats) other;
        return this.setupIntentCount == offlineEntityStats.setupIntentCount && this.paymentIntentCount == offlineEntityStats.paymentIntentCount && Intrinsics.areEqual(this.paymentIntentAmountsByCurrency, offlineEntityStats.paymentIntentAmountsByCurrency);
    }

    public int hashCode() {
        return (((Integer.hashCode(this.setupIntentCount) * 31) + Integer.hashCode(this.paymentIntentCount)) * 31) + this.paymentIntentAmountsByCurrency.hashCode();
    }

    public String toString() {
        return "OfflineEntityStats(setupIntentCount=" + this.setupIntentCount + ", paymentIntentCount=" + this.paymentIntentCount + ", paymentIntentAmountsByCurrency=" + this.paymentIntentAmountsByCurrency + ')';
    }

    public OfflineEntityStats(int i, int i2, Map<String, Long> paymentIntentAmountsByCurrency) {
        Intrinsics.checkNotNullParameter(paymentIntentAmountsByCurrency, "paymentIntentAmountsByCurrency");
        this.setupIntentCount = i;
        this.paymentIntentCount = i2;
        this.paymentIntentAmountsByCurrency = paymentIntentAmountsByCurrency;
    }

    public final int getSetupIntentCount() {
        return this.setupIntentCount;
    }

    public final int getPaymentIntentCount() {
        return this.paymentIntentCount;
    }

    public final Map<String, Long> getPaymentIntentAmountsByCurrency() {
        return this.paymentIntentAmountsByCurrency;
    }
}
