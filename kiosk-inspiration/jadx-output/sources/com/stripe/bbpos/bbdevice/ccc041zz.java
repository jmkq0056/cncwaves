package com.stripe.bbpos.bbdevice;

import android.bluetooth.BluetoothDevice;
import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
class ccc041zz implements Comparator<BluetoothDevice> {
    ccc041zz() {
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: aaa000, reason: merged with bridge method [inline-methods] */
    public int compare(BluetoothDevice bluetoothDevice, BluetoothDevice bluetoothDevice2) {
        if (bluetoothDevice == null && bluetoothDevice2 == null) {
            return 0;
        }
        if (bluetoothDevice == null) {
            return -1;
        }
        if (bluetoothDevice2 == null) {
            return 1;
        }
        try {
            String name = bluetoothDevice.getName();
            String name2 = bluetoothDevice2.getName();
            if (name == null && name2 == null) {
                return 0;
            }
            if (name == null) {
                return -1;
            }
            if (name2 == null) {
                return 1;
            }
            return name.compareTo(name2);
        } catch (SecurityException unused) {
            return 0;
        }
    }
}
