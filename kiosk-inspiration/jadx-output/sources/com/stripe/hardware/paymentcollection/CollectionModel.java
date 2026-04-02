package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CollectionModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Bm\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0006\u0010\u0016\u001a\u00020\u000f¢\u0006\u0002\u0010\u0017J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\u000f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014HÆ\u0003J\t\u0010-\u001a\u00020\u000fHÆ\u0003J\t\u0010.\u001a\u00020\u0005HÆ\u0003J\t\u0010/\u001a\u00020\u0005HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000f\u00101\u001a\b\u0012\u0004\u0012\u00020\u000b0\nHÆ\u0003J\t\u00102\u001a\u00020\rHÆ\u0003J\t\u00103\u001a\u00020\u000fHÆ\u0003J\t\u00104\u001a\u00020\u000fHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u0087\u0001\u00106\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\b\b\u0002\u0010\u0016\u001a\u00020\u000fHÆ\u0001J\u0013\u00107\u001a\u00020\u000f2\b\u00108\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00109\u001a\u00020:HÖ\u0001J\t\u0010;\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u0010\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001eR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u0011\u0010\u0016\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001e¨\u0006<"}, d2 = {"Lcom/stripe/hardware/paymentcollection/CollectionModel;", "", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "baseAmount", "callToAction", "Lcom/stripe/hardware/paymentcollection/RecoverableError;", "readerActiveInterfaces", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "readerContactCardSlotState", "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;", "readerEnableEditTip", "", "enableCustomerCancellation", "surchargeNotice", "", "nonCardPaymentMethodTypes", "", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "useIncrementalAuthUi", "(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/RecoverableError;Ljava/util/Set;Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;ZZLjava/lang/String;Ljava/util/List;Z)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getBaseAmount", "getCallToAction", "()Lcom/stripe/hardware/paymentcollection/RecoverableError;", "getEnableCustomerCancellation", "()Z", "getNonCardPaymentMethodTypes", "()Ljava/util/List;", "getReaderActiveInterfaces", "()Ljava/util/Set;", "getReaderContactCardSlotState", "()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;", "getReaderEnableEditTip", "getSurchargeNotice", "()Ljava/lang/String;", "getTransactionType", "()Lcom/stripe/hardware/paymentcollection/TransactionType;", "getUseIncrementalAuthUi", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CollectionModel {
    private final Amount amount;
    private final Amount baseAmount;
    private final RecoverableError callToAction;
    private final boolean enableCustomerCancellation;
    private final List<PaymentMethodType> nonCardPaymentMethodTypes;
    private final Set<ReaderConfiguration.ReaderType> readerActiveInterfaces;
    private final ContactCardSlotState readerContactCardSlotState;
    private final boolean readerEnableEditTip;
    private final String surchargeNotice;
    private final TransactionType transactionType;
    private final boolean useIncrementalAuthUi;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CollectionModel copy$default(CollectionModel collectionModel, TransactionType transactionType, Amount amount, Amount amount2, RecoverableError recoverableError, Set set, ContactCardSlotState contactCardSlotState, boolean z, boolean z2, String str, List list, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            transactionType = collectionModel.transactionType;
        }
        if ((i & 2) != 0) {
            amount = collectionModel.amount;
        }
        if ((i & 4) != 0) {
            amount2 = collectionModel.baseAmount;
        }
        if ((i & 8) != 0) {
            recoverableError = collectionModel.callToAction;
        }
        if ((i & 16) != 0) {
            set = collectionModel.readerActiveInterfaces;
        }
        if ((i & 32) != 0) {
            contactCardSlotState = collectionModel.readerContactCardSlotState;
        }
        if ((i & 64) != 0) {
            z = collectionModel.readerEnableEditTip;
        }
        if ((i & 128) != 0) {
            z2 = collectionModel.enableCustomerCancellation;
        }
        if ((i & 256) != 0) {
            str = collectionModel.surchargeNotice;
        }
        if ((i & 512) != 0) {
            list = collectionModel.nonCardPaymentMethodTypes;
        }
        if ((i & 1024) != 0) {
            z3 = collectionModel.useIncrementalAuthUi;
        }
        List list2 = list;
        boolean z4 = z3;
        boolean z5 = z2;
        String str2 = str;
        ContactCardSlotState contactCardSlotState2 = contactCardSlotState;
        boolean z6 = z;
        Set set2 = set;
        Amount amount3 = amount2;
        return collectionModel.copy(transactionType, amount, amount3, recoverableError, set2, contactCardSlotState2, z6, z5, str2, list2, z4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public final List<PaymentMethodType> component10() {
        return this.nonCardPaymentMethodTypes;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final boolean getUseIncrementalAuthUi() {
        return this.useIncrementalAuthUi;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Amount getBaseAmount() {
        return this.baseAmount;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final RecoverableError getCallToAction() {
        return this.callToAction;
    }

    public final Set<ReaderConfiguration.ReaderType> component5() {
        return this.readerActiveInterfaces;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final ContactCardSlotState getReaderContactCardSlotState() {
        return this.readerContactCardSlotState;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getReaderEnableEditTip() {
        return this.readerEnableEditTip;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getSurchargeNotice() {
        return this.surchargeNotice;
    }

    public final CollectionModel copy(TransactionType transactionType, Amount amount, Amount baseAmount, RecoverableError callToAction, Set<? extends ReaderConfiguration.ReaderType> readerActiveInterfaces, ContactCardSlotState readerContactCardSlotState, boolean readerEnableEditTip, boolean enableCustomerCancellation, String surchargeNotice, List<? extends PaymentMethodType> nonCardPaymentMethodTypes, boolean useIncrementalAuthUi) {
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(baseAmount, "baseAmount");
        Intrinsics.checkNotNullParameter(readerActiveInterfaces, "readerActiveInterfaces");
        Intrinsics.checkNotNullParameter(readerContactCardSlotState, "readerContactCardSlotState");
        Intrinsics.checkNotNullParameter(nonCardPaymentMethodTypes, "nonCardPaymentMethodTypes");
        return new CollectionModel(transactionType, amount, baseAmount, callToAction, readerActiveInterfaces, readerContactCardSlotState, readerEnableEditTip, enableCustomerCancellation, surchargeNotice, nonCardPaymentMethodTypes, useIncrementalAuthUi);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CollectionModel)) {
            return false;
        }
        CollectionModel collectionModel = (CollectionModel) other;
        return this.transactionType == collectionModel.transactionType && Intrinsics.areEqual(this.amount, collectionModel.amount) && Intrinsics.areEqual(this.baseAmount, collectionModel.baseAmount) && this.callToAction == collectionModel.callToAction && Intrinsics.areEqual(this.readerActiveInterfaces, collectionModel.readerActiveInterfaces) && this.readerContactCardSlotState == collectionModel.readerContactCardSlotState && this.readerEnableEditTip == collectionModel.readerEnableEditTip && this.enableCustomerCancellation == collectionModel.enableCustomerCancellation && Intrinsics.areEqual(this.surchargeNotice, collectionModel.surchargeNotice) && Intrinsics.areEqual(this.nonCardPaymentMethodTypes, collectionModel.nonCardPaymentMethodTypes) && this.useIncrementalAuthUi == collectionModel.useIncrementalAuthUi;
    }

    public int hashCode() {
        int iHashCode = ((((this.transactionType.hashCode() * 31) + this.amount.hashCode()) * 31) + this.baseAmount.hashCode()) * 31;
        RecoverableError recoverableError = this.callToAction;
        int iHashCode2 = (((((((((iHashCode + (recoverableError == null ? 0 : recoverableError.hashCode())) * 31) + this.readerActiveInterfaces.hashCode()) * 31) + this.readerContactCardSlotState.hashCode()) * 31) + Boolean.hashCode(this.readerEnableEditTip)) * 31) + Boolean.hashCode(this.enableCustomerCancellation)) * 31;
        String str = this.surchargeNotice;
        return ((((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31) + this.nonCardPaymentMethodTypes.hashCode()) * 31) + Boolean.hashCode(this.useIncrementalAuthUi);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CollectionModel(transactionType=");
        sb.append(this.transactionType).append(", amount=").append(this.amount).append(", baseAmount=").append(this.baseAmount).append(", callToAction=").append(this.callToAction).append(", readerActiveInterfaces=").append(this.readerActiveInterfaces).append(", readerContactCardSlotState=").append(this.readerContactCardSlotState).append(", readerEnableEditTip=").append(this.readerEnableEditTip).append(", enableCustomerCancellation=").append(this.enableCustomerCancellation).append(", surchargeNotice=").append(this.surchargeNotice).append(", nonCardPaymentMethodTypes=").append(this.nonCardPaymentMethodTypes).append(", useIncrementalAuthUi=").append(this.useIncrementalAuthUi).append(')');
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CollectionModel(TransactionType transactionType, Amount amount, Amount baseAmount, RecoverableError recoverableError, Set<? extends ReaderConfiguration.ReaderType> readerActiveInterfaces, ContactCardSlotState readerContactCardSlotState, boolean z, boolean z2, String str, List<? extends PaymentMethodType> nonCardPaymentMethodTypes, boolean z3) {
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(baseAmount, "baseAmount");
        Intrinsics.checkNotNullParameter(readerActiveInterfaces, "readerActiveInterfaces");
        Intrinsics.checkNotNullParameter(readerContactCardSlotState, "readerContactCardSlotState");
        Intrinsics.checkNotNullParameter(nonCardPaymentMethodTypes, "nonCardPaymentMethodTypes");
        this.transactionType = transactionType;
        this.amount = amount;
        this.baseAmount = baseAmount;
        this.callToAction = recoverableError;
        this.readerActiveInterfaces = readerActiveInterfaces;
        this.readerContactCardSlotState = readerContactCardSlotState;
        this.readerEnableEditTip = z;
        this.enableCustomerCancellation = z2;
        this.surchargeNotice = str;
        this.nonCardPaymentMethodTypes = nonCardPaymentMethodTypes;
        this.useIncrementalAuthUi = z3;
    }

    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final Amount getBaseAmount() {
        return this.baseAmount;
    }

    public final RecoverableError getCallToAction() {
        return this.callToAction;
    }

    public final Set<ReaderConfiguration.ReaderType> getReaderActiveInterfaces() {
        return this.readerActiveInterfaces;
    }

    public final ContactCardSlotState getReaderContactCardSlotState() {
        return this.readerContactCardSlotState;
    }

    public final boolean getReaderEnableEditTip() {
        return this.readerEnableEditTip;
    }

    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    public final String getSurchargeNotice() {
        return this.surchargeNotice;
    }

    public final List<PaymentMethodType> getNonCardPaymentMethodTypes() {
        return this.nonCardPaymentMethodTypes;
    }

    public final boolean getUseIncrementalAuthUi() {
        return this.useIncrementalAuthUi;
    }
}
