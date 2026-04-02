package com.dantsu.escposprinter.connection.usb;

import android.content.Context;
import android.hardware.usb.UsbDevice;

/* JADX INFO: loaded from: classes.dex */
public class UsbPrintersConnections extends UsbConnections {
    public UsbPrintersConnections(Context context) {
        super(context);
    }

    public static UsbConnection selectFirstConnected(Context context) {
        UsbConnection[] list = new UsbPrintersConnections(context).getList();
        if (list == null || list.length == 0) {
            return null;
        }
        return list[0];
    }

    @Override // com.dantsu.escposprinter.connection.usb.UsbConnections
    public UsbConnection[] getList() {
        UsbConnection[] list = super.getList();
        if (list == null) {
            return null;
        }
        UsbConnection[] usbConnectionArr = new UsbConnection[list.length];
        int i = 0;
        for (UsbConnection usbConnection : list) {
            UsbDevice device = usbConnection.getDevice();
            int deviceClass = device.getDeviceClass();
            if ((deviceClass == 0 || deviceClass == 239) && UsbDeviceHelper.findPrinterInterface(device) != null) {
                deviceClass = 7;
            }
            if (deviceClass == 7) {
                usbConnectionArr[i] = new UsbConnection(this.usbManager, device);
                i++;
            }
        }
        UsbConnection[] usbConnectionArr2 = new UsbConnection[i];
        System.arraycopy(usbConnectionArr, 0, usbConnectionArr2, 0, i);
        return usbConnectionArr2;
    }
}
