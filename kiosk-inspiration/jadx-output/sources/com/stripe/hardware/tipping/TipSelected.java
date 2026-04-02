package com.stripe.hardware.tipping;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TipSelectionResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/hardware/tipping/TipSelected;", "Lcom/stripe/hardware/tipping/TipSelectionResult;", "tipsAmount", "", "bbposSdkTipSelectionType", "Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;", "(JLcom/stripe/hardware/tipping/BbposSdkTipSelectionType;)V", "getBbposSdkTipSelectionType", "()Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;", "getTipsAmount", "()J", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class TipSelected implements TipSelectionResult {
    private final BbposSdkTipSelectionType bbposSdkTipSelectionType;
    private final long tipsAmount;

    public static /* synthetic */ TipSelected copy$default(TipSelected tipSelected, long j, BbposSdkTipSelectionType bbposSdkTipSelectionType, int i, Object obj) {
        if ((i & 1) != 0) {
            j = tipSelected.tipsAmount;
        }
        if ((i & 2) != 0) {
            bbposSdkTipSelectionType = tipSelected.bbposSdkTipSelectionType;
        }
        return tipSelected.copy(j, bbposSdkTipSelectionType);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getTipsAmount() {
        return this.tipsAmount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final BbposSdkTipSelectionType getBbposSdkTipSelectionType() {
        return this.bbposSdkTipSelectionType;
    }

    public final TipSelected copy(long tipsAmount, BbposSdkTipSelectionType bbposSdkTipSelectionType) {
        Intrinsics.checkNotNullParameter(bbposSdkTipSelectionType, "bbposSdkTipSelectionType");
        return new TipSelected(tipsAmount, bbposSdkTipSelectionType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TipSelected)) {
            return false;
        }
        TipSelected tipSelected = (TipSelected) other;
        return this.tipsAmount == tipSelected.tipsAmount && Intrinsics.areEqual(this.bbposSdkTipSelectionType, tipSelected.bbposSdkTipSelectionType);
    }

    public int hashCode() {
        return (Long.hashCode(this.tipsAmount) * 31) + this.bbposSdkTipSelectionType.hashCode();
    }

    public String toString() {
        return "TipSelected(tipsAmount=" + this.tipsAmount + ", bbposSdkTipSelectionType=" + this.bbposSdkTipSelectionType + ')';
    }

    public TipSelected(long j, BbposSdkTipSelectionType bbposSdkTipSelectionType) {
        Intrinsics.checkNotNullParameter(bbposSdkTipSelectionType, "bbposSdkTipSelectionType");
        this.tipsAmount = j;
        this.bbposSdkTipSelectionType = bbposSdkTipSelectionType;
    }

    public final long getTipsAmount() {
        return this.tipsAmount;
    }

    public final BbposSdkTipSelectionType getBbposSdkTipSelectionType() {
        return this.bbposSdkTipSelectionType;
    }
}
