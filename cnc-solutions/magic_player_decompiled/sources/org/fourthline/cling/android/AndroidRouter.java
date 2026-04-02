package org.fourthline.cling.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.support.v4.media.f;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jetty.util.security.Constraint;
import org.fourthline.cling.UpnpServiceConfiguration;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.transport.Router;
import org.fourthline.cling.transport.RouterException;
import org.fourthline.cling.transport.RouterImpl;
import org.seamless.util.Exceptions;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidRouter extends RouterImpl {
    private static final Logger log = Logger.getLogger(Router.class.getName());
    public BroadcastReceiver broadcastReceiver;
    private final Context context;
    public WifiManager.MulticastLock multicastLock;
    public NetworkInfo networkInfo;
    public WifiManager.WifiLock wifiLock;
    private final WifiManager wifiManager;

    public class ConnectivityBroadcastReceiver extends BroadcastReceiver {
        public ConnectivityBroadcastReceiver() {
        }

        public void displayIntentInfo(Intent intent) {
            boolean booleanExtra = intent.getBooleanExtra("noConnectivity", false);
            String stringExtra = intent.getStringExtra("reason");
            boolean booleanExtra2 = intent.getBooleanExtra("isFailover", false);
            Object obj = (NetworkInfo) intent.getParcelableExtra("networkInfo");
            Object obj2 = (NetworkInfo) intent.getParcelableExtra("otherNetwork");
            AndroidRouter.log.info("Connectivity change detected...");
            AndroidRouter.log.info("EXTRA_NO_CONNECTIVITY: " + booleanExtra);
            AndroidRouter.log.info("EXTRA_REASON: " + stringExtra);
            AndroidRouter.log.info("EXTRA_IS_FAILOVER: " + booleanExtra2);
            Logger logger = AndroidRouter.log;
            StringBuilder sbA = f.a("EXTRA_NETWORK_INFO: ");
            if (obj == null) {
                obj = "none";
            }
            sbA.append(obj);
            logger.info(sbA.toString());
            Logger logger2 = AndroidRouter.log;
            StringBuilder sbA2 = f.a("EXTRA_OTHER_NETWORK_INFO: ");
            if (obj2 == null) {
                obj2 = "none";
            }
            sbA2.append(obj2);
            logger2.info(sbA2.toString());
            Logger logger3 = AndroidRouter.log;
            StringBuilder sbA3 = f.a("EXTRA_EXTRA_INFO: ");
            sbA3.append(intent.getStringExtra("extraInfo"));
            logger3.info(sbA3.toString());
        }

        public boolean isSameNetworkType(NetworkInfo networkInfo, NetworkInfo networkInfo2) {
            if (networkInfo == null && networkInfo2 == null) {
                return true;
            }
            return (networkInfo == null || networkInfo2 == null || networkInfo.getType() != networkInfo2.getType()) ? false : true;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                displayIntentInfo(intent);
                NetworkInfo connectedNetworkInfo = NetworkUtils.getConnectedNetworkInfo(context);
                if (AndroidRouter.this.networkInfo != null && connectedNetworkInfo == null) {
                    for (int i4 = 1; i4 <= 3; i4++) {
                        try {
                            Thread.sleep(1000L);
                            AndroidRouter.log.warning(String.format("%s => NONE network transition, waiting for new network... retry #%d", AndroidRouter.this.networkInfo.getTypeName(), Integer.valueOf(i4)));
                            connectedNetworkInfo = NetworkUtils.getConnectedNetworkInfo(context);
                            if (connectedNetworkInfo != null) {
                                break;
                            }
                        } catch (InterruptedException unused) {
                            return;
                        }
                    }
                }
                if (isSameNetworkType(AndroidRouter.this.networkInfo, connectedNetworkInfo)) {
                    AndroidRouter.log.info("No actual network change... ignoring event!");
                    return;
                }
                try {
                    AndroidRouter androidRouter = AndroidRouter.this;
                    androidRouter.onNetworkTypeChange(androidRouter.networkInfo, connectedNetworkInfo);
                } catch (RouterException e4) {
                    AndroidRouter.this.handleRouterExceptionOnNetworkTypeChange(e4);
                }
            }
        }
    }

    public AndroidRouter(UpnpServiceConfiguration upnpServiceConfiguration, ProtocolFactory protocolFactory, Context context) {
        super(upnpServiceConfiguration, protocolFactory);
        this.context = context;
        this.wifiManager = (WifiManager) context.getSystemService("wifi");
        this.networkInfo = NetworkUtils.getConnectedNetworkInfo(context);
        if (ModelUtil.ANDROID_EMULATOR) {
            return;
        }
        BroadcastReceiver broadcastReceiverCreateConnectivityBroadcastReceiver = createConnectivityBroadcastReceiver();
        this.broadcastReceiver = broadcastReceiverCreateConnectivityBroadcastReceiver;
        context.registerReceiver(broadcastReceiverCreateConnectivityBroadcastReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public BroadcastReceiver createConnectivityBroadcastReceiver() {
        return new ConnectivityBroadcastReceiver();
    }

    @Override // org.fourthline.cling.transport.RouterImpl, org.fourthline.cling.transport.Router
    public boolean disable() {
        lock(this.writeLock);
        try {
            if (isWifi()) {
                setWiFiMulticastLock(false);
                setWifiLock(false);
            }
            return super.disable();
        } finally {
            unlock(this.writeLock);
        }
    }

    @Override // org.fourthline.cling.transport.RouterImpl, org.fourthline.cling.transport.Router
    public boolean enable() {
        lock(this.writeLock);
        try {
            boolean zEnable = super.enable();
            if (zEnable && isWifi()) {
                setWiFiMulticastLock(true);
                setWifiLock(true);
            }
            return zEnable;
        } finally {
            unlock(this.writeLock);
        }
    }

    public boolean enableWiFi() {
        log.info("Enabling WiFi...");
        try {
            return this.wifiManager.setWifiEnabled(true);
        } catch (Throwable th) {
            log.log(Level.WARNING, "SetWifiEnabled failed", th);
            return false;
        }
    }

    @Override // org.fourthline.cling.transport.RouterImpl
    public int getLockTimeoutMillis() {
        return 15000;
    }

    public NetworkInfo getNetworkInfo() {
        return this.networkInfo;
    }

    public void handleRouterExceptionOnNetworkTypeChange(RouterException routerException) {
        Throwable thUnwrap = Exceptions.unwrap(routerException);
        if (thUnwrap instanceof InterruptedException) {
            log.log(Level.INFO, "Router was interrupted: " + routerException, thUnwrap);
            return;
        }
        log.log(Level.WARNING, "Router error on network change: " + routerException, (Throwable) routerException);
    }

    public boolean isEthernet() {
        return NetworkUtils.isEthernet(this.networkInfo);
    }

    public boolean isMobile() {
        return NetworkUtils.isMobile(this.networkInfo);
    }

    public boolean isWifi() {
        return NetworkUtils.isWifi(this.networkInfo);
    }

    public void onNetworkTypeChange(NetworkInfo networkInfo, NetworkInfo networkInfo2) {
        Logger logger = log;
        Object[] objArr = new Object[2];
        objArr[0] = networkInfo == null ? "" : networkInfo.getTypeName();
        String typeName = Constraint.NONE;
        objArr[1] = networkInfo2 == null ? Constraint.NONE : networkInfo2.getTypeName();
        logger.info(String.format("Network type changed %s => %s", objArr));
        if (disable()) {
            Object[] objArr2 = new Object[1];
            objArr2[0] = networkInfo == null ? Constraint.NONE : networkInfo.getTypeName();
            logger.info(String.format("Disabled router on network type change (old network: %s)", objArr2));
        }
        this.networkInfo = networkInfo2;
        if (enable()) {
            Object[] objArr3 = new Object[1];
            if (networkInfo2 != null) {
                typeName = networkInfo2.getTypeName();
            }
            objArr3[0] = typeName;
            logger.info(String.format("Enabled router on network type change (new network: %s)", objArr3));
        }
    }

    public void setWiFiMulticastLock(boolean z3) {
        if (this.multicastLock == null) {
            this.multicastLock = this.wifiManager.createMulticastLock(getClass().getSimpleName());
        }
        if (z3) {
            if (this.multicastLock.isHeld()) {
                log.warning("WiFi multicast lock already acquired");
                return;
            } else {
                log.info("WiFi multicast lock acquired");
                this.multicastLock.acquire();
                return;
            }
        }
        if (!this.multicastLock.isHeld()) {
            log.warning("WiFi multicast lock already released");
        } else {
            log.info("WiFi multicast lock released");
            this.multicastLock.release();
        }
    }

    public void setWifiLock(boolean z3) {
        if (this.wifiLock == null) {
            this.wifiLock = this.wifiManager.createWifiLock(3, getClass().getSimpleName());
        }
        if (z3) {
            if (this.wifiLock.isHeld()) {
                log.warning("WiFi lock already acquired");
                return;
            } else {
                log.info("WiFi lock acquired");
                this.wifiLock.acquire();
                return;
            }
        }
        if (!this.wifiLock.isHeld()) {
            log.warning("WiFi lock already released");
        } else {
            log.info("WiFi lock released");
            this.wifiLock.release();
        }
    }

    @Override // org.fourthline.cling.transport.RouterImpl, org.fourthline.cling.transport.Router
    public void shutdown() {
        super.shutdown();
        unregisterBroadcastReceiver();
    }

    public void unregisterBroadcastReceiver() {
        BroadcastReceiver broadcastReceiver = this.broadcastReceiver;
        if (broadcastReceiver != null) {
            this.context.unregisterReceiver(broadcastReceiver);
            this.broadcastReceiver = null;
        }
    }
}
