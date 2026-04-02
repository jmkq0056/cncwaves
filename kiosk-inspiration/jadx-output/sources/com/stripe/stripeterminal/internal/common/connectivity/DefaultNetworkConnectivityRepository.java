package com.stripe.stripeterminal.internal.common.connectivity;

import com.stripe.jvmcore.dagger.IO;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: DefaultNetworkConnectivityRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;", "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;", "connectivityManager", "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;Lkotlinx/coroutines/CoroutineDispatcher;)V", "networkConnectivityState", "Lkotlinx/coroutines/flow/StateFlow;", "", "getNetworkConnectivityState", "()Lkotlinx/coroutines/flow/StateFlow;", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultNetworkConnectivityRepository implements NetworkConnectivityRepository {
    private final NetworkConnectivityManager connectivityManager;
    private final CoroutineDispatcher dispatcher;
    private final StateFlow<Boolean> networkConnectivityState;

    @Inject
    public DefaultNetworkConnectivityRepository(NetworkConnectivityManager connectivityManager, @IO CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(connectivityManager, "connectivityManager");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.connectivityManager = connectivityManager;
        this.dispatcher = dispatcher;
        this.networkConnectivityState = FlowKt.stateIn(FlowKt.callbackFlow(new DefaultNetworkConnectivityRepository$networkConnectivityState$1(this, null)), CoroutineScopeKt.CoroutineScope(dispatcher), SharingStarted.INSTANCE.getEagerly(), false);
    }

    @Override // com.stripe.stripeterminal.internal.common.connectivity.NetworkConnectivityRepository
    public StateFlow<Boolean> getNetworkConnectivityState() {
        return this.networkConnectivityState;
    }
}
