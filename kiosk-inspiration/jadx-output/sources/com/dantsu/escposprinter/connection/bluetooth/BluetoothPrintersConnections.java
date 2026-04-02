package com.dantsu.escposprinter.connection.bluetooth;

import android.bluetooth.BluetoothDevice;
import com.dantsu.escposprinter.exceptions.EscPosConnectionException;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothPrintersConnections extends BluetoothConnections {
    public static BluetoothConnection selectFirstPaired() {
        BluetoothConnection[] list = new BluetoothPrintersConnections().getList();
        if (list == null || list.length <= 0) {
            return null;
        }
        int length = list.length;
        for (int i = 0; i < length; i++) {
            try {
                return list[i].connect();
            } catch (EscPosConnectionException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.dantsu.escposprinter.connection.bluetooth.BluetoothConnections
    public BluetoothConnection[] getList() {
        BluetoothConnection[] list = super.getList();
        if (list == null) {
            return null;
        }
        BluetoothConnection[] bluetoothConnectionArr = new BluetoothConnection[list.length];
        int i = 0;
        for (BluetoothConnection bluetoothConnection : list) {
            BluetoothDevice device = bluetoothConnection.getDevice();
            int majorDeviceClass = device.getBluetoothClass().getMajorDeviceClass();
            int deviceClass = device.getBluetoothClass().getDeviceClass();
            if (majorDeviceClass == 1536 && (deviceClass == 1664 || deviceClass == 1536)) {
                bluetoothConnectionArr[i] = new BluetoothConnection(device);
                i++;
            }
        }
        BluetoothConnection[] bluetoothConnectionArr2 = new BluetoothConnection[i];
        System.arraycopy(bluetoothConnectionArr, 0, bluetoothConnectionArr2, 0, i);
        return bluetoothConnectionArr2;
    }
}
