package com.stripe.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RecoverableErrorModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;", "", "callToAction", "Lcom/stripe/hardware/paymentcollection/RecoverableError;", "enableCustomerCancellation", "", "(Lcom/stripe/hardware/paymentcollection/RecoverableError;Z)V", "getCallToAction", "()Lcom/stripe/hardware/paymentcollection/RecoverableError;", "getEnableCustomerCancellation", "()Z", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class RecoverableErrorModel {
    private final RecoverableError callToAction;
    private final boolean enableCustomerCancellation;

    public static /* synthetic */ RecoverableErrorModel copy$default(RecoverableErrorModel recoverableErrorModel, RecoverableError recoverableError, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            recoverableError = recoverableErrorModel.callToAction;
        }
        if ((i & 2) != 0) {
            z = recoverableErrorModel.enableCustomerCancellation;
        }
        return recoverableErrorModel.copy(recoverableError, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final RecoverableError getCallToAction() {
        return this.callToAction;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    public final RecoverableErrorModel copy(RecoverableError callToAction, boolean enableCustomerCancellation) {
        Intrinsics.checkNotNullParameter(callToAction, "callToAction");
        return new RecoverableErrorModel(callToAction, enableCustomerCancellation);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RecoverableErrorModel)) {
            return false;
        }
        RecoverableErrorModel recoverableErrorModel = (RecoverableErrorModel) other;
        return this.callToAction == recoverableErrorModel.callToAction && this.enableCustomerCancellation == recoverableErrorModel.enableCustomerCancellation;
    }

    public int hashCode() {
        return (this.callToAction.hashCode() * 31) + Boolean.hashCode(this.enableCustomerCancellation);
    }

    public String toString() {
        return "RecoverableErrorModel(callToAction=" + this.callToAction + ", enableCustomerCancellation=" + this.enableCustomerCancellation + ')';
    }

    public RecoverableErrorModel(RecoverableError callToAction, boolean z) {
        Intrinsics.checkNotNullParameter(callToAction, "callToAction");
        this.callToAction = callToAction;
        this.enableCustomerCancellation = z;
    }

    public final RecoverableError getCallToAction() {
        return this.callToAction;
    }

    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }
}
