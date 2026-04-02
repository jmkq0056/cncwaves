package m;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.tv.TvView;
import android.os.SystemClock;
import android.view.Surface;
import b1.k;
import cn.huidu.lcd.core.util.NativeIO;
import com.google.android.exoplayer2.ui.spherical.SphericalGLSurfaceView;
import f0.j;
import java.util.Objects;
import l.h;
import s.l;
import u0.g;
import z.b;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2462a = 4;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2464c;

    public /* synthetic */ b(b0.a aVar, d0.f fVar) {
        this.f2463b = aVar;
        this.f2464c = fVar;
    }

    public /* synthetic */ b(SphericalGLSurfaceView sphericalGLSurfaceView, SurfaceTexture surfaceTexture) {
        this.f2463b = sphericalGLSurfaceView;
        this.f2464c = surfaceTexture;
    }

    public /* synthetic */ b(j jVar, Bitmap bitmap) {
        this.f2463b = jVar;
        this.f2464c = bitmap;
    }

    public /* synthetic */ b(h hVar, TvView tvView) {
        this.f2463b = hVar;
        this.f2464c = tvView;
    }

    public /* synthetic */ b(c cVar, byte[] bArr) {
        this.f2463b = cVar;
        this.f2464c = bArr;
    }

    public /* synthetic */ b(u0.a aVar, String str) {
        this.f2463b = aVar;
        this.f2464c = str;
    }

    public /* synthetic */ b(g gVar, String str) {
        this.f2463b = gVar;
        this.f2464c = str;
    }

    public /* synthetic */ b(b.d dVar, Bitmap bitmap) {
        this.f2463b = dVar;
        this.f2464c = bitmap;
    }

    public /* synthetic */ b(b.f fVar, b.d dVar) {
        this.f2463b = fVar;
        this.f2464c = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmapA;
        switch (this.f2462a) {
            case 0:
                c cVar = (c) this.f2463b;
                byte[] bArr = (byte[]) this.f2464c;
                Objects.requireNonNull(cVar);
                long jElapsedRealtime = SystemClock.elapsedRealtime() - cVar.f2470e;
                if (jElapsedRealtime >= 0 && jElapsedRealtime < 200) {
                    SystemClock.sleep(200 - jElapsedRealtime);
                }
                cVar.f2470e = SystemClock.elapsedRealtime();
                l lVar = cVar.f2466a;
                if ((lVar.f3423f > 0) && bArr != null) {
                    l.a("write", bArr, bArr.length);
                    NativeIO.write(lVar.f3423f, bArr, 0, bArr.length);
                    break;
                }
                break;
            case 1:
                ((h) this.f2463b).o((TvView) this.f2464c);
                break;
            case 2:
                b.d dVar = (b.d) this.f2463b;
                Bitmap bitmap = (Bitmap) this.f2464c;
                z.c cVar2 = dVar.f4190h;
                if (cVar2 != null) {
                    cVar2.b(bitmap);
                }
                break;
            case 3:
                b.f fVar = (b.f) this.f2463b;
                b.d dVar2 = (b.d) this.f2464c;
                Objects.requireNonNull(fVar);
                try {
                    bitmapA = fVar.a(dVar2);
                } catch (Exception e4) {
                    e4.printStackTrace();
                    bitmapA = null;
                }
                dVar2.f4184b.post(new b(dVar2, bitmapA));
                break;
            case 4:
                ((b0.a) this.f2463b).p((d0.f) this.f2464c);
                break;
            case 5:
                ((j) this.f2463b).f1669p.setImageBitmap((Bitmap) this.f2464c);
                break;
            case 6:
                u0.a aVar = (u0.a) this.f2463b;
                String str = (String) this.f2464c;
                u0.b bVar = aVar.f3552a;
                bVar.h(bVar.f3553i, str);
                break;
            case 7:
                ((g) this.f2463b).f3561a.f((String) this.f2464c);
                break;
            default:
                SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) this.f2463b;
                SurfaceTexture surfaceTexture = (SurfaceTexture) this.f2464c;
                SurfaceTexture surfaceTexture2 = sphericalGLSurfaceView.f1353g;
                Surface surface = sphericalGLSurfaceView.f1354h;
                sphericalGLSurfaceView.f1353g = surfaceTexture;
                Surface surface2 = new Surface(surfaceTexture);
                sphericalGLSurfaceView.f1354h = surface2;
                k.c cVar3 = sphericalGLSurfaceView.f1355i;
                if (cVar3 != null) {
                    cVar3.a(surface2);
                }
                if (surfaceTexture2 != null) {
                    surfaceTexture2.release();
                }
                if (surface != null) {
                    surface.release();
                }
                break;
        }
    }
}
