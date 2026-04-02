package com.stripe.stripeterminal.internal.common.connectivity;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import com.sun.jna.Callback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NetworkConnectivityManager.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000+\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0006\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\nJ\b\u0010\u000e\u001a\u00020\fH\u0002J\u000e\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\nJ\b\u0010\u0010\u001a\u00020\fH\u0002R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;", "", "connectivityManager", "Landroid/net/ConnectivityManager;", "(Landroid/net/ConnectivityManager;)V", "callbackDelegate", "com/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1", "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1;", "networkCallbacks", "", "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;", "registerNetworkCallback", "", Callback.METHOD_NAME, "registerNetworkCallbacks", "unregisterNetworkCallback", "unregisterNetworkCallbacks", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NetworkConnectivityManager {
    private final NetworkConnectivityManager$callbackDelegate$1 callbackDelegate;
    private final ConnectivityManager connectivityManager;
    private final List<NetworkConnectivityCallback> networkCallbacks;

    /* JADX WARN: Type inference failed for: r2v3, types: [com.stripe.stripeterminal.internal.common.connectivity.NetworkConnectivityManager$callbackDelegate$1] */
    @Inject
    public NetworkConnectivityManager(ConnectivityManager connectivityManager) {
        Intrinsics.checkNotNullParameter(connectivityManager, "connectivityManager");
        this.connectivityManager = connectivityManager;
        this.networkCallbacks = new ArrayList();
        this.callbackDelegate = new ConnectivityManager.NetworkCallback() { // from class: com.stripe.stripeterminal.internal.common.connectivity.NetworkConnectivityManager$callbackDelegate$1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                Intrinsics.checkNotNullParameter(network, "network");
                super.onAvailable(network);
                int iHashCode = network.hashCode();
                Iterator it = this.this$0.networkCallbacks.iterator();
                while (it.hasNext()) {
                    ((NetworkConnectivityCallback) it.next()).onAvailable(iHashCode);
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                Intrinsics.checkNotNullParameter(network, "network");
                super.onLost(network);
                int iHashCode = network.hashCode();
                Iterator it = this.this$0.networkCallbacks.iterator();
                while (it.hasNext()) {
                    ((NetworkConnectivityCallback) it.next()).onLost(iHashCode);
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onUnavailable() {
                super.onUnavailable();
                Iterator it = this.this$0.networkCallbacks.iterator();
                while (it.hasNext()) {
                    ((NetworkConnectivityCallback) it.next()).onUnavailable();
                }
            }
        };
    }

    public final void registerNetworkCallback(NetworkConnectivityCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.networkCallbacks.add(callback);
        if (this.networkCallbacks.size() == 1) {
            registerNetworkCallbacks();
        }
    }

    public final void unregisterNetworkCallback(NetworkConnectivityCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.networkCallbacks.remove(callback);
        if (this.networkCallbacks.isEmpty()) {
            unregisterNetworkCallbacks();
        }
    }

    private final void registerNetworkCallbacks() {
        this.connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(0).addTransportType(3).addTransportType(1).addCapability(12).build(), this.callbackDelegate);
    }

    private final void unregisterNetworkCallbacks() {
        this.connectivityManager.unregisterNetworkCallback(this.callbackDelegate);
    }
}
