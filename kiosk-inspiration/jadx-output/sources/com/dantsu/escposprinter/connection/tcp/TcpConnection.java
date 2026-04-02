package com.dantsu.escposprinter.connection.tcp;

import com.dantsu.escposprinter.connection.DeviceConnection;
import com.dantsu.escposprinter.exceptions.EscPosConnectionException;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;

/* JADX INFO: loaded from: classes.dex */
public class TcpConnection extends DeviceConnection {
    private String address;
    private int port;
    private Socket socket;
    private int timeout;

    public TcpConnection(String str, int i) {
        this(str, i, 30);
    }

    public TcpConnection(String str, int i, int i2) {
        this.socket = null;
        this.address = str;
        this.port = i;
        this.timeout = i2;
    }

    @Override // com.dantsu.escposprinter.connection.DeviceConnection
    public boolean isConnected() {
        Socket socket = this.socket;
        return socket != null && socket.isConnected() && super.isConnected();
    }

    @Override // com.dantsu.escposprinter.connection.DeviceConnection
    public TcpConnection connect() throws EscPosConnectionException {
        if (isConnected()) {
            return this;
        }
        try {
            Socket socket = new Socket();
            this.socket = socket;
            socket.connect(new InetSocketAddress(InetAddress.getByName(this.address), this.port), this.timeout);
            this.outputStream = this.socket.getOutputStream();
            this.data = new byte[0];
            return this;
        } catch (IOException e) {
            e.printStackTrace();
            disconnect();
            throw new EscPosConnectionException("Unable to connect to TCP device.");
        }
    }

    @Override // com.dantsu.escposprinter.connection.DeviceConnection
    public TcpConnection disconnect() {
        this.data = new byte[0];
        if (this.outputStream != null) {
            try {
                this.outputStream.close();
                this.outputStream = null;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        Socket socket = this.socket;
        if (socket != null) {
            try {
                socket.close();
                this.socket = null;
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        return this;
    }
}
