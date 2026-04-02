package f;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.EthernetManager;
import android.net.IpConfiguration;
import android.net.LinkAddress;
import android.net.StaticIpConfiguration;
import android.util.Log;
import androidx.annotation.RequiresApi;
import java.net.InetAddress;
import java.util.ArrayList;
import w0.h;

/* JADX INFO: loaded from: classes.dex */
public class c extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public EthernetManager f1619b;

    public c(Context context) {
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
            gVar.f1623b = this.f1619b.getIpAddress();
        } catch (Exception e4) {
            h.h(e4);
        }
        try {
            gVar.f1624c = this.f1619b.getNetmask();
        } catch (Exception e5) {
            h.h(e5);
        }
        try {
            gVar.f1625d = this.f1619b.getGateway();
        } catch (Exception e6) {
            h.h(e6);
        }
        String dns = null;
        try {
            dns = this.f1619b.getDns();
        } catch (Exception e7) {
            h.h(e7);
        }
        if (dns != null && !dns.equals("")) {
            String[] strArrSplit = dns.split(",");
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
        StaticIpConfiguration staticIpConfiguration = this.f1619b.getConfiguration().getStaticIpConfiguration();
        if (staticIpConfiguration == null) {
            Log.d("EthernetSetting_N", "getEthInfoStatic: getStaticIpConfiguration failed!");
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
        return !g() && this.f1619b.getConfiguration().getIpAssignment() == IpConfiguration.IpAssignment.STATIC;
    }

    @Override // f.f
    public void f(g gVar) {
        if (g()) {
            return;
        }
        if (gVar.f1622a) {
            Log.d("EthernetSetting_N", "setEthConfig: dhcp");
            this.f1619b.setConfiguration(new IpConfiguration(IpConfiguration.IpAssignment.DHCP, IpConfiguration.ProxySettings.NONE, null, null));
            return;
        }
        StringBuilder sbA = android.support.v4.media.f.a("setEthConfig: ip = ");
        sbA.append(gVar.f1623b);
        sbA.append(", netmask = ");
        sbA.append(gVar.f1624c);
        sbA.append(", gateway = ");
        sbA.append(gVar.f1625d);
        sbA.append(", dns = ");
        sbA.append(gVar.f1626e);
        Log.d("EthernetSetting_N", sbA.toString());
        StaticIpConfiguration staticIpConfigurationE = f.e(gVar);
        if (staticIpConfigurationE == null) {
            return;
        }
        this.f1619b.setConfiguration(new IpConfiguration(IpConfiguration.IpAssignment.STATIC, IpConfiguration.ProxySettings.NONE, staticIpConfigurationE, null));
    }

    @SuppressLint({"WrongConstant"})
    public final synchronized boolean g() {
        if (this.f1619b == null) {
            this.f1619b = (EthernetManager) this.f1621a.getSystemService("ethernet");
        }
        return this.f1619b == null;
    }
}
