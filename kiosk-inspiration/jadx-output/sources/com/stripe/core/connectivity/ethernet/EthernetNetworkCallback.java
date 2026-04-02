package com.stripe.core.connectivity.ethernet;

import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import com.stripe.core.connectivity.Connection;
import com.stripe.core.connectivity.LinkPropertiesKt;
import com.stripe.core.connectivity.NetworkCallback;
import com.stripe.core.connectivity.NetworkLinkProperties;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: EthernetNetworkCallback.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0017\u001a\u00020\u0011H\u0016R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00070\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;", "Lcom/stripe/core/connectivity/NetworkCallback;", "Lcom/stripe/core/connectivity/Connection$Type$Ethernet;", "Landroid/net/ConnectivityManager$NetworkCallback;", "()V", "_connectionFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/stripe/core/connectivity/Connection;", "_linkProperties", "Lcom/stripe/core/connectivity/NetworkLinkProperties;", "connectionFlow", "Lkotlinx/coroutines/flow/StateFlow;", "getConnectionFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "linkProperties", "getLinkProperties", "onAvailable", "", "network", "Landroid/net/Network;", "onLinkPropertiesChanged", "Landroid/net/LinkProperties;", "onLost", "onUnavailable", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EthernetNetworkCallback extends ConnectivityManager.NetworkCallback implements NetworkCallback<Connection.Type.Ethernet> {
    private final MutableStateFlow<Connection<Connection.Type.Ethernet>> _connectionFlow;
    private final MutableStateFlow<NetworkLinkProperties> _linkProperties;
    private final StateFlow<Connection<Connection.Type.Ethernet>> connectionFlow;
    private final StateFlow<NetworkLinkProperties> linkProperties;

    public EthernetNetworkCallback() {
        MutableStateFlow<NetworkLinkProperties> MutableStateFlow = StateFlowKt.MutableStateFlow(null);
        this._linkProperties = MutableStateFlow;
        this.linkProperties = FlowKt.asStateFlow(MutableStateFlow);
        Connection.Unknown.Companion companion = Connection.Unknown.INSTANCE;
        MutableStateFlow<Connection<Connection.Type.Ethernet>> MutableStateFlow2 = StateFlowKt.MutableStateFlow(new Connection.Unknown(Reflection.getOrCreateKotlinClass(Connection.Type.Ethernet.class)));
        this._connectionFlow = MutableStateFlow2;
        this.connectionFlow = FlowKt.asStateFlow(MutableStateFlow2);
    }

    @Override // com.stripe.core.connectivity.NetworkCallback
    public StateFlow<NetworkLinkProperties> getLinkProperties() {
        return this.linkProperties;
    }

    @Override // com.stripe.core.connectivity.NetworkCallback
    public StateFlow<Connection<Connection.Type.Ethernet>> getConnectionFlow() {
        return this.connectionFlow;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        this._connectionFlow.setValue(new Connection.Connected(Connection.Type.Ethernet.INSTANCE));
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onUnavailable() {
        MutableStateFlow<Connection<Connection.Type.Ethernet>> mutableStateFlow = this._connectionFlow;
        Connection.Disconnected.Companion companion = Connection.Disconnected.INSTANCE;
        mutableStateFlow.setValue(new Connection.Disconnected(Reflection.getOrCreateKotlinClass(Connection.Type.Ethernet.class)));
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(linkProperties, "linkProperties");
        this._linkProperties.setValue(LinkPropertiesKt.toNetworkLinkProperties(linkProperties));
        this._connectionFlow.setValue(new Connection.Connected(Connection.Type.Ethernet.INSTANCE));
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        MutableStateFlow<Connection<Connection.Type.Ethernet>> mutableStateFlow = this._connectionFlow;
        Connection.Disconnected.Companion companion = Connection.Disconnected.INSTANCE;
        mutableStateFlow.setValue(new Connection.Disconnected(Reflection.getOrCreateKotlinClass(Connection.Type.Ethernet.class)));
        this._linkProperties.setValue(null);
    }
}
