package com.dantsu.escposprinter.connection.usb;

import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class UsbConnections {
    protected UsbManager usbManager;

    public UsbConnections(Context context) {
        this.usbManager = (UsbManager) context.getSystemService("usb");
    }

    public UsbConnection[] getList() {
        UsbManager usbManager = this.usbManager;
        if (usbManager == null) {
            return null;
        }
        Collection<UsbDevice> collectionValues = usbManager.getDeviceList().values();
        UsbConnection[] usbConnectionArr = new UsbConnection[collectionValues.size()];
        if (collectionValues.size() > 0) {
            Iterator<UsbDevice> it = collectionValues.iterator();
            int i = 0;
            while (it.hasNext()) {
                usbConnectionArr[i] = new UsbConnection(this.usbManager, it.next());
                i++;
            }
        }
        return usbConnectionArr;
    }
}
