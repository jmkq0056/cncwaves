package com.dantsu.escposprinter.connection.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothConnections {
    protected BluetoothAdapter bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();

    public BluetoothConnection[] getList() {
        BluetoothAdapter bluetoothAdapter = this.bluetoothAdapter;
        if (bluetoothAdapter == null || !bluetoothAdapter.isEnabled()) {
            return null;
        }
        Set<BluetoothDevice> bondedDevices = this.bluetoothAdapter.getBondedDevices();
        BluetoothConnection[] bluetoothConnectionArr = new BluetoothConnection[bondedDevices.size()];
        if (bondedDevices.size() > 0) {
            Iterator<BluetoothDevice> it = bondedDevices.iterator();
            int i = 0;
            while (it.hasNext()) {
                bluetoothConnectionArr[i] = new BluetoothConnection(it.next());
                i++;
            }
        }
        return bluetoothConnectionArr;
    }
}
