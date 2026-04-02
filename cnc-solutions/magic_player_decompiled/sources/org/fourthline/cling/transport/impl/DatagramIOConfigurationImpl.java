package org.fourthline.cling.transport.impl;

import org.fourthline.cling.transport.spi.DatagramIOConfiguration;

/* JADX INFO: loaded from: classes2.dex */
public class DatagramIOConfigurationImpl implements DatagramIOConfiguration {
    private int maxDatagramBytes;
    private int timeToLive;

    public DatagramIOConfigurationImpl() {
        this.timeToLive = 4;
        this.maxDatagramBytes = 640;
    }

    @Override // org.fourthline.cling.transport.spi.DatagramIOConfiguration
    public int getMaxDatagramBytes() {
        return this.maxDatagramBytes;
    }

    @Override // org.fourthline.cling.transport.spi.DatagramIOConfiguration
    public int getTimeToLive() {
        return this.timeToLive;
    }

    public void setMaxDatagramBytes(int i4) {
        this.maxDatagramBytes = i4;
    }

    public void setTimeToLive(int i4) {
        this.timeToLive = i4;
    }

    public DatagramIOConfigurationImpl(int i4, int i5) {
        this.timeToLive = 4;
        this.maxDatagramBytes = 640;
        this.timeToLive = i4;
        this.maxDatagramBytes = i5;
    }
}
