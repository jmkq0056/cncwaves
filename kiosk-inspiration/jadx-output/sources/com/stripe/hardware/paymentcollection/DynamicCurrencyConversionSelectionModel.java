package com.stripe.hardware.paymentcollection;

import com.stripe.currency.Amount;
import com.stripe.currency.CountryCode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DynamicCurrencyConversionSelectionModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0006HÆ\u0003J\t\u0010!\u001a\u00020\u0006HÆ\u0003J\t\u0010\"\u001a\u00020\tHÆ\u0003J\t\u0010#\u001a\u00020\u000bHÆ\u0003J\t\u0010$\u001a\u00020\u000bHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u000eHÆ\u0003Jg\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÆ\u0001J\u0013\u0010(\u001a\u00020\u000b2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020+HÖ\u0001J\t\u0010,\u001a\u00020-HÖ\u0001R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001b¨\u0006."}, d2 = {"Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;", "", "originalAmount", "Lcom/stripe/currency/Amount;", "targetAmount", "fxRate", "", "markupPercent", "disclosureMode", "Lcom/stripe/hardware/paymentcollection/DisclosureMode;", "isEu", "", "enableCustomerCancellation", "readerCountry", "Lcom/stripe/currency/CountryCode;", "cardCountry", "(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;FFLcom/stripe/hardware/paymentcollection/DisclosureMode;ZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)V", "getCardCountry", "()Lcom/stripe/currency/CountryCode;", "getDisclosureMode", "()Lcom/stripe/hardware/paymentcollection/DisclosureMode;", "getEnableCustomerCancellation", "()Z", "getFxRate", "()F", "getMarkupPercent", "getOriginalAmount", "()Lcom/stripe/currency/Amount;", "getReaderCountry", "getTargetAmount", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class DynamicCurrencyConversionSelectionModel {
    private final CountryCode cardCountry;
    private final DisclosureMode disclosureMode;
    private final boolean enableCustomerCancellation;
    private final float fxRate;
    private final boolean isEu;
    private final float markupPercent;
    private final Amount originalAmount;
    private final CountryCode readerCountry;
    private final Amount targetAmount;

    public static /* synthetic */ DynamicCurrencyConversionSelectionModel copy$default(DynamicCurrencyConversionSelectionModel dynamicCurrencyConversionSelectionModel, Amount amount, Amount amount2, float f, float f2, DisclosureMode disclosureMode, boolean z, boolean z2, CountryCode countryCode, CountryCode countryCode2, int i, Object obj) {
        if ((i & 1) != 0) {
            amount = dynamicCurrencyConversionSelectionModel.originalAmount;
        }
        if ((i & 2) != 0) {
            amount2 = dynamicCurrencyConversionSelectionModel.targetAmount;
        }
        if ((i & 4) != 0) {
            f = dynamicCurrencyConversionSelectionModel.fxRate;
        }
        if ((i & 8) != 0) {
            f2 = dynamicCurrencyConversionSelectionModel.markupPercent;
        }
        if ((i & 16) != 0) {
            disclosureMode = dynamicCurrencyConversionSelectionModel.disclosureMode;
        }
        if ((i & 32) != 0) {
            z = dynamicCurrencyConversionSelectionModel.isEu;
        }
        if ((i & 64) != 0) {
            z2 = dynamicCurrencyConversionSelectionModel.enableCustomerCancellation;
        }
        if ((i & 128) != 0) {
            countryCode = dynamicCurrencyConversionSelectionModel.readerCountry;
        }
        if ((i & 256) != 0) {
            countryCode2 = dynamicCurrencyConversionSelectionModel.cardCountry;
        }
        CountryCode countryCode3 = countryCode;
        CountryCode countryCode4 = countryCode2;
        boolean z3 = z;
        boolean z4 = z2;
        DisclosureMode disclosureMode2 = disclosureMode;
        float f3 = f;
        return dynamicCurrencyConversionSelectionModel.copy(amount, amount2, f3, f2, disclosureMode2, z3, z4, countryCode3, countryCode4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Amount getOriginalAmount() {
        return this.originalAmount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Amount getTargetAmount() {
        return this.targetAmount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final float getFxRate() {
        return this.fxRate;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final float getMarkupPercent() {
        return this.markupPercent;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final DisclosureMode getDisclosureMode() {
        return this.disclosureMode;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getIsEu() {
        return this.isEu;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final CountryCode getReaderCountry() {
        return this.readerCountry;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final CountryCode getCardCountry() {
        return this.cardCountry;
    }

    public final DynamicCurrencyConversionSelectionModel copy(Amount originalAmount, Amount targetAmount, float fxRate, float markupPercent, DisclosureMode disclosureMode, boolean isEu, boolean enableCustomerCancellation, CountryCode readerCountry, CountryCode cardCountry) {
        Intrinsics.checkNotNullParameter(originalAmount, "originalAmount");
        Intrinsics.checkNotNullParameter(targetAmount, "targetAmount");
        Intrinsics.checkNotNullParameter(disclosureMode, "disclosureMode");
        return new DynamicCurrencyConversionSelectionModel(originalAmount, targetAmount, fxRate, markupPercent, disclosureMode, isEu, enableCustomerCancellation, readerCountry, cardCountry);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DynamicCurrencyConversionSelectionModel)) {
            return false;
        }
        DynamicCurrencyConversionSelectionModel dynamicCurrencyConversionSelectionModel = (DynamicCurrencyConversionSelectionModel) other;
        return Intrinsics.areEqual(this.originalAmount, dynamicCurrencyConversionSelectionModel.originalAmount) && Intrinsics.areEqual(this.targetAmount, dynamicCurrencyConversionSelectionModel.targetAmount) && Float.compare(this.fxRate, dynamicCurrencyConversionSelectionModel.fxRate) == 0 && Float.compare(this.markupPercent, dynamicCurrencyConversionSelectionModel.markupPercent) == 0 && this.disclosureMode == dynamicCurrencyConversionSelectionModel.disclosureMode && this.isEu == dynamicCurrencyConversionSelectionModel.isEu && this.enableCustomerCancellation == dynamicCurrencyConversionSelectionModel.enableCustomerCancellation && this.readerCountry == dynamicCurrencyConversionSelectionModel.readerCountry && this.cardCountry == dynamicCurrencyConversionSelectionModel.cardCountry;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((this.originalAmount.hashCode() * 31) + this.targetAmount.hashCode()) * 31) + Float.hashCode(this.fxRate)) * 31) + Float.hashCode(this.markupPercent)) * 31) + this.disclosureMode.hashCode()) * 31) + Boolean.hashCode(this.isEu)) * 31) + Boolean.hashCode(this.enableCustomerCancellation)) * 31;
        CountryCode countryCode = this.readerCountry;
        int iHashCode2 = (iHashCode + (countryCode == null ? 0 : countryCode.hashCode())) * 31;
        CountryCode countryCode2 = this.cardCountry;
        return iHashCode2 + (countryCode2 != null ? countryCode2.hashCode() : 0);
    }

    public String toString() {
        return "DynamicCurrencyConversionSelectionModel(originalAmount=" + this.originalAmount + ", targetAmount=" + this.targetAmount + ", fxRate=" + this.fxRate + ", markupPercent=" + this.markupPercent + ", disclosureMode=" + this.disclosureMode + ", isEu=" + this.isEu + ", enableCustomerCancellation=" + this.enableCustomerCancellation + ", readerCountry=" + this.readerCountry + ", cardCountry=" + this.cardCountry + ')';
    }

    public DynamicCurrencyConversionSelectionModel(Amount originalAmount, Amount targetAmount, float f, float f2, DisclosureMode disclosureMode, boolean z, boolean z2, CountryCode countryCode, CountryCode countryCode2) {
        Intrinsics.checkNotNullParameter(originalAmount, "originalAmount");
        Intrinsics.checkNotNullParameter(targetAmount, "targetAmount");
        Intrinsics.checkNotNullParameter(disclosureMode, "disclosureMode");
        this.originalAmount = originalAmount;
        this.targetAmount = targetAmount;
        this.fxRate = f;
        this.markupPercent = f2;
        this.disclosureMode = disclosureMode;
        this.isEu = z;
        this.enableCustomerCancellation = z2;
        this.readerCountry = countryCode;
        this.cardCountry = countryCode2;
    }

    public final Amount getOriginalAmount() {
        return this.originalAmount;
    }

    public final Amount getTargetAmount() {
        return this.targetAmount;
    }

    public final float getFxRate() {
        return this.fxRate;
    }

    public final float getMarkupPercent() {
        return this.markupPercent;
    }

    public final DisclosureMode getDisclosureMode() {
        return this.disclosureMode;
    }

    public final boolean isEu() {
        return this.isEu;
    }

    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    public final CountryCode getReaderCountry() {
        return this.readerCountry;
    }

    public final CountryCode getCardCountry() {
        return this.cardCountry;
    }
}
