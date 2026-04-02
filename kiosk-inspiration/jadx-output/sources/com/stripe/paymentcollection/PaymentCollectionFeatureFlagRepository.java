package com.stripe.paymentcollection;

import kotlin.Metadata;

/* JADX INFO: compiled from: PaymentCollectionFeatureFlagRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&J\b\u0010\b\u001a\u00020\u0003H&J\b\u0010\t\u001a\u00020\u0003H&J\b\u0010\n\u001a\u00020\u0003H&J\b\u0010\u000b\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;", "", "applicationSelectionInQuickChipEnabled", "", "ktlvDiscrepancyReportingEnabled", "ktlvEnabled", "magStripePinEnabled", "motoTransactionsEnabled", "newIncrementalAuthUiEnabled", "predipDisabled", "sposGirocardEnabled", "transactionLogEnabled", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PaymentCollectionFeatureFlagRepository {
    boolean applicationSelectionInQuickChipEnabled();

    boolean ktlvDiscrepancyReportingEnabled();

    boolean ktlvEnabled();

    boolean magStripePinEnabled();

    boolean motoTransactionsEnabled();

    boolean newIncrementalAuthUiEnabled();

    boolean predipDisabled();

    boolean sposGirocardEnabled();

    boolean transactionLogEnabled();
}
