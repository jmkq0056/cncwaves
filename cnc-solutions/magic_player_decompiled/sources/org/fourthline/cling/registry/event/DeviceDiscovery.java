package org.fourthline.cling.registry.event;

import org.fourthline.cling.model.meta.Device;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceDiscovery<D extends Device> {
    public D device;

    public DeviceDiscovery(D d4) {
        this.device = d4;
    }

    public D getDevice() {
        return this.device;
    }
}
