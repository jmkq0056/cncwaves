package f;

import android.content.Context;
import android.net.LinkAddress;
import android.net.StaticIpConfiguration;
import java.net.Inet4Address;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f1621a;

    public f(Context context) {
        this.f1621a = context;
    }

    public static StaticIpConfiguration e(g gVar) {
        LinkAddress linkAddress;
        String str = gVar.f1623b;
        String str2 = gVar.f1624c;
        Inet4Address inet4AddressX = h.a.x(str);
        int iE0 = h.a.e0(str2);
        if (inet4AddressX == null || iE0 == 0) {
            linkAddress = null;
        } else {
            try {
                linkAddress = (LinkAddress) LinkAddress.class.getConstructor(InetAddress.class, Integer.TYPE).newInstance(inet4AddressX, Integer.valueOf(iE0));
            } catch (Exception e4) {
                e4.printStackTrace();
                linkAddress = null;
            }
        }
        Inet4Address inet4AddressX2 = h.a.x(gVar.f1625d);
        Inet4Address inet4AddressX3 = h.a.x(gVar.f1626e);
        if (linkAddress == null || inet4AddressX2 == null || inet4AddressX3 == null) {
            return null;
        }
        StaticIpConfiguration staticIpConfiguration = new StaticIpConfiguration();
        staticIpConfiguration.ipAddress = linkAddress;
        staticIpConfiguration.gateway = inet4AddressX2;
        staticIpConfiguration.dnsServers.add(inet4AddressX3);
        return staticIpConfiguration;
    }

    public g a() {
        return d() ? c() : b();
    }

    public abstract g b();

    public abstract g c();

    public abstract boolean d();

    public abstract void f(g gVar);
}
