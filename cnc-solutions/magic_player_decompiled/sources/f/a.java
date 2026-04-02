package f;

import android.content.ContentResolver;
import android.content.Context;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class a extends f {
    public a(Context context) {
        super(context);
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
        gVar.a();
        return gVar;
    }

    @Override // f.f
    public g c() {
        g gVar = new g();
        gVar.f1622a = false;
        ContentResolver contentResolver = this.f1621a.getContentResolver();
        gVar.f1623b = Settings.System.getString(contentResolver, "ethernet_static_ip");
        gVar.f1624c = Settings.System.getString(contentResolver, "ethernet_static_netmask");
        gVar.f1625d = Settings.System.getString(contentResolver, "ethernet_static_gateway");
        gVar.f1626e = Settings.System.getString(contentResolver, "ethernet_static_dns1");
        gVar.f1627f = Settings.System.getString(contentResolver, "ethernet_static_dns2");
        return gVar;
    }

    @Override // f.f
    public boolean d() {
        return Settings.System.getInt(this.f1621a.getContentResolver(), "ethernet_use_static_ip", 0) == 1;
    }

    @Override // f.f
    public void f(g gVar) {
        ContentResolver contentResolver = this.f1621a.getContentResolver();
        synchronized (a.class) {
            if (gVar.f1622a) {
                Log.d("EthernetSetting_K", "setEthConfig: dhcp");
                Settings.System.putInt(contentResolver, "ethernet_use_static_ip", 0);
            } else {
                String str = gVar.f1623b;
                String str2 = gVar.f1624c;
                String str3 = gVar.f1625d;
                String str4 = gVar.f1626e;
                String str5 = gVar.f1627f;
                Log.d("EthernetSetting_K", "setEthConfig: ip = " + str + ", netmask = " + str2 + ", gateway = " + str3 + ", dns = " + str4);
                Settings.System.putInt(contentResolver, "ethernet_use_static_ip", 1);
                Settings.System.putString(contentResolver, "ethernet_static_ip", str);
                Settings.System.putString(contentResolver, "ethernet_static_netmask", str2);
                Settings.System.putString(contentResolver, "ethernet_static_gateway", str3);
                Settings.System.putString(contentResolver, "ethernet_static_dns1", str4);
                Settings.System.putString(contentResolver, "ethernet_static_dns2", str5);
            }
            int i4 = Settings.Secure.getInt(contentResolver, "ethernet_on", 1);
            Log.d("EthernetSetting_K", "ethernet state: " + i4);
            if (i4 == 1) {
                Log.d("EthernetSetting_K", "set ethernet down.");
                Settings.Secure.putInt(contentResolver, "ethernet_on", 0);
                SystemClock.sleep(500L);
            }
            Log.d("EthernetSetting_K", "set ethernet up.");
            Settings.Secure.putInt(contentResolver, "ethernet_on", 1);
        }
    }
}
