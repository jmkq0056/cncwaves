package t;

import android.media.MediaPlayer;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.annotation.NonNull;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.support.model.MediaInfo;
import org.fourthline.cling.support.model.PositionInfo;
import org.fourthline.cling.support.model.StorageMedium;
import org.fourthline.cling.support.model.TransportInfo;
import org.fourthline.cling.support.model.TransportState;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static volatile d f3494o;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MediaPlayer f3499e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Surface f3501g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3502h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3503i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile TransportInfo f3495a = new TransportInfo();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3496b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PositionInfo f3497c = new PositionInfo();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public MediaInfo f3498d = new MediaInfo();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MediaPlayer.OnPreparedListener f3504j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MediaPlayer.OnVideoSizeChangedListener f3505k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final MediaPlayer.OnCompletionListener f3506l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final MediaPlayer.OnErrorListener f3507m = new C0046d();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final SurfaceHolder.Callback f3508n = new e();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3500f = 0;

    public class a implements MediaPlayer.OnPreparedListener {
        public a() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            Log.d("DlnaPlayer", "onPrepared: ");
            d dVar = d.this;
            int duration = mediaPlayer.getDuration() / 1000;
            synchronized (dVar) {
                dVar.f3498d = new MediaInfo(dVar.f3498d.getCurrentURI(), "", new UnsignedIntegerFourBytes(1L), ModelUtil.toTimeString(duration), StorageMedium.NETWORK);
            }
        }
    }

    public class b implements MediaPlayer.OnVideoSizeChangedListener {
        public b() {
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i4, int i5) {
            a.b.a("onVideoSizeChanged: ", i4, ", ", i5, "DlnaPlayer");
            synchronized (this) {
                d dVar = d.this;
                dVar.f3502h = i4;
                dVar.f3503i = i5;
            }
            g3.c cVarB = g3.c.b();
            d dVar2 = d.this;
            cVarB.f(new j.f(4, dVar2.f3502h, dVar2.f3503i));
        }
    }

    public class c implements MediaPlayer.OnCompletionListener {
        public c() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            Log.d("DlnaPlayer", "onCompletion: ");
            d.this.d();
        }
    }

    /* JADX INFO: renamed from: t.d$d, reason: collision with other inner class name */
    public class C0046d implements MediaPlayer.OnErrorListener {
        public C0046d() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i4, int i5) {
            a.b.a("onError: ", i4, ", ", i5, "DlnaPlayer");
            d.this.d();
            return true;
        }
    }

    public class e implements SurfaceHolder.Callback {
        public e() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i4, int i5, int i6) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
            d.this.f3501g = surfaceHolder.getSurface();
            d dVar = d.this;
            MediaPlayer mediaPlayer = dVar.f3499e;
            if (mediaPlayer != null) {
                mediaPlayer.setSurface(dVar.f3501g);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            d.this.f3501g = null;
        }
    }

    public static d a() {
        if (f3494o == null) {
            synchronized (d.class) {
                if (f3494o == null) {
                    f3494o = new d();
                }
            }
        }
        return f3494o;
    }

    public final boolean b() {
        int i4;
        return this.f3499e == null || (i4 = this.f3500f) == -1 || i4 == 0;
    }

    public final void c() {
        if (this.f3499e != null) {
            Log.d("DlnaPlayer", "release: ");
            try {
                this.f3499e.reset();
                this.f3499e.release();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            this.f3499e = null;
        }
        this.f3500f = 0;
        e(TransportState.STOPPED);
    }

    public void d() {
        c();
        g3.c.b().f(new j.f(3));
    }

    public final void e(TransportState transportState) {
        TransportState currentTransportState;
        synchronized (this) {
            currentTransportState = this.f3495a.getCurrentTransportState();
            this.f3495a = new TransportInfo(transportState);
        }
        Log.d("DlnaPlayer", "Current state is: " + currentTransportState + ", changing to new state: " + transportState);
    }
}
