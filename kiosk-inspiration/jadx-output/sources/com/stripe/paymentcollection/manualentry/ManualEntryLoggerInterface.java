package com.stripe.paymentcollection.manualentry;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import kotlin.Metadata;

/* JADX INFO: compiled from: ManualEntryLoggerInterface.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;", "", "onEnter", "", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;", "onExit", "data", "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;", "onInvalidInput", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ManualEntryLoggerInterface {
    void onEnter(ManualEntryState state);

    void onExit(ManualEntryData data);

    void onInvalidInput(ManualEntryData data);
}
