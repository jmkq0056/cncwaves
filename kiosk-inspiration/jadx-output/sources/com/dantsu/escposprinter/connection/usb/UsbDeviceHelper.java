package com.dantsu.escposprinter.connection.usb;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;

/* JADX INFO: loaded from: classes.dex */
public class UsbDeviceHelper {
    public static UsbInterface findPrinterInterface(UsbDevice usbDevice) {
        if (usbDevice == null) {
            return null;
        }
        int interfaceCount = usbDevice.getInterfaceCount();
        for (int i = 0; i < interfaceCount; i++) {
            UsbInterface usbInterface = usbDevice.getInterface(i);
            if (usbInterface.getInterfaceClass() == 7) {
                return usbInterface;
            }
        }
        return null;
    }

    public static UsbEndpoint findEndpointIn(UsbInterface usbInterface) {
        if (usbInterface == null) {
            return null;
        }
        int endpointCount = usbInterface.getEndpointCount();
        for (int i = 0; i < endpointCount; i++) {
            UsbEndpoint endpoint = usbInterface.getEndpoint(i);
            if (endpoint.getType() == 2 && endpoint.getDirection() == 0) {
                return endpoint;
            }
        }
        return null;
    }
}
