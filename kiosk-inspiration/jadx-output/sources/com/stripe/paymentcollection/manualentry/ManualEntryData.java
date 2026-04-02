package com.stripe.paymentcollection.manualentry;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.paymentcollection.manualentry.ManualEntryCollectionResult;
import com.stripe.restclient.IntegrationType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ManualEntryData.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b4\b\u0086\b\u0018\u00002\u00020\u0001Bµ\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0018\u0012\u0018\b\u0002\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aj\u0002`\u001d\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0018¢\u0006\u0002\u0010\u001fJ\t\u0010=\u001a\u00020\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\t\u0010A\u001a\u00020\u0018HÆ\u0003J\u0019\u0010B\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aj\u0002`\u001dHÆ\u0003J\t\u0010C\u001a\u00020\u0018HÆ\u0003J\t\u0010D\u001a\u00020\u0005HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010F\u001a\u00020\bHÆ\u0003J\t\u0010G\u001a\u00020\bHÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010I\u001a\u00020\fHÆ\u0003J\t\u0010J\u001a\u00020\u000eHÆ\u0003J\t\u0010K\u001a\u00020\u0010HÆ\u0003J¹\u0001\u0010L\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0018\b\u0002\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aj\u0002`\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u0018HÆ\u0001J\u0013\u0010M\u001a\u00020\u00182\b\u0010N\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010O\u001a\u00020\bHÖ\u0001J\t\u0010P\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0013\u0010\"\u001a\u0004\u0018\u00010\u001b8F¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b3\u0010&R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b4\u0010,R!\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aj\u0002`\u001d¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0011\u0010\u001e\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b;\u00108R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b<\u0010,¨\u0006Q"}, d2 = {"Lcom/stripe/paymentcollection/manualentry/ManualEntryData;", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "zipCode", "", "panUnmaskedDigits", "panAsteriskCount", "", "cvvAsteriskCount", "expiryDateUnmaskedDigits", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "emvTransactionType", "Lcom/stripe/hardware/emv/EmvTransactionType;", "integrationType", "Lcom/stripe/restclient/IntegrationType;", "encryptedData", "Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;", "failureState", "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;", "failureReason", "Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;", "userConfirmed", "", "resultListener", "Lkotlin/Function1;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;", "", "Lcom/stripe/paymentcollection/manualentry/ManualEntryResultListener;", "showError", "(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;ZLkotlin/jvm/functions/Function1;Z)V", "getAmount", "()Lcom/stripe/currency/Amount;", "collectionResult", "getCollectionResult", "()Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;", "getCvvAsteriskCount", "()I", "getEmvTransactionType", "()Lcom/stripe/hardware/emv/EmvTransactionType;", "getEncryptedData", "()Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;", "getExpiryDateUnmaskedDigits", "()Ljava/lang/String;", "getFailureReason", "()Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;", "getFailureState", "()Lcom/stripe/paymentcollection/manualentry/ManualEntryState;", "getIntegrationType", "()Lcom/stripe/restclient/IntegrationType;", "getPanAsteriskCount", "getPanUnmaskedDigits", "getResultListener", "()Lkotlin/jvm/functions/Function1;", "getShowError", "()Z", "getTransactionType", "()Lcom/stripe/hardware/paymentcollection/TransactionType;", "getUserConfirmed", "getZipCode", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ManualEntryData {
    private final Amount amount;
    private final int cvvAsteriskCount;
    private final EmvTransactionType emvTransactionType;
    private final ManualEntryEncryptedData encryptedData;
    private final String expiryDateUnmaskedDigits;
    private final ManualEntryFailureReason failureReason;
    private final ManualEntryState failureState;
    private final IntegrationType integrationType;
    private final int panAsteriskCount;
    private final String panUnmaskedDigits;
    private final Function1<ManualEntryCollectionResult, Unit> resultListener;
    private final boolean showError;
    private final TransactionType transactionType;
    private final boolean userConfirmed;
    private final String zipCode;

    public ManualEntryData() {
        this(null, null, null, 0, 0, null, null, null, null, null, null, null, false, null, false, 32767, null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final ManualEntryEncryptedData getEncryptedData() {
        return this.encryptedData;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final ManualEntryState getFailureState() {
        return this.failureState;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final ManualEntryFailureReason getFailureReason() {
        return this.failureReason;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final boolean getUserConfirmed() {
        return this.userConfirmed;
    }

    public final Function1<ManualEntryCollectionResult, Unit> component14() {
        return this.resultListener;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final boolean getShowError() {
        return this.showError;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getZipCode() {
        return this.zipCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPanUnmaskedDigits() {
        return this.panUnmaskedDigits;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getPanAsteriskCount() {
        return this.panAsteriskCount;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getCvvAsteriskCount() {
        return this.cvvAsteriskCount;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getExpiryDateUnmaskedDigits() {
        return this.expiryDateUnmaskedDigits;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final EmvTransactionType getEmvTransactionType() {
        return this.emvTransactionType;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final IntegrationType getIntegrationType() {
        return this.integrationType;
    }

    public final ManualEntryData copy(Amount amount, String zipCode, String panUnmaskedDigits, int panAsteriskCount, int cvvAsteriskCount, String expiryDateUnmaskedDigits, TransactionType transactionType, EmvTransactionType emvTransactionType, IntegrationType integrationType, ManualEntryEncryptedData encryptedData, ManualEntryState failureState, ManualEntryFailureReason failureReason, boolean userConfirmed, Function1<? super ManualEntryCollectionResult, Unit> resultListener, boolean showError) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(zipCode, "zipCode");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        Intrinsics.checkNotNullParameter(integrationType, "integrationType");
        Intrinsics.checkNotNullParameter(resultListener, "resultListener");
        return new ManualEntryData(amount, zipCode, panUnmaskedDigits, panAsteriskCount, cvvAsteriskCount, expiryDateUnmaskedDigits, transactionType, emvTransactionType, integrationType, encryptedData, failureState, failureReason, userConfirmed, resultListener, showError);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ManualEntryData)) {
            return false;
        }
        ManualEntryData manualEntryData = (ManualEntryData) other;
        return Intrinsics.areEqual(this.amount, manualEntryData.amount) && Intrinsics.areEqual(this.zipCode, manualEntryData.zipCode) && Intrinsics.areEqual(this.panUnmaskedDigits, manualEntryData.panUnmaskedDigits) && this.panAsteriskCount == manualEntryData.panAsteriskCount && this.cvvAsteriskCount == manualEntryData.cvvAsteriskCount && Intrinsics.areEqual(this.expiryDateUnmaskedDigits, manualEntryData.expiryDateUnmaskedDigits) && this.transactionType == manualEntryData.transactionType && this.emvTransactionType == manualEntryData.emvTransactionType && this.integrationType == manualEntryData.integrationType && Intrinsics.areEqual(this.encryptedData, manualEntryData.encryptedData) && this.failureState == manualEntryData.failureState && this.failureReason == manualEntryData.failureReason && this.userConfirmed == manualEntryData.userConfirmed && Intrinsics.areEqual(this.resultListener, manualEntryData.resultListener) && this.showError == manualEntryData.showError;
    }

    public int hashCode() {
        int iHashCode = ((this.amount.hashCode() * 31) + this.zipCode.hashCode()) * 31;
        String str = this.panUnmaskedDigits;
        int iHashCode2 = (((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.panAsteriskCount)) * 31) + Integer.hashCode(this.cvvAsteriskCount)) * 31;
        String str2 = this.expiryDateUnmaskedDigits;
        int iHashCode3 = (((((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.transactionType.hashCode()) * 31) + this.emvTransactionType.hashCode()) * 31) + this.integrationType.hashCode()) * 31;
        ManualEntryEncryptedData manualEntryEncryptedData = this.encryptedData;
        int iHashCode4 = (iHashCode3 + (manualEntryEncryptedData == null ? 0 : manualEntryEncryptedData.hashCode())) * 31;
        ManualEntryState manualEntryState = this.failureState;
        int iHashCode5 = (iHashCode4 + (manualEntryState == null ? 0 : manualEntryState.hashCode())) * 31;
        ManualEntryFailureReason manualEntryFailureReason = this.failureReason;
        return ((((((iHashCode5 + (manualEntryFailureReason != null ? manualEntryFailureReason.hashCode() : 0)) * 31) + Boolean.hashCode(this.userConfirmed)) * 31) + this.resultListener.hashCode()) * 31) + Boolean.hashCode(this.showError);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ManualEntryData(amount=");
        sb.append(this.amount).append(", zipCode=").append(this.zipCode).append(", panUnmaskedDigits=").append(this.panUnmaskedDigits).append(", panAsteriskCount=").append(this.panAsteriskCount).append(", cvvAsteriskCount=").append(this.cvvAsteriskCount).append(", expiryDateUnmaskedDigits=").append(this.expiryDateUnmaskedDigits).append(", transactionType=").append(this.transactionType).append(", emvTransactionType=").append(this.emvTransactionType).append(", integrationType=").append(this.integrationType).append(", encryptedData=").append(this.encryptedData).append(", failureState=").append(this.failureState).append(", failureReason=");
        sb.append(this.failureReason).append(", userConfirmed=").append(this.userConfirmed).append(", resultListener=").append(this.resultListener).append(", showError=").append(this.showError).append(')');
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ManualEntryData(Amount amount, String zipCode, String str, int i, int i2, String str2, TransactionType transactionType, EmvTransactionType emvTransactionType, IntegrationType integrationType, ManualEntryEncryptedData manualEntryEncryptedData, ManualEntryState manualEntryState, ManualEntryFailureReason manualEntryFailureReason, boolean z, Function1<? super ManualEntryCollectionResult, Unit> resultListener, boolean z2) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(zipCode, "zipCode");
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        Intrinsics.checkNotNullParameter(integrationType, "integrationType");
        Intrinsics.checkNotNullParameter(resultListener, "resultListener");
        this.amount = amount;
        this.zipCode = zipCode;
        this.panUnmaskedDigits = str;
        this.panAsteriskCount = i;
        this.cvvAsteriskCount = i2;
        this.expiryDateUnmaskedDigits = str2;
        this.transactionType = transactionType;
        this.emvTransactionType = emvTransactionType;
        this.integrationType = integrationType;
        this.encryptedData = manualEntryEncryptedData;
        this.failureState = manualEntryState;
        this.failureReason = manualEntryFailureReason;
        this.userConfirmed = z;
        this.resultListener = resultListener;
        this.showError = z2;
    }

    public /* synthetic */ ManualEntryData(Amount amount, String str, String str2, int i, int i2, String str3, TransactionType transactionType, EmvTransactionType emvTransactionType, IntegrationType integrationType, ManualEntryEncryptedData manualEntryEncryptedData, ManualEntryState manualEntryState, ManualEntryFailureReason manualEntryFailureReason, boolean z, Function1 function1, boolean z2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? ManualEntryDataKt.UNKNOWN_AMOUNT : amount, (i3 & 2) != 0 ? "" : str, (i3 & 4) != 0 ? null : str2, (i3 & 8) != 0 ? 0 : i, (i3 & 16) != 0 ? 0 : i2, (i3 & 32) != 0 ? null : str3, (i3 & 64) != 0 ? TransactionType.CHARGE : transactionType, (i3 & 128) != 0 ? EmvTransactionType.QUICK : emvTransactionType, (i3 & 256) != 0 ? IntegrationType.LOCAL_POS : integrationType, (i3 & 512) != 0 ? null : manualEntryEncryptedData, (i3 & 1024) != 0 ? null : manualEntryState, (i3 & 2048) == 0 ? manualEntryFailureReason : null, (i3 & 4096) != 0 ? false : z, (i3 & 8192) != 0 ? new Function1<ManualEntryCollectionResult, Unit>() { // from class: com.stripe.paymentcollection.manualentry.ManualEntryData.1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ManualEntryCollectionResult it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ManualEntryCollectionResult manualEntryCollectionResult) {
                invoke2(manualEntryCollectionResult);
                return Unit.INSTANCE;
            }
        } : function1, (i3 & 16384) != 0 ? false : z2);
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final String getZipCode() {
        return this.zipCode;
    }

    public final String getPanUnmaskedDigits() {
        return this.panUnmaskedDigits;
    }

    public final int getPanAsteriskCount() {
        return this.panAsteriskCount;
    }

    public final int getCvvAsteriskCount() {
        return this.cvvAsteriskCount;
    }

    public final String getExpiryDateUnmaskedDigits() {
        return this.expiryDateUnmaskedDigits;
    }

    public final TransactionType getTransactionType() {
        return this.transactionType;
    }

    public final EmvTransactionType getEmvTransactionType() {
        return this.emvTransactionType;
    }

    public final IntegrationType getIntegrationType() {
        return this.integrationType;
    }

    public final ManualEntryEncryptedData getEncryptedData() {
        return this.encryptedData;
    }

    public final ManualEntryState getFailureState() {
        return this.failureState;
    }

    public final ManualEntryFailureReason getFailureReason() {
        return this.failureReason;
    }

    public final boolean getUserConfirmed() {
        return this.userConfirmed;
    }

    public final Function1<ManualEntryCollectionResult, Unit> getResultListener() {
        return this.resultListener;
    }

    public final boolean getShowError() {
        return this.showError;
    }

    public final ManualEntryCollectionResult getCollectionResult() {
        if (this.failureReason != null) {
            return new ManualEntryCollectionResult.Failure(this.failureReason);
        }
        if (this.zipCode.length() <= 0 || this.encryptedData == null || !this.userConfirmed) {
            return null;
        }
        return new ManualEntryCollectionResult.Success(new ManualEntryResultModel(this.encryptedData.getEncPAN(), this.encryptedData.getExpiryDate(), this.encryptedData.getEncCVV(), this.encryptedData.getMaskedPan(), this.encryptedData.getKsn(), this.encryptedData.getPosEntryMode(), this.zipCode));
    }
}
