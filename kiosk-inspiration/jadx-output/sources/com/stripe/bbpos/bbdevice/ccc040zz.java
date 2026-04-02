package com.stripe.bbpos.bbdevice;

import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class ccc040zz {
    private Context aaa000;

    ccc040zz(Context context) {
        this.aaa000 = context;
    }

    synchronized List<String> aaa000() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (UsbDevice usbDevice : ((UsbManager) this.aaa000.getSystemService("usb")).getDeviceList().values()) {
            if ((usbDevice.getVendorId() == 5538 && usbDevice.getProductId() == 257) || ((usbDevice.getVendorId() == 1155 && usbDevice.getProductId() == 22352) || ((usbDevice.getVendorId() == 11369 && usbDevice.getProductId() == 22352) || ((usbDevice.getVendorId() == 1155 && usbDevice.getProductId() == 22353) || ((usbDevice.getVendorId() == 11369 && usbDevice.getProductId() == 22353) || (usbDevice.getVendorId() == 11369 && usbDevice.getProductId() == 257)))))) {
                arrayList.add(usbDevice.getDeviceName());
            }
        }
        return arrayList;
    }
}
