package org.fourthline.cling.transport.impl;

import org.fourthline.cling.transport.spi.StreamServerConfiguration;

/* JADX INFO: loaded from: classes2.dex */
public class StreamServerConfigurationImpl implements StreamServerConfiguration {
    private int listenPort;
    private int tcpConnectionBacklog;

    public StreamServerConfigurationImpl() {
    }

    @Override // org.fourthline.cling.transport.spi.StreamServerConfiguration
    public int getListenPort() {
        return this.listenPort;
    }

    public int getTcpConnectionBacklog() {
        return this.tcpConnectionBacklog;
    }

    public void setListenPort(int i4) {
        this.listenPort = i4;
    }

    public void setTcpConnectionBacklog(int i4) {
        this.tcpConnectionBacklog = i4;
    }

    public StreamServerConfigurationImpl(int i4) {
        this.listenPort = i4;
    }
}
