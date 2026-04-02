package pl.droidsonroids.gif;

import android.graphics.Canvas;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import pl.droidsonroids.gif.GifTextureView;

/* JADX INFO: loaded from: classes2.dex */
public class d implements TextureView.SurfaceTextureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GifTextureView.b f3092a;

    public d(GifTextureView.b bVar) {
        this.f3092a = bVar;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i4, int i5) {
        Surface surface = new Surface(surfaceTexture);
        Canvas canvasLockCanvas = surface.lockCanvas(null);
        this.f3092a.a(canvasLockCanvas);
        surface.unlockCanvasAndPost(canvasLockCanvas);
        surface.release();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i4, int i5) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
