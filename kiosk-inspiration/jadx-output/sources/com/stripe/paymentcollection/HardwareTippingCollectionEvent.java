package com.stripe.paymentcollection;

import com.stripe.hardware.tipping.TipConfigValidationResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/HardwareTippingCollectionEvent;", "Lcom/stripe/paymentcollection/HardwareEvent;", "config", "Lcom/stripe/hardware/tipping/TipConfigValidationResult;", "(Lcom/stripe/hardware/tipping/TipConfigValidationResult;)V", "getConfig", "()Lcom/stripe/hardware/tipping/TipConfigValidationResult;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class HardwareTippingCollectionEvent extends HardwareEvent {
    private final TipConfigValidationResult config;

    public static /* synthetic */ HardwareTippingCollectionEvent copy$default(HardwareTippingCollectionEvent hardwareTippingCollectionEvent, TipConfigValidationResult tipConfigValidationResult, int i, Object obj) {
        if ((i & 1) != 0) {
            tipConfigValidationResult = hardwareTippingCollectionEvent.config;
        }
        return hardwareTippingCollectionEvent.copy(tipConfigValidationResult);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TipConfigValidationResult getConfig() {
        return this.config;
    }

    public final HardwareTippingCollectionEvent copy(TipConfigValidationResult config) {
        Intrinsics.checkNotNullParameter(config, "config");
        return new HardwareTippingCollectionEvent(config);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof HardwareTippingCollectionEvent) && Intrinsics.areEqual(this.config, ((HardwareTippingCollectionEvent) other).config);
    }

    public int hashCode() {
        return this.config.hashCode();
    }

    public String toString() {
        return "HardwareTippingCollectionEvent(config=" + this.config + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HardwareTippingCollectionEvent(TipConfigValidationResult config) {
        super(null);
        Intrinsics.checkNotNullParameter(config, "config");
        this.config = config;
    }

    public final TipConfigValidationResult getConfig() {
        return this.config;
    }
}
