package com.stripe.hardware.tipping;

import kotlin.Metadata;

/* JADX INFO: compiled from: TipSelectionResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/hardware/tipping/Percentage;", "Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Percentage implements BbposSdkTipSelectionType {
    public static final Percentage INSTANCE = new Percentage();

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Percentage)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return -919535123;
    }

    public String toString() {
        return "Percentage";
    }

    private Percentage() {
    }
}
