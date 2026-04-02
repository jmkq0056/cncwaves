package org.xbill.DNS;

import java.io.EOFException;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
final class UDPClient extends Client {
    private static final int EPHEMERAL_RANGE = 64511;
    private static final int EPHEMERAL_START = 1024;
    private static final int EPHEMERAL_STOP = 65535;
    private static SecureRandom prng = new SecureRandom();
    private static volatile boolean prng_initializing = true;
    private boolean bound;

    static {
        new Thread(new Runnable() { // from class: org.xbill.DNS.UDPClient.1
            @Override // java.lang.Runnable
            public void run() {
                UDPClient.prng.nextInt();
                boolean unused = UDPClient.prng_initializing = false;
            }
        }).start();
    }

    public UDPClient(long j4) {
        super(DatagramChannel.open(), j4);
        this.bound = false;
    }

    private void bind_random(InetSocketAddress inetSocketAddress) {
        if (prng_initializing) {
            try {
                Thread.sleep(2L);
            } catch (InterruptedException unused) {
            }
            if (prng_initializing) {
                return;
            }
        }
        DatagramChannel datagramChannel = (DatagramChannel) this.key.channel();
        for (int i4 = 0; i4 < 1024; i4++) {
            try {
                int iNextInt = prng.nextInt(EPHEMERAL_RANGE) + 1024;
                datagramChannel.socket().bind(inetSocketAddress != null ? new InetSocketAddress(inetSocketAddress.getAddress(), iNextInt) : new InetSocketAddress(iNextInt));
                this.bound = true;
                return;
            } catch (SocketException unused2) {
            }
        }
    }

    public static byte[] sendrecv(SocketAddress socketAddress, SocketAddress socketAddress2, byte[] bArr, int i4, long j4) throws IOException {
        UDPClient uDPClient = new UDPClient(j4);
        try {
            uDPClient.bind(socketAddress);
            uDPClient.connect(socketAddress2);
            uDPClient.send(bArr);
            return uDPClient.recv(i4);
        } finally {
            uDPClient.cleanup();
        }
    }

    public void bind(SocketAddress socketAddress) throws SocketException {
        if (socketAddress == null || ((socketAddress instanceof InetSocketAddress) && ((InetSocketAddress) socketAddress).getPort() == 0)) {
            bind_random((InetSocketAddress) socketAddress);
            if (this.bound) {
                return;
            }
        }
        if (socketAddress != null) {
            ((DatagramChannel) this.key.channel()).socket().bind(socketAddress);
            this.bound = true;
        }
    }

    public void connect(SocketAddress socketAddress) throws IOException {
        if (!this.bound) {
            bind(null);
        }
        ((DatagramChannel) this.key.channel()).connect(socketAddress);
    }

    public byte[] recv(int i4) throws EOFException {
        DatagramChannel datagramChannel = (DatagramChannel) this.key.channel();
        byte[] bArr = new byte[i4];
        this.key.interestOps(1);
        while (true) {
            try {
                if (this.key.isReadable()) {
                    break;
                }
                Client.blockUntil(this.key, this.endTime);
            } finally {
                if (this.key.isValid()) {
                    this.key.interestOps(0);
                }
            }
        }
        long j4 = datagramChannel.read(ByteBuffer.wrap(bArr));
        if (j4 <= 0) {
            throw new EOFException();
        }
        int i5 = (int) j4;
        byte[] bArr2 = new byte[i5];
        System.arraycopy(bArr, 0, bArr2, 0, i5);
        Client.verboseLog("UDP read", datagramChannel.socket().getLocalSocketAddress(), datagramChannel.socket().getRemoteSocketAddress(), bArr2);
        return bArr2;
    }

    public void send(byte[] bArr) throws IOException {
        DatagramChannel datagramChannel = (DatagramChannel) this.key.channel();
        Client.verboseLog("UDP write", datagramChannel.socket().getLocalSocketAddress(), datagramChannel.socket().getRemoteSocketAddress(), bArr);
        datagramChannel.write(ByteBuffer.wrap(bArr));
    }

    public static byte[] sendrecv(SocketAddress socketAddress, byte[] bArr, int i4, long j4) {
        return sendrecv(null, socketAddress, bArr, i4, j4);
    }
}
