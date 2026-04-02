package org.fourthline.cling.transport.impl;

import android.support.v4.media.f;
import java.net.DatagramPacket;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.logging.Logger;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.transport.Router;
import org.fourthline.cling.transport.spi.DatagramProcessor;
import org.fourthline.cling.transport.spi.InitializationException;
import org.fourthline.cling.transport.spi.MulticastReceiver;
import org.fourthline.cling.transport.spi.NetworkAddressFactory;

/* JADX INFO: loaded from: classes2.dex */
public class MulticastReceiverImpl implements MulticastReceiver<MulticastReceiverConfigurationImpl> {
    private static Logger log = Logger.getLogger(MulticastReceiver.class.getName());
    public final MulticastReceiverConfigurationImpl configuration;
    public DatagramProcessor datagramProcessor;
    public InetSocketAddress multicastAddress;
    public NetworkInterface multicastInterface;
    public NetworkAddressFactory networkAddressFactory;
    public Router router;
    public MulticastSocket socket;

    public MulticastReceiverImpl(MulticastReceiverConfigurationImpl multicastReceiverConfigurationImpl) {
        this.configuration = multicastReceiverConfigurationImpl;
    }

    @Override // org.fourthline.cling.transport.spi.MulticastReceiver
    public synchronized void init(NetworkInterface networkInterface, Router router, NetworkAddressFactory networkAddressFactory, DatagramProcessor datagramProcessor) {
        this.router = router;
        this.networkAddressFactory = networkAddressFactory;
        this.datagramProcessor = datagramProcessor;
        this.multicastInterface = networkInterface;
        try {
            log.info("Creating wildcard socket (for receiving multicast datagrams) on port: " + this.configuration.getPort());
            this.multicastAddress = new InetSocketAddress(this.configuration.getGroup(), this.configuration.getPort());
            MulticastSocket multicastSocket = new MulticastSocket(this.configuration.getPort());
            this.socket = multicastSocket;
            multicastSocket.setReuseAddress(true);
            this.socket.setReceiveBufferSize(32768);
            log.info("Joining multicast group: " + this.multicastAddress + " on network interface: " + this.multicastInterface.getDisplayName());
            this.socket.joinGroup(this.multicastAddress, this.multicastInterface);
        } catch (Exception e4) {
            throw new InitializationException("Could not initialize " + getClass().getSimpleName() + ": " + e4);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Logger logger = log;
        StringBuilder sbA = f.a("Entering blocking receiving loop, listening for UDP datagrams on: ");
        sbA.append(this.socket.getLocalAddress());
        logger.fine(sbA.toString());
        while (true) {
            try {
                int maxDatagramBytes = getConfiguration().getMaxDatagramBytes();
                DatagramPacket datagramPacket = new DatagramPacket(new byte[maxDatagramBytes], maxDatagramBytes);
                this.socket.receive(datagramPacket);
                InetAddress localAddress = this.networkAddressFactory.getLocalAddress(this.multicastInterface, this.multicastAddress.getAddress() instanceof Inet6Address, datagramPacket.getAddress());
                log.fine("UDP datagram received from: " + datagramPacket.getAddress().getHostAddress() + ":" + datagramPacket.getPort() + " on local interface: " + this.multicastInterface.getDisplayName() + " and address: " + localAddress.getHostAddress());
                this.router.received(this.datagramProcessor.read(localAddress, datagramPacket));
            } catch (SocketException unused) {
                log.fine("Socket closed");
                try {
                    if (this.socket.isClosed()) {
                        return;
                    }
                    log.fine("Closing multicast socket");
                    this.socket.close();
                    return;
                } catch (Exception e4) {
                    throw new RuntimeException(e4);
                }
            } catch (UnsupportedDataException e5) {
                Logger logger2 = log;
                StringBuilder sbA2 = f.a("Could not read datagram: ");
                sbA2.append(e5.getMessage());
                logger2.info(sbA2.toString());
            } catch (Exception e6) {
                throw new RuntimeException(e6);
            }
        }
    }

    @Override // org.fourthline.cling.transport.spi.MulticastReceiver
    public synchronized void stop() {
        MulticastSocket multicastSocket = this.socket;
        if (multicastSocket != null && !multicastSocket.isClosed()) {
            try {
                log.fine("Leaving multicast group");
                this.socket.leaveGroup(this.multicastAddress, this.multicastInterface);
            } catch (Exception e4) {
                log.fine("Could not leave multicast group: " + e4);
            }
            this.socket.close();
        }
    }

    @Override // org.fourthline.cling.transport.spi.MulticastReceiver
    public MulticastReceiverConfigurationImpl getConfiguration() {
        return this.configuration;
    }
}
