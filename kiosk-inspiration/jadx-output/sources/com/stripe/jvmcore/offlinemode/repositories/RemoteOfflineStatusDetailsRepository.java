package com.stripe.jvmcore.offlinemode.repositories;

import com.stripe.proto.api.sdk.NetworkStatus;
import com.stripe.proto.api.sdk.OfflineStats;
import com.stripe.stripeterminal.external.models.OfflineStatusDetails;
import com.stripe.stripeterminal.internal.common.extensions.NetworkStatusExtensionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: RemoteOfflineStatusDetailsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u0012\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u001c\u0010\u0017\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002J\u0012\u0010\u001a\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00058B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;", "()V", "value", "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;", "cachedOfflineStatusDetails", "getCachedOfflineStatusDetails", "()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;", "setCachedOfflineStatusDetails", "(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)V", "offlineStatusDetailsStateFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "getOfflineStatusDetailsStateFlow", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "clear", "", "requestOfflineStatusDetailsUpdate", "saveStats", "stats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "networkStatus", "Lcom/stripe/proto/api/sdk/NetworkStatus;", "updateCachedDetails", "sdkNetworkStatus", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "updateStats", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RemoteOfflineStatusDetailsRepository implements OfflineStatusDetailsRepository, OfflineStatusDetailsListener {
    private final MutableStateFlow<OfflineStatusDetails> offlineStatusDetailsStateFlow = StateFlowKt.MutableStateFlow(null);

    @Override // com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsRepository
    public OfflineStatusDetails requestOfflineStatusDetailsUpdate() {
        return null;
    }

    private final synchronized OfflineStatusDetails getCachedOfflineStatusDetails() {
        return getOfflineStatusDetailsStateFlow().getValue();
    }

    private final synchronized void setCachedOfflineStatusDetails(OfflineStatusDetails offlineStatusDetails) {
        getOfflineStatusDetailsStateFlow().setValue(offlineStatusDetails);
    }

    @Override // com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsListener
    public void saveStats(OfflineStats stats, NetworkStatus networkStatus) {
        Intrinsics.checkNotNullParameter(networkStatus, "networkStatus");
        updateCachedDetails(stats, NetworkStatusExtensionsKt.toSdkNetworkStatus(networkStatus));
    }

    private final void updateCachedDetails(OfflineStats stats, com.stripe.stripeterminal.external.models.NetworkStatus sdkNetworkStatus) {
        if (stats == null || sdkNetworkStatus == null) {
            return;
        }
        setCachedOfflineStatusDetails(new OfflineStatusDetails(stats.payments_count, stats.setup_intents_count, stats.payment_amounts_by_currency, sdkNetworkStatus));
    }

    @Override // com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsListener
    public void updateStats(OfflineStats stats) {
        com.stripe.stripeterminal.external.models.NetworkStatus networkStatus;
        OfflineStatusDetails cachedOfflineStatusDetails = getCachedOfflineStatusDetails();
        if (cachedOfflineStatusDetails == null || (networkStatus = cachedOfflineStatusDetails.getNetworkStatus()) == null) {
            networkStatus = com.stripe.stripeterminal.external.models.NetworkStatus.UNKNOWN;
        }
        updateCachedDetails(stats, networkStatus);
    }

    @Override // com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsListener
    public void clear() {
        setCachedOfflineStatusDetails(null);
    }

    @Override // com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsRepository
    public MutableStateFlow<OfflineStatusDetails> getOfflineStatusDetailsStateFlow() {
        return this.offlineStatusDetailsStateFlow;
    }
}
