package com.google.android.exoplayer2.ui.spherical;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.AnyThread;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import b1.k;
import com.google.android.exoplayer2.ui.spherical.a;
import com.google.android.exoplayer2.ui.spherical.b;
import java.util.Objects;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import n1.c;
import o1.d;
import o1.e;

/* JADX INFO: loaded from: classes.dex */
public final class SphericalGLSurfaceView extends GLSurfaceView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SensorManager f1347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public final Sensor f1348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.google.android.exoplayer2.ui.spherical.a f1349c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Handler f1350d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b f1351e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final c f1352f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    public SurfaceTexture f1353g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    public Surface f1354h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    public k.c f1355i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1356j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1357k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1358l;

    @VisibleForTesting
    public class a implements GLSurfaceView.Renderer, b.a, a.InterfaceC0013a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final c f1359a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final float[] f1362d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float[] f1363e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float[] f1364f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f1365g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f1366h;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float[] f1360b = new float[16];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float[] f1361c = new float[16];

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final float[] f1367i = new float[16];

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final float[] f1368j = new float[16];

        public a(c cVar) {
            float[] fArr = new float[16];
            this.f1362d = fArr;
            float[] fArr2 = new float[16];
            this.f1363e = fArr2;
            float[] fArr3 = new float[16];
            this.f1364f = fArr3;
            this.f1359a = cVar;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
            this.f1366h = 3.1415927f;
        }

        @Override // com.google.android.exoplayer2.ui.spherical.a.InterfaceC0013a
        @BinderThread
        public synchronized void a(float[] fArr, float f4) {
            float[] fArr2 = this.f1362d;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            this.f1366h = -f4;
            b();
        }

        @AnyThread
        public final void b() {
            Matrix.setRotateM(this.f1363e, 0, -this.f1365g, (float) Math.cos(this.f1366h), (float) Math.sin(this.f1366h), 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            Long lA;
            q1.c cVarA;
            float[] fArrA;
            synchronized (this) {
                Matrix.multiplyMM(this.f1368j, 0, this.f1362d, 0, this.f1364f, 0);
                Matrix.multiplyMM(this.f1367i, 0, this.f1363e, 0, this.f1368j, 0);
            }
            Matrix.multiplyMM(this.f1361c, 0, this.f1360b, 0, this.f1367i, 0);
            c cVar = this.f1359a;
            float[] fArr = this.f1361c;
            Objects.requireNonNull(cVar);
            GLES20.glClear(16384);
            o1.c.b();
            if (cVar.f2722a.compareAndSet(true, false)) {
                SurfaceTexture surfaceTexture = cVar.f2731j;
                Objects.requireNonNull(surfaceTexture);
                surfaceTexture.updateTexImage();
                o1.c.b();
                if (cVar.f2723b.compareAndSet(true, false)) {
                    Matrix.setIdentityM(cVar.f2728g, 0);
                }
                long timestamp = cVar.f2731j.getTimestamp();
                d<Long> dVar = cVar.f2726e;
                synchronized (dVar) {
                    lA = dVar.a(timestamp, false);
                }
                Long l4 = lA;
                if (l4 != null) {
                    q1.b bVar = cVar.f2725d;
                    float[] fArr2 = cVar.f2728g;
                    long jLongValue = l4.longValue();
                    d<float[]> dVar2 = bVar.f3157c;
                    synchronized (dVar2) {
                        fArrA = dVar2.a(jLongValue, true);
                    }
                    float[] fArr3 = fArrA;
                    if (fArr3 != null) {
                        float[] fArr4 = (float[]) bVar.f3156b;
                        float f4 = fArr3[0];
                        float f5 = -fArr3[1];
                        float f6 = -fArr3[2];
                        float length = Matrix.length(f4, f5, f6);
                        if (length != 0.0f) {
                            Matrix.setRotateM(fArr4, 0, (float) Math.toDegrees(length), f4 / length, f5 / length, f6 / length);
                        } else {
                            Matrix.setIdentityM(fArr4, 0);
                        }
                        if (!bVar.f3158d) {
                            q1.b.b((float[]) bVar.f3155a, (float[]) bVar.f3156b);
                            bVar.f3158d = true;
                        }
                        Matrix.multiplyMM(fArr2, 0, (float[]) bVar.f3155a, 0, (float[]) bVar.f3156b, 0);
                    }
                }
                d<q1.c> dVar3 = cVar.f2727f;
                synchronized (dVar3) {
                    cVarA = dVar3.a(timestamp, true);
                }
                if (cVarA != null) {
                    Objects.requireNonNull(cVar.f2724c);
                    throw null;
                }
            }
            Matrix.multiplyMM(cVar.f2729h, 0, fArr, 0, cVar.f2728g, 0);
            Objects.requireNonNull(cVar.f2724c);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i4, int i5) {
            float degrees;
            GLES20.glViewport(0, 0, i4, i5);
            float f4 = i4 / i5;
            if (f4 > 1.0f) {
                double dTan = Math.tan(Math.toRadians(45.0d));
                double d4 = f4;
                Double.isNaN(d4);
                Double.isNaN(d4);
                degrees = (float) (Math.toDegrees(Math.atan(dTan / d4)) * 2.0d);
            } else {
                degrees = 90.0f;
            }
            Matrix.perspectiveM(this.f1360b, 0, degrees, f4, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView sphericalGLSurfaceView = SphericalGLSurfaceView.this;
            sphericalGLSurfaceView.f1350d.post(new m.b(sphericalGLSurfaceView, this.f1359a.a()));
        }
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }

    public final void a() {
        boolean z3 = this.f1356j && this.f1357k;
        Sensor sensor = this.f1348b;
        if (sensor == null || z3 == this.f1358l) {
            return;
        }
        if (z3) {
            this.f1347a.registerListener(this.f1349c, sensor, 0);
        } else {
            this.f1347a.unregisterListener(this.f1349c);
        }
        this.f1358l = z3;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1350d.post(new d.d(this));
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        this.f1357k = false;
        a();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        this.f1357k = true;
        a();
    }

    public void setDefaultStereoMode(int i4) {
        Objects.requireNonNull(this.f1352f);
    }

    public void setSingleTapListener(@Nullable n1.d dVar) {
        this.f1351e.f1383g = dVar;
    }

    public void setUseSensorRotation(boolean z3) {
        this.f1356j = z3;
        a();
    }

    public void setVideoComponent(@Nullable k.c cVar) {
        k.c cVar2 = this.f1355i;
        if (cVar == cVar2) {
            return;
        }
        if (cVar2 != null) {
            Surface surface = this.f1354h;
            if (surface != null) {
                cVar2.c(surface);
            }
            this.f1355i.g(this.f1352f);
            this.f1355i.d(this.f1352f);
        }
        this.f1355i = cVar;
        if (cVar != null) {
            cVar.b(this.f1352f);
            this.f1355i.j(this.f1352f);
            this.f1355i.a(this.f1354h);
        }
    }

    public SphericalGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1350d = new Handler(Looper.getMainLooper());
        Object systemService = context.getSystemService("sensor");
        Objects.requireNonNull(systemService);
        SensorManager sensorManager = (SensorManager) systemService;
        this.f1347a = sensorManager;
        Sensor defaultSensor = e.f2847a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.f1348b = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        c cVar = new c();
        this.f1352f = cVar;
        a aVar = new a(cVar);
        b bVar = new b(context, aVar, 25.0f);
        this.f1351e = bVar;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Objects.requireNonNull(windowManager);
        this.f1349c = new com.google.android.exoplayer2.ui.spherical.a(windowManager.getDefaultDisplay(), bVar, aVar);
        this.f1356j = true;
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(bVar);
    }
}
