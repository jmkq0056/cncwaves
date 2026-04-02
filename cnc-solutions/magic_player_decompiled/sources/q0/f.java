package q0;

import android.os.SystemClock;
import android.util.Log;
import cn.huidu.lcd.core.entity.model.CloudRegisterResult;
import cn.huidu.lcd.core.entity.model.UdpScanData;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import n.g;
import n.k;
import s.k;
import s.m;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile f f3141i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DatagramPacket f3143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Thread f3144c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public DatagramSocket f3145d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UdpScanData f3146e = new UdpScanData();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<b> f3147f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f3148g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3149h;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3150a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3151b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3152c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f3153d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3154e;

        public b() {
        }

        public b(a aVar) {
        }
    }

    public static void f(ByteBuffer byteBuffer, UdpScanData udpScanData) {
        byteBuffer.put(q0.a.i(udpScanData.deviceId));
        byteBuffer.put((byte) udpScanData.deviceType);
        byteBuffer.putInt(udpScanData.ipAddress);
        byteBuffer.put(udpScanData.macAddress);
        byteBuffer.putInt(udpScanData.mask);
        byteBuffer.putInt(udpScanData.gateway);
        byteBuffer.putInt(udpScanData.dns);
        byteBuffer.putInt(udpScanData.kernelVersion);
        byteBuffer.putInt(udpScanData.fpgaVersion);
        byteBuffer.putInt(udpScanData.ioServicesVersion);
        byteBuffer.putInt(udpScanData.playerVersion);
        byteBuffer.putInt(udpScanData.upgradeVersion);
        byteBuffer.putInt(udpScanData.daemonVersion);
        byteBuffer.putInt(udpScanData.mainVersion);
        byteBuffer.putShort((short) udpScanData.width);
        byteBuffer.putShort((short) udpScanData.height);
        byteBuffer.put((byte) 0);
        String str = udpScanData.deviceName;
        byteBuffer.put((byte) str.getBytes().length);
        byteBuffer.put(str.getBytes());
        byteBuffer.order(ByteOrder.BIG_ENDIAN);
        String str2 = udpScanData.extInfo;
        if (str2 == null) {
            byteBuffer.putShort((short) 0);
            return;
        }
        byte[] bytes = str2.getBytes();
        byteBuffer.putShort((short) bytes.length);
        byteBuffer.put(bytes);
    }

    public final void a(InetAddress inetAddress, int i4, int i5) {
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        for (byte b4 : inetAddress.getAddress()) {
            if (sb.length() > 0) {
                sb.append(".");
            }
            sb.append(b4 & 255);
        }
        String string = sb.toString();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i6 = 0;
        while (true) {
            if (i6 >= this.f3147f.size()) {
                break;
            }
            b bVar = this.f3147f.get(i6);
            if (string.equals(bVar.f3150a) && i4 == bVar.f3151b) {
                bVar.f3153d = jElapsedRealtime;
                if (i5 != -1) {
                    bVar.f3152c = i5;
                    bVar.f3154e = 0;
                }
                z3 = true;
            } else {
                i6++;
            }
        }
        if (z3) {
            return;
        }
        b bVar2 = new b(null);
        bVar2.f3150a = string;
        bVar2.f3151b = i4;
        bVar2.f3152c = i5;
        bVar2.f3153d = jElapsedRealtime;
        this.f3147f.add(bVar2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("add client: ");
        sb2.append(string);
        sb2.append(":");
        androidx.media.b.a(sb2, i4, "UdpServer");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0266 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:170:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x011f  */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.net.DatagramPacket r17, java.nio.ByteBuffer r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 764
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q0.f.b(java.net.DatagramPacket, java.nio.ByteBuffer):void");
    }

    public final void c(DatagramPacket datagramPacket, byte b4, final String str, final String str2) {
        Log.d("UdpServer", "modifyCloudServer: mode-->" + ((int) b4) + " cloudServerAddress->" + str + " cloudServerUserName->" + str2);
        final n.c cVar = (n.c) l.b.c().a(n.c.class);
        k kVar = (k) l.b.c().a(k.class);
        if (b4 == 0) {
            kVar.f2663c = 0;
            l.b.c().d(kVar);
            p0.a.j().g();
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(1024);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate.putInt(16777219);
            byteBufferAllocate.putShort((short) -13052);
            byteBufferAllocate.put(q0.a.i(this.f3146e.deviceId));
            byteBufferAllocate.put((byte) 1);
            e(q0.a.c(byteBufferAllocate), datagramPacket.getAddress(), datagramPacket.getPort());
            return;
        }
        if (b4 == 1) {
            if ("".equals(str) || "".equals(str2)) {
                cVar.f2630f = 1;
                l.b.c().d(cVar);
                this.f3142a = 1;
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(1024);
                byteBufferAllocate2.order(ByteOrder.LITTLE_ENDIAN);
                byteBufferAllocate2.putInt(16777219);
                byteBufferAllocate2.putShort((short) -13052);
                byteBufferAllocate2.put(q0.a.i(this.f3146e.deviceId));
                byteBufferAllocate2.put((byte) cVar.f2630f);
                e(q0.a.c(byteBufferAllocate2), datagramPacket.getAddress(), datagramPacket.getPort());
                return;
            }
            kVar.f2663c = 1;
            l.b.c().d(kVar);
            s.k.g(str, str2, this.f3146e.deviceId, new k.b() { // from class: q0.e
                @Override // s.k.b
                public final void a(CloudRegisterResult cloudRegisterResult) {
                    f fVar = this.f3137a;
                    n.c cVar2 = cVar;
                    String str3 = str;
                    String str4 = str2;
                    Objects.requireNonNull(fVar);
                    Log.d("UdpServer", "modifyCloudServer: result.isRegisterSuccess()-->" + cloudRegisterResult.isRegisterSuccess());
                    if (!cloudRegisterResult.isRegisterSuccess()) {
                        fVar.f3142a = 1;
                        cVar2.f2627c = false;
                        cVar2.f2630f = 1;
                        l.b.c().d(cVar2);
                        p0.a.j().g();
                        return;
                    }
                    fVar.f3142a = 0;
                    cVar2.f2628d = str3;
                    cVar2.f2629e = str4;
                    cVar2.f2627c = true;
                    cVar2.f2630f = 0;
                    l.b.c().d(cVar2);
                    p0.a.j().f2981l = 0;
                    p0.a.j().k();
                }
            });
            SystemClock.sleep(1000L);
            ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate(1024);
            byteBufferAllocate3.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate3.putInt(16777219);
            byteBufferAllocate3.putShort((short) -13052);
            byteBufferAllocate3.put(q0.a.i(this.f3146e.deviceId));
            byteBufferAllocate3.put((byte) this.f3142a);
            e(q0.a.c(byteBufferAllocate3), datagramPacket.getAddress(), datagramPacket.getPort());
        }
    }

    public final void d(DatagramPacket datagramPacket) {
        byte b4;
        l.c cVarA = l.c.a();
        UdpScanData udpScanData = this.f3146e;
        synchronized (cVarA) {
            if (SystemClock.elapsedRealtime() - cVarA.J > 30000) {
                cVarA.J = SystemClock.elapsedRealtime();
                cVarA.D = m.e();
                cVarA.E = m.d();
                cVarA.f(w0.c.f3777a);
                cVarA.e();
                cVarA.g();
                if (!l.e.v(w0.c.f3777a)) {
                    cVarA.F = -4;
                }
                cVarA.d();
            }
            if (udpScanData.tag != cVarA.I) {
                udpScanData.deviceName = cVarA.f2295a;
                udpScanData.deviceId = cVarA.f2296b;
                udpScanData.deviceType = cVarA.f2297c;
                udpScanData.width = cVarA.f2298d;
                udpScanData.height = cVarA.f2299e;
                udpScanData.ioServicesVersion = cVarA.f2305k;
                udpScanData.playerVersion = cVarA.f2306l;
                udpScanData.setVersions(cVarA.f2307m, cVarA.f2308n);
                udpScanData.ipAddress = cVarA.f2300f;
                udpScanData.mask = cVarA.f2301g;
                udpScanData.gateway = cVarA.f2302h;
                udpScanData.dns = cVarA.f2303i;
                udpScanData.macAddress = cVarA.f2304j;
                udpScanData.cpuType = cVarA.f2309o;
                udpScanData.screenOn = cVarA.B;
                udpScanData.screenRotation = cVarA.C;
                udpScanData.totalSpace = cVarA.D;
                udpScanData.availableSpace = cVarA.E;
                udpScanData.playerState = cVarA.F;
                udpScanData.status = cVarA.f2310p;
                udpScanData.mode = cVarA.f2311q;
                udpScanData.priority = (byte) 0;
                udpScanData.server = cVarA.f2312r;
                udpScanData.username = cVarA.f2313s;
                udpScanData.lanStatus = cVarA.f2314t;
                udpScanData.lockMode = cVarA.f2315u;
                udpScanData.lanUUid = cVarA.f2316v;
                udpScanData.lanServer = cVarA.f2317w;
                udpScanData.lanMqtt = cVarA.f2318x;
                udpScanData.updateExtraInfo();
                udpScanData.tag = cVarA.I;
            }
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(datagramPacket.getData());
        byteBufferWrap.limit(datagramPacket.getLength());
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        byteBufferWrap.order(byteOrder);
        byteBufferWrap.getInt();
        short s3 = byteBufferWrap.getShort();
        if (s3 == -13055) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(1024);
            byteBufferAllocate.order(byteOrder);
            byteBufferAllocate.putInt(16777219);
            byteBufferAllocate.putShort((short) -13054);
            byteBufferAllocate.put(q0.a.i(this.f3146e.deviceId));
            byteBufferAllocate.put(this.f3146e.status);
            byteBufferAllocate.put(this.f3146e.mode);
            UdpScanData udpScanData2 = this.f3146e;
            byte b5 = udpScanData2.mode;
            if (b5 == 1) {
                String str = udpScanData2.server;
                byteBufferAllocate.put((byte) str.getBytes().length);
                byteBufferAllocate.put(str.getBytes());
                String str2 = this.f3146e.username;
                byteBufferAllocate.put((byte) str2.getBytes().length);
                byteBufferAllocate.put(str2.getBytes());
            } else if (b5 == 2) {
                byteBufferAllocate.put(udpScanData2.lanStatus);
                byteBufferAllocate.put(this.f3146e.lockMode);
                String str3 = this.f3146e.lanUUid;
                byteBufferAllocate.put((byte) str3.getBytes().length);
                byteBufferAllocate.put(str3.getBytes());
                String str4 = this.f3146e.lanServer;
                byteBufferAllocate.put((byte) str4.getBytes().length);
                byteBufferAllocate.put(str4.getBytes());
                String str5 = this.f3146e.lanMqtt;
                byteBufferAllocate.put((byte) str5.getBytes().length);
                byteBufferAllocate.put(str5.getBytes());
            }
            e(q0.a.c(byteBufferAllocate), datagramPacket.getAddress(), datagramPacket.getPort());
            return;
        }
        if (s3 != -13053) {
            if (s3 == 1) {
                a(datagramPacket.getAddress(), datagramPacket.getPort(), -1);
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(1024);
                byteBufferAllocate2.order(byteOrder);
                byteBufferAllocate2.putInt(16777219);
                byteBufferAllocate2.putShort((short) 2);
                byteBufferAllocate2.put(q0.a.i(this.f3146e.deviceId));
                e(q0.a.c(byteBufferAllocate2), datagramPacket.getAddress(), datagramPacket.getPort());
                return;
            }
            if (s3 != 3) {
                if (s3 != 6) {
                    if (s3 != 91) {
                        return;
                    }
                    b(datagramPacket, byteBufferWrap);
                    return;
                } else {
                    if (q0.a.j(byteBufferWrap).equals(this.f3146e.deviceId)) {
                        a(datagramPacket.getAddress(), datagramPacket.getPort(), byteBufferWrap.getInt());
                        return;
                    }
                    return;
                }
            }
            if (q0.a.j(byteBufferWrap).equals(this.f3146e.deviceId)) {
                ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate(1024);
                byteBufferAllocate3.order(byteOrder);
                byteBufferAllocate3.putInt(16777219);
                byteBufferAllocate3.putShort((short) 4);
                f(byteBufferAllocate3, this.f3146e);
                e(q0.a.c(byteBufferAllocate3), datagramPacket.getAddress(), datagramPacket.getPort());
                return;
            }
            return;
        }
        try {
            byte b6 = byteBufferWrap.get();
            String strJ = q0.a.j(byteBufferWrap);
            if (strJ.equals(this.f3146e.deviceId)) {
                Log.d("UdpServer", "disposeLanModeAsk:: cardId: " + strJ);
                byte b7 = byteBufferWrap.get();
                if (b7 == 1) {
                    byte b8 = byteBufferWrap.get();
                    String str6 = new String(q0.a.n(byteBufferWrap.array(), 24, b8));
                    for (b4 = 0; b4 < b8; b4 = (byte) (b4 + 1)) {
                        byteBufferWrap.get();
                    }
                    String str7 = new String(q0.a.n(byteBufferWrap.array(), b8 + 25, byteBufferWrap.get()));
                    Log.d("UdpServer", "disposeSetCloudServerAsk: priority->" + ((int) b6) + " isConnected->" + p0.a.j().f2975f);
                    if (b6 != 0 || !p0.a.j().f2975f) {
                        c(datagramPacket, b7, str6, str7);
                        return;
                    }
                    n.c cVar = (n.c) l.b.c().a(n.c.class);
                    cVar.f2630f = 2;
                    l.b.c().d(cVar);
                    this.f3142a = 2;
                    ByteBuffer byteBufferAllocate4 = ByteBuffer.allocate(1024);
                    byteBufferAllocate4.order(ByteOrder.LITTLE_ENDIAN);
                    byteBufferAllocate4.putInt(16777219);
                    byteBufferAllocate4.putShort((short) -13052);
                    byteBufferAllocate4.put(q0.a.i(this.f3146e.deviceId));
                    byteBufferAllocate4.put((byte) this.f3142a);
                    e(q0.a.c(byteBufferAllocate4), datagramPacket.getAddress(), datagramPacket.getPort());
                    return;
                }
                if (b7 == 2) {
                    byte b9 = byteBufferWrap.get();
                    byte b10 = byteBufferWrap.get();
                    int i4 = byteBufferWrap.get() & 255;
                    String str8 = new String(q0.a.n(byteBufferWrap.array(), 26, i4));
                    for (byte b11 = 0; b11 < i4; b11 = (byte) (b11 + 1)) {
                        byteBufferWrap.get();
                    }
                    int i5 = byteBufferWrap.get() & 255;
                    String str9 = new String(q0.a.n(byteBufferWrap.array(), i4 + 27, i5));
                    for (byte b12 = 0; b12 < i5; b12 = (byte) (b12 + 1)) {
                        byteBufferWrap.get();
                    }
                    String str10 = new String(q0.a.n(byteBufferWrap.array(), i4 + 28 + i5, byteBufferWrap.get() & 255));
                    g gVar = (g) l.b.c().a(g.class);
                    n.k kVar = (n.k) l.b.c().a(n.k.class);
                    Log.d("UdpServer", "disposeSetCloudServerAsk: getNetworkMode()" + kVar.f2663c + " firstStart ->" + ((int) b9) + " locking-->" + ((int) b10) + " lanUuid->" + str8 + " lanServer->" + str9 + " lanMqtt->" + str10 + " getLanUUid()->" + gVar.f2649e + " isLanMqttConnected->" + l.c.a().H + " isMqttConnected->" + l.c.a().G);
                    if (kVar.f2663c == 1) {
                        this.f3142a = 3;
                        ByteBuffer byteBufferAllocate5 = ByteBuffer.allocate(1024);
                        byteBufferAllocate5.order(ByteOrder.LITTLE_ENDIAN);
                        byteBufferAllocate5.putInt(16777219);
                        byteBufferAllocate5.putShort((short) -13052);
                        byteBufferAllocate5.put(q0.a.i(this.f3146e.deviceId));
                        byteBufferAllocate5.put((byte) this.f3142a);
                        if (gVar.f2647c) {
                            byteBufferAllocate5.put((byte) 1);
                        } else {
                            byteBufferAllocate5.put((byte) 0);
                        }
                        e(q0.a.c(byteBufferAllocate5), datagramPacket.getAddress(), datagramPacket.getPort());
                        return;
                    }
                    kVar.f2663c = 2;
                    kVar.f2664d = true;
                    l.b.c().d(kVar);
                    if (b9 != 1) {
                        if (gVar.f2649e.equals(str8) && l.c.a().H && gVar.f2647c) {
                            gVar.f2647c = false;
                            gVar.f2650f = str9;
                            gVar.f2651g = str10;
                        } else if (gVar.f2649e.equals(str8) && l.c.a().H && !gVar.f2647c) {
                            gVar.f2647c = true;
                            gVar.f2650f = str9;
                            gVar.f2651g = str10;
                        } else if (l.c.a().H && !gVar.f2647c && !gVar.f2649e.equals(str8)) {
                            gVar.f2647c = b10 != 0;
                            gVar.f2650f = str9;
                            gVar.f2651g = str10;
                        }
                        gVar.f2652h = l.c.a().H ? 1 : 0;
                        l.b.c().d(gVar);
                        this.f3142a = 0;
                    } else if ("".equals(str9) || "".equals(str10) || "".equals(str8)) {
                        this.f3142a = 1;
                    } else {
                        if (l.c.a().H) {
                            p0.a.j().g();
                        }
                        gVar.f2647c = b10 != 0;
                        gVar.f2649e = str8;
                        gVar.f2650f = str9;
                        gVar.f2651g = str10;
                        gVar.f2652h = l.c.a().H ? 1 : 0;
                        l.b.c().d(gVar);
                        p0.a.j().f2981l = 1;
                        p0.a.j().k();
                        this.f3142a = 0;
                    }
                    ByteBuffer byteBufferAllocate6 = ByteBuffer.allocate(1024);
                    byteBufferAllocate6.order(ByteOrder.LITTLE_ENDIAN);
                    byteBufferAllocate6.putInt(16777219);
                    byteBufferAllocate6.putShort((short) -13052);
                    byteBufferAllocate6.put(q0.a.i(this.f3146e.deviceId));
                    byteBufferAllocate6.put((byte) this.f3142a);
                    if (gVar.f2647c) {
                        byteBufferAllocate6.put((byte) 1);
                    } else {
                        byteBufferAllocate6.put((byte) 0);
                    }
                    e(q0.a.c(byteBufferAllocate6), datagramPacket.getAddress(), datagramPacket.getPort());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public final void e(byte[] bArr, InetAddress inetAddress, int i4) {
        try {
            this.f3145d.send(new DatagramPacket(bArr, bArr.length, inetAddress, i4));
        } catch (Exception unused) {
        }
    }
}
