package cn.huidu.lcd.render.media;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import cn.huidu.lcd.render.media.GLVideoSurfaceView;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View f474a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Surface f475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d f476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f477d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f478e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f479f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final SurfaceHolder.Callback f480g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextureView.SurfaceTextureListener f481h = new TextureViewSurfaceTextureListenerC0010b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GLVideoSurfaceView.b f482i = new c();

    public class a implements SurfaceHolder.Callback {
        public a() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i4, int i5, int i6) {
            a.b.a("surfaceChanged:: ", i5, ", ", i6, "SurfaceViewProxy");
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            b.a(b.this, surfaceHolder.getSurface());
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            b.a(b.this, null);
        }
    }

    /* JADX INFO: renamed from: cn.huidu.lcd.render.media.b$b, reason: collision with other inner class name */
    public class TextureViewSurfaceTextureListenerC0010b implements TextureView.SurfaceTextureListener {
        public TextureViewSurfaceTextureListenerC0010b() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i4, int i5) {
            b.a(b.this, new Surface(surfaceTexture));
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            b.a(b.this, null);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i4, int i5) {
            a.b.a("onSurfaceTextureSizeChanged: ", i4, ", ", i5, "SurfaceViewProxy");
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    public class c implements GLVideoSurfaceView.b {
        public c() {
        }
    }

    public interface d {
    }

    public static void a(b bVar, Surface surface) {
        MediaPlayer mediaPlayer;
        bVar.f475b = surface;
        d dVar = bVar.f476c;
        if (dVar == null || (mediaPlayer = ((cn.huidu.lcd.render.media.a) dVar).f471e) == null) {
            return;
        }
        mediaPlayer.setSurface(surface);
    }

    public void b(View view) {
        this.f474a = view;
        if (view instanceof GLVideoSurfaceView) {
            GLVideoSurfaceView gLVideoSurfaceView = (GLVideoSurfaceView) view;
            gLVideoSurfaceView.setSurfaceListener(this.f482i);
            SurfaceTexture surfaceTexture = gLVideoSurfaceView.getSurfaceTexture();
            if (surfaceTexture != null) {
                a(b.this, new Surface(surfaceTexture));
                return;
            }
            return;
        }
        if (view instanceof SurfaceView) {
            SurfaceHolder holder = ((SurfaceView) view).getHolder();
            holder.addCallback(this.f480g);
            Surface surface = holder.getSurface();
            if (surface == null || !surface.isValid()) {
                return;
            }
            Log.d("SurfaceViewProxy", "setDisplay: surface is valid.");
            this.f480g.surfaceCreated(holder);
            return;
        }
        if (view instanceof TextureView) {
            TextureView textureView = (TextureView) view;
            textureView.setSurfaceTextureListener(this.f481h);
            SurfaceTexture surfaceTexture2 = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
            if (surfaceTexture2 != null) {
                Log.d("SurfaceViewProxy", "setTextureView: surface texture is available.");
                this.f481h.onSurfaceTextureAvailable(surfaceTexture2, textureView.getWidth(), textureView.getHeight());
            }
        }
    }

    public void c(int i4, int i5) {
        if (i4 <= 0 || i5 <= 0) {
            return;
        }
        if (i4 == this.f477d && i5 == this.f478e) {
            return;
        }
        this.f477d = i4;
        this.f478e = i5;
        if (this.f479f) {
            d();
        }
    }

    public final void d() {
        View view = this.f474a;
        if (view instanceof AspectSurfaceView) {
            ((AspectSurfaceView) view).a(this.f479f, this.f477d, this.f478e);
            return;
        }
        if (view instanceof AspectTextureView) {
            ((AspectTextureView) view).a(this.f479f, this.f477d, this.f478e);
            return;
        }
        if (view instanceof GLVideoSurfaceView) {
            GLVideoSurfaceView gLVideoSurfaceView = (GLVideoSurfaceView) view;
            boolean z3 = this.f479f;
            int i4 = this.f477d;
            int i5 = this.f478e;
            gLVideoSurfaceView.f459n = z3;
            gLVideoSurfaceView.f460o = i4;
            gLVideoSurfaceView.f461p = i5;
            if (gLVideoSurfaceView.f457l <= 0 || gLVideoSurfaceView.f458m <= 0) {
                return;
            }
            gLVideoSurfaceView.a();
        }
    }
}
