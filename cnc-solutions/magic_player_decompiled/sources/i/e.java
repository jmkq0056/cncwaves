package i;

import android.net.IpConfiguration;
import android.net.LinkAddress;
import android.net.StaticIpConfiguration;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Field;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e {
    public static List<?> a(Object obj, String str) throws NoSuchFieldException {
        Field declaredField = obj.getClass().getDeclaredField(str);
        declaredField.setAccessible(true);
        return (List) declaredField.get(obj);
    }

    public static LinkAddress b(String str, String str2) {
        Inet4Address inet4AddressX = h.a.x(str);
        int iE0 = h.a.e0(str2);
        if (inet4AddressX == null || iE0 == 0) {
            return null;
        }
        try {
            return (LinkAddress) LinkAddress.class.getConstructor(InetAddress.class, Integer.TYPE).newInstance(inet4AddressX, Integer.valueOf(iE0));
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static StaticIpConfiguration c(String str, String str2, String str3, String str4) {
        LinkAddress linkAddressB = b(str, str2);
        Inet4Address inet4AddressX = h.a.x(str3);
        Inet4Address inet4AddressX2 = h.a.x(str4);
        if (linkAddressB == null || inet4AddressX == null || inet4AddressX2 == null) {
            return null;
        }
        StaticIpConfiguration staticIpConfiguration = new StaticIpConfiguration();
        staticIpConfiguration.ipAddress = linkAddressB;
        staticIpConfiguration.gateway = inet4AddressX;
        staticIpConfiguration.dnsServers.add(inet4AddressX2);
        return staticIpConfiguration;
    }

    public static void d(WifiConfiguration wifiConfiguration) {
        f(wifiConfiguration, "DHCP");
        try {
            wifiConfiguration.getClass().getMethod("setIpConfiguration", IpConfiguration.class).invoke(wifiConfiguration, new IpConfiguration(IpConfiguration.IpAssignment.DHCP, IpConfiguration.ProxySettings.NONE, null, null));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void e(String str, WifiConfiguration wifiConfiguration) {
        try {
            Field field = wifiConfiguration.getClass().getField("ipAssignment");
            field.set(wifiConfiguration, Enum.valueOf(field.getType(), str));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void f(WifiConfiguration wifiConfiguration, String str) {
        try {
            wifiConfiguration.getClass().getMethod("setIpAssignment", IpConfiguration.IpAssignment.class).invoke(wifiConfiguration, Enum.valueOf(IpConfiguration.IpAssignment.class, str));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void g(WifiConfiguration wifiConfiguration, String str, String str2, String str3, String str4) {
        StaticIpConfiguration staticIpConfigurationC = c(str, str2, str3, str4);
        if (staticIpConfigurationC == null) {
            return;
        }
        f(wifiConfiguration, "STATIC");
        try {
            wifiConfiguration.getClass().getMethod("setIpConfiguration", IpConfiguration.class).invoke(wifiConfiguration, new IpConfiguration(IpConfiguration.IpAssignment.STATIC, IpConfiguration.ProxySettings.NONE, staticIpConfigurationC, null));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void h(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
        if (wifiManager.updateNetwork(wifiConfiguration) != -1) {
            if (Build.VERSION.SDK_INT > 19) {
                Log.d("WifiConfigUtils", "updateNetWork: " + wifiManager.saveConfiguration() + "///" + wifiManager.reassociate());
                return;
            }
            Log.d("WifiConfigUtils", "updateNetWork: " + wifiManager.disconnect() + "///" + wifiManager.saveConfiguration() + "///" + wifiManager.enableNetwork(wifiConfiguration.networkId, true) + "///" + wifiManager.reconnect());
        }
    }
}
