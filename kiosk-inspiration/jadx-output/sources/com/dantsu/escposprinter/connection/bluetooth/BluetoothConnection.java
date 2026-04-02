package com.dantsu.escposprinter.connection.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.os.ParcelUuid;
import com.dantsu.escposprinter.connection.DeviceConnection;
import com.dantsu.escposprinter.exceptions.EscPosConnectionException;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothConnection extends DeviceConnection {
    private static final UUID SPP_UUID = UUID.fromString("00001101-0000-1000-8000-00805f9b34fb");
    private BluetoothDevice device;
    private BluetoothSocket socket = null;

    public BluetoothConnection(BluetoothDevice bluetoothDevice) {
        this.device = bluetoothDevice;
    }

    public BluetoothDevice getDevice() {
        return this.device;
    }

    @Override // com.dantsu.escposprinter.connection.DeviceConnection
    public boolean isConnected() {
        BluetoothSocket bluetoothSocket = this.socket;
        return bluetoothSocket != null && bluetoothSocket.isConnected() && super.isConnected();
    }

    @Override // com.dantsu.escposprinter.connection.DeviceConnection
    public BluetoothConnection connect() throws EscPosConnectionException {
        if (isConnected()) {
            return this;
        }
        if (this.device == null) {
            throw new EscPosConnectionException("Bluetooth device is not connected.");
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        try {
            this.socket = this.device.createRfcommSocketToServiceRecord(getDeviceUUID());
            defaultAdapter.cancelDiscovery();
            this.socket.connect();
            this.outputStream = this.socket.getOutputStream();
            this.data = new byte[0];
            return this;
        } catch (IOException e) {
            e.printStackTrace();
            disconnect();
            throw new EscPosConnectionException("Unable to connect to bluetooth device.");
        }
    }

    protected UUID getDeviceUUID() {
        ParcelUuid[] uuids = this.device.getUuids();
        if (uuids != null && uuids.length > 0) {
            List listAsList = Arrays.asList(uuids);
            UUID uuid = SPP_UUID;
            return listAsList.contains(new ParcelUuid(uuid)) ? uuid : uuids[0].getUuid();
        }
        return SPP_UUID;
    }

    @Override // com.dantsu.escposprinter.connection.DeviceConnection
    public BluetoothConnection disconnect() {
        this.data = new byte[0];
        if (this.outputStream != null) {
            try {
                this.outputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.outputStream = null;
        }
        BluetoothSocket bluetoothSocket = this.socket;
        if (bluetoothSocket != null) {
            try {
                bluetoothSocket.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            this.socket = null;
        }
        return this;
    }
}
