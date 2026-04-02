package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RemoveCardModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J+\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/stripe/hardware/paymentcollection/RemoveCardModel;", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "language", "", "callToAction", "Lcom/stripe/hardware/paymentcollection/RecoverableError;", "(Lcom/stripe/currency/Amount;Ljava/lang/String;Lcom/stripe/hardware/paymentcollection/RecoverableError;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getCallToAction", "()Lcom/stripe/hardware/paymentcollection/RecoverableError;", "getLanguage", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class RemoveCardModel {
    private final Amount amount;
    private final RecoverableError callToAction;
    private final String language;

    public static /* synthetic */ RemoveCardModel copy$default(RemoveCardModel removeCardModel, Amount amount, String str, RecoverableError recoverableError, int i, Object obj) {
        if ((i & 1) != 0) {
            amount = removeCardModel.amount;
        }
        if ((i & 2) != 0) {
            str = removeCardModel.language;
        }
        if ((i & 4) != 0) {
            recoverableError = removeCardModel.callToAction;
        }
        return removeCardModel.copy(amount, str, recoverableError);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLanguage() {
        return this.language;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final RecoverableError getCallToAction() {
        return this.callToAction;
    }

    public final RemoveCardModel copy(Amount amount, String language, RecoverableError callToAction) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new RemoveCardModel(amount, language, callToAction);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RemoveCardModel)) {
            return false;
        }
        RemoveCardModel removeCardModel = (RemoveCardModel) other;
        return Intrinsics.areEqual(this.amount, removeCardModel.amount) && Intrinsics.areEqual(this.language, removeCardModel.language) && this.callToAction == removeCardModel.callToAction;
    }

    public int hashCode() {
        int iHashCode = this.amount.hashCode() * 31;
        String str = this.language;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        RecoverableError recoverableError = this.callToAction;
        return iHashCode2 + (recoverableError != null ? recoverableError.hashCode() : 0);
    }

    public String toString() {
        return "RemoveCardModel(amount=" + this.amount + ", language=" + this.language + ", callToAction=" + this.callToAction + ')';
    }

    public RemoveCardModel(Amount amount, String str, RecoverableError recoverableError) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.amount = amount;
        this.language = str;
        this.callToAction = recoverableError;
    }

    public /* synthetic */ RemoveCardModel(Amount amount, String str, RecoverableError recoverableError, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(amount, str, (i & 4) != 0 ? null : recoverableError);
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final RecoverableError getCallToAction() {
        return this.callToAction;
    }
}
