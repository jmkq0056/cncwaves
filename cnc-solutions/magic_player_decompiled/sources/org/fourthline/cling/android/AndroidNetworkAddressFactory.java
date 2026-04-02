package org.fourthline.cling.android;

import android.support.v4.media.f;
import java.lang.reflect.Field;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidNetworkAddressFactory extends NetworkAddressFactoryImpl {
    private static final Logger log = Logger.getLogger(AndroidUpnpServiceConfiguration.class.getName());

    public AndroidNetworkAddressFactory(int i4) {
        super(i4);
    }

    @Override // org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl
    public void discoverNetworkInterfaces() {
        try {
            super.discoverNetworkInterfaces();
        } catch (Exception e4) {
            log.warning("Exception while enumerating network interfaces, trying once more: " + e4);
            super.discoverNetworkInterfaces();
        }
    }

    @Override // org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl, org.fourthline.cling.transport.spi.NetworkAddressFactory
    public InetAddress getLocalAddress(NetworkInterface networkInterface, boolean z3, InetAddress inetAddress) {
        for (InetAddress inetAddress2 : getInetAddresses(networkInterface)) {
            if (z3 && (inetAddress2 instanceof Inet6Address)) {
                return inetAddress2;
            }
            if (!z3 && (inetAddress2 instanceof Inet4Address)) {
                return inetAddress2;
            }
        }
        StringBuilder sbA = f.a("Can't find any IPv4 or IPv6 address on interface: ");
        sbA.append(networkInterface.getDisplayName());
        throw new IllegalStateException(sbA.toString());
    }

    @Override // org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl
    public boolean isUsableAddress(NetworkInterface networkInterface, InetAddress inetAddress) {
        Field declaredField;
        Object obj;
        boolean zIsUsableAddress = super.isUsableAddress(networkInterface, inetAddress);
        if (zIsUsableAddress) {
            String hostAddress = inetAddress.getHostAddress();
            try {
                try {
                    Field declaredField2 = InetAddress.class.getDeclaredField("holder");
                    declaredField2.setAccessible(true);
                    obj = declaredField2.get(inetAddress);
                    declaredField = obj.getClass().getDeclaredField("hostName");
                } catch (NoSuchFieldException unused) {
                    declaredField = InetAddress.class.getDeclaredField("hostName");
                    obj = inetAddress;
                }
                if (declaredField == null || hostAddress == null) {
                    return false;
                }
                declaredField.setAccessible(true);
                declaredField.set(obj, hostAddress);
            } catch (Exception e4) {
                log.log(Level.SEVERE, "Failed injecting hostName to work around Android InetAddress DNS bug: " + inetAddress, (Throwable) e4);
                return false;
            }
        }
        return zIsUsableAddress;
    }

    @Override // org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl
    public boolean requiresNetworkInterface() {
        return false;
    }
}
