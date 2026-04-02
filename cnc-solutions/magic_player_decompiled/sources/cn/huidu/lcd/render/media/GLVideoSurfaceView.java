package cn.huidu.lcd.render.media;

import android.content.Context;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.SystemClock;
import android.view.SurfaceHolder;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes.dex */
public class GLVideoSurfaceView extends GLSurfaceView implements GLSurfaceView.Renderer, SurfaceTexture.OnFrameAvailableListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FloatBuffer f448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public FloatBuffer f449d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f451f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f452g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f453h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f454i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f455j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public SurfaceTexture f456k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f457l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f458m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f459n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f460o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f461p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f462q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f463r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f464s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public a f465t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public b f466u;

    public interface a {
        void a(int i4);
    }

    public interface b {
    }

    public GLVideoSurfaceView(Context context) {
        super(context);
        this.f446a = new float[16];
        float[] fArr = new float[16];
        this.f447b = fArr;
        this.f448c = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f449d = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
        Matrix.setIdentityM(fArr, 0);
        setTextureRect(null);
        getHolder().setFormat(-3);
        setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        setEGLContextClientVersion(2);
        super.setRenderer(this);
        setRenderMode(0);
    }

    public final void a() {
        int i4;
        int i5;
        float f4;
        float f5;
        if (this.f462q || !this.f459n || (i4 = this.f460o) <= 0 || (i5 = this.f461p) <= 0) {
            h.a.s0(this.f448c, 0.0f, this.f457l, 0.0f, this.f458m);
            return;
        }
        int i6 = this.f457l;
        int i7 = i6 * i5;
        int i8 = this.f458m;
        if (i7 < i4 * i8) {
            f5 = i6;
            f4 = (i5 / i4) * f5;
        } else {
            float f6 = i8;
            float f7 = (i4 / i5) * f6;
            f4 = f6;
            f5 = f7;
        }
        float f8 = (i6 - f5) / 2.0f;
        float f9 = (i8 - f4) / 2.0f;
        h.a.s0(this.f448c, f8, f5 + f8, f9, f4 + f9);
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.f456k;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        if (this.f465t != null) {
            this.f464s++;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j4 = jElapsedRealtime - this.f463r;
            if (j4 < 0 || j4 > 3000) {
                this.f463r = jElapsedRealtime;
                this.f464s = 0;
            } else if (j4 > 1000) {
                int i4 = (int) (((this.f464s / j4) * 1000.0f) + 0.5f);
                this.f463r = jElapsedRealtime;
                this.f464s = 0;
                a aVar = this.f465t;
                if (aVar != null) {
                    aVar.a(i4);
                }
            }
        }
        if (this.f450e == 0) {
            return;
        }
        this.f456k.updateTexImage();
        this.f456k.getTransformMatrix(this.f447b);
        GLES20.glUseProgram(this.f450e);
        this.f448c.position(0);
        GLES20.glEnableVertexAttribArray(this.f453h);
        GLES20.glVertexAttribPointer(this.f453h, 2, 5126, false, 0, (Buffer) this.f448c);
        this.f449d.position(0);
        GLES20.glEnableVertexAttribArray(this.f454i);
        GLES20.glVertexAttribPointer(this.f454i, 2, 5126, false, 0, (Buffer) this.f449d);
        GLES20.glUniformMatrix4fv(this.f451f, 1, false, this.f446a, 0);
        GLES20.glUniformMatrix4fv(this.f452g, 1, false, this.f447b, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, this.f455j);
        GLES20.glDrawArrays(5, 0, 4);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        requestRender();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i4, int i5) {
        a.b.a("onSurfaceChanged: ", i4, ", ", i5, "GLVideoSurfaceView");
        this.f457l = i4;
        this.f458m = i5;
        GLES20.glViewport(0, 0, i4, i5);
        h.a.e("glViewport");
        if (i4 > 0 && i5 > 0) {
            Matrix.setIdentityM(this.f446a, 0);
            float[] fArr = this.f446a;
            float f4 = i4;
            fArr[0] = 2.0f / f4;
            float f5 = i5;
            fArr[5] = (-2.0f) / f5;
            float f6 = 0;
            fArr[12] = ((f6 / f4) * 2.0f) - 1.0f;
            fArr[13] = ((-(f6 / f5)) * 2.0f) + 1.0f;
        }
        a();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    @Override // android.opengl.GLSurfaceView.Renderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSurfaceCreated(javax.microedition.khronos.opengles.GL10 r5, javax.microedition.khronos.egl.EGLConfig r6) {
        /*
            Method dump skipped, instruction units count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.huidu.lcd.render.media.GLVideoSurfaceView.onSurfaceCreated(javax.microedition.khronos.opengles.GL10, javax.microedition.khronos.egl.EGLConfig):void");
    }

    public void setFPSListener(a aVar) {
        this.f465t = aVar;
    }

    @Override // android.opengl.GLSurfaceView
    public void setRenderer(GLSurfaceView.Renderer renderer) {
        throw new RuntimeException("Illegal operate!");
    }

    public void setSurfaceListener(b bVar) {
        this.f466u = bVar;
    }

    public void setTextureRect(RectF rectF) {
        if (rectF != null) {
            float f4 = rectF.left;
            if (f4 >= 0.0f) {
                float f5 = rectF.right;
                if (f5 <= 1.0f && f4 < f5) {
                    float f6 = rectF.top;
                    if (f6 >= 0.0f) {
                        float f7 = rectF.bottom;
                        if (f7 <= 1.0f && f6 < f7 && (rectF.width() != 1.0f || rectF.height() != 1.0f)) {
                            this.f462q = true;
                            h.a.s0(this.f449d, rectF.left, rectF.right, 1.0f - rectF.top, 1.0f - rectF.bottom);
                            return;
                        }
                    }
                }
            }
        }
        this.f462q = false;
        h.a.s0(this.f449d, 0.0f, 1.0f, 1.0f, 0.0f);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        super.surfaceDestroyed(surfaceHolder);
        b bVar = this.f466u;
        if (bVar != null) {
            cn.huidu.lcd.render.media.b.a(cn.huidu.lcd.render.media.b.this, null);
        }
    }
}
