package com.google.android.exoplayer2.ui.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.opengl.Matrix;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ui.spherical.SphericalGLSurfaceView;
import com.google.android.exoplayer2.ui.spherical.a;
import n1.d;

/* JADX INFO: loaded from: classes.dex */
public class b extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, a.InterfaceC0013a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f1379c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f1380d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GestureDetector f1381e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    public d f1383g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PointF f1377a = new PointF();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PointF f1378b = new PointF();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile float f1382f = 3.1415927f;

    public interface a {
    }

    public b(Context context, a aVar, float f4) {
        this.f1379c = aVar;
        this.f1380d = f4;
        this.f1381e = new GestureDetector(context, this);
    }

    @Override // com.google.android.exoplayer2.ui.spherical.a.InterfaceC0013a
    @BinderThread
    public void a(float[] fArr, float f4) {
        this.f1382f = -f4;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.f1377a.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
        float x3 = (motionEvent2.getX() - this.f1377a.x) / this.f1380d;
        float y3 = motionEvent2.getY();
        PointF pointF = this.f1377a;
        float f6 = (y3 - pointF.y) / this.f1380d;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d4 = this.f1382f;
        float fCos = (float) Math.cos(d4);
        float fSin = (float) Math.sin(d4);
        PointF pointF2 = this.f1378b;
        pointF2.x -= (fCos * x3) - (fSin * f6);
        float f7 = (fCos * f6) + (fSin * x3) + pointF2.y;
        pointF2.y = f7;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f7));
        a aVar = this.f1379c;
        PointF pointF3 = this.f1378b;
        SphericalGLSurfaceView.a aVar2 = (SphericalGLSurfaceView.a) aVar;
        synchronized (aVar2) {
            aVar2.f1365g = pointF3.y;
            aVar2.b();
            Matrix.setRotateM(aVar2.f1364f, 0, -pointF3.x, 0.0f, 1.0f, 0.0f);
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        d dVar = this.f1383g;
        if (dVar != null) {
            return dVar.onSingleTapUp(motionEvent);
        }
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f1381e.onTouchEvent(motionEvent);
    }
}
