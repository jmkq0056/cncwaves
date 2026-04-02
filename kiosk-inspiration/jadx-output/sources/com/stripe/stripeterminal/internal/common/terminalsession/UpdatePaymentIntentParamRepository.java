package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;

/* JADX INFO: compiled from: UpdatePaymentIntentParamRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&J\u001a\u0010\t\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;", "", "forceReset", "", "isUpdatePaymentIntentParamSet", "", "resetIfNewPaymentIntent", OfflineStorageConstantsKt.ID, "", "setIfNewPaymentIntent", "updatePaymentIntentParam", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface UpdatePaymentIntentParamRepository {
    void forceReset();

    boolean isUpdatePaymentIntentParamSet();

    void resetIfNewPaymentIntent(String id);

    void setIfNewPaymentIntent(String id, boolean updatePaymentIntentParam);
}
