package q0;

import android.os.SystemClock;
import android.util.Log;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.SocketChannel;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import s.h;

/* JADX INFO: loaded from: classes.dex */
public class c implements o0.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SocketChannel f3114b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ByteBuffer f3117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3118f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ByteBuffer f3119g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ByteBuffer f3120h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f3121i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f3122j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f3123k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ByteArrayOutputStream f3124l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public b f3125m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public o0.a f3126n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f3127o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ExecutorService f3129q;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Object f3128p = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3113a = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3115c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3116d = false;

    public c(SocketChannel socketChannel) {
        this.f3114b = socketChannel;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(9216);
        this.f3117e = byteBufferAllocate;
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        byteBufferAllocate.order(byteOrder);
        this.f3118f = 0;
        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(9216);
        this.f3119g = byteBufferAllocate2;
        byteBufferAllocate2.order(byteOrder);
        ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate(4);
        this.f3120h = byteBufferAllocate3;
        byteBufferAllocate3.order(byteOrder);
        this.f3124l = new ByteArrayOutputStream();
        this.f3125m = new b();
        this.f3127o = false;
        this.f3121i = SystemClock.elapsedRealtime();
        this.f3122j = SystemClock.elapsedRealtime();
    }

    @Override // o0.c
    public boolean a() {
        return this.f3115c;
    }

    @Override // o0.c
    public /* synthetic */ void b(String str, byte[] bArr) {
        o0.b.d(this, str, bArr);
    }

    @Override // o0.c
    public /* synthetic */ void c(MessageModel messageModel, ResultData resultData) {
        o0.b.c(this, messageModel, resultData);
    }

    @Override // o0.c
    public void d(MessageModel messageModel) {
        String strY0 = h.a.y0(messageModel);
        h.a("Socket reply: " + strY0);
        synchronized (this.f3128p) {
            if (!l(strY0.getBytes())) {
                g();
            }
        }
    }

    @Override // o0.c
    public boolean e() {
        return true;
    }

    @Override // o0.c
    public void f(o0.a aVar) {
        this.f3126n = aVar;
    }

    public void g() {
        this.f3116d = true;
        this.f3115c = false;
        SocketChannel socketChannel = this.f3114b;
        if (socketChannel != null) {
            try {
                socketChannel.close();
                this.f3114b = null;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        ExecutorService executorService = this.f3129q;
        if (executorService != null) {
            try {
                executorService.shutdown();
                this.f3129q = null;
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
        this.f3125m.a();
        o0.a aVar = this.f3126n;
        if (aVar != null) {
            aVar.a(this.f3127o);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:175:0x041e, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean h() {
        /*
            Method dump skipped, instruction units count: 1056
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q0.c.h():boolean");
    }

    public final void i(int i4) {
        this.f3119g.clear();
        this.f3119g.putShort((short) 6);
        this.f3119g.putShort((short) 8192);
        this.f3119g.putShort((short) i4);
        this.f3119g.flip();
        m(this.f3119g);
    }

    public final boolean j(int i4, long j4) {
        Log.d("TcpMsgClient", "sendFileStartAnswer: ");
        this.f3119g.clear();
        this.f3119g.putShort((short) 14);
        this.f3119g.putShort((short) -32766);
        this.f3119g.putShort((short) i4);
        this.f3119g.putLong(j4);
        this.f3119g.flip();
        return m(this.f3119g) > 0;
    }

    public boolean k() {
        if (!this.f3115c) {
            return false;
        }
        this.f3120h.clear();
        this.f3120h.putShort((short) 4);
        this.f3120h.putShort((short) 95);
        this.f3120h.flip();
        synchronized (this.f3128p) {
            try {
            } catch (IOException e4) {
                e4.printStackTrace();
                this.f3115c = false;
            }
            if (this.f3115c) {
                Log.d("TcpMsgClient", "sendHeartbeatAsk::" + this.f3114b.write(this.f3120h));
                this.f3123k = SystemClock.elapsedRealtime();
            }
        }
        return this.f3115c;
    }

    public final boolean l(byte[] bArr) {
        int i4 = 0;
        while (i4 < bArr.length) {
            int length = bArr.length - i4;
            if (length > 9204) {
                length = 9204;
            }
            short s3 = (short) (length + 12);
            this.f3119g.clear();
            this.f3119g.putShort(s3);
            this.f3119g.putShort((short) 8452);
            this.f3119g.putInt(bArr.length);
            this.f3119g.putInt(i4);
            System.arraycopy(bArr, i4, this.f3119g.array(), 12, length);
            this.f3119g.position(0);
            this.f3119g.limit(s3);
            if (m(this.f3119g) <= 0) {
                a.a.a("write channel failed, end at: ", i4, "TcpMsgClient");
                return false;
            }
            i4 += length;
        }
        return true;
    }

    public final int m(ByteBuffer byteBuffer) {
        if (!this.f3115c) {
            return -1;
        }
        synchronized (this.f3128p) {
            if (!this.f3115c) {
                return -1;
            }
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                int iWrite = 0;
                while (byteBuffer.hasRemaining()) {
                    if (SystemClock.elapsedRealtime() - jElapsedRealtime > 30000) {
                        throw new SocketTimeoutException();
                    }
                    iWrite += this.f3114b.write(byteBuffer);
                }
                if (iWrite > 0) {
                    this.f3122j = SystemClock.elapsedRealtime();
                }
                return iWrite;
            } catch (Exception e4) {
                e4.printStackTrace();
                this.f3115c = false;
                return -1;
            }
        }
    }
}
