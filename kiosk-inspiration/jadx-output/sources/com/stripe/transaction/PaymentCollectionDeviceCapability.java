package com.stripe.transaction;

import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.CheckForCardBehavior;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionDeviceCapability.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÆ\u0003J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003JU\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u0003HÆ\u0001J\u0013\u0010 \u001a\u00020\u00032\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020%HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006&"}, d2 = {"Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "", "directlyControlsScreenInput", "", "supportExtendedTransaction", "checkForCardBehavior", "Lcom/stripe/hardware/emv/CheckForCardBehavior;", "supportedInterface", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "retryUponPinCancel", "quickEmvAutoResponse", "retryUponTerminate", "(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZ)V", "getCheckForCardBehavior", "()Lcom/stripe/hardware/emv/CheckForCardBehavior;", "getDirectlyControlsScreenInput", "()Z", "getQuickEmvAutoResponse", "getRetryUponPinCancel", "getRetryUponTerminate", "getSupportExtendedTransaction", "getSupportedInterface", "()Ljava/util/Set;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PaymentCollectionDeviceCapability {
    private final CheckForCardBehavior checkForCardBehavior;
    private final boolean directlyControlsScreenInput;
    private final boolean quickEmvAutoResponse;
    private final boolean retryUponPinCancel;
    private final boolean retryUponTerminate;
    private final boolean supportExtendedTransaction;
    private final Set<ReaderConfiguration.ReaderType> supportedInterface;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PaymentCollectionDeviceCapability copy$default(PaymentCollectionDeviceCapability paymentCollectionDeviceCapability, boolean z, boolean z2, CheckForCardBehavior checkForCardBehavior, Set set, boolean z3, boolean z4, boolean z5, int i, Object obj) {
        if ((i & 1) != 0) {
            z = paymentCollectionDeviceCapability.directlyControlsScreenInput;
        }
        if ((i & 2) != 0) {
            z2 = paymentCollectionDeviceCapability.supportExtendedTransaction;
        }
        if ((i & 4) != 0) {
            checkForCardBehavior = paymentCollectionDeviceCapability.checkForCardBehavior;
        }
        if ((i & 8) != 0) {
            set = paymentCollectionDeviceCapability.supportedInterface;
        }
        if ((i & 16) != 0) {
            z3 = paymentCollectionDeviceCapability.retryUponPinCancel;
        }
        if ((i & 32) != 0) {
            z4 = paymentCollectionDeviceCapability.quickEmvAutoResponse;
        }
        if ((i & 64) != 0) {
            z5 = paymentCollectionDeviceCapability.retryUponTerminate;
        }
        boolean z6 = z4;
        boolean z7 = z5;
        boolean z8 = z3;
        CheckForCardBehavior checkForCardBehavior2 = checkForCardBehavior;
        return paymentCollectionDeviceCapability.copy(z, z2, checkForCardBehavior2, set, z8, z6, z7);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getDirectlyControlsScreenInput() {
        return this.directlyControlsScreenInput;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getSupportExtendedTransaction() {
        return this.supportExtendedTransaction;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final CheckForCardBehavior getCheckForCardBehavior() {
        return this.checkForCardBehavior;
    }

    public final Set<ReaderConfiguration.ReaderType> component4() {
        return this.supportedInterface;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getRetryUponPinCancel() {
        return this.retryUponPinCancel;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getQuickEmvAutoResponse() {
        return this.quickEmvAutoResponse;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getRetryUponTerminate() {
        return this.retryUponTerminate;
    }

    public final PaymentCollectionDeviceCapability copy(boolean directlyControlsScreenInput, boolean supportExtendedTransaction, CheckForCardBehavior checkForCardBehavior, Set<? extends ReaderConfiguration.ReaderType> supportedInterface, boolean retryUponPinCancel, boolean quickEmvAutoResponse, boolean retryUponTerminate) {
        Intrinsics.checkNotNullParameter(checkForCardBehavior, "checkForCardBehavior");
        Intrinsics.checkNotNullParameter(supportedInterface, "supportedInterface");
        return new PaymentCollectionDeviceCapability(directlyControlsScreenInput, supportExtendedTransaction, checkForCardBehavior, supportedInterface, retryUponPinCancel, quickEmvAutoResponse, retryUponTerminate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaymentCollectionDeviceCapability)) {
            return false;
        }
        PaymentCollectionDeviceCapability paymentCollectionDeviceCapability = (PaymentCollectionDeviceCapability) other;
        return this.directlyControlsScreenInput == paymentCollectionDeviceCapability.directlyControlsScreenInput && this.supportExtendedTransaction == paymentCollectionDeviceCapability.supportExtendedTransaction && this.checkForCardBehavior == paymentCollectionDeviceCapability.checkForCardBehavior && Intrinsics.areEqual(this.supportedInterface, paymentCollectionDeviceCapability.supportedInterface) && this.retryUponPinCancel == paymentCollectionDeviceCapability.retryUponPinCancel && this.quickEmvAutoResponse == paymentCollectionDeviceCapability.quickEmvAutoResponse && this.retryUponTerminate == paymentCollectionDeviceCapability.retryUponTerminate;
    }

    public int hashCode() {
        return (((((((((((Boolean.hashCode(this.directlyControlsScreenInput) * 31) + Boolean.hashCode(this.supportExtendedTransaction)) * 31) + this.checkForCardBehavior.hashCode()) * 31) + this.supportedInterface.hashCode()) * 31) + Boolean.hashCode(this.retryUponPinCancel)) * 31) + Boolean.hashCode(this.quickEmvAutoResponse)) * 31) + Boolean.hashCode(this.retryUponTerminate);
    }

    public String toString() {
        return "PaymentCollectionDeviceCapability(directlyControlsScreenInput=" + this.directlyControlsScreenInput + ", supportExtendedTransaction=" + this.supportExtendedTransaction + ", checkForCardBehavior=" + this.checkForCardBehavior + ", supportedInterface=" + this.supportedInterface + ", retryUponPinCancel=" + this.retryUponPinCancel + ", quickEmvAutoResponse=" + this.quickEmvAutoResponse + ", retryUponTerminate=" + this.retryUponTerminate + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PaymentCollectionDeviceCapability(boolean z, boolean z2, CheckForCardBehavior checkForCardBehavior, Set<? extends ReaderConfiguration.ReaderType> supportedInterface, boolean z3, boolean z4, boolean z5) {
        Intrinsics.checkNotNullParameter(checkForCardBehavior, "checkForCardBehavior");
        Intrinsics.checkNotNullParameter(supportedInterface, "supportedInterface");
        this.directlyControlsScreenInput = z;
        this.supportExtendedTransaction = z2;
        this.checkForCardBehavior = checkForCardBehavior;
        this.supportedInterface = supportedInterface;
        this.retryUponPinCancel = z3;
        this.quickEmvAutoResponse = z4;
        this.retryUponTerminate = z5;
    }

    public /* synthetic */ PaymentCollectionDeviceCapability(boolean z, boolean z2, CheckForCardBehavior checkForCardBehavior, Set set, boolean z3, boolean z4, boolean z5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, checkForCardBehavior, set, (i & 16) != 0 ? true : z3, (i & 32) != 0 ? true : z4, (i & 64) != 0 ? true : z5);
    }

    public final boolean getDirectlyControlsScreenInput() {
        return this.directlyControlsScreenInput;
    }

    public final boolean getSupportExtendedTransaction() {
        return this.supportExtendedTransaction;
    }

    public final CheckForCardBehavior getCheckForCardBehavior() {
        return this.checkForCardBehavior;
    }

    public final Set<ReaderConfiguration.ReaderType> getSupportedInterface() {
        return this.supportedInterface;
    }

    public final boolean getRetryUponPinCancel() {
        return this.retryUponPinCancel;
    }

    public final boolean getQuickEmvAutoResponse() {
        return this.quickEmvAutoResponse;
    }

    public final boolean getRetryUponTerminate() {
        return this.retryUponTerminate;
    }
}
