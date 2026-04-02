package org.xbill.DNS;

import java.io.EOFException;
import java.io.IOException;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.channels.SocketChannel;

/* JADX INFO: loaded from: classes2.dex */
final class TCPClient extends Client {
    public TCPClient(long j4) {
        super(SocketChannel.open(), j4);
    }

    private byte[] _recv(int i4) {
        SocketChannel socketChannel = (SocketChannel) this.key.channel();
        byte[] bArr = new byte[i4];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        this.key.interestOps(1);
        int i5 = 0;
        while (i5 < i4) {
            try {
                if (this.key.isReadable()) {
                    long j4 = socketChannel.read(byteBufferWrap);
                    if (j4 < 0) {
                        throw new EOFException();
                    }
                    i5 += (int) j4;
                    if (i5 < i4 && System.currentTimeMillis() > this.endTime) {
                        throw new SocketTimeoutException();
                    }
                } else {
                    Client.blockUntil(this.key, this.endTime);
                }
            } finally {
                if (this.key.isValid()) {
                    this.key.interestOps(0);
                }
            }
        }
        return bArr;
    }

    public static byte[] sendrecv(SocketAddress socketAddress, SocketAddress socketAddress2, byte[] bArr, long j4) throws IOException {
        TCPClient tCPClient = new TCPClient(j4);
        if (socketAddress != null) {
            try {
                tCPClient.bind(socketAddress);
            } finally {
                tCPClient.cleanup();
            }
        }
        tCPClient.connect(socketAddress2);
        tCPClient.send(bArr);
        return tCPClient.recv();
    }

    public void bind(SocketAddress socketAddress) throws IOException {
        ((SocketChannel) this.key.channel()).socket().bind(socketAddress);
    }

    public void connect(SocketAddress socketAddress) {
        SocketChannel socketChannel = (SocketChannel) this.key.channel();
        if (socketChannel.connect(socketAddress)) {
            return;
        }
        this.key.interestOps(8);
        while (true) {
            try {
                if (socketChannel.finishConnect()) {
                    break;
                } else if (!this.key.isConnectable()) {
                    Client.blockUntil(this.key, this.endTime);
                }
            } finally {
                if (this.key.isValid()) {
                    this.key.interestOps(0);
                }
            }
        }
    }

    public byte[] recv() {
        byte[] bArr_recv = _recv(2);
        byte[] bArr_recv2 = _recv(((bArr_recv[0] & 255) << 8) + (bArr_recv[1] & 255));
        SocketChannel socketChannel = (SocketChannel) this.key.channel();
        Client.verboseLog("TCP read", socketChannel.socket().getLocalSocketAddress(), socketChannel.socket().getRemoteSocketAddress(), bArr_recv2);
        return bArr_recv2;
    }

    public void send(byte[] bArr) {
        SocketChannel socketChannel = (SocketChannel) this.key.channel();
        Client.verboseLog("TCP write", socketChannel.socket().getLocalSocketAddress(), socketChannel.socket().getRemoteSocketAddress(), bArr);
        ByteBuffer[] byteBufferArr = {ByteBuffer.wrap(new byte[]{(byte) (bArr.length >>> 8), (byte) (bArr.length & 255)}), ByteBuffer.wrap(bArr)};
        this.key.interestOps(4);
        int i4 = 0;
        while (i4 < bArr.length + 2) {
            try {
                if (this.key.isWritable()) {
                    long jWrite = socketChannel.write(byteBufferArr);
                    if (jWrite < 0) {
                        throw new EOFException();
                    }
                    i4 += (int) jWrite;
                    if (i4 < bArr.length + 2 && System.currentTimeMillis() > this.endTime) {
                        throw new SocketTimeoutException();
                    }
                } else {
                    Client.blockUntil(this.key, this.endTime);
                }
            } finally {
                if (this.key.isValid()) {
                    this.key.interestOps(0);
                }
            }
        }
    }

    public static byte[] sendrecv(SocketAddress socketAddress, byte[] bArr, long j4) {
        return sendrecv(null, socketAddress, bArr, j4);
    }
}
