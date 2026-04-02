package m;

import android.os.Handler;
import android.os.Looper;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import s.h;
import w0.d;

/* JADX INFO: loaded from: classes.dex */
public class c extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a f2465g;

    public c(String str) {
        super(str, 9600, 8, 1, 'n');
        this.f2465g = new a();
    }

    @Override // m.d
    public void a() {
        StringBuilder sbA = android.support.v4.media.f.a("RF serial port opened: ");
        sbA.append(this.f2466a.f3418a);
        h.a(sbA.toString());
    }

    @Override // m.d
    public void b(byte[] bArr, int i4) {
        a aVar = this.f2465g;
        if (aVar != null) {
            int i5 = this.f2471f;
            if (i4 < 3) {
                return;
            }
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, 0, i4);
            int i6 = byteBufferWrap.get() & 255;
            int i7 = byteBufferWrap.get() & 255;
            if (i6 != 128 && i6 != 160 && i6 != 32 && i6 != 0) {
                aVar.a(bArr, i4, i5);
                return;
            }
            if (i4 == 3) {
                a.b.a("parseReadData: +++command+++", i7, "+++result+++", i6, "RFAdapter");
                aVar.b(i7, i6, 0, null);
                return;
            }
            if (i4 == 8) {
                aVar.a(bArr, i4, i5);
                return;
            }
            if (i7 == 0) {
                if (i4 >= 23) {
                    byteBufferWrap.position(3);
                    byte[] bArr2 = new byte[20];
                    byteBufferWrap.get(bArr2, 0, 20);
                    String str = new String(bArr2, 0, 20, StandardCharsets.UTF_8);
                    android.support.v4.media.c.a("parseReadData: +++versionStr+++", str, "RFAdapter");
                    aVar.b(i7, i6, 0, str);
                    return;
                }
                return;
            }
            if (i7 == 6) {
                if (i4 == 5) {
                    int i8 = byteBufferWrap.getShort(3) >> 5;
                    a.a.a("parseReadData: +++channel", i8, "RFAdapter");
                    aVar.b(i7, i6, i8, null);
                    return;
                }
                return;
            }
            if (i7 == 24) {
                if (i4 == 4) {
                    int i9 = byteBufferWrap.get(3) & 255;
                    a.a.a("parseReadData: +++groupNo", i9, "RFAdapter");
                    aVar.b(i7, i6, i9, null);
                    return;
                }
                return;
            }
            if (i7 == 10) {
                if (i4 == 4) {
                    int i10 = byteBufferWrap.get(3) & 255;
                    a.a.a("parseReadData: +++client", i10, "RFAdapter");
                    aVar.b(i7, i6, i10, null);
                    return;
                }
                return;
            }
            if (i7 == 25) {
                if (i4 == 4) {
                    int i11 = byteBufferWrap.get(3) & 255;
                    a.a.a("parseReadData: +++address", i11, "RFAdapter");
                    aVar.b(i7, i6, i11, null);
                    return;
                }
                return;
            }
            if (i7 == 7 && i4 == 5) {
                int i12 = byteBufferWrap.getChar(3) & 255;
                a.a.a("parseReadData: +++workMode", i12, "RFAdapter");
                aVar.b(i7, i6, i12, null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v8, types: [int] */
    @Override // m.d
    public void c() {
        if (this.f2467b) {
            int i4 = this.f2471f;
            if (i4 != 1) {
                a.a.a("onRefreshTick: deviceMode+++", i4, "RFSerialPort");
                return;
            }
            d.a aVarC = w0.d.c("cat /sys/devices/platform/radio-frequency/value");
            ?? StartsWith = aVarC.f3778a != 0 ? 0 : aVarC.f3779b.startsWith("1");
            if (StartsWith != 1) {
                a.a.a("onRefreshTick: mode+++", StartsWith, "RFSerialPort");
                return;
            }
            int i5 = r.e.d().f3351l;
            long jE = r.e.d().e();
            int i6 = r.e.d().f3350k;
            byte[] bArr = new byte[10];
            bArr[0] = (byte) i5;
            bArr[1] = 0;
            h.a.D0(bArr, 2, jE + ((long) i6));
            e(bArr);
        }
    }

    @Override // m.d
    public void e(byte[] bArr) {
        f fVarA = f.a();
        b bVar = new b(this, bArr);
        Handler handler = fVarA.f2477b;
        if (handler != null) {
            if (Looper.myLooper() == handler.getLooper()) {
                bVar.run();
            } else {
                handler.post(bVar);
            }
        }
    }
}
