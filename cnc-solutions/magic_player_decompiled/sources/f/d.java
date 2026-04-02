package f;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.IpConfiguration;
import android.net.LinkAddress;
import android.net.StaticIpConfiguration;
import android.util.Log;
import androidx.annotation.RequiresApi;
import java.net.InetAddress;
import java.util.ArrayList;
import w0.h;

/* JADX INFO: loaded from: classes.dex */
public class d extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f1620b;

    public d(Context context) {
        super(context);
    }

    @Override // f.f
    public g b() {
        g gVar = new g();
        gVar.f1622a = true;
        if (g()) {
            return gVar;
        }
        try {
            gVar.f1623b = (String) this.f1620b.getClass().getMethod("getIpAddress", String.class).invoke(this.f1620b, "eth0");
        } catch (Exception e4) {
            h.h(e4);
        }
        try {
            gVar.f1624c = (String) this.f1620b.getClass().getMethod("getNetmask", String.class).invoke(this.f1620b, "eth0");
        } catch (Exception e5) {
            h.h(e5);
        }
        try {
            gVar.f1625d = (String) this.f1620b.getClass().getMethod("getGateway", String.class).invoke(this.f1620b, "eth0");
        } catch (Exception e6) {
            h.h(e6);
        }
        String str = null;
        try {
            str = (String) this.f1620b.getClass().getMethod("getDns", String.class).invoke(this.f1620b, "eth0");
        } catch (Exception e7) {
            h.h(e7);
        }
        if (str != null && !str.equals("")) {
            String[] strArrSplit = str.split(",");
            gVar.f1626e = strArrSplit[0];
            if (strArrSplit.length > 1) {
                gVar.f1627f = strArrSplit[1];
            }
        }
        gVar.a();
        return gVar;
    }

    @Override // f.f
    @RequiresApi(api = 21)
    public g c() {
        g gVar = new g();
        gVar.f1622a = false;
        if (g()) {
            return gVar;
        }
        StaticIpConfiguration staticIpConfiguration = null;
        try {
            IpConfiguration ipConfiguration = (IpConfiguration) this.f1620b.getClass().getMethod("getConfiguration", String.class).invoke(this.f1620b, "eth0");
            if (ipConfiguration != null) {
                staticIpConfiguration = ipConfiguration.getStaticIpConfiguration();
            }
        } catch (Exception e4) {
            h.h(e4);
        }
        if (staticIpConfiguration == null) {
            Log.d("EthernetSetting_Q", "getEthInfoStatic: getStaticIpConfiguration failed!");
            return gVar;
        }
        LinkAddress linkAddress = staticIpConfiguration.ipAddress;
        if (linkAddress != null) {
            gVar.f1623b = linkAddress.getAddress().getHostAddress();
            gVar.f1624c = h.a.W(linkAddress.getPrefixLength());
        }
        InetAddress inetAddress = staticIpConfiguration.gateway;
        if (inetAddress != null) {
            gVar.f1625d = inetAddress.getHostAddress();
        }
        ArrayList arrayList = staticIpConfiguration.dnsServers;
        gVar.f1626e = ((InetAddress) arrayList.get(0)).getHostAddress();
        if (arrayList.size() > 1) {
            gVar.f1627f = ((InetAddress) arrayList.get(1)).getHostAddress();
        }
        return gVar;
    }

    @Override // f.f
    public boolean d() {
        if (g()) {
            return false;
        }
        IpConfiguration.IpAssignment ipAssignment = null;
        try {
            IpConfiguration ipConfiguration = (IpConfiguration) this.f1620b.getClass().getMethod("getConfiguration", String.class).invoke(this.f1620b, "eth0");
            if (ipConfiguration != null) {
                ipAssignment = ipConfiguration.getIpAssignment();
            }
        } catch (Exception e4) {
            h.h(e4);
        }
        return ipAssignment == IpConfiguration.IpAssignment.STATIC;
    }

    @Override // f.f
    public void f(g gVar) {
        IpConfiguration ipConfiguration;
        if (g()) {
            return;
        }
        if (gVar.f1622a) {
            Log.d("EthernetSetting_Q", "setEthConfig: dhcp");
            ipConfiguration = new IpConfiguration(IpConfiguration.IpAssignment.DHCP, IpConfiguration.ProxySettings.NONE, null, null);
        } else {
            StringBuilder sbA = android.support.v4.media.f.a("setEthConfig: ip = ");
            sbA.append(gVar.f1623b);
            sbA.append(", netmask = ");
            sbA.append(gVar.f1624c);
            sbA.append(", gateway = ");
            sbA.append(gVar.f1625d);
            sbA.append(", dns = ");
            sbA.append(gVar.f1626e);
            Log.d("EthernetSetting_Q", sbA.toString());
            StaticIpConfiguration staticIpConfigurationE = f.e(gVar);
            if (staticIpConfigurationE == null) {
                return;
            } else {
                ipConfiguration = new IpConfiguration(IpConfiguration.IpAssignment.STATIC, IpConfiguration.ProxySettings.NONE, staticIpConfigurationE, null);
            }
        }
        try {
            this.f1620b.getClass().getMethod("setConfiguration", String.class, IpConfiguration.class).invoke(this.f1620b, "eth0", ipConfiguration);
        } catch (Exception e4) {
            h.h(e4);
        }
    }

    @SuppressLint({"WrongConstant"})
    public final synchronized boolean g() {
        if (this.f1620b == null) {
            this.f1620b = this.f1621a.getSystemService("ethernet");
        }
        return this.f1620b == null;
    }
}
