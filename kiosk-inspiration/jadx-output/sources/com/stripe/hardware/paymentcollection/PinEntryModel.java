package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PinEntryModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0019\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010\u001f\u001a\u00020\u000bHÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\rHÆ\u0003JK\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0013\u0010\"\u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\u0005HÖ\u0001J\t\u0010%\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006&"}, d2 = {"Lcom/stripe/hardware/paymentcollection/PinEntryModel;", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "numberOfAsterisks", "", "language", "", "pinEntryRetryReason", "Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;", "enableCustomerCancellation", "", "pinEntryAccessibilityData", "Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;", "(Lcom/stripe/currency/Amount;ILjava/lang/String;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;ZLcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getEnableCustomerCancellation", "()Z", "getLanguage", "()Ljava/lang/String;", "getNumberOfAsterisks", "()I", "getPinEntryAccessibilityData", "()Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;", "getPinEntryRetryReason", "()Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PinEntryModel {
    private final Amount amount;
    private final boolean enableCustomerCancellation;
    private final String language;
    private final int numberOfAsterisks;
    private final PinEntryAccessibilityData pinEntryAccessibilityData;
    private final PinEntryRetryReason pinEntryRetryReason;

    public static /* synthetic */ PinEntryModel copy$default(PinEntryModel pinEntryModel, Amount amount, int i, String str, PinEntryRetryReason pinEntryRetryReason, boolean z, PinEntryAccessibilityData pinEntryAccessibilityData, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            amount = pinEntryModel.amount;
        }
        if ((i2 & 2) != 0) {
            i = pinEntryModel.numberOfAsterisks;
        }
        if ((i2 & 4) != 0) {
            str = pinEntryModel.language;
        }
        if ((i2 & 8) != 0) {
            pinEntryRetryReason = pinEntryModel.pinEntryRetryReason;
        }
        if ((i2 & 16) != 0) {
            z = pinEntryModel.enableCustomerCancellation;
        }
        if ((i2 & 32) != 0) {
            pinEntryAccessibilityData = pinEntryModel.pinEntryAccessibilityData;
        }
        boolean z2 = z;
        PinEntryAccessibilityData pinEntryAccessibilityData2 = pinEntryAccessibilityData;
        return pinEntryModel.copy(amount, i, str, pinEntryRetryReason, z2, pinEntryAccessibilityData2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getNumberOfAsterisks() {
        return this.numberOfAsterisks;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getLanguage() {
        return this.language;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final PinEntryRetryReason getPinEntryRetryReason() {
        return this.pinEntryRetryReason;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final PinEntryAccessibilityData getPinEntryAccessibilityData() {
        return this.pinEntryAccessibilityData;
    }

    public final PinEntryModel copy(Amount amount, int numberOfAsterisks, String language, PinEntryRetryReason pinEntryRetryReason, boolean enableCustomerCancellation, PinEntryAccessibilityData pinEntryAccessibilityData) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new PinEntryModel(amount, numberOfAsterisks, language, pinEntryRetryReason, enableCustomerCancellation, pinEntryAccessibilityData);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PinEntryModel)) {
            return false;
        }
        PinEntryModel pinEntryModel = (PinEntryModel) other;
        return Intrinsics.areEqual(this.amount, pinEntryModel.amount) && this.numberOfAsterisks == pinEntryModel.numberOfAsterisks && Intrinsics.areEqual(this.language, pinEntryModel.language) && this.pinEntryRetryReason == pinEntryModel.pinEntryRetryReason && this.enableCustomerCancellation == pinEntryModel.enableCustomerCancellation && Intrinsics.areEqual(this.pinEntryAccessibilityData, pinEntryModel.pinEntryAccessibilityData);
    }

    public int hashCode() {
        int iHashCode = ((this.amount.hashCode() * 31) + Integer.hashCode(this.numberOfAsterisks)) * 31;
        String str = this.language;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        PinEntryRetryReason pinEntryRetryReason = this.pinEntryRetryReason;
        int iHashCode3 = (((iHashCode2 + (pinEntryRetryReason == null ? 0 : pinEntryRetryReason.hashCode())) * 31) + Boolean.hashCode(this.enableCustomerCancellation)) * 31;
        PinEntryAccessibilityData pinEntryAccessibilityData = this.pinEntryAccessibilityData;
        return iHashCode3 + (pinEntryAccessibilityData != null ? pinEntryAccessibilityData.hashCode() : 0);
    }

    public String toString() {
        return "PinEntryModel(amount=" + this.amount + ", numberOfAsterisks=" + this.numberOfAsterisks + ", language=" + this.language + ", pinEntryRetryReason=" + this.pinEntryRetryReason + ", enableCustomerCancellation=" + this.enableCustomerCancellation + ", pinEntryAccessibilityData=" + this.pinEntryAccessibilityData + ')';
    }

    public PinEntryModel(Amount amount, int i, String str, PinEntryRetryReason pinEntryRetryReason, boolean z, PinEntryAccessibilityData pinEntryAccessibilityData) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.amount = amount;
        this.numberOfAsterisks = i;
        this.language = str;
        this.pinEntryRetryReason = pinEntryRetryReason;
        this.enableCustomerCancellation = z;
        this.pinEntryAccessibilityData = pinEntryAccessibilityData;
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final int getNumberOfAsterisks() {
        return this.numberOfAsterisks;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final PinEntryRetryReason getPinEntryRetryReason() {
        return this.pinEntryRetryReason;
    }

    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    public final PinEntryAccessibilityData getPinEntryAccessibilityData() {
        return this.pinEntryAccessibilityData;
    }
}
