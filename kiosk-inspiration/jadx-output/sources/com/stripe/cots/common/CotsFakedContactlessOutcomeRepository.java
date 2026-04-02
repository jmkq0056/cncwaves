package com.stripe.cots.common;

import com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeRequest;
import kotlin.Metadata;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: CotsFakedContactlessOutcomeRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/cots/common/CotsFakedContactlessOutcomeRepository;", "", "()V", "selectedOutcome", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;", "getSelectedOutcome", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsFakedContactlessOutcomeRepository {
    public static final CotsFakedContactlessOutcomeRepository INSTANCE = new CotsFakedContactlessOutcomeRepository();
    private static final MutableStateFlow<CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType> selectedOutcome = StateFlowKt.MutableStateFlow(CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType.VISA);

    private CotsFakedContactlessOutcomeRepository() {
    }

    public final MutableStateFlow<CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType> getSelectedOutcome() {
        return selectedOutcome;
    }
}
