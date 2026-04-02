package org.fourthline.cling.transport.impl;

import java.net.InetAddress;
import org.fourthline.cling.transport.spi.MulticastReceiverConfiguration;

/* JADX INFO: loaded from: classes2.dex */
public class MulticastReceiverConfigurationImpl implements MulticastReceiverConfiguration {
    private InetAddress group;
    private int maxDatagramBytes;
    private int port;

    public MulticastReceiverConfigurationImpl(InetAddress inetAddress, int i4, int i5) {
        this.group = inetAddress;
        this.port = i4;
        this.maxDatagramBytes = i5;
    }

    @Override // org.fourthline.cling.transport.spi.MulticastReceiverConfiguration
    public InetAddress getGroup() {
        return this.group;
    }

    @Override // org.fourthline.cling.transport.spi.MulticastReceiverConfiguration
    public int getMaxDatagramBytes() {
        return this.maxDatagramBytes;
    }

    @Override // org.fourthline.cling.transport.spi.MulticastReceiverConfiguration
    public int getPort() {
        return this.port;
    }

    public void setGroup(InetAddress inetAddress) {
        this.group = inetAddress;
    }

    public void setMaxDatagramBytes(int i4) {
        this.maxDatagramBytes = i4;
    }

    public void setPort(int i4) {
        this.port = i4;
    }

    public MulticastReceiverConfigurationImpl(InetAddress inetAddress, int i4) {
        this(inetAddress, i4, 640);
    }

    public MulticastReceiverConfigurationImpl(String str, int i4, int i5) {
        this(InetAddress.getByName(str), i4, i5);
    }

    public MulticastReceiverConfigurationImpl(String str, int i4) {
        this(InetAddress.getByName(str), i4, 640);
    }
}
