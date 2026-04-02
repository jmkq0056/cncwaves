package r;

import android.os.SystemClock;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import r.e;
import s.h;

/* JADX INFO: loaded from: classes.dex */
public class b extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f3329d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f3330e;

    public b(e eVar) {
        super("HtpServer");
        this.f3329d = eVar;
    }

    @Override // r.d
    public void a() {
        DatagramSocket datagramSocket;
        SocketException e4;
        h.a("HTP server thread start.");
        DatagramPacket datagramPacket = new DatagramPacket(new byte[48], 48);
        DatagramSocket datagramSocket2 = null;
        while (b()) {
            if (datagramSocket2 == null) {
                try {
                    datagramSocket = new DatagramSocket(12321);
                    try {
                        datagramSocket.setSoTimeout(1000);
                        datagramSocket2 = datagramSocket;
                    } catch (SocketException e5) {
                        e4 = e5;
                        e4.printStackTrace();
                        SystemClock.sleep(30000L);
                        datagramSocket2 = datagramSocket;
                    }
                } catch (SocketException e6) {
                    datagramSocket = datagramSocket2;
                    e4 = e6;
                }
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime > this.f3330e + 3000) {
                this.f3330e = jElapsedRealtime;
                try {
                    byte[] bArrE = e(5, 0L, 0L);
                    datagramSocket2.send(new DatagramPacket(bArrE, bArrE.length, InetAddress.getByName("255.255.255.255"), 12321));
                } catch (Exception unused) {
                }
            }
            try {
                datagramSocket2.receive(datagramPacket);
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (datagramPacket.getLength() >= 48) {
                    byte[] data = datagramPacket.getData();
                    byte b4 = (byte) (data[0] & 7);
                    byte b5 = (byte) ((data[0] >> 3) & 7);
                    if (b4 == 3 && b5 == 3) {
                        byte[] bArrE2 = e(4, jCurrentTimeMillis, h.a.p0(data, 40));
                        datagramSocket2.send(new DatagramPacket(bArrE2, bArrE2.length, datagramPacket.getAddress(), datagramPacket.getPort()));
                    }
                }
            } catch (Exception unused2) {
            }
        }
        if (datagramSocket2 != null) {
            try {
                datagramSocket2.close();
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        h.a("HTP server thread finish.");
    }

    public final byte[] e(int i4, long j4, long j5) {
        e.b bVar = this.f3329d.f3349j;
        byte[] bArr = new byte[48];
        bArr[0] = (byte) (i4 | 24);
        bArr[1] = 3;
        bArr[2] = 5;
        bArr[3] = 0;
        h.a.D0(bArr, 16, bVar.f3355b);
        h.a.D0(bArr, 24, j5);
        h.a.D0(bArr, 32, j4);
        h.a.D0(bArr, 40, System.currentTimeMillis());
        return bArr;
    }
}
