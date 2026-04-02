package com.stripe.paymentcollection;

import com.stripe.hardware.paymentcollection.TippingSelectionResult;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TippingState.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/paymentcollection/TippingState;", "", "()V", "Completed", "EndState", "Ineligible", "IntermediateState", "SelectionNeeded", "Lcom/stripe/paymentcollection/TippingState$EndState;", "Lcom/stripe/paymentcollection/TippingState$IntermediateState;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class TippingState {
    public /* synthetic */ TippingState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: TippingState.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/stripe/paymentcollection/TippingState$IntermediateState;", "Lcom/stripe/paymentcollection/TippingState;", "()V", "Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class IntermediateState extends TippingState {
        public /* synthetic */ IntermediateState(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private IntermediateState() {
            super(null);
        }
    }

    private TippingState() {
    }

    /* JADX INFO: compiled from: TippingState.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/paymentcollection/TippingState$EndState;", "Lcom/stripe/paymentcollection/TippingState;", "()V", "Lcom/stripe/paymentcollection/TippingState$Completed;", "Lcom/stripe/paymentcollection/TippingState$Ineligible;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class EndState extends TippingState {
        public /* synthetic */ EndState(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private EndState() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: TippingState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;", "Lcom/stripe/paymentcollection/TippingState$IntermediateState;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SelectionNeeded extends IntermediateState {
        public static final SelectionNeeded INSTANCE = new SelectionNeeded();

        private SelectionNeeded() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: TippingState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/paymentcollection/TippingState$Ineligible;", "Lcom/stripe/paymentcollection/TippingState$EndState;", "()V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Ineligible extends EndState {
        public static final Ineligible INSTANCE = new Ineligible();

        private Ineligible() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: TippingState.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/TippingState$Completed;", "Lcom/stripe/paymentcollection/TippingState$EndState;", "result", "Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;", "(Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;)V", "getResult", "()Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Completed extends EndState {
        private final TippingSelectionResult result;

        public static /* synthetic */ Completed copy$default(Completed completed, TippingSelectionResult tippingSelectionResult, int i, Object obj) {
            if ((i & 1) != 0) {
                tippingSelectionResult = completed.result;
            }
            return completed.copy(tippingSelectionResult);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final TippingSelectionResult getResult() {
            return this.result;
        }

        public final Completed copy(TippingSelectionResult result) {
            Intrinsics.checkNotNullParameter(result, "result");
            return new Completed(result);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Completed) && Intrinsics.areEqual(this.result, ((Completed) other).result);
        }

        public int hashCode() {
            return this.result.hashCode();
        }

        public String toString() {
            return "Completed(result=" + this.result + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Completed(TippingSelectionResult result) {
            super(null);
            Intrinsics.checkNotNullParameter(result, "result");
            this.result = result;
        }

        public final TippingSelectionResult getResult() {
            return this.result;
        }
    }
}
