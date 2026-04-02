package com.stripe.paymentcollection;

import com.stripe.paymentcollection.metrics.PinEntryFailureReason;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MagStripePinStatus.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0005\b\t\n\u000b\f¨\u0006\r"}, d2 = {"Lcom/stripe/paymentcollection/MagStripePinStatus;", "", "()V", "Bypassed", "Collected", "Failed", "NotNeeded", "ToCollect", "Lcom/stripe/paymentcollection/MagStripePinStatus$Bypassed;", "Lcom/stripe/paymentcollection/MagStripePinStatus$Collected;", "Lcom/stripe/paymentcollection/MagStripePinStatus$Failed;", "Lcom/stripe/paymentcollection/MagStripePinStatus$NotNeeded;", "Lcom/stripe/paymentcollection/MagStripePinStatus$ToCollect;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class MagStripePinStatus {
    public /* synthetic */ MagStripePinStatus(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private MagStripePinStatus() {
    }

    /* JADX INFO: compiled from: MagStripePinStatus.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/MagStripePinStatus$NotNeeded;", "Lcom/stripe/paymentcollection/MagStripePinStatus;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class NotNeeded extends MagStripePinStatus {
        public static final NotNeeded INSTANCE = new NotNeeded();

        private NotNeeded() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: MagStripePinStatus.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/MagStripePinStatus$ToCollect;", "Lcom/stripe/paymentcollection/MagStripePinStatus;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ToCollect extends MagStripePinStatus {
        public static final ToCollect INSTANCE = new ToCollect();

        private ToCollect() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: MagStripePinStatus.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/MagStripePinStatus$Collected;", "Lcom/stripe/paymentcollection/MagStripePinStatus;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Collected extends MagStripePinStatus {
        public static final Collected INSTANCE = new Collected();

        private Collected() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: MagStripePinStatus.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/MagStripePinStatus$Bypassed;", "Lcom/stripe/paymentcollection/MagStripePinStatus;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Bypassed extends MagStripePinStatus {
        public static final Bypassed INSTANCE = new Bypassed();

        private Bypassed() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: MagStripePinStatus.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/MagStripePinStatus$Failed;", "Lcom/stripe/paymentcollection/MagStripePinStatus;", "reason", "Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;", "(Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;)V", "getReason", "()Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Failed extends MagStripePinStatus {
        private final PinEntryFailureReason reason;

        public static /* synthetic */ Failed copy$default(Failed failed, PinEntryFailureReason pinEntryFailureReason, int i, Object obj) {
            if ((i & 1) != 0) {
                pinEntryFailureReason = failed.reason;
            }
            return failed.copy(pinEntryFailureReason);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PinEntryFailureReason getReason() {
            return this.reason;
        }

        public final Failed copy(PinEntryFailureReason reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            return new Failed(reason);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Failed) && this.reason == ((Failed) other).reason;
        }

        public int hashCode() {
            return this.reason.hashCode();
        }

        public String toString() {
            return "Failed(reason=" + this.reason + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failed(PinEntryFailureReason reason) {
            super(null);
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.reason = reason;
        }

        public final PinEntryFailureReason getReason() {
            return this.reason;
        }
    }
}
