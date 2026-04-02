package org.fourthline.cling.transport.impl;

import android.support.v4.media.f;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.Constants;
import org.fourthline.cling.transport.spi.InitializationException;
import org.fourthline.cling.transport.spi.NetworkAddressFactory;
import org.fourthline.cling.transport.spi.NoNetworkException;
import org.seamless.util.Iterators;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkAddressFactoryImpl implements NetworkAddressFactory {
    public static final int DEFAULT_TCP_HTTP_LISTEN_PORT = 0;
    private static Logger log = Logger.getLogger(NetworkAddressFactoryImpl.class.getName());
    public final List<InetAddress> bindAddresses;
    public final List<NetworkInterface> networkInterfaces;
    public int streamListenPort;
    public final Set<String> useAddresses;
    public final Set<String> useInterfaces;

    public NetworkAddressFactoryImpl() {
        this(0);
    }

    public void discoverBindAddresses() {
        try {
            synchronized (this.networkInterfaces) {
                Iterator<NetworkInterface> it = this.networkInterfaces.iterator();
                while (it.hasNext()) {
                    NetworkInterface next = it.next();
                    log.finer("Discovering addresses of interface: " + next.getDisplayName());
                    int i4 = 0;
                    for (InetAddress inetAddress : getInetAddresses(next)) {
                        if (inetAddress == null) {
                            log.warning("Network has a null address: " + next.getDisplayName());
                        } else if (isUsableAddress(next, inetAddress)) {
                            log.fine("Discovered usable network interface address: " + inetAddress.getHostAddress());
                            i4++;
                            synchronized (this.bindAddresses) {
                                this.bindAddresses.add(inetAddress);
                            }
                        } else {
                            log.finer("Ignoring non-usable network interface address: " + inetAddress.getHostAddress());
                        }
                    }
                    if (i4 == 0) {
                        log.finer("Network interface has no usable addresses, removing: " + next.getDisplayName());
                        it.remove();
                    }
                }
            }
        } catch (Exception e4) {
            throw new InitializationException("Could not not analyze local network interfaces: " + e4, e4);
        }
    }

    public void discoverNetworkInterfaces() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                log.finer("Analyzing network interface: " + networkInterface.getDisplayName());
                if (isUsableNetworkInterface(networkInterface)) {
                    log.fine("Discovered usable network interface: " + networkInterface.getDisplayName());
                    synchronized (this.networkInterfaces) {
                        this.networkInterfaces.add(networkInterface);
                    }
                } else {
                    log.finer("Ignoring non-usable network interface: " + networkInterface.getDisplayName());
                }
            }
        } catch (Exception e4) {
            throw new InitializationException("Could not not analyze local network interfaces: " + e4, e4);
        }
    }

    @Override // org.fourthline.cling.transport.spi.NetworkAddressFactory
    public Short getAddressNetworkPrefixLength(InetAddress inetAddress) {
        synchronized (this.networkInterfaces) {
            Iterator<NetworkInterface> it = this.networkInterfaces.iterator();
            while (it.hasNext()) {
                for (InterfaceAddress interfaceAddress : getInterfaceAddresses(it.next())) {
                    if (interfaceAddress != null && interfaceAddress.getAddress().equals(inetAddress)) {
                        short networkPrefixLength = interfaceAddress.getNetworkPrefixLength();
                        if (networkPrefixLength <= 0 || networkPrefixLength >= 32) {
                            return null;
                        }
                        return Short.valueOf(networkPrefixLength);
                    }
                }
            }
            return null;
        }
    }

    public InetAddress getBindAddressInSubnetOf(InetAddress inetAddress) {
        synchronized (this.networkInterfaces) {
            Iterator<NetworkInterface> it = this.networkInterfaces.iterator();
            while (it.hasNext()) {
                for (InterfaceAddress interfaceAddress : getInterfaceAddresses(it.next())) {
                    synchronized (this.bindAddresses) {
                        if (interfaceAddress != null) {
                            if (this.bindAddresses.contains(interfaceAddress.getAddress())) {
                                if (isInSubnet(inetAddress.getAddress(), interfaceAddress.getAddress().getAddress(), interfaceAddress.getNetworkPrefixLength())) {
                                    return interfaceAddress.getAddress();
                                }
                            }
                        }
                    }
                }
            }
            return null;
        }
    }

    @Override // org.fourthline.cling.transport.spi.NetworkAddressFactory
    public Iterator<InetAddress> getBindAddresses() {
        return new Iterators.Synchronized<InetAddress>(this.bindAddresses) { // from class: org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl.2
            @Override // org.seamless.util.Iterators.Synchronized
            public void synchronizedRemove(int i4) {
                synchronized (NetworkAddressFactoryImpl.this.bindAddresses) {
                    NetworkAddressFactoryImpl.this.bindAddresses.remove(i4);
                }
            }
        };
    }

    @Override // org.fourthline.cling.transport.spi.NetworkAddressFactory
    public InetAddress getBroadcastAddress(InetAddress inetAddress) {
        synchronized (this.networkInterfaces) {
            Iterator<NetworkInterface> it = this.networkInterfaces.iterator();
            while (it.hasNext()) {
                for (InterfaceAddress interfaceAddress : getInterfaceAddresses(it.next())) {
                    if (interfaceAddress != null && interfaceAddress.getAddress().equals(inetAddress)) {
                        return interfaceAddress.getBroadcast();
                    }
                }
            }
            return null;
        }
    }

    @Override // org.fourthline.cling.transport.spi.NetworkAddressFactory
    public byte[] getHardwareAddress(InetAddress inetAddress) {
        try {
            NetworkInterface byInetAddress = NetworkInterface.getByInetAddress(inetAddress);
            if (byInetAddress != null) {
                return byInetAddress.getHardwareAddress();
            }
            return null;
        } catch (Throwable th) {
            log.log(Level.WARNING, "Cannot get hardware address for: " + inetAddress, th);
            return null;
        }
    }

    public List<InetAddress> getInetAddresses(NetworkInterface networkInterface) {
        return Collections.list(networkInterface.getInetAddresses());
    }

    public List<InterfaceAddress> getInterfaceAddresses(NetworkInterface networkInterface) {
        return networkInterface.getInterfaceAddresses();
    }

    @Override // org.fourthline.cling.transport.spi.NetworkAddressFactory
    public InetAddress getLocalAddress(NetworkInterface networkInterface, boolean z3, InetAddress inetAddress) {
        InetAddress bindAddressInSubnetOf = getBindAddressInSubnetOf(inetAddress);
        if (bindAddressInSubnetOf != null) {
            return bindAddressInSubnetOf;
        }
        Logger logger = log;
        StringBuilder sbA = f.a("Could not find local bind address in same subnet as: ");
        sbA.append(inetAddress.getHostAddress());
        logger.finer(sbA.toString());
        for (InetAddress inetAddress2 : getInetAddresses(networkInterface)) {
            if (z3 && (inetAddress2 instanceof Inet6Address)) {
                return inetAddress2;
            }
            if (!z3 && (inetAddress2 instanceof Inet4Address)) {
                return inetAddress2;
            }
        }
        StringBuilder sbA2 = f.a("Can't find any IPv4 or IPv6 address on interface: ");
        sbA2.append(networkInterface.getDisplayName());
        throw new IllegalStateException(sbA2.toString());
    }

    @Override // org.fourthline.cling.transport.spi.NetworkAddressFactory
    public InetAddress getMulticastGroup() {
        try {
            return InetAddress.getByName(Constants.IPV4_UPNP_MULTICAST_GROUP);
        } catch (UnknownHostException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // org.fourthline.cling.transport.spi.NetworkAddressFactory
    public int getMulticastPort() {
        return Constants.UPNP_MULTICAST_PORT;
    }

    @Override // org.fourthline.cling.transport.spi.NetworkAddressFactory
    public Iterator<NetworkInterface> getNetworkInterfaces() {
        return new Iterators.Synchronized<NetworkInterface>(this.networkInterfaces) { // from class: org.fourthline.cling.transport.impl.NetworkAddressFactoryImpl.1
            @Override // org.seamless.util.Iterators.Synchronized
            public void synchronizedRemove(int i4) {
                synchronized (NetworkAddressFactoryImpl.this.networkInterfaces) {
                    NetworkAddressFactoryImpl.this.networkInterfaces.remove(i4);
                }
            }
        };
    }

    @Override // org.fourthline.cling.transport.spi.NetworkAddressFactory
    public int getStreamListenPort() {
        return this.streamListenPort;
    }

    @Override // org.fourthline.cling.transport.spi.NetworkAddressFactory
    public boolean hasUsableNetwork() {
        return this.networkInterfaces.size() > 0 && this.bindAddresses.size() > 0;
    }

    public boolean isInSubnet(byte[] bArr, byte[] bArr2, short s3) {
        if (bArr.length != bArr2.length || s3 / 8 > bArr.length) {
            return false;
        }
        int i4 = 0;
        while (s3 >= 8 && i4 < bArr.length) {
            if (bArr[i4] != bArr2[i4]) {
                return false;
            }
            i4++;
            s3 = (short) (s3 - 8);
        }
        if (i4 == bArr.length) {
            return true;
        }
        byte b4 = (byte) (((1 << (8 - s3)) - 1) ^ (-1));
        return (bArr[i4] & b4) == (bArr2[i4] & b4);
    }

    public boolean isUsableAddress(NetworkInterface networkInterface, InetAddress inetAddress) {
        if (!(inetAddress instanceof Inet4Address)) {
            log.finer("Skipping unsupported non-IPv4 address: " + inetAddress);
            return false;
        }
        if (inetAddress.isLoopbackAddress()) {
            log.finer("Skipping loopback address: " + inetAddress);
            return false;
        }
        if (this.useAddresses.size() <= 0 || this.useAddresses.contains(inetAddress.getHostAddress())) {
            return true;
        }
        log.finer("Skipping unwanted address: " + inetAddress);
        return false;
    }

    public boolean isUsableNetworkInterface(NetworkInterface networkInterface) {
        if (!networkInterface.isUp()) {
            Logger logger = log;
            StringBuilder sbA = f.a("Skipping network interface (down): ");
            sbA.append(networkInterface.getDisplayName());
            logger.finer(sbA.toString());
            return false;
        }
        if (getInetAddresses(networkInterface).size() == 0) {
            Logger logger2 = log;
            StringBuilder sbA2 = f.a("Skipping network interface without bound IP addresses: ");
            sbA2.append(networkInterface.getDisplayName());
            logger2.finer(sbA2.toString());
            return false;
        }
        String name = networkInterface.getName();
        Locale locale = Locale.ROOT;
        if (name.toLowerCase(locale).startsWith("vmnet") || (networkInterface.getDisplayName() != null && networkInterface.getDisplayName().toLowerCase(locale).contains("vmnet"))) {
            Logger logger3 = log;
            StringBuilder sbA3 = f.a("Skipping network interface (VMWare): ");
            sbA3.append(networkInterface.getDisplayName());
            logger3.finer(sbA3.toString());
            return false;
        }
        if (networkInterface.getName().toLowerCase(locale).startsWith("vnic")) {
            Logger logger4 = log;
            StringBuilder sbA4 = f.a("Skipping network interface (Parallels): ");
            sbA4.append(networkInterface.getDisplayName());
            logger4.finer(sbA4.toString());
            return false;
        }
        if (networkInterface.getName().toLowerCase(locale).startsWith("vboxnet")) {
            Logger logger5 = log;
            StringBuilder sbA5 = f.a("Skipping network interface (Virtual Box): ");
            sbA5.append(networkInterface.getDisplayName());
            logger5.finer(sbA5.toString());
            return false;
        }
        if (networkInterface.getName().toLowerCase(locale).contains("virtual")) {
            Logger logger6 = log;
            StringBuilder sbA6 = f.a("Skipping network interface (named '*virtual*'): ");
            sbA6.append(networkInterface.getDisplayName());
            logger6.finer(sbA6.toString());
            return false;
        }
        if (networkInterface.getName().toLowerCase(locale).startsWith("ppp")) {
            Logger logger7 = log;
            StringBuilder sbA7 = f.a("Skipping network interface (PPP): ");
            sbA7.append(networkInterface.getDisplayName());
            logger7.finer(sbA7.toString());
            return false;
        }
        if (networkInterface.isLoopback()) {
            Logger logger8 = log;
            StringBuilder sbA8 = f.a("Skipping network interface (ignoring loopback): ");
            sbA8.append(networkInterface.getDisplayName());
            logger8.finer(sbA8.toString());
            return false;
        }
        if (this.useInterfaces.size() > 0 && !this.useInterfaces.contains(networkInterface.getName())) {
            Logger logger9 = log;
            StringBuilder sbA9 = f.a("Skipping unwanted network interface (-Dorg.fourthline.cling.network.useInterfaces): ");
            sbA9.append(networkInterface.getName());
            logger9.finer(sbA9.toString());
            return false;
        }
        if (networkInterface.supportsMulticast()) {
            return true;
        }
        Logger logger10 = log;
        StringBuilder sbA10 = f.a("Network interface may not be multicast capable: ");
        sbA10.append(networkInterface.getDisplayName());
        logger10.warning(sbA10.toString());
        return true;
    }

    @Override // org.fourthline.cling.transport.spi.NetworkAddressFactory
    public void logInterfaceInformation() {
        synchronized (this.networkInterfaces) {
            if (this.networkInterfaces.isEmpty()) {
                log.info("No network interface to display!");
                return;
            }
            Iterator<NetworkInterface> it = this.networkInterfaces.iterator();
            while (it.hasNext()) {
                try {
                    logInterfaceInformation(it.next());
                } catch (SocketException e4) {
                    log.log(Level.WARNING, "Exception while logging network interface information", (Throwable) e4);
                }
            }
        }
    }

    public boolean requiresNetworkInterface() {
        return true;
    }

    public NetworkAddressFactoryImpl(int i4) {
        HashSet hashSet = new HashSet();
        this.useInterfaces = hashSet;
        HashSet hashSet2 = new HashSet();
        this.useAddresses = hashSet2;
        ArrayList arrayList = new ArrayList();
        this.networkInterfaces = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.bindAddresses = arrayList2;
        System.setProperty("java.net.preferIPv4Stack", "true");
        String property = System.getProperty(NetworkAddressFactory.SYSTEM_PROPERTY_NET_IFACES);
        if (property != null) {
            hashSet.addAll(Arrays.asList(property.split(",")));
        }
        String property2 = System.getProperty(NetworkAddressFactory.SYSTEM_PROPERTY_NET_ADDRESSES);
        if (property2 != null) {
            hashSet2.addAll(Arrays.asList(property2.split(",")));
        }
        discoverNetworkInterfaces();
        discoverBindAddresses();
        if (arrayList.size() == 0 || arrayList2.size() == 0) {
            log.warning("No usable network interface or addresses found");
            if (requiresNetworkInterface()) {
                throw new NoNetworkException("Could not discover any usable network interfaces and/or addresses");
            }
        }
        this.streamListenPort = i4;
    }

    public void logInterfaceInformation(NetworkInterface networkInterface) {
        log.info("---------------------------------------------------------------------------------");
        log.info(String.format("Interface display name: %s", networkInterface.getDisplayName()));
        if (networkInterface.getParent() != null) {
            log.info(String.format("Parent Info: %s", networkInterface.getParent()));
        }
        log.info(String.format("Name: %s", networkInterface.getName()));
        Iterator it = Collections.list(networkInterface.getInetAddresses()).iterator();
        while (it.hasNext()) {
            log.info(String.format("InetAddress: %s", (InetAddress) it.next()));
        }
        for (InterfaceAddress interfaceAddress : networkInterface.getInterfaceAddresses()) {
            if (interfaceAddress == null) {
                log.warning("Skipping null InterfaceAddress!");
            } else {
                log.info(" Interface Address");
                Logger logger = log;
                StringBuilder sbA = f.a("  Address: ");
                sbA.append(interfaceAddress.getAddress());
                logger.info(sbA.toString());
                Logger logger2 = log;
                StringBuilder sbA2 = f.a("  Broadcast: ");
                sbA2.append(interfaceAddress.getBroadcast());
                logger2.info(sbA2.toString());
                Logger logger3 = log;
                StringBuilder sbA3 = f.a("  Prefix length: ");
                sbA3.append((int) interfaceAddress.getNetworkPrefixLength());
                logger3.info(sbA3.toString());
            }
        }
        for (NetworkInterface networkInterface2 : Collections.list(networkInterface.getSubInterfaces())) {
            if (networkInterface2 == null) {
                log.warning("Skipping null NetworkInterface sub-interface");
            } else {
                log.info(String.format("\tSub Interface Display name: %s", networkInterface2.getDisplayName()));
                log.info(String.format("\tSub Interface Name: %s", networkInterface2.getName()));
            }
        }
        log.info(String.format("Up? %s", Boolean.valueOf(networkInterface.isUp())));
        log.info(String.format("Loopback? %s", Boolean.valueOf(networkInterface.isLoopback())));
        log.info(String.format("PointToPoint? %s", Boolean.valueOf(networkInterface.isPointToPoint())));
        log.info(String.format("Supports multicast? %s", Boolean.valueOf(networkInterface.supportsMulticast())));
        log.info(String.format("Virtual? %s", Boolean.valueOf(networkInterface.isVirtual())));
        log.info(String.format("Hardware address: %s", Arrays.toString(networkInterface.getHardwareAddress())));
        log.info(String.format("MTU: %s", Integer.valueOf(networkInterface.getMTU())));
    }
}
