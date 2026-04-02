package com.stripe.transaction;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.currency.CurrencyCode;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.PaymentMethodOptions;
import com.stripe.stripeterminal.external.models.AllowRedisplay;
import com.stripe.stripeterminal.external.models.OfflineBehavior;
import com.stripe.stripeterminal.external.models.OfflineDetails;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.stripeterminal.external.models.SetupIntentOfflineDetails;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentMethodCollectionType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\n\u000b\f\r\u000eR\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0001\u0005\u000f\u0010\u0011\u0012\u0013ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0014À\u0006\u0001"}, d2 = {"Lcom/stripe/transaction/PaymentMethodCollectionType;", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "getAmount", "()Lcom/stripe/currency/Amount;", "enableCustomerCancellation", "", "getEnableCustomerCancellation", "()Z", "Passthrough", "Refund", "Sale", "SetupIntent", "StrongCustomerAuthentication", "Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;", "Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;", "Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;", "Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;", "Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PaymentMethodCollectionType {
    Amount getAmount();

    boolean getEnableCustomerCancellation();

    /* JADX INFO: compiled from: PaymentMethodCollectionType.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J5\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u001c"}, d2 = {"Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;", "Lcom/stripe/transaction/PaymentMethodCollectionType;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "chargeId", "", "paymentIntentId", "enableCustomerCancellation", "", "(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Z)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getChargeId", "()Ljava/lang/String;", "getEnableCustomerCancellation", "()Z", "getPaymentIntentId", "component1", "component2", "component3", "component4", "copy", "equals", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Refund implements PaymentMethodCollectionType {
        private final Amount amount;
        private final String chargeId;
        private final boolean enableCustomerCancellation;
        private final String paymentIntentId;

        public static /* synthetic */ Refund copy$default(Refund refund, Amount amount, String str, String str2, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                amount = refund.amount;
            }
            if ((i & 2) != 0) {
                str = refund.chargeId;
            }
            if ((i & 4) != 0) {
                str2 = refund.paymentIntentId;
            }
            if ((i & 8) != 0) {
                z = refund.enableCustomerCancellation;
            }
            return refund.copy(amount, str, str2, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Amount getAmount() {
            return this.amount;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getChargeId() {
            return this.chargeId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getPaymentIntentId() {
            return this.paymentIntentId;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        public final Refund copy(Amount amount, String chargeId, String paymentIntentId, boolean enableCustomerCancellation) {
            Intrinsics.checkNotNullParameter(amount, "amount");
            return new Refund(amount, chargeId, paymentIntentId, enableCustomerCancellation);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Refund)) {
                return false;
            }
            Refund refund = (Refund) other;
            return Intrinsics.areEqual(this.amount, refund.amount) && Intrinsics.areEqual(this.chargeId, refund.chargeId) && Intrinsics.areEqual(this.paymentIntentId, refund.paymentIntentId) && this.enableCustomerCancellation == refund.enableCustomerCancellation;
        }

        public int hashCode() {
            int iHashCode = this.amount.hashCode() * 31;
            String str = this.chargeId;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.paymentIntentId;
            return ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + Boolean.hashCode(this.enableCustomerCancellation);
        }

        public String toString() {
            return "Refund(amount=" + this.amount + ", chargeId=" + this.chargeId + ", paymentIntentId=" + this.paymentIntentId + ", enableCustomerCancellation=" + this.enableCustomerCancellation + ')';
        }

        public Refund(Amount amount, String str, String str2, boolean z) {
            Intrinsics.checkNotNullParameter(amount, "amount");
            this.amount = amount;
            this.chargeId = str;
            this.paymentIntentId = str2;
            this.enableCustomerCancellation = z;
        }

        @Override // com.stripe.transaction.PaymentMethodCollectionType
        public Amount getAmount() {
            return this.amount;
        }

        public final String getChargeId() {
            return this.chargeId;
        }

        public final String getPaymentIntentId() {
            return this.paymentIntentId;
        }

        @Override // com.stripe.transaction.PaymentMethodCollectionType
        public boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }
    }

    /* JADX INFO: compiled from: PaymentMethodCollectionType.kt */
    @Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BÃ\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0007\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u000e\u0012\u0006\u0010\u001c\u001a\u00020\u0007\u0012\u0006\u0010\u001d\u001a\u00020\u0007\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f¢\u0006\u0002\u0010 J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\t\u0010B\u001a\u00020\u0007HÆ\u0003J\t\u0010C\u001a\u00020\u0007HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010G\u001a\b\u0012\u0004\u0012\u00020\u001b0\u000eHÆ\u0003J\t\u0010H\u001a\u00020\u0007HÆ\u0003J\t\u0010I\u001a\u00020\u0007HÆ\u0003J\t\u0010J\u001a\u00020\u0005HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u001fHÆ\u0003J\t\u0010L\u001a\u00020\u0007HÆ\u0003J\t\u0010M\u001a\u00020\u0007HÆ\u0003J\t\u0010N\u001a\u00020\u0007HÆ\u0003J\t\u0010O\u001a\u00020\u0007HÆ\u0003J\t\u0010P\u001a\u00020\u0007HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010R\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0003Jï\u0001\u0010S\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00072\b\b\u0002\u0010\u0014\u001a\u00020\u00072\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u000e2\b\b\u0002\u0010\u001c\u001a\u00020\u00072\b\b\u0002\u0010\u001d\u001a\u00020\u00072\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÆ\u0001J\u0013\u0010T\u001a\u00020\u00072\b\u0010U\u001a\u0004\u0018\u00010VHÖ\u0003J\t\u0010W\u001a\u00020XHÖ\u0001J\t\u0010Y\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u001f¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0019\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0013\u0010'\u001a\u0004\u0018\u00010(¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0014\u0010\u0014\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0011\u0010\u001d\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b-\u0010,R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0011\u0010\n\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010,R\u0011\u0010\t\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010,R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b0\u0010,R\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u000e¢\u0006\b\n\u0000\u001a\u0004\b1\u0010&R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u0011\u0010\u0013\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b6\u0010,R\u0011\u0010\u001c\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b7\u0010,R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\b\n\u0000\u001a\u0004\b8\u00109R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b:\u0010,R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b;\u0010/R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b<\u0010/R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b=\u0010$R\u0011\u0010\u000b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b>\u0010,¨\u0006Z"}, d2 = {"Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "intentId", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "skipTipping", "", "manualEntry", "isOffline", "isDeferredAuthorizationCountry", "updatePaymentIntent", "tipEligibleAmount", "computedPriorities", "", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "stripeAccountId", "offlineDetails", "Lcom/stripe/stripeterminal/external/models/OfflineDetails;", "requestDynamicCurrencyConversion", "enableCustomerCancellation", "restPaymentIntent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "offlineBehavior", "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "surchargeNotice", "nonCardPaymentMethodTypes", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "requestIncrementalAuthorizationSupport", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "(Ljava/lang/String;Lcom/stripe/currency/Amount;ZZZZZLcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZZLcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Ljava/util/List;ZZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)V", "getAllowRedisplay", "()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "getAmount", "()Lcom/stripe/currency/Amount;", "getComputedPriorities", "()Ljava/util/List;", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "getDomesticDebitPriority", "()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "getEnableCustomerCancellation", "()Z", "getForcePinEntry", "getIntentId", "()Ljava/lang/String;", "getManualEntry", "getNonCardPaymentMethodTypes", "getOfflineBehavior", "()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "getOfflineDetails", "()Lcom/stripe/stripeterminal/external/models/OfflineDetails;", "getRequestDynamicCurrencyConversion", "getRequestIncrementalAuthorizationSupport", "getRestPaymentIntent", "()Lcom/stripe/proto/model/rest/PaymentIntent;", "getSkipTipping", "getStripeAccountId", "getSurchargeNotice", "getTipEligibleAmount", "getUpdatePaymentIntent", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Sale implements PaymentMethodCollectionType {
        private final AllowRedisplay allowRedisplay;
        private final Amount amount;
        private final List<PaymentMethodOptions.RoutingPriority> computedPriorities;
        private final ReaderConfiguration.DomesticDebitPriority domesticDebitPriority;
        private final boolean enableCustomerCancellation;
        private final boolean forcePinEntry;
        private final String intentId;
        private final boolean isDeferredAuthorizationCountry;
        private final boolean isOffline;
        private final boolean manualEntry;
        private final List<PaymentMethodType> nonCardPaymentMethodTypes;
        private final OfflineBehavior offlineBehavior;
        private final OfflineDetails offlineDetails;
        private final boolean requestDynamicCurrencyConversion;
        private final boolean requestIncrementalAuthorizationSupport;
        private final PaymentIntent restPaymentIntent;
        private final boolean skipTipping;
        private final String stripeAccountId;
        private final String surchargeNotice;
        private final Amount tipEligibleAmount;
        private final boolean updatePaymentIntent;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Sale copy$default(Sale sale, String str, Amount amount, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Amount amount2, List list, String str2, OfflineDetails offlineDetails, boolean z6, boolean z7, PaymentIntent paymentIntent, OfflineBehavior offlineBehavior, String str3, List list2, boolean z8, boolean z9, AllowRedisplay allowRedisplay, int i, Object obj) {
            AllowRedisplay allowRedisplay2;
            boolean z10;
            String str4 = (i & 1) != 0 ? sale.intentId : str;
            Amount amount3 = (i & 2) != 0 ? sale.amount : amount;
            boolean z11 = (i & 4) != 0 ? sale.skipTipping : z;
            boolean z12 = (i & 8) != 0 ? sale.manualEntry : z2;
            boolean z13 = (i & 16) != 0 ? sale.isOffline : z3;
            boolean z14 = (i & 32) != 0 ? sale.isDeferredAuthorizationCountry : z4;
            boolean z15 = (i & 64) != 0 ? sale.updatePaymentIntent : z5;
            Amount amount4 = (i & 128) != 0 ? sale.tipEligibleAmount : amount2;
            List list3 = (i & 256) != 0 ? sale.computedPriorities : list;
            String str5 = (i & 512) != 0 ? sale.stripeAccountId : str2;
            OfflineDetails offlineDetails2 = (i & 1024) != 0 ? sale.offlineDetails : offlineDetails;
            boolean z16 = (i & 2048) != 0 ? sale.requestDynamicCurrencyConversion : z6;
            boolean z17 = (i & 4096) != 0 ? sale.enableCustomerCancellation : z7;
            PaymentIntent paymentIntent2 = (i & 8192) != 0 ? sale.restPaymentIntent : paymentIntent;
            String str6 = str4;
            OfflineBehavior offlineBehavior2 = (i & 16384) != 0 ? sale.offlineBehavior : offlineBehavior;
            String str7 = (i & 32768) != 0 ? sale.surchargeNotice : str3;
            List list4 = (i & 65536) != 0 ? sale.nonCardPaymentMethodTypes : list2;
            boolean z18 = (i & 131072) != 0 ? sale.requestIncrementalAuthorizationSupport : z8;
            boolean z19 = (i & 262144) != 0 ? sale.forcePinEntry : z9;
            if ((i & 524288) != 0) {
                z10 = z19;
                allowRedisplay2 = sale.allowRedisplay;
            } else {
                allowRedisplay2 = allowRedisplay;
                z10 = z19;
            }
            return sale.copy(str6, amount3, z11, z12, z13, z14, z15, amount4, list3, str5, offlineDetails2, z16, z17, paymentIntent2, offlineBehavior2, str7, list4, z18, z10, allowRedisplay2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getIntentId() {
            return this.intentId;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final String getStripeAccountId() {
            return this.stripeAccountId;
        }

        /* JADX INFO: renamed from: component11, reason: from getter */
        public final OfflineDetails getOfflineDetails() {
            return this.offlineDetails;
        }

        /* JADX INFO: renamed from: component12, reason: from getter */
        public final boolean getRequestDynamicCurrencyConversion() {
            return this.requestDynamicCurrencyConversion;
        }

        /* JADX INFO: renamed from: component13, reason: from getter */
        public final boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        /* JADX INFO: renamed from: component14, reason: from getter */
        public final PaymentIntent getRestPaymentIntent() {
            return this.restPaymentIntent;
        }

        /* JADX INFO: renamed from: component15, reason: from getter */
        public final OfflineBehavior getOfflineBehavior() {
            return this.offlineBehavior;
        }

        /* JADX INFO: renamed from: component16, reason: from getter */
        public final String getSurchargeNotice() {
            return this.surchargeNotice;
        }

        public final List<PaymentMethodType> component17() {
            return this.nonCardPaymentMethodTypes;
        }

        /* JADX INFO: renamed from: component18, reason: from getter */
        public final boolean getRequestIncrementalAuthorizationSupport() {
            return this.requestIncrementalAuthorizationSupport;
        }

        /* JADX INFO: renamed from: component19, reason: from getter */
        public final boolean getForcePinEntry() {
            return this.forcePinEntry;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Amount getAmount() {
            return this.amount;
        }

        /* JADX INFO: renamed from: component20, reason: from getter */
        public final AllowRedisplay getAllowRedisplay() {
            return this.allowRedisplay;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getSkipTipping() {
            return this.skipTipping;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getManualEntry() {
            return this.manualEntry;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getIsOffline() {
            return this.isOffline;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final boolean getIsDeferredAuthorizationCountry() {
            return this.isDeferredAuthorizationCountry;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final boolean getUpdatePaymentIntent() {
            return this.updatePaymentIntent;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final Amount getTipEligibleAmount() {
            return this.tipEligibleAmount;
        }

        public final List<PaymentMethodOptions.RoutingPriority> component9() {
            return this.computedPriorities;
        }

        public final Sale copy(String intentId, Amount amount, boolean skipTipping, boolean manualEntry, boolean isOffline, boolean isDeferredAuthorizationCountry, boolean updatePaymentIntent, Amount tipEligibleAmount, List<? extends PaymentMethodOptions.RoutingPriority> computedPriorities, String stripeAccountId, OfflineDetails offlineDetails, boolean requestDynamicCurrencyConversion, boolean enableCustomerCancellation, PaymentIntent restPaymentIntent, OfflineBehavior offlineBehavior, String surchargeNotice, List<? extends PaymentMethodType> nonCardPaymentMethodTypes, boolean requestIncrementalAuthorizationSupport, boolean forcePinEntry, AllowRedisplay allowRedisplay) {
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(nonCardPaymentMethodTypes, "nonCardPaymentMethodTypes");
            return new Sale(intentId, amount, skipTipping, manualEntry, isOffline, isDeferredAuthorizationCountry, updatePaymentIntent, tipEligibleAmount, computedPriorities, stripeAccountId, offlineDetails, requestDynamicCurrencyConversion, enableCustomerCancellation, restPaymentIntent, offlineBehavior, surchargeNotice, nonCardPaymentMethodTypes, requestIncrementalAuthorizationSupport, forcePinEntry, allowRedisplay);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Sale)) {
                return false;
            }
            Sale sale = (Sale) other;
            return Intrinsics.areEqual(this.intentId, sale.intentId) && Intrinsics.areEqual(this.amount, sale.amount) && this.skipTipping == sale.skipTipping && this.manualEntry == sale.manualEntry && this.isOffline == sale.isOffline && this.isDeferredAuthorizationCountry == sale.isDeferredAuthorizationCountry && this.updatePaymentIntent == sale.updatePaymentIntent && Intrinsics.areEqual(this.tipEligibleAmount, sale.tipEligibleAmount) && Intrinsics.areEqual(this.computedPriorities, sale.computedPriorities) && Intrinsics.areEqual(this.stripeAccountId, sale.stripeAccountId) && Intrinsics.areEqual(this.offlineDetails, sale.offlineDetails) && this.requestDynamicCurrencyConversion == sale.requestDynamicCurrencyConversion && this.enableCustomerCancellation == sale.enableCustomerCancellation && Intrinsics.areEqual(this.restPaymentIntent, sale.restPaymentIntent) && this.offlineBehavior == sale.offlineBehavior && Intrinsics.areEqual(this.surchargeNotice, sale.surchargeNotice) && Intrinsics.areEqual(this.nonCardPaymentMethodTypes, sale.nonCardPaymentMethodTypes) && this.requestIncrementalAuthorizationSupport == sale.requestIncrementalAuthorizationSupport && this.forcePinEntry == sale.forcePinEntry && this.allowRedisplay == sale.allowRedisplay;
        }

        public int hashCode() {
            String str = this.intentId;
            int iHashCode = (((((((((((((str == null ? 0 : str.hashCode()) * 31) + this.amount.hashCode()) * 31) + Boolean.hashCode(this.skipTipping)) * 31) + Boolean.hashCode(this.manualEntry)) * 31) + Boolean.hashCode(this.isOffline)) * 31) + Boolean.hashCode(this.isDeferredAuthorizationCountry)) * 31) + Boolean.hashCode(this.updatePaymentIntent)) * 31;
            Amount amount = this.tipEligibleAmount;
            int iHashCode2 = (iHashCode + (amount == null ? 0 : amount.hashCode())) * 31;
            List<PaymentMethodOptions.RoutingPriority> list = this.computedPriorities;
            int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
            String str2 = this.stripeAccountId;
            int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
            OfflineDetails offlineDetails = this.offlineDetails;
            int iHashCode5 = (((((iHashCode4 + (offlineDetails == null ? 0 : offlineDetails.hashCode())) * 31) + Boolean.hashCode(this.requestDynamicCurrencyConversion)) * 31) + Boolean.hashCode(this.enableCustomerCancellation)) * 31;
            PaymentIntent paymentIntent = this.restPaymentIntent;
            int iHashCode6 = (iHashCode5 + (paymentIntent == null ? 0 : paymentIntent.hashCode())) * 31;
            OfflineBehavior offlineBehavior = this.offlineBehavior;
            int iHashCode7 = (iHashCode6 + (offlineBehavior == null ? 0 : offlineBehavior.hashCode())) * 31;
            String str3 = this.surchargeNotice;
            int iHashCode8 = (((((((iHashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.nonCardPaymentMethodTypes.hashCode()) * 31) + Boolean.hashCode(this.requestIncrementalAuthorizationSupport)) * 31) + Boolean.hashCode(this.forcePinEntry)) * 31;
            AllowRedisplay allowRedisplay = this.allowRedisplay;
            return iHashCode8 + (allowRedisplay != null ? allowRedisplay.hashCode() : 0);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Sale(intentId=");
            sb.append(this.intentId).append(", amount=").append(this.amount).append(", skipTipping=").append(this.skipTipping).append(", manualEntry=").append(this.manualEntry).append(", isOffline=").append(this.isOffline).append(", isDeferredAuthorizationCountry=").append(this.isDeferredAuthorizationCountry).append(", updatePaymentIntent=").append(this.updatePaymentIntent).append(", tipEligibleAmount=").append(this.tipEligibleAmount).append(", computedPriorities=").append(this.computedPriorities).append(", stripeAccountId=").append(this.stripeAccountId).append(", offlineDetails=").append(this.offlineDetails).append(", requestDynamicCurrencyConversion=");
            sb.append(this.requestDynamicCurrencyConversion).append(", enableCustomerCancellation=").append(this.enableCustomerCancellation).append(", restPaymentIntent=").append(this.restPaymentIntent).append(", offlineBehavior=").append(this.offlineBehavior).append(", surchargeNotice=").append(this.surchargeNotice).append(", nonCardPaymentMethodTypes=").append(this.nonCardPaymentMethodTypes).append(", requestIncrementalAuthorizationSupport=").append(this.requestIncrementalAuthorizationSupport).append(", forcePinEntry=").append(this.forcePinEntry).append(", allowRedisplay=").append(this.allowRedisplay).append(')');
            return sb.toString();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Sale(String str, Amount amount, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Amount amount2, List<? extends PaymentMethodOptions.RoutingPriority> list, String str2, OfflineDetails offlineDetails, boolean z6, boolean z7, PaymentIntent paymentIntent, OfflineBehavior offlineBehavior, String str3, List<? extends PaymentMethodType> nonCardPaymentMethodTypes, boolean z8, boolean z9, AllowRedisplay allowRedisplay) {
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(nonCardPaymentMethodTypes, "nonCardPaymentMethodTypes");
            this.intentId = str;
            this.amount = amount;
            this.skipTipping = z;
            this.manualEntry = z2;
            this.isOffline = z3;
            this.isDeferredAuthorizationCountry = z4;
            this.updatePaymentIntent = z5;
            this.tipEligibleAmount = amount2;
            this.computedPriorities = list;
            this.stripeAccountId = str2;
            this.offlineDetails = offlineDetails;
            this.requestDynamicCurrencyConversion = z6;
            this.enableCustomerCancellation = z7;
            this.restPaymentIntent = paymentIntent;
            this.offlineBehavior = offlineBehavior;
            this.surchargeNotice = str3;
            this.nonCardPaymentMethodTypes = nonCardPaymentMethodTypes;
            this.requestIncrementalAuthorizationSupport = z8;
            this.forcePinEntry = z9;
            this.allowRedisplay = allowRedisplay;
            ReaderConfiguration.DomesticDebitPriority domesticDebitPriority = null;
            if (list != 0) {
                if (Intrinsics.areEqual(list, CollectionsKt.listOf((Object[]) new PaymentMethodOptions.RoutingPriority[]{PaymentMethodOptions.RoutingPriority.domestic, PaymentMethodOptions.RoutingPriority.international}))) {
                    domesticDebitPriority = ReaderConfiguration.DomesticDebitPriority.TOP;
                } else if (Intrinsics.areEqual(list, CollectionsKt.listOf((Object[]) new PaymentMethodOptions.RoutingPriority[]{PaymentMethodOptions.RoutingPriority.international, PaymentMethodOptions.RoutingPriority.domestic}))) {
                    domesticDebitPriority = ReaderConfiguration.DomesticDebitPriority.BOTTOM;
                } else if (Intrinsics.areEqual(list, CollectionsKt.listOf(PaymentMethodOptions.RoutingPriority.international))) {
                    domesticDebitPriority = ReaderConfiguration.DomesticDebitPriority.OFF;
                }
            }
            this.domesticDebitPriority = domesticDebitPriority;
        }

        public final String getIntentId() {
            return this.intentId;
        }

        @Override // com.stripe.transaction.PaymentMethodCollectionType
        public Amount getAmount() {
            return this.amount;
        }

        public final boolean getSkipTipping() {
            return this.skipTipping;
        }

        public final boolean getManualEntry() {
            return this.manualEntry;
        }

        public final boolean isOffline() {
            return this.isOffline;
        }

        public final boolean isDeferredAuthorizationCountry() {
            return this.isDeferredAuthorizationCountry;
        }

        public final boolean getUpdatePaymentIntent() {
            return this.updatePaymentIntent;
        }

        public final Amount getTipEligibleAmount() {
            return this.tipEligibleAmount;
        }

        public final List<PaymentMethodOptions.RoutingPriority> getComputedPriorities() {
            return this.computedPriorities;
        }

        public final String getStripeAccountId() {
            return this.stripeAccountId;
        }

        public final OfflineDetails getOfflineDetails() {
            return this.offlineDetails;
        }

        public final boolean getRequestDynamicCurrencyConversion() {
            return this.requestDynamicCurrencyConversion;
        }

        @Override // com.stripe.transaction.PaymentMethodCollectionType
        public boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        public final PaymentIntent getRestPaymentIntent() {
            return this.restPaymentIntent;
        }

        public final OfflineBehavior getOfflineBehavior() {
            return this.offlineBehavior;
        }

        public final String getSurchargeNotice() {
            return this.surchargeNotice;
        }

        public final List<PaymentMethodType> getNonCardPaymentMethodTypes() {
            return this.nonCardPaymentMethodTypes;
        }

        public final boolean getRequestIncrementalAuthorizationSupport() {
            return this.requestIncrementalAuthorizationSupport;
        }

        public final boolean getForcePinEntry() {
            return this.forcePinEntry;
        }

        public final AllowRedisplay getAllowRedisplay() {
            return this.allowRedisplay;
        }

        public final ReaderConfiguration.DomesticDebitPriority getDomesticDebitPriority() {
            return this.domesticDebitPriority;
        }
    }

    /* JADX INFO: compiled from: PaymentMethodCollectionType.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B]\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\t\u0010'\u001a\u00020\u0005HÆ\u0003J\t\u0010(\u001a\u00020\u0005HÆ\u0003J\t\u0010)\u001a\u00020\u0005HÆ\u0003J\t\u0010*\u001a\u00020\u0005HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\fHÆ\u0003J\t\u0010-\u001a\u00020\u000eHÆ\u0003J\t\u0010.\u001a\u00020\u0005HÆ\u0003Ju\u0010/\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÆ\u0001J\u0013\u00100\u001a\u00020\u00052\b\u00101\u001a\u0004\u0018\u000102HÖ\u0003J\t\u00103\u001a\u000204HÖ\u0001J\t\u00105\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0006\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u000f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001aR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$¨\u00066"}, d2 = {"Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "intentId", "", "manualEntry", "", "enableCustomerCancellation", "isOffline", "isDeferredAuthorizationCountry", "offlineDetails", "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;", "offlineBehavior", "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "restSetupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "forcePinEntryEnabled", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "(Ljava/lang/String;ZZZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/proto/model/rest/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)V", "getAllowRedisplay", "()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "getAmount", "()Lcom/stripe/currency/Amount;", "getEnableCustomerCancellation", "()Z", "getForcePinEntryEnabled", "getIntentId", "()Ljava/lang/String;", "getManualEntry", "getOfflineBehavior", "()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "getOfflineDetails", "()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;", "getRestSetupIntent", "()Lcom/stripe/proto/model/rest/SetupIntent;", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class SetupIntent implements PaymentMethodCollectionType {
        private final AllowRedisplay allowRedisplay;
        private final Amount amount;
        private final boolean enableCustomerCancellation;
        private final boolean forcePinEntryEnabled;
        private final String intentId;
        private final boolean isDeferredAuthorizationCountry;
        private final boolean isOffline;
        private final boolean manualEntry;
        private final OfflineBehavior offlineBehavior;
        private final SetupIntentOfflineDetails offlineDetails;
        private final com.stripe.proto.model.rest.SetupIntent restSetupIntent;

        public static /* synthetic */ SetupIntent copy$default(SetupIntent setupIntent, String str, boolean z, boolean z2, boolean z3, boolean z4, SetupIntentOfflineDetails setupIntentOfflineDetails, OfflineBehavior offlineBehavior, com.stripe.proto.model.rest.SetupIntent setupIntent2, boolean z5, AllowRedisplay allowRedisplay, int i, Object obj) {
            if ((i & 1) != 0) {
                str = setupIntent.intentId;
            }
            if ((i & 2) != 0) {
                z = setupIntent.manualEntry;
            }
            if ((i & 4) != 0) {
                z2 = setupIntent.enableCustomerCancellation;
            }
            if ((i & 8) != 0) {
                z3 = setupIntent.isOffline;
            }
            if ((i & 16) != 0) {
                z4 = setupIntent.isDeferredAuthorizationCountry;
            }
            if ((i & 32) != 0) {
                setupIntentOfflineDetails = setupIntent.offlineDetails;
            }
            if ((i & 64) != 0) {
                offlineBehavior = setupIntent.offlineBehavior;
            }
            if ((i & 128) != 0) {
                setupIntent2 = setupIntent.restSetupIntent;
            }
            if ((i & 256) != 0) {
                z5 = setupIntent.forcePinEntryEnabled;
            }
            if ((i & 512) != 0) {
                allowRedisplay = setupIntent.allowRedisplay;
            }
            boolean z6 = z5;
            AllowRedisplay allowRedisplay2 = allowRedisplay;
            OfflineBehavior offlineBehavior2 = offlineBehavior;
            com.stripe.proto.model.rest.SetupIntent setupIntent3 = setupIntent2;
            boolean z7 = z4;
            SetupIntentOfflineDetails setupIntentOfflineDetails2 = setupIntentOfflineDetails;
            return setupIntent.copy(str, z, z2, z3, z7, setupIntentOfflineDetails2, offlineBehavior2, setupIntent3, z6, allowRedisplay2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getIntentId() {
            return this.intentId;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final AllowRedisplay getAllowRedisplay() {
            return this.allowRedisplay;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getManualEntry() {
            return this.manualEntry;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getIsOffline() {
            return this.isOffline;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getIsDeferredAuthorizationCountry() {
            return this.isDeferredAuthorizationCountry;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final SetupIntentOfflineDetails getOfflineDetails() {
            return this.offlineDetails;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final OfflineBehavior getOfflineBehavior() {
            return this.offlineBehavior;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final com.stripe.proto.model.rest.SetupIntent getRestSetupIntent() {
            return this.restSetupIntent;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final boolean getForcePinEntryEnabled() {
            return this.forcePinEntryEnabled;
        }

        public final SetupIntent copy(String intentId, boolean manualEntry, boolean enableCustomerCancellation, boolean isOffline, boolean isDeferredAuthorizationCountry, SetupIntentOfflineDetails offlineDetails, OfflineBehavior offlineBehavior, com.stripe.proto.model.rest.SetupIntent restSetupIntent, boolean forcePinEntryEnabled, AllowRedisplay allowRedisplay) {
            Intrinsics.checkNotNullParameter(restSetupIntent, "restSetupIntent");
            return new SetupIntent(intentId, manualEntry, enableCustomerCancellation, isOffline, isDeferredAuthorizationCountry, offlineDetails, offlineBehavior, restSetupIntent, forcePinEntryEnabled, allowRedisplay);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SetupIntent)) {
                return false;
            }
            SetupIntent setupIntent = (SetupIntent) other;
            return Intrinsics.areEqual(this.intentId, setupIntent.intentId) && this.manualEntry == setupIntent.manualEntry && this.enableCustomerCancellation == setupIntent.enableCustomerCancellation && this.isOffline == setupIntent.isOffline && this.isDeferredAuthorizationCountry == setupIntent.isDeferredAuthorizationCountry && Intrinsics.areEqual(this.offlineDetails, setupIntent.offlineDetails) && this.offlineBehavior == setupIntent.offlineBehavior && Intrinsics.areEqual(this.restSetupIntent, setupIntent.restSetupIntent) && this.forcePinEntryEnabled == setupIntent.forcePinEntryEnabled && this.allowRedisplay == setupIntent.allowRedisplay;
        }

        public int hashCode() {
            String str = this.intentId;
            int iHashCode = (((((((((str == null ? 0 : str.hashCode()) * 31) + Boolean.hashCode(this.manualEntry)) * 31) + Boolean.hashCode(this.enableCustomerCancellation)) * 31) + Boolean.hashCode(this.isOffline)) * 31) + Boolean.hashCode(this.isDeferredAuthorizationCountry)) * 31;
            SetupIntentOfflineDetails setupIntentOfflineDetails = this.offlineDetails;
            int iHashCode2 = (iHashCode + (setupIntentOfflineDetails == null ? 0 : setupIntentOfflineDetails.hashCode())) * 31;
            OfflineBehavior offlineBehavior = this.offlineBehavior;
            int iHashCode3 = (((((iHashCode2 + (offlineBehavior == null ? 0 : offlineBehavior.hashCode())) * 31) + this.restSetupIntent.hashCode()) * 31) + Boolean.hashCode(this.forcePinEntryEnabled)) * 31;
            AllowRedisplay allowRedisplay = this.allowRedisplay;
            return iHashCode3 + (allowRedisplay != null ? allowRedisplay.hashCode() : 0);
        }

        public String toString() {
            return "SetupIntent(intentId=" + this.intentId + ", manualEntry=" + this.manualEntry + ", enableCustomerCancellation=" + this.enableCustomerCancellation + ", isOffline=" + this.isOffline + ", isDeferredAuthorizationCountry=" + this.isDeferredAuthorizationCountry + ", offlineDetails=" + this.offlineDetails + ", offlineBehavior=" + this.offlineBehavior + ", restSetupIntent=" + this.restSetupIntent + ", forcePinEntryEnabled=" + this.forcePinEntryEnabled + ", allowRedisplay=" + this.allowRedisplay + ')';
        }

        public SetupIntent(String str, boolean z, boolean z2, boolean z3, boolean z4, SetupIntentOfflineDetails setupIntentOfflineDetails, OfflineBehavior offlineBehavior, com.stripe.proto.model.rest.SetupIntent restSetupIntent, boolean z5, AllowRedisplay allowRedisplay) {
            Intrinsics.checkNotNullParameter(restSetupIntent, "restSetupIntent");
            this.intentId = str;
            this.manualEntry = z;
            this.enableCustomerCancellation = z2;
            this.isOffline = z3;
            this.isDeferredAuthorizationCountry = z4;
            this.offlineDetails = setupIntentOfflineDetails;
            this.offlineBehavior = offlineBehavior;
            this.restSetupIntent = restSetupIntent;
            this.forcePinEntryEnabled = z5;
            this.allowRedisplay = allowRedisplay;
            this.amount = new Amount(0L, CurrencyCode.USD);
        }

        public final String getIntentId() {
            return this.intentId;
        }

        public final boolean getManualEntry() {
            return this.manualEntry;
        }

        @Override // com.stripe.transaction.PaymentMethodCollectionType
        public boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        public final boolean isOffline() {
            return this.isOffline;
        }

        public final boolean isDeferredAuthorizationCountry() {
            return this.isDeferredAuthorizationCountry;
        }

        public final SetupIntentOfflineDetails getOfflineDetails() {
            return this.offlineDetails;
        }

        public final OfflineBehavior getOfflineBehavior() {
            return this.offlineBehavior;
        }

        public final com.stripe.proto.model.rest.SetupIntent getRestSetupIntent() {
            return this.restSetupIntent;
        }

        public final boolean getForcePinEntryEnabled() {
            return this.forcePinEntryEnabled;
        }

        public final AllowRedisplay getAllowRedisplay() {
            return this.allowRedisplay;
        }

        @Override // com.stripe.transaction.PaymentMethodCollectionType
        public Amount getAmount() {
            return this.amount;
        }
    }

    /* JADX INFO: compiled from: PaymentMethodCollectionType.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001#B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001a\u001a\u00020\tHÆ\u0003J\t\u0010\u001b\u001a\u00020\u000bHÆ\u0003J=\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u000b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006$"}, d2 = {"Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "intentId", "", "offlineDetails", "Lcom/stripe/stripeterminal/external/models/OfflineDetails;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "requirement", "Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;", "enableCustomerCancellation", "", "(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lcom/stripe/currency/Amount;Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;Z)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getEnableCustomerCancellation", "()Z", "getIntentId", "()Ljava/lang/String;", "getOfflineDetails", "()Lcom/stripe/stripeterminal/external/models/OfflineDetails;", "getRequirement", "()Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "", "toString", "Requirement", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class StrongCustomerAuthentication implements PaymentMethodCollectionType {
        private final Amount amount;
        private final boolean enableCustomerCancellation;
        private final String intentId;
        private final OfflineDetails offlineDetails;
        private final Requirement requirement;

        public static /* synthetic */ StrongCustomerAuthentication copy$default(StrongCustomerAuthentication strongCustomerAuthentication, String str, OfflineDetails offlineDetails, Amount amount, Requirement requirement, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = strongCustomerAuthentication.intentId;
            }
            if ((i & 2) != 0) {
                offlineDetails = strongCustomerAuthentication.offlineDetails;
            }
            if ((i & 4) != 0) {
                amount = strongCustomerAuthentication.amount;
            }
            if ((i & 8) != 0) {
                requirement = strongCustomerAuthentication.requirement;
            }
            if ((i & 16) != 0) {
                z = strongCustomerAuthentication.enableCustomerCancellation;
            }
            boolean z2 = z;
            Amount amount2 = amount;
            return strongCustomerAuthentication.copy(str, offlineDetails, amount2, requirement, z2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getIntentId() {
            return this.intentId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final OfflineDetails getOfflineDetails() {
            return this.offlineDetails;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Amount getAmount() {
            return this.amount;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final Requirement getRequirement() {
            return this.requirement;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        public final StrongCustomerAuthentication copy(String intentId, OfflineDetails offlineDetails, Amount amount, Requirement requirement, boolean enableCustomerCancellation) {
            Intrinsics.checkNotNullParameter(intentId, "intentId");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(requirement, "requirement");
            return new StrongCustomerAuthentication(intentId, offlineDetails, amount, requirement, enableCustomerCancellation);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof StrongCustomerAuthentication)) {
                return false;
            }
            StrongCustomerAuthentication strongCustomerAuthentication = (StrongCustomerAuthentication) other;
            return Intrinsics.areEqual(this.intentId, strongCustomerAuthentication.intentId) && Intrinsics.areEqual(this.offlineDetails, strongCustomerAuthentication.offlineDetails) && Intrinsics.areEqual(this.amount, strongCustomerAuthentication.amount) && this.requirement == strongCustomerAuthentication.requirement && this.enableCustomerCancellation == strongCustomerAuthentication.enableCustomerCancellation;
        }

        public int hashCode() {
            int iHashCode = this.intentId.hashCode() * 31;
            OfflineDetails offlineDetails = this.offlineDetails;
            return ((((((iHashCode + (offlineDetails == null ? 0 : offlineDetails.hashCode())) * 31) + this.amount.hashCode()) * 31) + this.requirement.hashCode()) * 31) + Boolean.hashCode(this.enableCustomerCancellation);
        }

        public String toString() {
            return "StrongCustomerAuthentication(intentId=" + this.intentId + ", offlineDetails=" + this.offlineDetails + ", amount=" + this.amount + ", requirement=" + this.requirement + ", enableCustomerCancellation=" + this.enableCustomerCancellation + ')';
        }

        public StrongCustomerAuthentication(String intentId, OfflineDetails offlineDetails, Amount amount, Requirement requirement, boolean z) {
            Intrinsics.checkNotNullParameter(intentId, "intentId");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(requirement, "requirement");
            this.intentId = intentId;
            this.offlineDetails = offlineDetails;
            this.amount = amount;
            this.requirement = requirement;
            this.enableCustomerCancellation = z;
        }

        public final String getIntentId() {
            return this.intentId;
        }

        public final OfflineDetails getOfflineDetails() {
            return this.offlineDetails;
        }

        @Override // com.stripe.transaction.PaymentMethodCollectionType
        public Amount getAmount() {
            return this.amount;
        }

        public final Requirement getRequirement() {
            return this.requirement;
        }

        @Override // com.stripe.transaction.PaymentMethodCollectionType
        public boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: PaymentMethodCollectionType.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;", "", "(Ljava/lang/String;I)V", "GENERIC", "ONLINE_OR_OFFLINE_PIN", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Requirement {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Requirement[] $VALUES;
            public static final Requirement GENERIC = new Requirement("GENERIC", 0);
            public static final Requirement ONLINE_OR_OFFLINE_PIN = new Requirement("ONLINE_OR_OFFLINE_PIN", 1);

            private static final /* synthetic */ Requirement[] $values() {
                return new Requirement[]{GENERIC, ONLINE_OR_OFFLINE_PIN};
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

    /* JADX INFO: compiled from: PaymentMethodCollectionType.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0019B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "passthroughType", "Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;", "enableCustomerCancellation", "", "(Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;Z)V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "getAmount", "()Lcom/stripe/currency/Amount;", "getEnableCustomerCancellation", "()Z", "getPassthroughType", "()Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toString", "", "PassthroughType", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Passthrough implements PaymentMethodCollectionType {
        private final Amount amount;
        private final boolean enableCustomerCancellation;
        private final PassthroughType passthroughType;

        public static /* synthetic */ Passthrough copy$default(Passthrough passthrough, PassthroughType passthroughType, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                passthroughType = passthrough.passthroughType;
            }
            if ((i & 2) != 0) {
                z = passthrough.enableCustomerCancellation;
            }
            return passthrough.copy(passthroughType, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PassthroughType getPassthroughType() {
            return this.passthroughType;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        public final Passthrough copy(PassthroughType passthroughType, boolean enableCustomerCancellation) {
            Intrinsics.checkNotNullParameter(passthroughType, "passthroughType");
            return new Passthrough(passthroughType, enableCustomerCancellation);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Passthrough)) {
                return false;
            }
            Passthrough passthrough = (Passthrough) other;
            return this.passthroughType == passthrough.passthroughType && this.enableCustomerCancellation == passthrough.enableCustomerCancellation;
        }

        public int hashCode() {
            return (this.passthroughType.hashCode() * 31) + Boolean.hashCode(this.enableCustomerCancellation);
        }

        public String toString() {
            return "Passthrough(passthroughType=" + this.passthroughType + ", enableCustomerCancellation=" + this.enableCustomerCancellation + ')';
        }

        public Passthrough(PassthroughType passthroughType, boolean z) {
            Intrinsics.checkNotNullParameter(passthroughType, "passthroughType");
            this.passthroughType = passthroughType;
            this.enableCustomerCancellation = z;
            this.amount = new Amount(0L, CurrencyCode.USD);
        }

        public final PassthroughType getPassthroughType() {
            return this.passthroughType;
        }

        @Override // com.stripe.transaction.PaymentMethodCollectionType
        public boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: PaymentMethodCollectionType.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;", "", "(Ljava/lang/String;I)V", "MAGSTRIPE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class PassthroughType {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ PassthroughType[] $VALUES;
            public static final PassthroughType MAGSTRIPE = new PassthroughType("MAGSTRIPE", 0);

            private static final /* synthetic */ PassthroughType[] $values() {
                return new PassthroughType[]{MAGSTRIPE};
            }

            public static EnumEntries<PassthroughType> getEntries() {
                return $ENTRIES;
            }

            public static PassthroughType valueOf(String str) {
                return (PassthroughType) Enum.valueOf(PassthroughType.class, str);
            }

            public static PassthroughType[] values() {
                return (PassthroughType[]) $VALUES.clone();
            }

            private PassthroughType(String str, int i) {
            }

            static {
                PassthroughType[] passthroughTypeArr$values = $values();
                $VALUES = passthroughTypeArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(passthroughTypeArr$values);
            }
        }

        @Override // com.stripe.transaction.PaymentMethodCollectionType
        public Amount getAmount() {
            return this.amount;
        }
    }
}
