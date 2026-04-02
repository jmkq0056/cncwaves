package com.stripe.stripeterminal.internal.common.connectivity.dagger;

import android.net.ConnectivityManager;
import com.stripe.jvmcore.dagger.IsNetworkAvailable;
import com.stripe.stripeterminal.internal.common.connectivity.DefaultNetworkConnectivityRepository;
import com.stripe.stripeterminal.internal.common.connectivity.NetworkConnectivityManager;
import com.stripe.stripeterminal.internal.common.connectivity.NetworkConnectivityRepository;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: NetworkConnectivityModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0007¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;", "", "()V", "provideNetworkConnectivityFlow", "Lkotlinx/coroutines/flow/Flow;", "", "networkConnectivityRepository", "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;", "providesIsNetworkAvailable", "providesNetworkConnectivityManager", "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;", "connectivityManager", "Landroid/net/ConnectivityManager;", "providesNetworkConnectivityRepository", "defaultNetworkConnectivityRepository", "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class NetworkConnectivityModule {
    @Provides
    public final NetworkConnectivityRepository providesNetworkConnectivityRepository(DefaultNetworkConnectivityRepository defaultNetworkConnectivityRepository) {
        Intrinsics.checkNotNullParameter(defaultNetworkConnectivityRepository, "defaultNetworkConnectivityRepository");
        return defaultNetworkConnectivityRepository;
    }

    @Provides
    public final NetworkConnectivityManager providesNetworkConnectivityManager(ConnectivityManager connectivityManager) {
        Intrinsics.checkNotNullParameter(connectivityManager, "connectivityManager");
        return new NetworkConnectivityManager(connectivityManager);
    }

    @IsNetworkAvailable
    @Provides
    public final boolean providesIsNetworkAvailable(NetworkConnectivityRepository networkConnectivityRepository) {
        Intrinsics.checkNotNullParameter(networkConnectivityRepository, "networkConnectivityRepository");
        return networkConnectivityRepository.hasNetwork();
    }

    @IsNetworkAvailable
    @Provides
    public final Flow<Boolean> provideNetworkConnectivityFlow(NetworkConnectivityRepository networkConnectivityRepository) {
        Intrinsics.checkNotNullParameter(networkConnectivityRepository, "networkConnectivityRepository");
        return networkConnectivityRepository.getNetworkConnectivityState();
    }
}
