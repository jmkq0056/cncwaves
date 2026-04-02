package com.dantsu.escposprinter.connection.usb;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.hardware.usb.UsbRequest;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class UsbOutputStream extends OutputStream {
    private UsbDeviceConnection usbConnection;
    private UsbEndpoint usbEndpoint;
    private UsbInterface usbInterface;

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
    }

    public UsbOutputStream(UsbManager usbManager, UsbDevice usbDevice) throws IOException {
        UsbInterface usbInterfaceFindPrinterInterface = UsbDeviceHelper.findPrinterInterface(usbDevice);
        this.usbInterface = usbInterfaceFindPrinterInterface;
        if (usbInterfaceFindPrinterInterface == null) {
            throw new IOException("Unable to find USB interface.");
        }
        UsbEndpoint usbEndpointFindEndpointIn = UsbDeviceHelper.findEndpointIn(usbInterfaceFindPrinterInterface);
        this.usbEndpoint = usbEndpointFindEndpointIn;
        if (usbEndpointFindEndpointIn == null) {
            throw new IOException("Unable to find USB endpoint.");
        }
        UsbDeviceConnection usbDeviceConnectionOpenDevice = usbManager.openDevice(usbDevice);
        this.usbConnection = usbDeviceConnectionOpenDevice;
        if (usbDeviceConnectionOpenDevice == null) {
            throw new IOException("Unable to open USB connection.");
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i});
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        UsbDeviceConnection usbDeviceConnection;
        UsbInterface usbInterface = this.usbInterface;
        if (usbInterface == null || this.usbEndpoint == null || (usbDeviceConnection = this.usbConnection) == null) {
            throw new IOException("Unable to connect to USB device.");
        }
        if (!usbDeviceConnection.claimInterface(usbInterface, true)) {
            throw new IOException("Error during claim USB interface.");
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        UsbRequest usbRequest = new UsbRequest();
        try {
            usbRequest.initialize(this.usbConnection, this.usbEndpoint);
            if (!usbRequest.queue(byteBufferWrap, bArr.length)) {
                throw new IOException("Error queueing USB request.");
            }
            this.usbConnection.requestWait();
        } finally {
            usbRequest.close();
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        UsbDeviceConnection usbDeviceConnection = this.usbConnection;
        if (usbDeviceConnection != null) {
            usbDeviceConnection.close();
            this.usbInterface = null;
            this.usbEndpoint = null;
            this.usbConnection = null;
        }
    }
}
