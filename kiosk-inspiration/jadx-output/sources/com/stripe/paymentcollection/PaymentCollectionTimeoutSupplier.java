package com.stripe.paymentcollection;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import kotlin.Metadata;
import kotlin.time.Duration;

/* JADX INFO: compiled from: PaymentCollectionTimeoutSupplier.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001J'\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\b\bø\u0001\u0002\u0082\u0002\u0011\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;", "", "get", "Lkotlin/time/Duration;", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "get-3UGz1UU", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PaymentCollectionTimeoutSupplier {
    /* JADX INFO: renamed from: get-3UGz1UU */
    Duration mo494get3UGz1UU(PaymentCollectionState state, PaymentCollectionData data);
}
