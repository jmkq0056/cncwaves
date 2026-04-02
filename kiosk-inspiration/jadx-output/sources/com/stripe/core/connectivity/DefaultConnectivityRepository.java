package com.stripe.core.connectivity;

import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import com.stripe.core.connectivity.Connection;
import com.stripe.core.connectivity.cellular.CellularNetworkCallback;
import com.stripe.core.connectivity.ethernet.EthernetNetworkCallback;
import com.stripe.core.connectivity.wifi.WifiConfigurationUtilities;
import com.stripe.core.connectivity.wifi.WifiNetworkCallback;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: ConnectivityRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 @2\u00020\u0001:\u0001@B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J\u0016\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020)H\u0096@¢\u0006\u0002\u00102J)\u00103\u001a\u00020$2\u001a\u00104\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u001305\"\u0006\u0012\u0002\b\u00030\u0013H\u0002¢\u0006\u0002\u00106J\b\u00107\u001a\u000208H\u0017J\u0014\u00109\u001a\u0004\u0018\u00010)2\b\u0010:\u001a\u0004\u0018\u00010;H\u0017J\u0018\u0010<\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010=0\u00122\u0006\u0010:\u001a\u00020;H\u0016J\b\u0010>\u001a\u000200H\u0017J\b\u0010?\u001a\u000208H\u0003R \u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u0012X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00188WX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR \u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0\u00130\u0012X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010#\u001a\b\u0012\u0004\u0012\u00020$0\u0012X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0016R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010&\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010\u001fR\u0014\u0010(\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+R \u0010,\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020-0\u00130\u0012X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006A"}, d2 = {"Lcom/stripe/core/connectivity/DefaultConnectivityRepository;", "Lcom/stripe/core/connectivity/ConnectivityRepository;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "connectivityManager", "Landroid/net/ConnectivityManager;", "wifiManager", "Landroid/net/wifi/WifiManager;", "wifiNetworkCallback", "Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;", "ethernetNetworkCallback", "Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;", "cellularNetworkCallback", "Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;", "io", "Lkotlin/coroutines/CoroutineContext;", "(Lkotlinx/coroutines/CoroutineScope;Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;Lkotlin/coroutines/CoroutineContext;)V", "cellularConnectionFlow", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/stripe/core/connectivity/Connection;", "Lcom/stripe/core/connectivity/Connection$Type$Cellular;", "getCellularConnectionFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "connectedWifiConfiguration", "Landroid/net/wifi/WifiConfiguration;", "getConnectedWifiConfiguration", "()Landroid/net/wifi/WifiConfiguration;", "defaultDnsServers", "", "Ljava/net/Inet4Address;", "getDefaultDnsServers", "()Ljava/util/List;", "ethernetConnectionFlow", "Lcom/stripe/core/connectivity/Connection$Type$Ethernet;", "getEthernetConnectionFlow", "generalConnectivityStatusFlow", "Lcom/stripe/core/connectivity/ConnectivityStatus;", "getGeneralConnectivityStatusFlow", "recommendedDnsServers", "getRecommendedDnsServers", "routerMacAddress", "", "getRouterMacAddress", "()Ljava/lang/String;", "wifiConnectionFlow", "Lcom/stripe/core/connectivity/Connection$Type$Wifi;", "getWifiConnectionFlow", "canResolveDns", "", "localIpAddress", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "connectionDataTransformer", "connections", "", "([Lcom/stripe/core/connectivity/Connection;)Lcom/stripe/core/connectivity/ConnectivityStatus;", "disconnectAndRemoveSavedConfigurations", "", "getIpAddress", "connectivityType", "Lcom/stripe/core/connectivity/ConnectivityType;", "getNetworkLinkPropertiesFlow", "Lcom/stripe/core/connectivity/NetworkLinkProperties;", "hasConfiguredWifiNetworks", "listenForConnectivityChanges", "Companion", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultConnectivityRepository implements ConnectivityRepository {
    private static final String DEVICE_DOMAIN_NAME_SUFFIX = "device.stripe-terminal-local-reader.net";
    private final StateFlow<Connection<Connection.Type.Cellular>> cellularConnectionFlow;
    private final CellularNetworkCallback cellularNetworkCallback;
    private final ConnectivityManager connectivityManager;
    private final StateFlow<Connection<Connection.Type.Ethernet>> ethernetConnectionFlow;
    private final EthernetNetworkCallback ethernetNetworkCallback;
    private final StateFlow<ConnectivityStatus> generalConnectivityStatusFlow;
    private final CoroutineContext io;
    private final StateFlow<Connection<Connection.Type.Wifi>> wifiConnectionFlow;
    private final WifiManager wifiManager;
    private final WifiNetworkCallback wifiNetworkCallback;

    /* JADX INFO: compiled from: ConnectivityRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ConnectivityType.values().length];
            try {
                iArr[ConnectivityType.CELLULAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConnectivityType.ETHERNET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ConnectivityType.WIFI.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DefaultConnectivityRepository(CoroutineScope appScope, ConnectivityManager connectivityManager, WifiManager wifiManager, WifiNetworkCallback wifiNetworkCallback, EthernetNetworkCallback ethernetNetworkCallback, CellularNetworkCallback cellularNetworkCallback, CoroutineContext io2) {
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(connectivityManager, "connectivityManager");
        Intrinsics.checkNotNullParameter(wifiManager, "wifiManager");
        Intrinsics.checkNotNullParameter(wifiNetworkCallback, "wifiNetworkCallback");
        Intrinsics.checkNotNullParameter(ethernetNetworkCallback, "ethernetNetworkCallback");
        Intrinsics.checkNotNullParameter(cellularNetworkCallback, "cellularNetworkCallback");
        Intrinsics.checkNotNullParameter(io2, "io");
        this.connectivityManager = connectivityManager;
        this.wifiManager = wifiManager;
        this.wifiNetworkCallback = wifiNetworkCallback;
        this.ethernetNetworkCallback = ethernetNetworkCallback;
        this.cellularNetworkCallback = cellularNetworkCallback;
        this.io = io2;
        this.wifiConnectionFlow = wifiNetworkCallback.getConnectionFlow();
        this.ethernetConnectionFlow = ethernetNetworkCallback.getConnectionFlow();
        this.cellularConnectionFlow = cellularNetworkCallback.getConnectionFlow();
        this.generalConnectivityStatusFlow = FlowKt.stateIn(FlowKt.combineTransform(getWifiConnectionFlow(), getEthernetConnectionFlow(), getCellularConnectionFlow(), new DefaultConnectivityRepository$generalConnectivityStatusFlow$1(this, null)), appScope, SharingStarted.INSTANCE.getEagerly(), ConnectivityStatus.UNKNOWN);
        listenForConnectivityChanges();
    }

    @Override // com.stripe.core.connectivity.ConnectivityRepository
    public StateFlow<NetworkLinkProperties> getNetworkLinkPropertiesFlow(ConnectivityType connectivityType) {
        Intrinsics.checkNotNullParameter(connectivityType, "connectivityType");
        int i = WhenMappings.$EnumSwitchMapping$0[connectivityType.ordinal()];
        if (i == 1) {
            return this.cellularNetworkCallback.getLinkProperties();
        }
        if (i == 2) {
            return this.ethernetNetworkCallback.getLinkProperties();
        }
        if (i == 3) {
            return this.wifiNetworkCallback.getLinkProperties();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.stripe.core.connectivity.ConnectivityRepository
    public StateFlow<Connection<Connection.Type.Wifi>> getWifiConnectionFlow() {
        return this.wifiConnectionFlow;
    }

    @Override // com.stripe.core.connectivity.ConnectivityRepository
    public StateFlow<Connection<Connection.Type.Ethernet>> getEthernetConnectionFlow() {
        return this.ethernetConnectionFlow;
    }

    @Override // com.stripe.core.connectivity.ConnectivityRepository
    public StateFlow<Connection<Connection.Type.Cellular>> getCellularConnectionFlow() {
        return this.cellularConnectionFlow;
    }

    @Override // com.stripe.core.connectivity.ConnectivityRepository
    public String getRouterMacAddress() {
        String bssid = this.wifiManager.getConnectionInfo().getBSSID();
        return bssid == null ? "" : bssid;
    }

    @Override // com.stripe.core.connectivity.ConnectivityRepository
    public WifiConfiguration getConnectedWifiConfiguration() {
        Object next;
        List<WifiConfiguration> configuredNetworks = this.wifiManager.getConfiguredNetworks();
        Intrinsics.checkNotNullExpressionValue(configuredNetworks, "getConfiguredNetworks(...)");
        Iterator<T> it = configuredNetworks.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((WifiConfiguration) next).SSID, this.wifiManager.getConnectionInfo().getSSID())) {
                break;
            }
        }
        return (WifiConfiguration) next;
    }

    @Override // com.stripe.core.connectivity.ConnectivityRepository
    public List<Inet4Address> getRecommendedDnsServers() throws UnknownHostException {
        WifiConfigurationUtilities wifiConfigurationUtilities = WifiConfigurationUtilities.INSTANCE;
        InetAddress byName = InetAddress.getByName("1.1.1.1");
        Intrinsics.checkNotNullExpressionValue(byName, "getByName(...)");
        WifiConfigurationUtilities wifiConfigurationUtilities2 = WifiConfigurationUtilities.INSTANCE;
        InetAddress byName2 = InetAddress.getByName("1.0.0.1");
        Intrinsics.checkNotNullExpressionValue(byName2, "getByName(...)");
        return CollectionsKt.listOfNotNull((Object[]) new Inet4Address[]{wifiConfigurationUtilities.ipv4orNull(byName), wifiConfigurationUtilities2.ipv4orNull(byName2)});
    }

    @Override // com.stripe.core.connectivity.ConnectivityRepository
    public List<Inet4Address> getDefaultDnsServers() throws UnknownHostException {
        WifiConfigurationUtilities wifiConfigurationUtilities = WifiConfigurationUtilities.INSTANCE;
        InetAddress byName = InetAddress.getByName("8.8.8.8");
        Intrinsics.checkNotNullExpressionValue(byName, "getByName(...)");
        WifiConfigurationUtilities wifiConfigurationUtilities2 = WifiConfigurationUtilities.INSTANCE;
        InetAddress byName2 = InetAddress.getByName("8.8.4.4");
        Intrinsics.checkNotNullExpressionValue(byName2, "getByName(...)");
        return CollectionsKt.listOfNotNull((Object[]) new Inet4Address[]{wifiConfigurationUtilities.ipv4orNull(byName), wifiConfigurationUtilities2.ipv4orNull(byName2)});
    }

    @Override // com.stripe.core.connectivity.ConnectivityRepository
    public StateFlow<ConnectivityStatus> getGeneralConnectivityStatusFlow() {
        return this.generalConnectivityStatusFlow;
    }

    private final void listenForConnectivityChanges() {
        this.connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(1).build(), this.wifiNetworkCallback);
        this.connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(3).build(), this.ethernetNetworkCallback);
        this.connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(0).build(), this.cellularNetworkCallback);
    }

    @Override // com.stripe.core.connectivity.ConnectivityRepository
    public String getIpAddress(ConnectivityType connectivityType) {
        if (connectivityType != null) {
            NetworkLinkProperties value = getNetworkLinkPropertiesFlow(connectivityType).getValue();
            if (value != null) {
                return value.getIpAddress();
            }
            return null;
        }
        Iterator<ConnectivityType> it = ConnectivityType.getEntries().iterator();
        while (it.hasNext()) {
            NetworkLinkProperties value2 = getNetworkLinkPropertiesFlow(it.next()).getValue();
            String ipAddress = value2 != null ? value2.getIpAddress() : null;
            if (ipAddress != null) {
                return ipAddress;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: com.stripe.core.connectivity.DefaultConnectivityRepository$canResolveDns$2, reason: invalid class name */
    /* JADX INFO: compiled from: ConnectivityRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.connectivity.DefaultConnectivityRepository$canResolveDns$2", f = "ConnectivityRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ String $localIpAddress;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$localIpAddress = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$localIpAddress, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            boolean zAreEqual = false;
            try {
                zAreEqual = Intrinsics.areEqual(this.$localIpAddress, InetAddress.getByName(StringsKt.replace$default(this.$localIpAddress, '.', '-', false, 4, (Object) null) + ".device.stripe-terminal-local-reader.net").getHostAddress());
            } catch (SecurityException | UnknownHostException unused) {
            }
            return Boxing.boxBoolean(zAreEqual);
        }
    }

    @Override // com.stripe.core.connectivity.ConnectivityRepository
    public Object canResolveDns(String str, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(this.io, new AnonymousClass2(str, null), continuation);
    }

    @Override // com.stripe.core.connectivity.ConnectivityRepository
    public boolean hasConfiguredWifiNetworks() {
        Intrinsics.checkNotNullExpressionValue(this.wifiManager.getConfiguredNetworks(), "getConfiguredNetworks(...)");
        return !r0.isEmpty();
    }

    @Override // com.stripe.core.connectivity.ConnectivityRepository
    public void disconnectAndRemoveSavedConfigurations() {
        List listFilterNotNull;
        this.wifiManager.disconnect();
        List<WifiConfiguration> configuredNetworks = this.wifiManager.getConfiguredNetworks();
        if (configuredNetworks == null || (listFilterNotNull = CollectionsKt.filterNotNull(configuredNetworks)) == null) {
            return;
        }
        Iterator it = listFilterNotNull.iterator();
        while (it.hasNext()) {
            this.wifiManager.removeNetwork(((WifiConfiguration) it.next()).networkId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ConnectivityStatus connectionDataTransformer(Connection<?>... connections) {
        for (Connection<?> connection : connections) {
            if (connection instanceof Connection.Connected) {
                return ConnectivityStatus.AVAILABLE;
            }
        }
        for (Connection<?> connection2 : connections) {
            if (!(connection2 instanceof Connection.Unknown)) {
                return ConnectivityStatus.UNAVAILABLE;
            }
        }
        return ConnectivityStatus.UNKNOWN;
    }
}
