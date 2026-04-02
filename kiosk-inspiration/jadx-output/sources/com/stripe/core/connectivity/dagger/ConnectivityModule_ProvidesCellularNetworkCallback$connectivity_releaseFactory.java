package com.stripe.core.connectivity.dagger;

import android.telephony.TelephonyManager;
import com.stripe.core.connectivity.cellular.CellularNetworkCallback;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class ConnectivityModule_ProvidesCellularNetworkCallback$connectivity_releaseFactory implements Factory<CellularNetworkCallback> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<TelephonyManager> telephonyManagerProvider;

    public ConnectivityModule_ProvidesCellularNetworkCallback$connectivity_releaseFactory(Provider<TelephonyManager> provider, Provider<CoroutineScope> provider2) {
        this.telephonyManagerProvider = provider;
        this.appScopeProvider = provider2;
    }

    @Override // javax.inject.Provider
    public CellularNetworkCallback get() {
        return providesCellularNetworkCallback$connectivity_release(this.telephonyManagerProvider.get(), this.appScopeProvider.get());
    }

    public static ConnectivityModule_ProvidesCellularNetworkCallback$connectivity_releaseFactory create(Provider<TelephonyManager> provider, Provider<CoroutineScope> provider2) {
        return new ConnectivityModule_ProvidesCellularNetworkCallback$connectivity_releaseFactory(provider, provider2);
    }

    public static CellularNetworkCallback providesCellularNetworkCallback$connectivity_release(TelephonyManager telephonyManager, CoroutineScope coroutineScope) {
        return (CellularNetworkCallback) Preconditions.checkNotNullFromProvides(ConnectivityModule.INSTANCE.providesCellularNetworkCallback$connectivity_release(telephonyManager, coroutineScope));
    }
}
