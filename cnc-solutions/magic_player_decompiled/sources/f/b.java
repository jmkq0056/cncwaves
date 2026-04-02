package f;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.net.EthernetManager;
import android.net.IpConfiguration;
import android.net.LinkAddress;
import android.net.StaticIpConfiguration;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import androidx.annotation.RequiresApi;
import java.net.InetAddress;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class b extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public EthernetManager f1617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1618c;

    public b(Context context) {
        super(context);
        this.f1618c = new Object();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        this.f1617b = (EthernetManager) this.f1621a.getSystemService("ethernet");
        synchronized (this.f1618c) {
            this.f1618c.notifyAll();
        }
    }

    @Override // f.f
    public g b() {
        g gVar = new g();
        gVar.f1622a = true;
        gVar.f1623b = SystemProperties.get("dhcp.eth0.ipaddress");
        gVar.f1624c = SystemProperties.get("dhcp.eth0.mask");
        gVar.f1625d = SystemProperties.get("dhcp.eth0.gateway");
        gVar.f1626e = SystemProperties.get("dhcp.eth0.dns1");
        gVar.f1627f = SystemProperties.get("dhcp.eth0.dns2");
        return gVar;
    }

    @Override // f.f
    @RequiresApi(api = 21)
    public g c() {
        g gVar = new g();
        gVar.f1622a = false;
        if (h()) {
            return gVar;
        }
        StaticIpConfiguration staticIpConfiguration = this.f1617b.getConfiguration().getStaticIpConfiguration();
        if (staticIpConfiguration == null) {
            Log.d("EthernetSetting_L", "getEthInfoStatic: getStaticIpConfiguration failed!");
            return gVar;
        }
        LinkAddress linkAddress = staticIpConfiguration.ipAddress;
        InetAddress inetAddress = staticIpConfiguration.gateway;
        ArrayList arrayList = staticIpConfiguration.dnsServers;
        if (linkAddress != null) {
            gVar.f1623b = linkAddress.getAddress().getHostAddress();
            gVar.f1624c = h.a.W(linkAddress.getPrefixLength());
        }
        if (inetAddress != null) {
            gVar.f1625d = inetAddress.getHostAddress();
        }
        gVar.f1626e = ((InetAddress) arrayList.get(0)).getHostAddress();
        if (arrayList.size() > 1) {
            gVar.f1627f = ((InetAddress) arrayList.get(1)).getHostAddress();
        }
        return gVar;
    }

    @Override // f.f
    public boolean d() {
        return !h() && this.f1617b.getConfiguration().getIpAssignment() == IpConfiguration.IpAssignment.STATIC;
    }

    @Override // f.f
    public void f(g gVar) {
        if (h()) {
            return;
        }
        ContentResolver contentResolver = this.f1621a.getContentResolver();
        if (gVar.f1622a) {
            Log.d("EthernetSetting_L", "setEthConfig: dhcp");
            Settings.System.putInt(contentResolver, "ethernet_use_static_ip", 0);
            this.f1617b.setConfiguration(new IpConfiguration(IpConfiguration.IpAssignment.DHCP, IpConfiguration.ProxySettings.NONE, null, null));
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
        Log.d("EthernetSetting_L", sbA.toString());
        Settings.System.putInt(contentResolver, "ethernet_use_static_ip", 1);
        Settings.System.putString(contentResolver, "ethernet_static_ip", gVar.f1623b);
        Settings.System.putString(contentResolver, "ethernet_static_netmask", gVar.f1624c);
        Settings.System.putString(contentResolver, "ethernet_static_gateway", gVar.f1625d);
        Settings.System.putString(contentResolver, "ethernet_static_dns1", gVar.f1626e);
        StaticIpConfiguration staticIpConfigurationE = f.e(gVar);
        if (staticIpConfigurationE == null) {
            return;
        }
        this.f1617b.setConfiguration(new IpConfiguration(IpConfiguration.IpAssignment.STATIC, IpConfiguration.ProxySettings.NONE, staticIpConfigurationE, null));
    }

    @SuppressLint({"WrongConstant"})
    public final boolean h() {
        if (this.f1617b != null) {
            return false;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f1617b = (EthernetManager) this.f1621a.getSystemService("ethernet");
        } else {
            new Handler(Looper.getMainLooper()).post(new d.d(this));
            synchronized (this.f1618c) {
                try {
                    this.f1618c.wait();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
        return this.f1617b == null;
    }
}
