package com.stripe.paymentcollection;

import com.stripe.jvmcore.storage.SharedPrefs;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultPaymentCollectionFeatureFlagRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000b\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\tH\u0016J\b\u0010\r\u001a\u00020\tH\u0016J\b\u0010\u000e\u001a\u00020\tH\u0016J\b\u0010\u000f\u001a\u00020\tH\u0016J\b\u0010\u0010\u001a\u00020\tH\u0016J\b\u0010\u0011\u001a\u00020\tH\u0016R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;", "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;", "readerFeatureFlags", "Ljavax/inject/Provider;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "sharedPrefs", "Lcom/stripe/jvmcore/storage/SharedPrefs;", "(Ljavax/inject/Provider;Lcom/stripe/jvmcore/storage/SharedPrefs;)V", "applicationSelectionInQuickChipEnabled", "", "ktlvDiscrepancyReportingEnabled", "ktlvEnabled", "magStripePinEnabled", "motoTransactionsEnabled", "newIncrementalAuthUiEnabled", "predipDisabled", "sposGirocardEnabled", "transactionLogEnabled", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultPaymentCollectionFeatureFlagRepository implements PaymentCollectionFeatureFlagRepository {
    private final Provider<ReaderFeatureFlags> readerFeatureFlags;
    private final SharedPrefs sharedPrefs;

    public DefaultPaymentCollectionFeatureFlagRepository(Provider<ReaderFeatureFlags> readerFeatureFlags, SharedPrefs sharedPrefs) {
        Intrinsics.checkNotNullParameter(readerFeatureFlags, "readerFeatureFlags");
        Intrinsics.checkNotNullParameter(sharedPrefs, "sharedPrefs");
        this.readerFeatureFlags = readerFeatureFlags;
        this.sharedPrefs = sharedPrefs;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository
    public boolean applicationSelectionInQuickChipEnabled() {
        return this.readerFeatureFlags.get().enable_application_selection_in_quick_chip;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository
    public boolean magStripePinEnabled() {
        return this.readerFeatureFlags.get().enable_mag_stripe_pin;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository
    public boolean predipDisabled() {
        return this.readerFeatureFlags.get().disable_predip;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository
    public boolean newIncrementalAuthUiEnabled() {
        return this.readerFeatureFlags.get().enable_new_incremental_auth_ui;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository
    public boolean transactionLogEnabled() {
        return this.sharedPrefs.getTransactionLogEnabled();
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository
    public boolean motoTransactionsEnabled() {
        return this.readerFeatureFlags.get().enable_moto_transactions;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository
    public boolean ktlvDiscrepancyReportingEnabled() {
        return this.readerFeatureFlags.get().enable_ktlv_discrepancy_reporting_pcs;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository
    public boolean ktlvEnabled() {
        return this.readerFeatureFlags.get().enable_ktlv_pcs;
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository
    public boolean sposGirocardEnabled() {
        return this.readerFeatureFlags.get().enable_spos_girocard;
    }
}
