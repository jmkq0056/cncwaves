package com.stripe.core.transaction;

import android.content.Intent;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.paymentcollection.AccountTypeSelectionModel;
import com.stripe.hardware.paymentcollection.ApplicationSelectionModel;
import com.stripe.hardware.paymentcollection.CollectionModel;
import com.stripe.hardware.paymentcollection.ConfirmDetailsModel;
import com.stripe.hardware.paymentcollection.CvvModel;
import com.stripe.hardware.paymentcollection.DisplayCartModel;
import com.stripe.hardware.paymentcollection.DynamicCurrencyConversionSelectionModel;
import com.stripe.hardware.paymentcollection.ExpiryDateModel;
import com.stripe.hardware.paymentcollection.NonCardPaymentMethodActionRequiredModel;
import com.stripe.hardware.paymentcollection.NonCardPaymentMethodSelectionModel;
import com.stripe.hardware.paymentcollection.PanEntryModel;
import com.stripe.hardware.paymentcollection.PaymentCollectionTimeoutResultDetails;
import com.stripe.hardware.paymentcollection.PinEntryModel;
import com.stripe.hardware.paymentcollection.RecoverableErrorModel;
import com.stripe.hardware.paymentcollection.RemoveCardModel;
import com.stripe.hardware.paymentcollection.TippingSelectionModel;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.hardware.paymentcollection.ZipCodeEntryModel;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.transaction.ChargeAttempt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.http.HttpHeaders;

/* JADX INFO: compiled from: TransactionStateSummary.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u001a\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001cB\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u001a\u001d\u001e\u001f !\"#$%&'()*+,-./0123456¨\u00067"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary;", "", "()V", "AccountSelection", "ApplicationSelection", "Basket", "Canceling", "Cancelled", "ChargeSummary", "Collect", "DynamicCurrencyConversionSelection", "Empty", "ManualEntryConfirmDetails", "ManualEntryCvv", "ManualEntryExpiryDate", "ManualEntryPan", "ManualEntryZipCode", "NonCardPaymentMethodActionRequired", "NonCardPaymentMethodLoading", "NonCardPaymentMethodsSelection", "OnMerchantUiStarted", "OnPaymentMethodCollectedForPaymentIntent", "Pin", "Processing", "RecoverableError", "RemoveCard", HttpHeaders.TIMEOUT, "TippingSelection", "UnrecoverableError", "Lcom/stripe/core/transaction/TransactionStateSummary$AccountSelection;", "Lcom/stripe/core/transaction/TransactionStateSummary$ApplicationSelection;", "Lcom/stripe/core/transaction/TransactionStateSummary$Basket;", "Lcom/stripe/core/transaction/TransactionStateSummary$Canceling;", "Lcom/stripe/core/transaction/TransactionStateSummary$Cancelled;", "Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;", "Lcom/stripe/core/transaction/TransactionStateSummary$Collect;", "Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;", "Lcom/stripe/core/transaction/TransactionStateSummary$Empty;", "Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryConfirmDetails;", "Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryCvv;", "Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryExpiryDate;", "Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryPan;", "Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryZipCode;", "Lcom/stripe/core/transaction/TransactionStateSummary$NonCardPaymentMethodActionRequired;", "Lcom/stripe/core/transaction/TransactionStateSummary$NonCardPaymentMethodLoading;", "Lcom/stripe/core/transaction/TransactionStateSummary$NonCardPaymentMethodsSelection;", "Lcom/stripe/core/transaction/TransactionStateSummary$OnMerchantUiStarted;", "Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;", "Lcom/stripe/core/transaction/TransactionStateSummary$Pin;", "Lcom/stripe/core/transaction/TransactionStateSummary$Processing;", "Lcom/stripe/core/transaction/TransactionStateSummary$RecoverableError;", "Lcom/stripe/core/transaction/TransactionStateSummary$RemoveCard;", "Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;", "Lcom/stripe/core/transaction/TransactionStateSummary$TippingSelection;", "Lcom/stripe/core/transaction/TransactionStateSummary$UnrecoverableError;", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class TransactionStateSummary {
    public /* synthetic */ TransactionStateSummary(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$Empty;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Empty extends TransactionStateSummary {
        public static final Empty INSTANCE = new Empty();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Empty)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -760450137;
        }

        public String toString() {
            return "Empty";
        }

        private Empty() {
            super(null);
        }
    }

    private TransactionStateSummary() {
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$TippingSelection;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;", "(Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class TippingSelection extends TransactionStateSummary {
        private final TippingSelectionModel model;

        public static /* synthetic */ TippingSelection copy$default(TippingSelection tippingSelection, TippingSelectionModel tippingSelectionModel, int i, Object obj) {
            if ((i & 1) != 0) {
                tippingSelectionModel = tippingSelection.model;
            }
            return tippingSelection.copy(tippingSelectionModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final TippingSelectionModel getModel() {
            return this.model;
        }

        public final TippingSelection copy(TippingSelectionModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new TippingSelection(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof TippingSelection) && Intrinsics.areEqual(this.model, ((TippingSelection) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "TippingSelection(model=" + this.model + ')';
        }

        public final TippingSelectionModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TippingSelection(TippingSelectionModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryZipCode;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/ZipCodeEntryModel;", "(Lcom/stripe/hardware/paymentcollection/ZipCodeEntryModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/ZipCodeEntryModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ManualEntryZipCode extends TransactionStateSummary {
        private final ZipCodeEntryModel model;

        public static /* synthetic */ ManualEntryZipCode copy$default(ManualEntryZipCode manualEntryZipCode, ZipCodeEntryModel zipCodeEntryModel, int i, Object obj) {
            if ((i & 1) != 0) {
                zipCodeEntryModel = manualEntryZipCode.model;
            }
            return manualEntryZipCode.copy(zipCodeEntryModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ZipCodeEntryModel getModel() {
            return this.model;
        }

        public final ManualEntryZipCode copy(ZipCodeEntryModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new ManualEntryZipCode(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ManualEntryZipCode) && Intrinsics.areEqual(this.model, ((ManualEntryZipCode) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "ManualEntryZipCode(model=" + this.model + ')';
        }

        public final ZipCodeEntryModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ManualEntryZipCode(ZipCodeEntryModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryConfirmDetails;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;", "(Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/ConfirmDetailsModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ManualEntryConfirmDetails extends TransactionStateSummary {
        private final ConfirmDetailsModel model;

        public static /* synthetic */ ManualEntryConfirmDetails copy$default(ManualEntryConfirmDetails manualEntryConfirmDetails, ConfirmDetailsModel confirmDetailsModel, int i, Object obj) {
            if ((i & 1) != 0) {
                confirmDetailsModel = manualEntryConfirmDetails.model;
            }
            return manualEntryConfirmDetails.copy(confirmDetailsModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ConfirmDetailsModel getModel() {
            return this.model;
        }

        public final ManualEntryConfirmDetails copy(ConfirmDetailsModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new ManualEntryConfirmDetails(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ManualEntryConfirmDetails) && Intrinsics.areEqual(this.model, ((ManualEntryConfirmDetails) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "ManualEntryConfirmDetails(model=" + this.model + ')';
        }

        public final ConfirmDetailsModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ManualEntryConfirmDetails(ConfirmDetailsModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryCvv;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/CvvModel;", "(Lcom/stripe/hardware/paymentcollection/CvvModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/CvvModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ManualEntryCvv extends TransactionStateSummary {
        private final CvvModel model;

        public static /* synthetic */ ManualEntryCvv copy$default(ManualEntryCvv manualEntryCvv, CvvModel cvvModel, int i, Object obj) {
            if ((i & 1) != 0) {
                cvvModel = manualEntryCvv.model;
            }
            return manualEntryCvv.copy(cvvModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CvvModel getModel() {
            return this.model;
        }

        public final ManualEntryCvv copy(CvvModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new ManualEntryCvv(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ManualEntryCvv) && Intrinsics.areEqual(this.model, ((ManualEntryCvv) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "ManualEntryCvv(model=" + this.model + ')';
        }

        public final CvvModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ManualEntryCvv(CvvModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryPan;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/PanEntryModel;", "(Lcom/stripe/hardware/paymentcollection/PanEntryModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/PanEntryModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ManualEntryPan extends TransactionStateSummary {
        private final PanEntryModel model;

        public static /* synthetic */ ManualEntryPan copy$default(ManualEntryPan manualEntryPan, PanEntryModel panEntryModel, int i, Object obj) {
            if ((i & 1) != 0) {
                panEntryModel = manualEntryPan.model;
            }
            return manualEntryPan.copy(panEntryModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PanEntryModel getModel() {
            return this.model;
        }

        public final ManualEntryPan copy(PanEntryModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new ManualEntryPan(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ManualEntryPan) && Intrinsics.areEqual(this.model, ((ManualEntryPan) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "ManualEntryPan(model=" + this.model + ')';
        }

        public final PanEntryModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ManualEntryPan(PanEntryModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$ManualEntryExpiryDate;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;", "(Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/ExpiryDateModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ManualEntryExpiryDate extends TransactionStateSummary {
        private final ExpiryDateModel model;

        public static /* synthetic */ ManualEntryExpiryDate copy$default(ManualEntryExpiryDate manualEntryExpiryDate, ExpiryDateModel expiryDateModel, int i, Object obj) {
            if ((i & 1) != 0) {
                expiryDateModel = manualEntryExpiryDate.model;
            }
            return manualEntryExpiryDate.copy(expiryDateModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ExpiryDateModel getModel() {
            return this.model;
        }

        public final ManualEntryExpiryDate copy(ExpiryDateModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new ManualEntryExpiryDate(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ManualEntryExpiryDate) && Intrinsics.areEqual(this.model, ((ManualEntryExpiryDate) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "ManualEntryExpiryDate(model=" + this.model + ')';
        }

        public final ExpiryDateModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ManualEntryExpiryDate(ExpiryDateModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J+\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$Processing;", "Lcom/stripe/core/transaction/TransactionStateSummary;", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/hardware/paymentcollection/TransactionType;", "language", "", "amountCharged", "Lcom/stripe/currency/Amount;", "(Lcom/stripe/hardware/paymentcollection/TransactionType;Ljava/lang/String;Lcom/stripe/currency/Amount;)V", "getAmountCharged", "()Lcom/stripe/currency/Amount;", "getLanguage", "()Ljava/lang/String;", "getTransactionType", "()Lcom/stripe/hardware/paymentcollection/TransactionType;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Processing extends TransactionStateSummary {
        private final Amount amountCharged;
        private final String language;
        private final TransactionType transactionType;

        public static /* synthetic */ Processing copy$default(Processing processing, TransactionType transactionType, String str, Amount amount, int i, Object obj) {
            if ((i & 1) != 0) {
                transactionType = processing.transactionType;
            }
            if ((i & 2) != 0) {
                str = processing.language;
            }
            if ((i & 4) != 0) {
                amount = processing.amountCharged;
            }
            return processing.copy(transactionType, str, amount);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final TransactionType getTransactionType() {
            return this.transactionType;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getLanguage() {
            return this.language;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Amount getAmountCharged() {
            return this.amountCharged;
        }

        public final Processing copy(TransactionType transactionType, String language, Amount amountCharged) {
            Intrinsics.checkNotNullParameter(transactionType, "transactionType");
            return new Processing(transactionType, language, amountCharged);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Processing)) {
                return false;
            }
            Processing processing = (Processing) other;
            return this.transactionType == processing.transactionType && Intrinsics.areEqual(this.language, processing.language) && Intrinsics.areEqual(this.amountCharged, processing.amountCharged);
        }

        public int hashCode() {
            int iHashCode = this.transactionType.hashCode() * 31;
            String str = this.language;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            Amount amount = this.amountCharged;
            return iHashCode2 + (amount != null ? amount.hashCode() : 0);
        }

        public String toString() {
            return "Processing(transactionType=" + this.transactionType + ", language=" + this.language + ", amountCharged=" + this.amountCharged + ')';
        }

        public final TransactionType getTransactionType() {
            return this.transactionType;
        }

        public final String getLanguage() {
            return this.language;
        }

        public final Amount getAmountCharged() {
            return this.amountCharged;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Processing(TransactionType transactionType, String str, Amount amount) {
            super(null);
            Intrinsics.checkNotNullParameter(transactionType, "transactionType");
            this.transactionType = transactionType;
            this.language = str;
            this.amountCharged = amount;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$OnPaymentMethodCollectedForPaymentIntent;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "merchantUiIntent", "Landroid/content/Intent;", "(Landroid/content/Intent;)V", "getMerchantUiIntent", "()Landroid/content/Intent;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class OnPaymentMethodCollectedForPaymentIntent extends TransactionStateSummary {
        private final Intent merchantUiIntent;

        public static /* synthetic */ OnPaymentMethodCollectedForPaymentIntent copy$default(OnPaymentMethodCollectedForPaymentIntent onPaymentMethodCollectedForPaymentIntent, Intent intent, int i, Object obj) {
            if ((i & 1) != 0) {
                intent = onPaymentMethodCollectedForPaymentIntent.merchantUiIntent;
            }
            return onPaymentMethodCollectedForPaymentIntent.copy(intent);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Intent getMerchantUiIntent() {
            return this.merchantUiIntent;
        }

        public final OnPaymentMethodCollectedForPaymentIntent copy(Intent merchantUiIntent) {
            return new OnPaymentMethodCollectedForPaymentIntent(merchantUiIntent);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OnPaymentMethodCollectedForPaymentIntent) && Intrinsics.areEqual(this.merchantUiIntent, ((OnPaymentMethodCollectedForPaymentIntent) other).merchantUiIntent);
        }

        public int hashCode() {
            Intent intent = this.merchantUiIntent;
            if (intent == null) {
                return 0;
            }
            return intent.hashCode();
        }

        public String toString() {
            return "OnPaymentMethodCollectedForPaymentIntent(merchantUiIntent=" + this.merchantUiIntent + ')';
        }

        public final Intent getMerchantUiIntent() {
            return this.merchantUiIntent;
        }

        public OnPaymentMethodCollectedForPaymentIntent(Intent intent) {
            super(null);
            this.merchantUiIntent = intent;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$OnMerchantUiStarted;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class OnMerchantUiStarted extends TransactionStateSummary {
        public static final OnMerchantUiStarted INSTANCE = new OnMerchantUiStarted();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof OnMerchantUiStarted)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1710135520;
        }

        public String toString() {
            return "OnMerchantUiStarted";
        }

        private OnMerchantUiStarted() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$Canceling;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "language", "", "(Ljava/lang/String;)V", "getLanguage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Canceling extends TransactionStateSummary {
        private final String language;

        public static /* synthetic */ Canceling copy$default(Canceling canceling, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = canceling.language;
            }
            return canceling.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getLanguage() {
            return this.language;
        }

        public final Canceling copy(String language) {
            return new Canceling(language);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Canceling) && Intrinsics.areEqual(this.language, ((Canceling) other).language);
        }

        public int hashCode() {
            String str = this.language;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return "Canceling(language=" + this.language + ')';
        }

        public final String getLanguage() {
            return this.language;
        }

        public Canceling(String str) {
            super(null);
            this.language = str;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$Cancelled;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Cancelled extends TransactionStateSummary {
        public static final Cancelled INSTANCE = new Cancelled();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Cancelled)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1805605547;
        }

        public String toString() {
            return "Cancelled";
        }

        private Cancelled() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$RemoveCard;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/RemoveCardModel;", "(Lcom/stripe/hardware/paymentcollection/RemoveCardModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/RemoveCardModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class RemoveCard extends TransactionStateSummary {
        private final RemoveCardModel model;

        public static /* synthetic */ RemoveCard copy$default(RemoveCard removeCard, RemoveCardModel removeCardModel, int i, Object obj) {
            if ((i & 1) != 0) {
                removeCardModel = removeCard.model;
            }
            return removeCard.copy(removeCardModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final RemoveCardModel getModel() {
            return this.model;
        }

        public final RemoveCard copy(RemoveCardModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new RemoveCard(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof RemoveCard) && Intrinsics.areEqual(this.model, ((RemoveCard) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "RemoveCard(model=" + this.model + ')';
        }

        public final RemoveCardModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RemoveCard(RemoveCardModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$Collect;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/CollectionModel;", "(Lcom/stripe/hardware/paymentcollection/CollectionModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/CollectionModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Collect extends TransactionStateSummary {
        private final CollectionModel model;

        public static /* synthetic */ Collect copy$default(Collect collect, CollectionModel collectionModel, int i, Object obj) {
            if ((i & 1) != 0) {
                collectionModel = collect.model;
            }
            return collect.copy(collectionModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final CollectionModel getModel() {
            return this.model;
        }

        public final Collect copy(CollectionModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new Collect(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Collect) && Intrinsics.areEqual(this.model, ((Collect) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "Collect(model=" + this.model + ')';
        }

        public final CollectionModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Collect(CollectionModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$RecoverableError;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;", "(Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class RecoverableError extends TransactionStateSummary {
        private final RecoverableErrorModel model;

        public static /* synthetic */ RecoverableError copy$default(RecoverableError recoverableError, RecoverableErrorModel recoverableErrorModel, int i, Object obj) {
            if ((i & 1) != 0) {
                recoverableErrorModel = recoverableError.model;
            }
            return recoverableError.copy(recoverableErrorModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final RecoverableErrorModel getModel() {
            return this.model;
        }

        public final RecoverableError copy(RecoverableErrorModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new RecoverableError(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof RecoverableError) && Intrinsics.areEqual(this.model, ((RecoverableError) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "RecoverableError(model=" + this.model + ')';
        }

        public final RecoverableErrorModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RecoverableError(RecoverableErrorModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$ApplicationSelection;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;", "(Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ApplicationSelection extends TransactionStateSummary {
        private final ApplicationSelectionModel model;

        public static /* synthetic */ ApplicationSelection copy$default(ApplicationSelection applicationSelection, ApplicationSelectionModel applicationSelectionModel, int i, Object obj) {
            if ((i & 1) != 0) {
                applicationSelectionModel = applicationSelection.model;
            }
            return applicationSelection.copy(applicationSelectionModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ApplicationSelectionModel getModel() {
            return this.model;
        }

        public final ApplicationSelection copy(ApplicationSelectionModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new ApplicationSelection(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ApplicationSelection) && Intrinsics.areEqual(this.model, ((ApplicationSelection) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "ApplicationSelection(model=" + this.model + ')';
        }

        public final ApplicationSelectionModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ApplicationSelection(ApplicationSelectionModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$AccountSelection;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;", "(Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class AccountSelection extends TransactionStateSummary {
        private final AccountTypeSelectionModel model;

        public static /* synthetic */ AccountSelection copy$default(AccountSelection accountSelection, AccountTypeSelectionModel accountTypeSelectionModel, int i, Object obj) {
            if ((i & 1) != 0) {
                accountTypeSelectionModel = accountSelection.model;
            }
            return accountSelection.copy(accountTypeSelectionModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final AccountTypeSelectionModel getModel() {
            return this.model;
        }

        public final AccountSelection copy(AccountTypeSelectionModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new AccountSelection(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof AccountSelection) && Intrinsics.areEqual(this.model, ((AccountSelection) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "AccountSelection(model=" + this.model + ')';
        }

        public final AccountTypeSelectionModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AccountSelection(AccountTypeSelectionModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J3\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$ChargeSummary;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/transaction/ChargeAttempt;", "updateDisplay", "", "paymentMethodType", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "alreadyCompleted", "(Lcom/stripe/transaction/ChargeAttempt;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;Z)V", "getAlreadyCompleted", "()Z", "getModel", "()Lcom/stripe/transaction/ChargeAttempt;", "getPaymentMethodType", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "getUpdateDisplay", "component1", "component2", "component3", "component4", "copy", "equals", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ChargeSummary extends TransactionStateSummary {
        private final boolean alreadyCompleted;
        private final ChargeAttempt model;
        private final PaymentMethodType paymentMethodType;
        private final boolean updateDisplay;

        public static /* synthetic */ ChargeSummary copy$default(ChargeSummary chargeSummary, ChargeAttempt chargeAttempt, boolean z, PaymentMethodType paymentMethodType, boolean z2, int i, Object obj) {
            if ((i & 1) != 0) {
                chargeAttempt = chargeSummary.model;
            }
            if ((i & 2) != 0) {
                z = chargeSummary.updateDisplay;
            }
            if ((i & 4) != 0) {
                paymentMethodType = chargeSummary.paymentMethodType;
            }
            if ((i & 8) != 0) {
                z2 = chargeSummary.alreadyCompleted;
            }
            return chargeSummary.copy(chargeAttempt, z, paymentMethodType, z2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ChargeAttempt getModel() {
            return this.model;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getUpdateDisplay() {
            return this.updateDisplay;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final PaymentMethodType getPaymentMethodType() {
            return this.paymentMethodType;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getAlreadyCompleted() {
            return this.alreadyCompleted;
        }

        public final ChargeSummary copy(ChargeAttempt model, boolean updateDisplay, PaymentMethodType paymentMethodType, boolean alreadyCompleted) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new ChargeSummary(model, updateDisplay, paymentMethodType, alreadyCompleted);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ChargeSummary)) {
                return false;
            }
            ChargeSummary chargeSummary = (ChargeSummary) other;
            return Intrinsics.areEqual(this.model, chargeSummary.model) && this.updateDisplay == chargeSummary.updateDisplay && this.paymentMethodType == chargeSummary.paymentMethodType && this.alreadyCompleted == chargeSummary.alreadyCompleted;
        }

        public int hashCode() {
            int iHashCode = ((this.model.hashCode() * 31) + Boolean.hashCode(this.updateDisplay)) * 31;
            PaymentMethodType paymentMethodType = this.paymentMethodType;
            return ((iHashCode + (paymentMethodType == null ? 0 : paymentMethodType.hashCode())) * 31) + Boolean.hashCode(this.alreadyCompleted);
        }

        public String toString() {
            return "ChargeSummary(model=" + this.model + ", updateDisplay=" + this.updateDisplay + ", paymentMethodType=" + this.paymentMethodType + ", alreadyCompleted=" + this.alreadyCompleted + ')';
        }

        public /* synthetic */ ChargeSummary(ChargeAttempt chargeAttempt, boolean z, PaymentMethodType paymentMethodType, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(chargeAttempt, (i & 2) != 0 ? true : z, (i & 4) != 0 ? null : paymentMethodType, (i & 8) != 0 ? false : z2);
        }

        public final ChargeAttempt getModel() {
            return this.model;
        }

        public final boolean getUpdateDisplay() {
            return this.updateDisplay;
        }

        public final PaymentMethodType getPaymentMethodType() {
            return this.paymentMethodType;
        }

        public final boolean getAlreadyCompleted() {
            return this.alreadyCompleted;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChargeSummary(ChargeAttempt model, boolean z, PaymentMethodType paymentMethodType, boolean z2) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
            this.updateDisplay = z;
            this.paymentMethodType = paymentMethodType;
            this.alreadyCompleted = z2;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$Pin;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/PinEntryModel;", "(Lcom/stripe/hardware/paymentcollection/PinEntryModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/PinEntryModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Pin extends TransactionStateSummary {
        private final PinEntryModel model;

        public static /* synthetic */ Pin copy$default(Pin pin, PinEntryModel pinEntryModel, int i, Object obj) {
            if ((i & 1) != 0) {
                pinEntryModel = pin.model;
            }
            return pin.copy(pinEntryModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PinEntryModel getModel() {
            return this.model;
        }

        public final Pin copy(PinEntryModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new Pin(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Pin) && Intrinsics.areEqual(this.model, ((Pin) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "Pin(model=" + this.model + ')';
        }

        public final PinEntryModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Pin(PinEntryModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$UnrecoverableError;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class UnrecoverableError extends TransactionStateSummary {
        public static final UnrecoverableError INSTANCE = new UnrecoverableError();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UnrecoverableError)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -11229079;
        }

        public String toString() {
            return "UnrecoverableError";
        }

        private UnrecoverableError() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "details", "Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;", "(Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;)V", "getDetails", "()Lcom/stripe/hardware/paymentcollection/PaymentCollectionTimeoutResultDetails;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Timeout extends TransactionStateSummary {
        private final PaymentCollectionTimeoutResultDetails details;

        public static /* synthetic */ Timeout copy$default(Timeout timeout, PaymentCollectionTimeoutResultDetails paymentCollectionTimeoutResultDetails, int i, Object obj) {
            if ((i & 1) != 0) {
                paymentCollectionTimeoutResultDetails = timeout.details;
            }
            return timeout.copy(paymentCollectionTimeoutResultDetails);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaymentCollectionTimeoutResultDetails getDetails() {
            return this.details;
        }

        public final Timeout copy(PaymentCollectionTimeoutResultDetails details) {
            return new Timeout(details);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Timeout) && this.details == ((Timeout) other).details;
        }

        public int hashCode() {
            PaymentCollectionTimeoutResultDetails paymentCollectionTimeoutResultDetails = this.details;
            if (paymentCollectionTimeoutResultDetails == null) {
                return 0;
            }
            return paymentCollectionTimeoutResultDetails.hashCode();
        }

        public String toString() {
            return "Timeout(details=" + this.details + ')';
        }

        public Timeout(PaymentCollectionTimeoutResultDetails paymentCollectionTimeoutResultDetails) {
            super(null);
            this.details = paymentCollectionTimeoutResultDetails;
        }

        public final PaymentCollectionTimeoutResultDetails getDetails() {
            return this.details;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$Basket;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/DisplayCartModel;", "(Lcom/stripe/hardware/paymentcollection/DisplayCartModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/DisplayCartModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Basket extends TransactionStateSummary {
        private final DisplayCartModel model;

        public static /* synthetic */ Basket copy$default(Basket basket, DisplayCartModel displayCartModel, int i, Object obj) {
            if ((i & 1) != 0) {
                displayCartModel = basket.model;
            }
            return basket.copy(displayCartModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final DisplayCartModel getModel() {
            return this.model;
        }

        public final Basket copy(DisplayCartModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new Basket(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Basket) && Intrinsics.areEqual(this.model, ((Basket) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "Basket(model=" + this.model + ')';
        }

        public final DisplayCartModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Basket(DisplayCartModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$DynamicCurrencyConversionSelection;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;", "(Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class DynamicCurrencyConversionSelection extends TransactionStateSummary {
        private final DynamicCurrencyConversionSelectionModel model;

        public static /* synthetic */ DynamicCurrencyConversionSelection copy$default(DynamicCurrencyConversionSelection dynamicCurrencyConversionSelection, DynamicCurrencyConversionSelectionModel dynamicCurrencyConversionSelectionModel, int i, Object obj) {
            if ((i & 1) != 0) {
                dynamicCurrencyConversionSelectionModel = dynamicCurrencyConversionSelection.model;
            }
            return dynamicCurrencyConversionSelection.copy(dynamicCurrencyConversionSelectionModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final DynamicCurrencyConversionSelectionModel getModel() {
            return this.model;
        }

        public final DynamicCurrencyConversionSelection copy(DynamicCurrencyConversionSelectionModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new DynamicCurrencyConversionSelection(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DynamicCurrencyConversionSelection) && Intrinsics.areEqual(this.model, ((DynamicCurrencyConversionSelection) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "DynamicCurrencyConversionSelection(model=" + this.model + ')';
        }

        public final DynamicCurrencyConversionSelectionModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DynamicCurrencyConversionSelection(DynamicCurrencyConversionSelectionModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$NonCardPaymentMethodsSelection;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodSelectionModel;", "(Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodSelectionModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodSelectionModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class NonCardPaymentMethodsSelection extends TransactionStateSummary {
        private final NonCardPaymentMethodSelectionModel model;

        public static /* synthetic */ NonCardPaymentMethodsSelection copy$default(NonCardPaymentMethodsSelection nonCardPaymentMethodsSelection, NonCardPaymentMethodSelectionModel nonCardPaymentMethodSelectionModel, int i, Object obj) {
            if ((i & 1) != 0) {
                nonCardPaymentMethodSelectionModel = nonCardPaymentMethodsSelection.model;
            }
            return nonCardPaymentMethodsSelection.copy(nonCardPaymentMethodSelectionModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final NonCardPaymentMethodSelectionModel getModel() {
            return this.model;
        }

        public final NonCardPaymentMethodsSelection copy(NonCardPaymentMethodSelectionModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new NonCardPaymentMethodsSelection(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof NonCardPaymentMethodsSelection) && Intrinsics.areEqual(this.model, ((NonCardPaymentMethodsSelection) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "NonCardPaymentMethodsSelection(model=" + this.model + ')';
        }

        public final NonCardPaymentMethodSelectionModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NonCardPaymentMethodsSelection(NonCardPaymentMethodSelectionModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$NonCardPaymentMethodActionRequired;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "model", "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;", "(Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;)V", "getModel", "()Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class NonCardPaymentMethodActionRequired extends TransactionStateSummary {
        private final NonCardPaymentMethodActionRequiredModel model;

        public static /* synthetic */ NonCardPaymentMethodActionRequired copy$default(NonCardPaymentMethodActionRequired nonCardPaymentMethodActionRequired, NonCardPaymentMethodActionRequiredModel nonCardPaymentMethodActionRequiredModel, int i, Object obj) {
            if ((i & 1) != 0) {
                nonCardPaymentMethodActionRequiredModel = nonCardPaymentMethodActionRequired.model;
            }
            return nonCardPaymentMethodActionRequired.copy(nonCardPaymentMethodActionRequiredModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final NonCardPaymentMethodActionRequiredModel getModel() {
            return this.model;
        }

        public final NonCardPaymentMethodActionRequired copy(NonCardPaymentMethodActionRequiredModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new NonCardPaymentMethodActionRequired(model);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof NonCardPaymentMethodActionRequired) && Intrinsics.areEqual(this.model, ((NonCardPaymentMethodActionRequired) other).model);
        }

        public int hashCode() {
            return this.model.hashCode();
        }

        public String toString() {
            return "NonCardPaymentMethodActionRequired(model=" + this.model + ')';
        }

        public final NonCardPaymentMethodActionRequiredModel getModel() {
            return this.model;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NonCardPaymentMethodActionRequired(NonCardPaymentMethodActionRequiredModel model) {
            super(null);
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
        }
    }

    /* JADX INFO: compiled from: TransactionStateSummary.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/transaction/TransactionStateSummary$NonCardPaymentMethodLoading;", "Lcom/stripe/core/transaction/TransactionStateSummary;", "paymentMethodType", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V", "getPaymentMethodType", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class NonCardPaymentMethodLoading extends TransactionStateSummary {
        private final PaymentMethodType paymentMethodType;

        public static /* synthetic */ NonCardPaymentMethodLoading copy$default(NonCardPaymentMethodLoading nonCardPaymentMethodLoading, PaymentMethodType paymentMethodType, int i, Object obj) {
            if ((i & 1) != 0) {
                paymentMethodType = nonCardPaymentMethodLoading.paymentMethodType;
            }
            return nonCardPaymentMethodLoading.copy(paymentMethodType);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PaymentMethodType getPaymentMethodType() {
            return this.paymentMethodType;
        }

        public final NonCardPaymentMethodLoading copy(PaymentMethodType paymentMethodType) {
            Intrinsics.checkNotNullParameter(paymentMethodType, "paymentMethodType");
            return new NonCardPaymentMethodLoading(paymentMethodType);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof NonCardPaymentMethodLoading) && this.paymentMethodType == ((NonCardPaymentMethodLoading) other).paymentMethodType;
        }

        public int hashCode() {
            return this.paymentMethodType.hashCode();
        }

        public String toString() {
            return "NonCardPaymentMethodLoading(paymentMethodType=" + this.paymentMethodType + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NonCardPaymentMethodLoading(PaymentMethodType paymentMethodType) {
            super(null);
            Intrinsics.checkNotNullParameter(paymentMethodType, "paymentMethodType");
            this.paymentMethodType = paymentMethodType;
        }

        public final PaymentMethodType getPaymentMethodType() {
            return this.paymentMethodType;
        }
    }
}
