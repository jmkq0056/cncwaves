package cn.huidu.lcd.setting.ui.network;

import android.net.DhcpInfo;
import android.net.LinkAddress;
import android.net.RouteInfo;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.media.f;
import android.util.Log;
import cn.huidu.lcd.setting.R$string;
import h.a;
import i.e;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import l.b;
import n.p;

/* JADX INFO: loaded from: classes.dex */
public class WifiIpInfoSettingActivity extends NetworkInfoSetBaseActivity {
    public p J;
    public WifiManager K;
    public WifiConfiguration L;
    public boolean M;

    @Override // cn.huidu.lcd.setting.ui.network.NetworkInfoSetBaseActivity
    public void A(boolean z3) {
    }

    @Override // cn.huidu.lcd.setting.ui.network.NetworkInfoSetBaseActivity
    public void B() {
        boolean z3;
        LinkAddress linkAddressB;
        boolean z4 = this.f872y;
        if (!z4) {
            if (!this.M) {
                finish();
                return;
            }
            E();
            WifiConfiguration wifiConfiguration = this.L;
            if (Build.VERSION.SDK_INT <= 19) {
                e.e("DHCP", wifiConfiguration);
            } else {
                e.d(wifiConfiguration);
            }
            e.h(this.K, this.L);
            finish();
            return;
        }
        if (z4) {
            String string = this.f865r.getText().toString();
            this.A = string;
            if (a.d0(string)) {
                String string2 = this.f866s.getText().toString();
                this.B = string2;
                if (a.d0(string2)) {
                    String string3 = this.f867t.getText().toString();
                    this.C = string3;
                    if (a.d0(string3)) {
                        String string4 = this.f868u.getText().toString();
                        this.D = string4;
                        if (!a.d0(string4)) {
                            u(getString(R$string.input_right_dns));
                        }
                        p pVar = this.J;
                        pVar.f2699g = this.A;
                        pVar.f2700h = this.B;
                        pVar.f2701i = this.C;
                        pVar.f2702j = this.D;
                        b.c().d(this.J);
                        z3 = true;
                    } else {
                        u(getString(R$string.input_right_gateway));
                    }
                } else {
                    u(getString(R$string.input_right_mask));
                }
            } else {
                u(getString(R$string.input_right_ip));
            }
            z3 = false;
        } else {
            p pVar2 = this.J;
            pVar2.f2699g = this.A;
            pVar2.f2700h = this.B;
            pVar2.f2701i = this.C;
            pVar2.f2702j = this.D;
            b.c().d(this.J);
            z3 = true;
        }
        if (z3) {
            E();
            WifiConfiguration wifiConfiguration2 = this.L;
            String str = this.A;
            String str2 = this.B;
            String str3 = this.C;
            String str4 = this.D;
            if (Build.VERSION.SDK_INT <= 19) {
                e.e("STATIC", wifiConfiguration2);
                try {
                    Object obj = wifiConfiguration2.getClass().getField("linkProperties").get(wifiConfiguration2);
                    if (obj != null && (linkAddressB = e.b(str, str2)) != null) {
                        List<?> listA = e.a(obj, "mLinkAddresses");
                        listA.clear();
                        listA.add(linkAddressB);
                        RouteInfo routeInfo = (RouteInfo) RouteInfo.class.getConstructor(InetAddress.class).newInstance(InetAddress.getByName(str3));
                        List<?> listA2 = e.a(obj, "mRoutes");
                        listA2.clear();
                        listA2.add(routeInfo);
                        InetAddress byName = InetAddress.getByName(str4);
                        List<?> listA3 = e.a(obj, "mDnses");
                        listA3.clear();
                        listA3.add(byName);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            } else {
                e.g(wifiConfiguration2, str, str2, str3, str4);
            }
            e.h(this.K, this.L);
            finish();
        }
    }

    public final void E() {
        WifiConfiguration next;
        WifiInfo connectionInfo = this.K.getConnectionInfo();
        if (connectionInfo == null || connectionInfo.getSSID().equals("<unknown ssid>")) {
            return;
        }
        String ssid = connectionInfo.getSSID();
        int networkId = connectionInfo.getNetworkId();
        List<WifiConfiguration> configuredNetworks = this.K.getConfiguredNetworks();
        if (configuredNetworks != null) {
            Iterator<WifiConfiguration> it = configuredNetworks.iterator();
            while (it.hasNext()) {
                next = it.next();
                if (next.networkId == networkId) {
                    break;
                }
            }
            next = null;
        } else {
            next = null;
        }
        this.L = next;
        StringBuilder sbA = androidx.appcompat.view.b.a("initVariables: +++", ssid, "///");
        sbA.append(this.L);
        Log.d("WifiIpInfoSetting", sbA.toString());
    }

    @Override // cn.huidu.lcd.setting.ui.network.NetworkInfoSetBaseActivity, cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // cn.huidu.lcd.setting.ui.network.NetworkInfoSetBaseActivity
    public void x() {
        super.x();
        this.f863p.setText(getString(R$string.wireless_network));
        this.f869v.setText(getString(R$string.confirm));
        this.f870w.setText(getString(R$string.ignore_this_network));
    }

    @Override // cn.huidu.lcd.setting.ui.network.NetworkInfoSetBaseActivity
    public void y() {
        E();
        WifiConfiguration wifiConfiguration = this.L;
        if (wifiConfiguration != null) {
            this.K.removeNetwork(wifiConfiguration.networkId);
            this.K.saveConfiguration();
        }
        finish();
    }

    @Override // cn.huidu.lcd.setting.ui.network.NetworkInfoSetBaseActivity
    public void z() {
        String strB;
        Enumeration<NetworkInterface> networkInterfaces;
        this.f873z = true;
        this.J = (p) b.c().a(p.class);
        this.K = (WifiManager) getApplicationContext().getSystemService("wifi");
        E();
        DhcpInfo dhcpInfo = this.K.getDhcpInfo();
        androidx.media.b.a(f.a("getWifiSetting->netmask: "), dhcpInfo.netmask, "WifiIpInfoSetting");
        this.E = a.i(dhcpInfo.ipAddress);
        int i4 = dhcpInfo.netmask;
        if (i4 == 0) {
            try {
                networkInterfaces = NetworkInterface.getNetworkInterfaces();
            } catch (SocketException e4) {
                e4.printStackTrace();
            }
            loop0: while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (networkInterfaceNextElement.isUp()) {
                    for (InterfaceAddress interfaceAddress : networkInterfaceNextElement.getInterfaceAddresses()) {
                        if ((interfaceAddress.getAddress() instanceof Inet4Address) && !"127.0.0.1".equals(interfaceAddress.getAddress().getHostAddress())) {
                            strB = a.b(interfaceAddress.getNetworkPrefixLength());
                            break loop0;
                        }
                        strB = "";
                    }
                }
            }
            strB = "";
            this.F = strB;
        } else {
            this.F = a.i(i4);
        }
        this.G = a.i(dhcpInfo.gateway);
        String strI = a.i(dhcpInfo.dns1);
        this.H = strI;
        p pVar = this.J;
        this.A = pVar.f2699g;
        this.D = pVar.f2702j;
        this.C = pVar.f2701i;
        this.B = pVar.f2700h;
        if (dhcpInfo.leaseDuration == 0) {
            this.M = true;
            this.f872y = true;
            int i5 = dhcpInfo.ipAddress;
            if (i5 != 0) {
                this.A = a.i(i5);
            }
            int i6 = dhcpInfo.netmask;
            if (i6 != 0) {
                this.B = a.i(i6);
            }
            int i7 = dhcpInfo.gateway;
            if (i7 != 0) {
                this.C = a.i(i7);
            }
            int i8 = dhcpInfo.dns1;
            if (i8 != 0) {
                this.D = a.i(i8);
            }
            p pVar2 = this.J;
            pVar2.f2699g = this.A;
            pVar2.f2700h = this.B;
            pVar2.f2701i = this.C;
            pVar2.f2702j = this.D;
        } else {
            this.M = false;
            this.f872y = false;
            pVar.f2695c = this.E;
            pVar.f2696d = this.F;
            pVar.f2697e = this.G;
            pVar.f2698f = strI;
        }
        b.c().d(this.J);
    }
}
