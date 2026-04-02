package com.dantsu.escposprinter.connection.usb;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import com.dantsu.escposprinter.connection.DeviceConnection;
import com.dantsu.escposprinter.exceptions.EscPosConnectionException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class UsbConnection extends DeviceConnection {
    private UsbDevice usbDevice;
    private UsbManager usbManager;

    public UsbConnection(UsbManager usbManager, UsbDevice usbDevice) {
        this.usbManager = usbManager;
        this.usbDevice = usbDevice;
    }

    public UsbDevice getDevice() {
        return this.usbDevice;
    }

    @Override // com.dantsu.escposprinter.connection.DeviceConnection
    public UsbConnection connect() throws EscPosConnectionException {
        if (isConnected()) {
            return this;
        }
        try {
            this.outputStream = new UsbOutputStream(this.usbManager, this.usbDevice);
            this.data = new byte[0];
            return this;
        } catch (IOException e) {
            e.printStackTrace();
            this.outputStream = null;
            throw new EscPosConnectionException("Unable to connect to USB device.");
        }
    }

    @Override // com.dantsu.escposprinter.connection.DeviceConnection
    public UsbConnection disconnect() {
        this.data = new byte[0];
        if (isConnected()) {
            try {
                this.outputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.outputStream = null;
        }
        return this;
    }

    @Override // com.dantsu.escposprinter.connection.DeviceConnection
    public void send() throws EscPosConnectionException {
        send(0);
    }

    @Override // com.dantsu.escposprinter.connection.DeviceConnection
    public void send(int i) throws EscPosConnectionException {
        try {
            this.outputStream.write(this.data);
            this.data = new byte[0];
        } catch (IOException e) {
            e.printStackTrace();
            throw new EscPosConnectionException(e.getMessage());
        }
    }
}
