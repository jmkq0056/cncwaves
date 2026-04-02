package p1;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import com.google.android.exoplayer2.video.VideoDecoderOutputBuffer;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes.dex */
public class b implements GLSurfaceView.Renderer, c {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final float[] f2989j = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final float[] f2990k = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final float[] f2991l = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String[] f2992m = {"y_tex", "u_tex", "v_tex"};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final FloatBuffer f2993n = o1.c.d(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2997d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2999f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public VideoDecoderOutputBuffer f3002i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f2994a = new int[3];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference<VideoDecoderOutputBuffer> f2995b = new AtomicReference<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FloatBuffer[] f2996c = new FloatBuffer[3];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f2998e = new int[3];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[] f3000g = new int[3];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f3001h = new int[3];

    public b(GLSurfaceView gLSurfaceView) {
        for (int i4 = 0; i4 < 3; i4++) {
            int[] iArr = this.f3000g;
            this.f3001h[i4] = -1;
            iArr[i4] = -1;
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        VideoDecoderOutputBuffer andSet = this.f2995b.getAndSet(null);
        if (andSet == null && this.f3002i == null) {
            return;
        }
        if (andSet != null) {
            VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.f3002i;
            if (videoDecoderOutputBuffer != null) {
                videoDecoderOutputBuffer.release();
            }
            this.f3002i = andSet;
        }
        VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = this.f3002i;
        Objects.requireNonNull(videoDecoderOutputBuffer2);
        float[] fArr = f2990k;
        int i4 = videoDecoderOutputBuffer2.colorspace;
        if (i4 == 1) {
            fArr = f2989j;
        } else if (i4 == 3) {
            fArr = f2991l;
        }
        GLES20.glUniformMatrix3fv(this.f2999f, 1, false, fArr, 0);
        int[] iArr = videoDecoderOutputBuffer2.yuvStrides;
        Objects.requireNonNull(iArr);
        ByteBuffer[] byteBufferArr = videoDecoderOutputBuffer2.yuvPlanes;
        Objects.requireNonNull(byteBufferArr);
        int i5 = 0;
        while (i5 < 3) {
            int i6 = i5 == 0 ? videoDecoderOutputBuffer2.height : (videoDecoderOutputBuffer2.height + 1) / 2;
            GLES20.glActiveTexture(33984 + i5);
            GLES20.glBindTexture(3553, this.f2994a[i5]);
            GLES20.glPixelStorei(3317, 1);
            GLES20.glTexImage2D(3553, 0, 6409, iArr[i5], i6, 0, 6409, 5121, byteBufferArr[i5]);
            i5++;
        }
        int i7 = (iArr[0] + 1) / 2;
        int[] iArr2 = {videoDecoderOutputBuffer2.width, i7, i7};
        for (int i8 = 0; i8 < 3; i8++) {
            if (this.f3000g[i8] != iArr2[i8] || this.f3001h[i8] != iArr[i8]) {
                o1.a.b(iArr[i8] != 0);
                float f4 = iArr2[i8] / iArr[i8];
                this.f2996c[i8] = o1.c.d(new float[]{0.0f, 0.0f, 0.0f, 1.0f, f4, 0.0f, f4, 1.0f});
                GLES20.glVertexAttribPointer(this.f2998e[i8], 2, 5126, false, 0, (Buffer) this.f2996c[i8]);
                this.f3000g[i8] = iArr2[i8];
                this.f3001h[i8] = iArr[i8];
            }
        }
        GLES20.glClear(16384);
        GLES20.glDrawArrays(5, 0, 4);
        o1.c.b();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i4, int i5) {
        GLES20.glViewport(0, 0, i4, i5);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        int iC = o1.c.c("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
        this.f2997d = iC;
        GLES20.glUseProgram(iC);
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.f2997d, "in_pos");
        GLES20.glEnableVertexAttribArray(iGlGetAttribLocation);
        GLES20.glVertexAttribPointer(iGlGetAttribLocation, 2, 5126, false, 0, (Buffer) f2993n);
        this.f2998e[0] = GLES20.glGetAttribLocation(this.f2997d, "in_tc_y");
        GLES20.glEnableVertexAttribArray(this.f2998e[0]);
        this.f2998e[1] = GLES20.glGetAttribLocation(this.f2997d, "in_tc_u");
        GLES20.glEnableVertexAttribArray(this.f2998e[1]);
        this.f2998e[2] = GLES20.glGetAttribLocation(this.f2997d, "in_tc_v");
        GLES20.glEnableVertexAttribArray(this.f2998e[2]);
        o1.c.b();
        this.f2999f = GLES20.glGetUniformLocation(this.f2997d, "mColorConversion");
        o1.c.b();
        GLES20.glGenTextures(3, this.f2994a, 0);
        for (int i4 = 0; i4 < 3; i4++) {
            GLES20.glUniform1i(GLES20.glGetUniformLocation(this.f2997d, f2992m[i4]), i4);
            GLES20.glActiveTexture(33984 + i4);
            GLES20.glBindTexture(3553, this.f2994a[i4]);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
        }
        o1.c.b();
        o1.c.b();
    }
}
