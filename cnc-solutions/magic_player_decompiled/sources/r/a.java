package r;

import android.util.Log;
import java.net.DatagramPacket;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes.dex */
public final class a extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f3327d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InetAddress f3328e;

    public a(e eVar) {
        super("HtpClient");
        this.f3327d = eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x00a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01fc A[EDGE_INSN: B:131:0x01fc->B:85:0x01fc BREAK  A[LOOP:2: B:29:0x0094->B:133:0x0094], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0105 A[Catch: Exception -> 0x01c6, TryCatch #4 {Exception -> 0x01c6, blocks: (B:46:0x00fe, B:48:0x0105, B:51:0x0121, B:56:0x0150, B:59:0x0159, B:60:0x0192, B:62:0x019f, B:63:0x01a0, B:65:0x01a4, B:68:0x01ad, B:69:0x01ae, B:70:0x01af, B:61:0x0193), top: B:100:0x00fe, inners: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00ba A[EXC_TOP_SPLITTER, PHI: r5
      0x00ba: PHI (r5v15 java.net.DatagramSocket) = (r5v9 java.net.DatagramSocket), (r5v13 java.net.DatagramSocket) binds: [B:36:0x00a4, B:39:0x00ae] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    @Override // r.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a() {
        /*
            Method dump skipped, instruction units count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: r.a.a():void");
    }

    public final boolean e(DatagramPacket datagramPacket) {
        if (datagramPacket.getLength() < 48) {
            return false;
        }
        byte[] data = datagramPacket.getData();
        byte b4 = (byte) ((data[0] >> 6) & 3);
        byte b5 = (byte) ((data[0] >> 3) & 7);
        byte b6 = (byte) (data[0] & 7);
        byte b7 = data[1];
        byte b8 = data[2];
        byte b9 = data[3];
        Log.d("HtpClient", "onReceive: leap=" + ((int) b4) + ", version=" + ((int) b5) + ", mode=" + ((int) b6) + ", stratum=" + ((int) b7) + ", poll=" + ((int) b8) + ", precision=" + ((int) b9) + ", refTime=" + h.a.p0(data, 16) + ", transTime=" + h.a.p0(data, 40));
        return b4 != 3 && b5 >= 3 && b6 == 5;
    }
}
