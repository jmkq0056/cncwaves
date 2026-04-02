package n1;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.text.TextUtils;
import java.nio.IntBuffer;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class c implements p1.d, q1.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f2722a = new AtomicBoolean();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f2723b = new AtomicBoolean(true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f2724c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final q1.b f2725d = new q1.b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final o1.d<Long> f2726e = new o1.d<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final o1.d<q1.c> f2727f = new o1.d<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float[] f2728g = new float[16];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f2729h = new float[16];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2730i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SurfaceTexture f2731j;

    public SurfaceTexture a() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        o1.c.b();
        a aVar = this.f2724c;
        Objects.requireNonNull(aVar);
        int iC = o1.c.c(TextUtils.join("\n", a.f2718b), TextUtils.join("\n", a.f2719c));
        aVar.f2720a = iC;
        GLES20.glGetUniformLocation(iC, "uMvpMatrix");
        GLES20.glGetUniformLocation(aVar.f2720a, "uTexMatrix");
        GLES20.glGetAttribLocation(aVar.f2720a, "aPosition");
        GLES20.glGetAttribLocation(aVar.f2720a, "aTexCoords");
        GLES20.glGetUniformLocation(aVar.f2720a, "uTexture");
        o1.c.b();
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, IntBuffer.wrap(iArr));
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        o1.c.b();
        this.f2730i = iArr[0];
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f2730i);
        this.f2731j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: n1.b
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.f2721a.f2722a.set(true);
            }
        });
        return this.f2731j;
    }
}
