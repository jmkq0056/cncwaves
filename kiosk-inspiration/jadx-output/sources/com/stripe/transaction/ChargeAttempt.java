package com.stripe.transaction;

import com.stripe.currency.Amount;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChargeAttempt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt;", "", "()V", "CompletedAttempt", "ExtendedAttempt", "IncompleteAttempt", "PendingNextActionAttempt", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;", "Lcom/stripe/transaction/ChargeAttempt$PendingNextActionAttempt;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ChargeAttempt {
    public /* synthetic */ ChargeAttempt(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: ChargeAttempt.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\r\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000fB\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u000e\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d¨\u0006\u001e"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "Lcom/stripe/transaction/ChargeAttempt;", "()V", "AlreadyRefunded", "DeclinedCharge", "DeclinedRefund", "InvalidCollectedData", "SuccessfulCharge", "SuccessfulCollectedData", "SuccessfulNonCardCharge", "SuccessfulRefund", "SuccessfulReusableCard", "SuccessfulSetupIntent", "UnknownChargeResult", "UnknownRefundResult", "UnknownReusableCardResult", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$AlreadyRefunded;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedRefund;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$InvalidCollectedData;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCollectedData;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulRefund;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;", "Lcom/stripe/transaction/ChargeAttempt$IncompleteAttempt;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class CompletedAttempt extends ChargeAttempt {
        public /* synthetic */ CompletedAttempt(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private CompletedAttempt() {
            super(null);
        }

        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0003J?\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000f¨\u0006\u001e"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "brand", "", "lastFour", "amountCharged", "Lcom/stripe/currency/Amount;", "amountSurcharge", "amountRequested", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;)V", "getAmountCharged", "()Lcom/stripe/currency/Amount;", "getAmountRequested", "getAmountSurcharge", "getBrand", "()Ljava/lang/String;", "getLastFour", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class SuccessfulCharge extends CompletedAttempt {
            private final Amount amountCharged;
            private final Amount amountRequested;
            private final Amount amountSurcharge;
            private final String brand;
            private final String lastFour;

            public static /* synthetic */ SuccessfulCharge copy$default(SuccessfulCharge successfulCharge, String str, String str2, Amount amount, Amount amount2, Amount amount3, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = successfulCharge.brand;
                }
                if ((i & 2) != 0) {
                    str2 = successfulCharge.lastFour;
                }
                if ((i & 4) != 0) {
                    amount = successfulCharge.amountCharged;
                }
                if ((i & 8) != 0) {
                    amount2 = successfulCharge.amountSurcharge;
                }
                if ((i & 16) != 0) {
                    amount3 = successfulCharge.amountRequested;
                }
                Amount amount4 = amount3;
                Amount amount5 = amount;
                return successfulCharge.copy(str, str2, amount5, amount2, amount4);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getBrand() {
                return this.brand;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getLastFour() {
                return this.lastFour;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final Amount getAmountCharged() {
                return this.amountCharged;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final Amount getAmountSurcharge() {
                return this.amountSurcharge;
            }

            /* JADX INFO: renamed from: component5, reason: from getter */
            public final Amount getAmountRequested() {
                return this.amountRequested;
            }

            public final SuccessfulCharge copy(String brand, String lastFour, Amount amountCharged, Amount amountSurcharge, Amount amountRequested) {
                Intrinsics.checkNotNullParameter(brand, "brand");
                Intrinsics.checkNotNullParameter(lastFour, "lastFour");
                Intrinsics.checkNotNullParameter(amountCharged, "amountCharged");
                return new SuccessfulCharge(brand, lastFour, amountCharged, amountSurcharge, amountRequested);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof SuccessfulCharge)) {
                    return false;
                }
                SuccessfulCharge successfulCharge = (SuccessfulCharge) other;
                return Intrinsics.areEqual(this.brand, successfulCharge.brand) && Intrinsics.areEqual(this.lastFour, successfulCharge.lastFour) && Intrinsics.areEqual(this.amountCharged, successfulCharge.amountCharged) && Intrinsics.areEqual(this.amountSurcharge, successfulCharge.amountSurcharge) && Intrinsics.areEqual(this.amountRequested, successfulCharge.amountRequested);
            }

            public int hashCode() {
                int iHashCode = ((((this.brand.hashCode() * 31) + this.lastFour.hashCode()) * 31) + this.amountCharged.hashCode()) * 31;
                Amount amount = this.amountSurcharge;
                int iHashCode2 = (iHashCode + (amount == null ? 0 : amount.hashCode())) * 31;
                Amount amount2 = this.amountRequested;
                return iHashCode2 + (amount2 != null ? amount2.hashCode() : 0);
            }

            public String toString() {
                return "SuccessfulCharge(brand=" + this.brand + ", lastFour=" + this.lastFour + ", amountCharged=" + this.amountCharged + ", amountSurcharge=" + this.amountSurcharge + ", amountRequested=" + this.amountRequested + ')';
            }

            public final String getBrand() {
                return this.brand;
            }

            public final String getLastFour() {
                return this.lastFour;
            }

            public final Amount getAmountCharged() {
                return this.amountCharged;
            }

            public final Amount getAmountSurcharge() {
                return this.amountSurcharge;
            }

            public final Amount getAmountRequested() {
                return this.amountRequested;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SuccessfulCharge(String brand, String lastFour, Amount amountCharged, Amount amount, Amount amount2) {
                super(null);
                Intrinsics.checkNotNullParameter(brand, "brand");
                Intrinsics.checkNotNullParameter(lastFour, "lastFour");
                Intrinsics.checkNotNullParameter(amountCharged, "amountCharged");
                this.brand = brand;
                this.lastFour = lastFour;
                this.amountCharged = amountCharged;
                this.amountSurcharge = amount;
                this.amountRequested = amount2;
            }
        }

        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u00012\u00020\u0002B'\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0018\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u001b\u001a\u00020\tHÆ\u0003J3\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\t2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020#HÖ\u0001R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u0011X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006$"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "Lcom/stripe/transaction/NonCardPaymentMethodCompletedAttempt;", "paymentMethodType", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "amountCharged", "Lcom/stripe/currency/Amount;", "amountSurcharge", "alreadyCompleted", "", "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Z)V", "getAlreadyCompleted", "()Z", "getAmountCharged", "()Lcom/stripe/currency/Amount;", "getAmountSurcharge", "completionMethod", "Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;", "getCompletionMethod", "()Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;", "setCompletionMethod", "(Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;)V", "getPaymentMethodType", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class SuccessfulNonCardCharge extends CompletedAttempt implements NonCardPaymentMethodCompletedAttempt {
            private final boolean alreadyCompleted;
            private final Amount amountCharged;
            private final Amount amountSurcharge;
            private NonCardPaymentMethodCompletionMethod completionMethod;
            private final PaymentMethodType paymentMethodType;

            public static /* synthetic */ SuccessfulNonCardCharge copy$default(SuccessfulNonCardCharge successfulNonCardCharge, PaymentMethodType paymentMethodType, Amount amount, Amount amount2, boolean z, int i, Object obj) {
                if ((i & 1) != 0) {
                    paymentMethodType = successfulNonCardCharge.paymentMethodType;
                }
                if ((i & 2) != 0) {
                    amount = successfulNonCardCharge.amountCharged;
                }
                if ((i & 4) != 0) {
                    amount2 = successfulNonCardCharge.amountSurcharge;
                }
                if ((i & 8) != 0) {
                    z = successfulNonCardCharge.alreadyCompleted;
                }
                return successfulNonCardCharge.copy(paymentMethodType, amount, amount2, z);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final PaymentMethodType getPaymentMethodType() {
                return this.paymentMethodType;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final Amount getAmountCharged() {
                return this.amountCharged;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final Amount getAmountSurcharge() {
                return this.amountSurcharge;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final boolean getAlreadyCompleted() {
                return this.alreadyCompleted;
            }

            public final SuccessfulNonCardCharge copy(PaymentMethodType paymentMethodType, Amount amountCharged, Amount amountSurcharge, boolean alreadyCompleted) {
                Intrinsics.checkNotNullParameter(paymentMethodType, "paymentMethodType");
                Intrinsics.checkNotNullParameter(amountCharged, "amountCharged");
                return new SuccessfulNonCardCharge(paymentMethodType, amountCharged, amountSurcharge, alreadyCompleted);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof SuccessfulNonCardCharge)) {
                    return false;
                }
                SuccessfulNonCardCharge successfulNonCardCharge = (SuccessfulNonCardCharge) other;
                return this.paymentMethodType == successfulNonCardCharge.paymentMethodType && Intrinsics.areEqual(this.amountCharged, successfulNonCardCharge.amountCharged) && Intrinsics.areEqual(this.amountSurcharge, successfulNonCardCharge.amountSurcharge) && this.alreadyCompleted == successfulNonCardCharge.alreadyCompleted;
            }

            public int hashCode() {
                int iHashCode = ((this.paymentMethodType.hashCode() * 31) + this.amountCharged.hashCode()) * 31;
                Amount amount = this.amountSurcharge;
                return ((iHashCode + (amount == null ? 0 : amount.hashCode())) * 31) + Boolean.hashCode(this.alreadyCompleted);
            }

            public String toString() {
                return "SuccessfulNonCardCharge(paymentMethodType=" + this.paymentMethodType + ", amountCharged=" + this.amountCharged + ", amountSurcharge=" + this.amountSurcharge + ", alreadyCompleted=" + this.alreadyCompleted + ')';
            }

            public final PaymentMethodType getPaymentMethodType() {
                return this.paymentMethodType;
            }

            public final Amount getAmountCharged() {
                return this.amountCharged;
            }

            public final Amount getAmountSurcharge() {
                return this.amountSurcharge;
            }

            public final boolean getAlreadyCompleted() {
                return this.alreadyCompleted;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SuccessfulNonCardCharge(PaymentMethodType paymentMethodType, Amount amountCharged, Amount amount, boolean z) {
                super(null);
                Intrinsics.checkNotNullParameter(paymentMethodType, "paymentMethodType");
                Intrinsics.checkNotNullParameter(amountCharged, "amountCharged");
                this.paymentMethodType = paymentMethodType;
                this.amountCharged = amountCharged;
                this.amountSurcharge = amount;
                this.alreadyCompleted = z;
                this.completionMethod = NonCardPaymentMethodCompletionMethod.NOT_APPLICABLE;
            }

            @Override // com.stripe.transaction.NonCardPaymentMethodCompletedAttempt
            public NonCardPaymentMethodCompletionMethod getCompletionMethod() {
                return this.completionMethod;
            }

            @Override // com.stripe.transaction.NonCardPaymentMethodCompletedAttempt
            public void setCompletionMethod(NonCardPaymentMethodCompletionMethod nonCardPaymentMethodCompletionMethod) {
                Intrinsics.checkNotNullParameter(nonCardPaymentMethodCompletionMethod, "<set-?>");
                this.completionMethod = nonCardPaymentMethodCompletionMethod;
            }
        }

        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class SuccessfulReusableCard extends CompletedAttempt {
            public static final SuccessfulReusableCard INSTANCE = new SuccessfulReusableCard();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof SuccessfulReusableCard)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -77597304;
            }

            public String toString() {
                return "SuccessfulReusableCard";
            }

            private SuccessfulReusableCard() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class UnknownReusableCardResult extends CompletedAttempt {
            public static final UnknownReusableCardResult INSTANCE = new UnknownReusableCardResult();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof UnknownReusableCardResult)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 597230703;
            }

            public String toString() {
                return "UnknownReusableCardResult";
            }

            private UnknownReusableCardResult() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulRefund;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "brand", "", "lastFour", "amountRefunded", "Lcom/stripe/currency/Amount;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/currency/Amount;)V", "getAmountRefunded", "()Lcom/stripe/currency/Amount;", "getBrand", "()Ljava/lang/String;", "getLastFour", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class SuccessfulRefund extends CompletedAttempt {
            private final Amount amountRefunded;
            private final String brand;
            private final String lastFour;

            public static /* synthetic */ SuccessfulRefund copy$default(SuccessfulRefund successfulRefund, String str, String str2, Amount amount, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = successfulRefund.brand;
                }
                if ((i & 2) != 0) {
                    str2 = successfulRefund.lastFour;
                }
                if ((i & 4) != 0) {
                    amount = successfulRefund.amountRefunded;
                }
                return successfulRefund.copy(str, str2, amount);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getBrand() {
                return this.brand;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getLastFour() {
                return this.lastFour;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final Amount getAmountRefunded() {
                return this.amountRefunded;
            }

            public final SuccessfulRefund copy(String brand, String lastFour, Amount amountRefunded) {
                Intrinsics.checkNotNullParameter(brand, "brand");
                Intrinsics.checkNotNullParameter(lastFour, "lastFour");
                Intrinsics.checkNotNullParameter(amountRefunded, "amountRefunded");
                return new SuccessfulRefund(brand, lastFour, amountRefunded);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof SuccessfulRefund)) {
                    return false;
                }
                SuccessfulRefund successfulRefund = (SuccessfulRefund) other;
                return Intrinsics.areEqual(this.brand, successfulRefund.brand) && Intrinsics.areEqual(this.lastFour, successfulRefund.lastFour) && Intrinsics.areEqual(this.amountRefunded, successfulRefund.amountRefunded);
            }

            public int hashCode() {
                return (((this.brand.hashCode() * 31) + this.lastFour.hashCode()) * 31) + this.amountRefunded.hashCode();
            }

            public String toString() {
                return "SuccessfulRefund(brand=" + this.brand + ", lastFour=" + this.lastFour + ", amountRefunded=" + this.amountRefunded + ')';
            }

            public final String getBrand() {
                return this.brand;
            }

            public final String getLastFour() {
                return this.lastFour;
            }

            public final Amount getAmountRefunded() {
                return this.amountRefunded;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SuccessfulRefund(String brand, String lastFour, Amount amountRefunded) {
                super(null);
                Intrinsics.checkNotNullParameter(brand, "brand");
                Intrinsics.checkNotNullParameter(lastFour, "lastFour");
                Intrinsics.checkNotNullParameter(amountRefunded, "amountRefunded");
                this.brand = brand;
                this.lastFour = lastFour;
                this.amountRefunded = amountRefunded;
            }
        }

        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class UnknownChargeResult extends CompletedAttempt {
            public static final UnknownChargeResult INSTANCE = new UnknownChargeResult();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof UnknownChargeResult)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -752821496;
            }

            public String toString() {
                return "UnknownChargeResult";
            }

            private UnknownChargeResult() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class UnknownRefundResult extends CompletedAttempt {
            public static final UnknownRefundResult INSTANCE = new UnknownRefundResult();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof UnknownRefundResult)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1403390772;
            }

            public String toString() {
                return "UnknownRefundResult";
            }

            private UnknownRefundResult() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\u000e\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0004HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "Lcom/stripe/transaction/NonCardPaymentMethodCompletedAttempt;", "declineCode", "", "(Ljava/lang/String;)V", "completionMethod", "Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;", "getCompletionMethod", "()Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;", "setCompletionMethod", "(Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;)V", "getDeclineCode", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class DeclinedCharge extends CompletedAttempt implements NonCardPaymentMethodCompletedAttempt {
            private NonCardPaymentMethodCompletionMethod completionMethod;
            private final String declineCode;

            public static /* synthetic */ DeclinedCharge copy$default(DeclinedCharge declinedCharge, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = declinedCharge.declineCode;
                }
                return declinedCharge.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getDeclineCode() {
                return this.declineCode;
            }

            public final DeclinedCharge copy(String declineCode) {
                Intrinsics.checkNotNullParameter(declineCode, "declineCode");
                return new DeclinedCharge(declineCode);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof DeclinedCharge) && Intrinsics.areEqual(this.declineCode, ((DeclinedCharge) other).declineCode);
            }

            public int hashCode() {
                return this.declineCode.hashCode();
            }

            public String toString() {
                return "DeclinedCharge(declineCode=" + this.declineCode + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public DeclinedCharge(String declineCode) {
                super(null);
                Intrinsics.checkNotNullParameter(declineCode, "declineCode");
                this.declineCode = declineCode;
                this.completionMethod = NonCardPaymentMethodCompletionMethod.NOT_APPLICABLE;
            }

            public final String getDeclineCode() {
                return this.declineCode;
            }

            @Override // com.stripe.transaction.NonCardPaymentMethodCompletedAttempt
            public NonCardPaymentMethodCompletionMethod getCompletionMethod() {
                return this.completionMethod;
            }

            @Override // com.stripe.transaction.NonCardPaymentMethodCompletedAttempt
            public void setCompletionMethod(NonCardPaymentMethodCompletionMethod nonCardPaymentMethodCompletionMethod) {
                Intrinsics.checkNotNullParameter(nonCardPaymentMethodCompletionMethod, "<set-?>");
                this.completionMethod = nonCardPaymentMethodCompletionMethod;
            }
        }

        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedRefund;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "declineCode", "", "(Ljava/lang/String;)V", "getDeclineCode", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class DeclinedRefund extends CompletedAttempt {
            private final String declineCode;

            public static /* synthetic */ DeclinedRefund copy$default(DeclinedRefund declinedRefund, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = declinedRefund.declineCode;
                }
                return declinedRefund.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getDeclineCode() {
                return this.declineCode;
            }

            public final DeclinedRefund copy(String declineCode) {
                Intrinsics.checkNotNullParameter(declineCode, "declineCode");
                return new DeclinedRefund(declineCode);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof DeclinedRefund) && Intrinsics.areEqual(this.declineCode, ((DeclinedRefund) other).declineCode);
            }

            public int hashCode() {
                return this.declineCode.hashCode();
            }

            public String toString() {
                return "DeclinedRefund(declineCode=" + this.declineCode + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public DeclinedRefund(String declineCode) {
                super(null);
                Intrinsics.checkNotNullParameter(declineCode, "declineCode");
                this.declineCode = declineCode;
            }

            public final String getDeclineCode() {
                return this.declineCode;
            }
        }

        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$AlreadyRefunded;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class AlreadyRefunded extends CompletedAttempt {
            public static final AlreadyRefunded INSTANCE = new AlreadyRefunded();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof AlreadyRefunded)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1865810620;
            }

            public String toString() {
                return "AlreadyRefunded";
            }

            private AlreadyRefunded() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class SuccessfulSetupIntent extends CompletedAttempt {
            public static final SuccessfulSetupIntent INSTANCE = new SuccessfulSetupIntent();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof SuccessfulSetupIntent)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1129662188;
            }

            public String toString() {
                return "SuccessfulSetupIntent";
            }

            private SuccessfulSetupIntent() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCollectedData;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class SuccessfulCollectedData extends CompletedAttempt {
            public static final SuccessfulCollectedData INSTANCE = new SuccessfulCollectedData();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof SuccessfulCollectedData)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1002294598;
            }

            public String toString() {
                return "SuccessfulCollectedData";
            }

            private SuccessfulCollectedData() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$InvalidCollectedData;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class InvalidCollectedData extends CompletedAttempt {
            public static final InvalidCollectedData INSTANCE = new InvalidCollectedData();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof InvalidCollectedData)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1661008433;
            }

            public String toString() {
                return "InvalidCollectedData";
            }

            private InvalidCollectedData() {
                super(null);
            }
        }
    }

    private ChargeAttempt() {
    }

    /* JADX INFO: compiled from: ChargeAttempt.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$PendingNextActionAttempt;", "Lcom/stripe/transaction/ChargeAttempt;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class PendingNextActionAttempt extends ChargeAttempt {
        public static final PendingNextActionAttempt INSTANCE = new PendingNextActionAttempt();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PendingNextActionAttempt)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 485431270;
        }

        public String toString() {
            return "PendingNextActionAttempt";
        }

        private PendingNextActionAttempt() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: ChargeAttempt.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;", "Lcom/stripe/transaction/ChargeAttempt;", OfflineStorageConstantsKt.ID, "", "requirement", "Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;", "(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;)V", "getId", "()Ljava/lang/String;", "getRequirement", "()Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Requirement", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ExtendedAttempt extends ChargeAttempt {
        private final String id;
        private final Requirement requirement;

        public static /* synthetic */ ExtendedAttempt copy$default(ExtendedAttempt extendedAttempt, String str, Requirement requirement, int i, Object obj) {
            if ((i & 1) != 0) {
                str = extendedAttempt.id;
            }
            if ((i & 2) != 0) {
                requirement = extendedAttempt.requirement;
            }
            return extendedAttempt.copy(str, requirement);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Requirement getRequirement() {
            return this.requirement;
        }

        public final ExtendedAttempt copy(String id, Requirement requirement) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(requirement, "requirement");
            return new ExtendedAttempt(id, requirement);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ExtendedAttempt)) {
                return false;
            }
            ExtendedAttempt extendedAttempt = (ExtendedAttempt) other;
            return Intrinsics.areEqual(this.id, extendedAttempt.id) && this.requirement == extendedAttempt.requirement;
        }

        public int hashCode() {
            return (this.id.hashCode() * 31) + this.requirement.hashCode();
        }

        public String toString() {
            return "ExtendedAttempt(id=" + this.id + ", requirement=" + this.requirement + ')';
        }

        public final String getId() {
            return this.id;
        }

        public final Requirement getRequirement() {
            return this.requirement;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ExtendedAttempt(String id, Requirement requirement) {
            super(null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(requirement, "requirement");
            this.id = id;
            this.requirement = requirement;
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: ChargeAttempt.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;", "", "(Ljava/lang/String;I)V", "OFFLINE_PIN_REQUIRED", "ONLINE_OR_OFFLINE_PIN_REQUIRED", "MOBILE_DEVICE_AUTHENTICATION_REQUIRED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Requirement {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Requirement[] $VALUES;
            public static final Requirement OFFLINE_PIN_REQUIRED = new Requirement("OFFLINE_PIN_REQUIRED", 0);
            public static final Requirement ONLINE_OR_OFFLINE_PIN_REQUIRED = new Requirement("ONLINE_OR_OFFLINE_PIN_REQUIRED", 1);
            public static final Requirement MOBILE_DEVICE_AUTHENTICATION_REQUIRED = new Requirement("MOBILE_DEVICE_AUTHENTICATION_REQUIRED", 2);

            private static final /* synthetic */ Requirement[] $values() {
                return new Requirement[]{OFFLINE_PIN_REQUIRED, ONLINE_OR_OFFLINE_PIN_REQUIRED, MOBILE_DEVICE_AUTHENTICATION_REQUIRED};
            }

            public static EnumEntries<Requirement> getEntries() {
                return $ENTRIES;
            }

            public static Requirement valueOf(String str) {
                return (Requirement) Enum.valueOf(Requirement.class, str);
            }

            public static Requirement[] values() {
                return (Requirement[]) $VALUES.clone();
            }

            private Requirement(String str, int i) {
            }

            static {
                Requirement[] requirementArr$values = $values();
                $VALUES = requirementArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(requirementArr$values);
            }
        }
    }

    /* JADX INFO: compiled from: ChargeAttempt.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/transaction/ChargeAttempt$IncompleteAttempt;", "Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;", "reason", "", "(Ljava/lang/String;)V", "getReason", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class IncompleteAttempt extends CompletedAttempt {
        private final String reason;

        public static /* synthetic */ IncompleteAttempt copy$default(IncompleteAttempt incompleteAttempt, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = incompleteAttempt.reason;
            }
            return incompleteAttempt.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getReason() {
            return this.reason;
        }

        public final IncompleteAttempt copy(String reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            return new IncompleteAttempt(reason);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof IncompleteAttempt) && Intrinsics.areEqual(this.reason, ((IncompleteAttempt) other).reason);
        }

        public int hashCode() {
            return this.reason.hashCode();
        }

        public String toString() {
            return "IncompleteAttempt(reason=" + this.reason + ')';
        }

        public final String getReason() {
            return this.reason;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IncompleteAttempt(String reason) {
            super(null);
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.reason = reason;
        }
    }
}
