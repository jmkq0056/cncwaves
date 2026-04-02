package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UpdatePaymentIntentParamRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\f\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\r\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\u0012\u0010\u000f\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;", "()V", "isUpdatePaymentIntentParamSet", "", "lastPaymentIntentId", "", "forceReset", "", "isLastPIEmpty", "isSamePI", OfflineStorageConstantsKt.ID, "resetIfNewPaymentIntent", "setIfNewPaymentIntent", "updatePaymentIntentParam", "setLastPI", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultUpdatePaymentIntentParamRepository implements UpdatePaymentIntentParamRepository {
    private boolean isUpdatePaymentIntentParamSet;
    private String lastPaymentIntentId;

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.UpdatePaymentIntentParamRepository
    /* JADX INFO: renamed from: isUpdatePaymentIntentParamSet, reason: from getter */
    public boolean getIsUpdatePaymentIntentParamSet() {
        return this.isUpdatePaymentIntentParamSet;
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.UpdatePaymentIntentParamRepository
    public void setIfNewPaymentIntent(String id, boolean updatePaymentIntentParam) {
        if (isLastPIEmpty() || !isSamePI(id)) {
            setLastPI(id);
            this.isUpdatePaymentIntentParamSet = updatePaymentIntentParam;
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.UpdatePaymentIntentParamRepository
    public void resetIfNewPaymentIntent(String id) {
        if (isLastPIEmpty() || !isSamePI(id)) {
            forceReset();
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.terminalsession.UpdatePaymentIntentParamRepository
    public void forceReset() {
        this.lastPaymentIntentId = null;
        this.isUpdatePaymentIntentParamSet = false;
    }

    private final void setLastPI(String id) {
        this.lastPaymentIntentId = id;
    }

    private final boolean isSamePI(String id) {
        return Intrinsics.areEqual(id, this.lastPaymentIntentId);
    }

    private final boolean isLastPIEmpty() {
        return this.lastPaymentIntentId == null;
    }
}
