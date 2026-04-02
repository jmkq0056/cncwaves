package com.stripe.transaction;

import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.CheckForCardBehavior;
import kotlin.Metadata;

/* JADX INFO: compiled from: PaymentCollectionDeviceCapability.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"DEFAULT_PAYMENT_COLLECTION_CAPABILITY", "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "getDEFAULT_PAYMENT_COLLECTION_CAPABILITY", "()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class PaymentCollectionDeviceCapabilityKt {
    private static final PaymentCollectionDeviceCapability DEFAULT_PAYMENT_COLLECTION_CAPABILITY = new PaymentCollectionDeviceCapability(true, true, CheckForCardBehavior.POLL_FOR_CARD_REMOVAL, ReaderConfiguration.INSTANCE.getSWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY(), false, false, false, 112, null);

    public static final PaymentCollectionDeviceCapability getDEFAULT_PAYMENT_COLLECTION_CAPABILITY() {
        return DEFAULT_PAYMENT_COLLECTION_CAPABILITY;
    }
}
