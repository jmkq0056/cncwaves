package com.stripe.core.connectivity.dagger;

import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import com.stripe.core.connectivity.ConnectivityRepository;
import com.stripe.core.connectivity.ConnectivityStatus;
import com.stripe.core.connectivity.DefaultConnectivityRepository;
import com.stripe.core.connectivity.cellular.CellularNetworkCallback;
import com.stripe.core.connectivity.ethernet.EthernetNetworkCallback;
import com.stripe.core.connectivity.wifi.WifiNetworkCallback;
import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.dagger.IsNetworkAvailable;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ConnectivityModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0001¢\u0006\u0002\b\tJI\u0010\n\u001a\u00020\u000b2\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\b\u0001\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0004H\u0001¢\u0006\u0002\b\u0017J\r\u0010\u0018\u001a\u00020\u0015H\u0001¢\u0006\u0002\b\u0019J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000bH\u0007J\u001f\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000f2\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0001¢\u0006\u0002\b\u001e¨\u0006\u001f"}, d2 = {"Lcom/stripe/core/connectivity/dagger/ConnectivityModule;", "", "()V", "providesCellularNetworkCallback", "Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;", "telephonyManager", "Landroid/telephony/TelephonyManager;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "providesCellularNetworkCallback$connectivity_release", "providesConnectivityRepository", "Lcom/stripe/core/connectivity/ConnectivityRepository;", "connectivityManager", "Landroid/net/ConnectivityManager;", "wifiManager", "Landroid/net/wifi/WifiManager;", "coroutineDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "wifiNetworkCallback", "Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;", "ethernetNetworkCallback", "Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;", "cellularNetworkCallback", "providesConnectivityRepository$connectivity_release", "providesEthernetNetworkCallback", "providesEthernetNetworkCallback$connectivity_release", "providesIsNetworkAvailable", "", "connectivityRepository", "providesWifiNetworkCallback", "providesWifiNetworkCallback$connectivity_release", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ConnectivityModule {
    public static final ConnectivityModule INSTANCE = new ConnectivityModule();

    private ConnectivityModule() {
    }

    @Provides
    @Singleton
    public final ConnectivityRepository providesConnectivityRepository$connectivity_release(@AppScope CoroutineScope appScope, ConnectivityManager connectivityManager, WifiManager wifiManager, @IO CoroutineDispatcher coroutineDispatcher, WifiNetworkCallback wifiNetworkCallback, EthernetNetworkCallback ethernetNetworkCallback, CellularNetworkCallback cellularNetworkCallback) {
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(connectivityManager, "connectivityManager");
        Intrinsics.checkNotNullParameter(wifiManager, "wifiManager");
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
        Intrinsics.checkNotNullParameter(wifiNetworkCallback, "wifiNetworkCallback");
        Intrinsics.checkNotNullParameter(ethernetNetworkCallback, "ethernetNetworkCallback");
        Intrinsics.checkNotNullParameter(cellularNetworkCallback, "cellularNetworkCallback");
        return new DefaultConnectivityRepository(appScope, connectivityManager, wifiManager, wifiNetworkCallback, ethernetNetworkCallback, cellularNetworkCallback, coroutineDispatcher);
    }

    @IsNetworkAvailable
    @Provides
    public final boolean providesIsNetworkAvailable(ConnectivityRepository connectivityRepository) {
        Intrinsics.checkNotNullParameter(connectivityRepository, "connectivityRepository");
        return connectivityRepository.getGeneralConnectivityStatusFlow().getValue() == ConnectivityStatus.AVAILABLE;
    }

    @Provides
    public final WifiNetworkCallback providesWifiNetworkCallback$connectivity_release(WifiManager wifiManager, @AppScope CoroutineScope appScope) {
        Intrinsics.checkNotNullParameter(wifiManager, "wifiManager");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        return new WifiNetworkCallback(wifiManager, appScope);
    }

    @Provides
    public final EthernetNetworkCallback providesEthernetNetworkCallback$connectivity_release() {
        return new EthernetNetworkCallback();
    }

    @Provides
    public final CellularNetworkCallback providesCellularNetworkCallback$connectivity_release(TelephonyManager telephonyManager, @AppScope CoroutineScope appScope) {
        Intrinsics.checkNotNullParameter(telephonyManager, "telephonyManager");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        return new CellularNetworkCallback(telephonyManager, appScope);
    }
}
