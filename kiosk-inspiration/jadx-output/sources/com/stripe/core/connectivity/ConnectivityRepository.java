package com.stripe.core.connectivity;

import android.net.wifi.WifiConfiguration;
import com.stripe.core.connectivity.Connection;
import java.net.Inet4Address;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: ConnectivityRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000 ,2\u00020\u0001:\u0001,J\u0018\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020\u001aH¦@¢\u0006\u0002\u0010#J\b\u0010$\u001a\u00020%H&J\u0016\u0010&\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(H&J\u0018\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010*0\u00032\u0006\u0010'\u001a\u00020(H&J\b\u0010+\u001a\u00020!H&R\u001e\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u0004\u0018\u00010\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0007R\u0018\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0007R\u0018\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0010R\u0012\u0010\u0019\u001a\u00020\u001aX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u001e\u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006-À\u0006\u0001"}, d2 = {"Lcom/stripe/core/connectivity/ConnectivityRepository;", "", "cellularConnectionFlow", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/stripe/core/connectivity/Connection;", "Lcom/stripe/core/connectivity/Connection$Type$Cellular;", "getCellularConnectionFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "connectedWifiConfiguration", "Landroid/net/wifi/WifiConfiguration;", "getConnectedWifiConfiguration", "()Landroid/net/wifi/WifiConfiguration;", "defaultDnsServers", "", "Ljava/net/Inet4Address;", "getDefaultDnsServers", "()Ljava/util/List;", "ethernetConnectionFlow", "Lcom/stripe/core/connectivity/Connection$Type$Ethernet;", "getEthernetConnectionFlow", "generalConnectivityStatusFlow", "Lcom/stripe/core/connectivity/ConnectivityStatus;", "getGeneralConnectivityStatusFlow", "recommendedDnsServers", "getRecommendedDnsServers", "routerMacAddress", "", "getRouterMacAddress", "()Ljava/lang/String;", "wifiConnectionFlow", "Lcom/stripe/core/connectivity/Connection$Type$Wifi;", "getWifiConnectionFlow", "canResolveDns", "", "localIpAddress", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "disconnectAndRemoveSavedConfigurations", "", "getIpAddress", "connectivityType", "Lcom/stripe/core/connectivity/ConnectivityType;", "getNetworkLinkPropertiesFlow", "Lcom/stripe/core/connectivity/NetworkLinkProperties;", "hasConfiguredWifiNetworks", "Companion", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ConnectivityRepository {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final String UNKNOWN_SSID = "<unknown ssid>";

    Object canResolveDns(String str, Continuation<? super Boolean> continuation);

    void disconnectAndRemoveSavedConfigurations();

    StateFlow<Connection<Connection.Type.Cellular>> getCellularConnectionFlow();

    WifiConfiguration getConnectedWifiConfiguration();

    List<Inet4Address> getDefaultDnsServers();

    StateFlow<Connection<Connection.Type.Ethernet>> getEthernetConnectionFlow();

    StateFlow<ConnectivityStatus> getGeneralConnectivityStatusFlow();

    String getIpAddress(ConnectivityType connectivityType);

    StateFlow<NetworkLinkProperties> getNetworkLinkPropertiesFlow(ConnectivityType connectivityType);

    List<Inet4Address> getRecommendedDnsServers();

    String getRouterMacAddress();

    StateFlow<Connection<Connection.Type.Wifi>> getWifiConnectionFlow();

    boolean hasConfiguredWifiNetworks();

    static /* synthetic */ String getIpAddress$default(ConnectivityRepository connectivityRepository, ConnectivityType connectivityType, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getIpAddress");
        }
        if ((i & 1) != 0) {
            connectivityType = null;
        }
        return connectivityRepository.getIpAddress(connectivityType);
    }

    static /* synthetic */ Object canResolveDns$default(ConnectivityRepository connectivityRepository, String str, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: canResolveDns");
        }
        if ((i & 1) != 0) {
            str = "192.168.0.1";
        }
        return connectivityRepository.canResolveDns(str, continuation);
    }

    /* JADX INFO: compiled from: ConnectivityRepository.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/connectivity/ConnectivityRepository$Companion;", "", "()V", "UNKNOWN_SSID", "", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final String UNKNOWN_SSID = "<unknown ssid>";

        private Companion() {
        }
    }
}
