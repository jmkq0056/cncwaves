package com.dantsu.escposprinter.connection;

import com.dantsu.escposprinter.exceptions.EscPosConnectionException;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class DeviceConnection {
    protected OutputStream outputStream = null;
    protected byte[] data = new byte[0];

    public abstract DeviceConnection connect() throws EscPosConnectionException;

    public abstract DeviceConnection disconnect();

    public boolean isConnected() {
        return this.outputStream != null;
    }

    public void write(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = this.data;
        byte[] bArr3 = new byte[length + bArr2.length];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, 0, bArr3, this.data.length, bArr.length);
        this.data = bArr3;
    }

    public void send() throws EscPosConnectionException {
        send(0);
    }

    public void send(int i) throws EscPosConnectionException {
        if (!isConnected()) {
            throw new EscPosConnectionException("Unable to send data to device.");
        }
        try {
            this.outputStream.write(this.data);
            this.outputStream.flush();
            int length = i + (this.data.length / 16);
            this.data = new byte[0];
            if (length > 0) {
                Thread.sleep(length);
            }
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
            throw new EscPosConnectionException(e.getMessage());
        }
    }
}
