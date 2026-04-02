package com.stripe.jvmcore.offlinemode.repositories;

import com.stripe.stripeterminal.external.models.OfflineStatus;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: OfflineStatusRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\b\u0010\u0007\u001a\u00020\u0004H&R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;", "", "offlineStatusStateFlow", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/stripe/stripeterminal/external/models/OfflineStatus;", "getOfflineStatusStateFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "requestOfflineStatusStateUpdate", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineStatusRepository {
    StateFlow<OfflineStatus> getOfflineStatusStateFlow();

    OfflineStatus requestOfflineStatusStateUpdate();
}
