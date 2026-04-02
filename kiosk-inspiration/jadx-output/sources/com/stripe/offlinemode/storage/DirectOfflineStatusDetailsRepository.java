package com.stripe.offlinemode.storage;

import com.stripe.jvmcore.dagger.Offline;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsRepository;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.external.models.OfflineStatusDetails;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: DirectOfflineStatusDetailsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0014\b\u0001\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007¢\u0006\u0002\u0010\nJ\n\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "offlineRepository", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "networkStatusFlowProvider", "Ljavax/inject/Provider;", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/offlinemode/storage/OfflineRepository;Ljavax/inject/Provider;)V", "cachedNetworkStatus", "offlineStatusDetailsStateFlow", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;", "getOfflineStatusDetailsStateFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "requestOfflineStatusDetailsUpdate", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DirectOfflineStatusDetailsRepository implements OfflineStatusDetailsRepository {
    private NetworkStatus cachedNetworkStatus;
    private final Provider<Flow<NetworkStatus>> networkStatusFlowProvider;
    private final OfflineRepository offlineRepository;
    private final StateFlow<OfflineStatusDetails> offlineStatusDetailsStateFlow;

    public DirectOfflineStatusDetailsRepository(CoroutineScope scope, @Offline OfflineRepository offlineRepository, @Offline Provider<Flow<NetworkStatus>> networkStatusFlowProvider) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(networkStatusFlowProvider, "networkStatusFlowProvider");
        this.offlineRepository = offlineRepository;
        this.networkStatusFlowProvider = networkStatusFlowProvider;
        this.cachedNetworkStatus = NetworkStatus.UNKNOWN;
        Flow<OfflineEntityStats> offlineRequestStatsFlow = offlineRepository.getOfflineRequestStatsFlow();
        Flow<NetworkStatus> flow = networkStatusFlowProvider.get();
        Intrinsics.checkNotNullExpressionValue(flow, "get(...)");
        this.offlineStatusDetailsStateFlow = FlowKt.stateIn(FlowKt.combine(offlineRequestStatsFlow, flow, new DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1(this, null)), scope, SharingStarted.INSTANCE.getEagerly(), new OfflineStatusDetails(0, 0, MapsKt.emptyMap(), NetworkStatus.UNKNOWN));
    }

    @Override // com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsRepository
    public StateFlow<OfflineStatusDetails> getOfflineStatusDetailsStateFlow() {
        return this.offlineStatusDetailsStateFlow;
    }

    @Override // com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsRepository
    public OfflineStatusDetails requestOfflineStatusDetailsUpdate() {
        OfflineEntityStats offlineEntityStatsForceBlockingUpdateOfflinePaymentStats = this.offlineRepository.forceBlockingUpdateOfflinePaymentStats();
        if (offlineEntityStatsForceBlockingUpdateOfflinePaymentStats == null) {
            return null;
        }
        return new OfflineStatusDetails(offlineEntityStatsForceBlockingUpdateOfflinePaymentStats.getPaymentIntentCount(), offlineEntityStatsForceBlockingUpdateOfflinePaymentStats.getSetupIntentCount(), offlineEntityStatsForceBlockingUpdateOfflinePaymentStats.getPaymentIntentAmountsByCurrency(), this.cachedNetworkStatus);
    }
}
