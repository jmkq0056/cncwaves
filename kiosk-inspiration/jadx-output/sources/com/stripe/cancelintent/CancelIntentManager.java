package com.stripe.cancelintent;

import com.stripe.stripeterminal.internal.common.p000enum.AdapterType;
import kotlin.Metadata;

/* JADX INFO: compiled from: CancelIntentManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH&J \u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/cancelintent/CancelIntentManager;", "", "cancelIntent", "", "intentId", "", "onCompleteIntentOperation", "intentOperation", "Lcom/stripe/cancelintent/CancelableIntentOperation;", "onQueueIntentOperation", "adapterType", "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface CancelIntentManager {
    void cancelIntent(String intentId);

    void onCompleteIntentOperation(String intentId, CancelableIntentOperation intentOperation);

    void onQueueIntentOperation(String intentId, CancelableIntentOperation intentOperation, AdapterType adapterType);
}
