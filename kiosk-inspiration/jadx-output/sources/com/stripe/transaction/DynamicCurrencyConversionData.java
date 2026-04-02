package com.stripe.transaction;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.currency.CountryCode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DynamicCurrencyConversionData.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001Bm\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0012J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\fHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\t\u0010)\u001a\u00020\u0005HÆ\u0003J\t\u0010*\u001a\u00020\u0005HÆ\u0003J\t\u0010+\u001a\u00020\u0005HÆ\u0003J\u0010\u0010,\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u001cJ\t\u0010.\u001a\u00020\u0005HÆ\u0003J\t\u0010/\u001a\u00020\fHÆ\u0003J\t\u00100\u001a\u00020\fHÆ\u0003J\u008e\u0001\u00101\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\f2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÆ\u0001¢\u0006\u0002\u00102J\u0013\u00103\u001a\u00020\f2\b\u00104\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00105\u001a\u000206HÖ\u0001J\t\u00107\u001a\u000208HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0016R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001cR\u0015\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001e\u0010\u001cR\u0011\u0010\u000e\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\r\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b!\u0010 R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010 R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0018¨\u00069"}, d2 = {"Lcom/stripe/transaction/DynamicCurrencyConversionData;", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "transactionFxRate", "", "transactionMarkupPercent", "cardholderRate", "referenceFxRate", "referenceMarkupPercent", "fxAsOf", "setupFutureUsage", "", "requestIncrementalAuth", "requestExtendedAuth", "readerCountry", "Lcom/stripe/currency/CountryCode;", "cardCountry", "(Lcom/stripe/currency/Amount;FFFLjava/lang/Float;Ljava/lang/Float;FZZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getCardCountry", "()Lcom/stripe/currency/CountryCode;", "getCardholderRate", "()F", "getFxAsOf", "getReaderCountry", "getReferenceFxRate", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getReferenceMarkupPercent", "getRequestExtendedAuth", "()Z", "getRequestIncrementalAuth", "getSetupFutureUsage", "getTransactionFxRate", "getTransactionMarkupPercent", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/stripe/currency/Amount;FFFLjava/lang/Float;Ljava/lang/Float;FZZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)Lcom/stripe/transaction/DynamicCurrencyConversionData;", "equals", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class DynamicCurrencyConversionData {
    private final Amount amount;
    private final CountryCode cardCountry;
    private final float cardholderRate;
    private final float fxAsOf;
    private final CountryCode readerCountry;
    private final Float referenceFxRate;
    private final Float referenceMarkupPercent;
    private final boolean requestExtendedAuth;
    private final boolean requestIncrementalAuth;
    private final boolean setupFutureUsage;
    private final float transactionFxRate;
    private final float transactionMarkupPercent;

    public static /* synthetic */ DynamicCurrencyConversionData copy$default(DynamicCurrencyConversionData dynamicCurrencyConversionData, Amount amount, float f, float f2, float f3, Float f4, Float f5, float f6, boolean z, boolean z2, boolean z3, CountryCode countryCode, CountryCode countryCode2, int i, Object obj) {
        if ((i & 1) != 0) {
            amount = dynamicCurrencyConversionData.amount;
        }
        if ((i & 2) != 0) {
            f = dynamicCurrencyConversionData.transactionFxRate;
        }
        if ((i & 4) != 0) {
            f2 = dynamicCurrencyConversionData.transactionMarkupPercent;
        }
        if ((i & 8) != 0) {
            f3 = dynamicCurrencyConversionData.cardholderRate;
        }
        if ((i & 16) != 0) {
            f4 = dynamicCurrencyConversionData.referenceFxRate;
        }
        if ((i & 32) != 0) {
            f5 = dynamicCurrencyConversionData.referenceMarkupPercent;
        }
        if ((i & 64) != 0) {
            f6 = dynamicCurrencyConversionData.fxAsOf;
        }
        if ((i & 128) != 0) {
            z = dynamicCurrencyConversionData.setupFutureUsage;
        }
        if ((i & 256) != 0) {
            z2 = dynamicCurrencyConversionData.requestIncrementalAuth;
        }
        if ((i & 512) != 0) {
            z3 = dynamicCurrencyConversionData.requestExtendedAuth;
        }
        if ((i & 1024) != 0) {
            countryCode = dynamicCurrencyConversionData.readerCountry;
        }
        if ((i & 2048) != 0) {
            countryCode2 = dynamicCurrencyConversionData.cardCountry;
        }
        CountryCode countryCode3 = countryCode;
        CountryCode countryCode4 = countryCode2;
        boolean z4 = z2;
        boolean z5 = z3;
        float f7 = f6;
        boolean z6 = z;
        Float f8 = f4;
        Float f9 = f5;
        return dynamicCurrencyConversionData.copy(amount, f, f2, f3, f8, f9, f7, z6, z4, z5, countryCode3, countryCode4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final boolean getRequestExtendedAuth() {
        return this.requestExtendedAuth;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final CountryCode getReaderCountry() {
        return this.readerCountry;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final CountryCode getCardCountry() {
        return this.cardCountry;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final float getTransactionFxRate() {
        return this.transactionFxRate;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final float getTransactionMarkupPercent() {
        return this.transactionMarkupPercent;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final float getCardholderRate() {
        return this.cardholderRate;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Float getReferenceFxRate() {
        return this.referenceFxRate;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Float getReferenceMarkupPercent() {
        return this.referenceMarkupPercent;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final float getFxAsOf() {
        return this.fxAsOf;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getSetupFutureUsage() {
        return this.setupFutureUsage;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getRequestIncrementalAuth() {
        return this.requestIncrementalAuth;
    }

    public final DynamicCurrencyConversionData copy(Amount amount, float transactionFxRate, float transactionMarkupPercent, float cardholderRate, Float referenceFxRate, Float referenceMarkupPercent, float fxAsOf, boolean setupFutureUsage, boolean requestIncrementalAuth, boolean requestExtendedAuth, CountryCode readerCountry, CountryCode cardCountry) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new DynamicCurrencyConversionData(amount, transactionFxRate, transactionMarkupPercent, cardholderRate, referenceFxRate, referenceMarkupPercent, fxAsOf, setupFutureUsage, requestIncrementalAuth, requestExtendedAuth, readerCountry, cardCountry);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DynamicCurrencyConversionData)) {
            return false;
        }
        DynamicCurrencyConversionData dynamicCurrencyConversionData = (DynamicCurrencyConversionData) other;
        return Intrinsics.areEqual(this.amount, dynamicCurrencyConversionData.amount) && Float.compare(this.transactionFxRate, dynamicCurrencyConversionData.transactionFxRate) == 0 && Float.compare(this.transactionMarkupPercent, dynamicCurrencyConversionData.transactionMarkupPercent) == 0 && Float.compare(this.cardholderRate, dynamicCurrencyConversionData.cardholderRate) == 0 && Intrinsics.areEqual((Object) this.referenceFxRate, (Object) dynamicCurrencyConversionData.referenceFxRate) && Intrinsics.areEqual((Object) this.referenceMarkupPercent, (Object) dynamicCurrencyConversionData.referenceMarkupPercent) && Float.compare(this.fxAsOf, dynamicCurrencyConversionData.fxAsOf) == 0 && this.setupFutureUsage == dynamicCurrencyConversionData.setupFutureUsage && this.requestIncrementalAuth == dynamicCurrencyConversionData.requestIncrementalAuth && this.requestExtendedAuth == dynamicCurrencyConversionData.requestExtendedAuth && this.readerCountry == dynamicCurrencyConversionData.readerCountry && this.cardCountry == dynamicCurrencyConversionData.cardCountry;
    }

    public int hashCode() {
        int iHashCode = ((((((this.amount.hashCode() * 31) + Float.hashCode(this.transactionFxRate)) * 31) + Float.hashCode(this.transactionMarkupPercent)) * 31) + Float.hashCode(this.cardholderRate)) * 31;
        Float f = this.referenceFxRate;
        int iHashCode2 = (iHashCode + (f == null ? 0 : f.hashCode())) * 31;
        Float f2 = this.referenceMarkupPercent;
        int iHashCode3 = (((((((((iHashCode2 + (f2 == null ? 0 : f2.hashCode())) * 31) + Float.hashCode(this.fxAsOf)) * 31) + Boolean.hashCode(this.setupFutureUsage)) * 31) + Boolean.hashCode(this.requestIncrementalAuth)) * 31) + Boolean.hashCode(this.requestExtendedAuth)) * 31;
        CountryCode countryCode = this.readerCountry;
        int iHashCode4 = (iHashCode3 + (countryCode == null ? 0 : countryCode.hashCode())) * 31;
        CountryCode countryCode2 = this.cardCountry;
        return iHashCode4 + (countryCode2 != null ? countryCode2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DynamicCurrencyConversionData(amount=");
        sb.append(this.amount).append(", transactionFxRate=").append(this.transactionFxRate).append(", transactionMarkupPercent=").append(this.transactionMarkupPercent).append(", cardholderRate=").append(this.cardholderRate).append(", referenceFxRate=").append(this.referenceFxRate).append(", referenceMarkupPercent=").append(this.referenceMarkupPercent).append(", fxAsOf=").append(this.fxAsOf).append(", setupFutureUsage=").append(this.setupFutureUsage).append(", requestIncrementalAuth=").append(this.requestIncrementalAuth).append(", requestExtendedAuth=").append(this.requestExtendedAuth).append(", readerCountry=").append(this.readerCountry).append(", cardCountry=");
        sb.append(this.cardCountry).append(')');
        return sb.toString();
    }

    public DynamicCurrencyConversionData(Amount amount, float f, float f2, float f3, Float f4, Float f5, float f6, boolean z, boolean z2, boolean z3, CountryCode countryCode, CountryCode countryCode2) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.amount = amount;
        this.transactionFxRate = f;
        this.transactionMarkupPercent = f2;
        this.cardholderRate = f3;
        this.referenceFxRate = f4;
        this.referenceMarkupPercent = f5;
        this.fxAsOf = f6;
        this.setupFutureUsage = z;
        this.requestIncrementalAuth = z2;
        this.requestExtendedAuth = z3;
        this.readerCountry = countryCode;
        this.cardCountry = countryCode2;
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final float getTransactionFxRate() {
        return this.transactionFxRate;
    }

    public final float getTransactionMarkupPercent() {
        return this.transactionMarkupPercent;
    }

    public final float getCardholderRate() {
        return this.cardholderRate;
    }

    public final Float getReferenceFxRate() {
        return this.referenceFxRate;
    }

    public final Float getReferenceMarkupPercent() {
        return this.referenceMarkupPercent;
    }

    public final float getFxAsOf() {
        return this.fxAsOf;
    }

    public final boolean getSetupFutureUsage() {
        return this.setupFutureUsage;
    }

    public final boolean getRequestIncrementalAuth() {
        return this.requestIncrementalAuth;
    }

    public final boolean getRequestExtendedAuth() {
        return this.requestExtendedAuth;
    }

    public final CountryCode getReaderCountry() {
        return this.readerCountry;
    }

    public final CountryCode getCardCountry() {
        return this.cardCountry;
    }
}
