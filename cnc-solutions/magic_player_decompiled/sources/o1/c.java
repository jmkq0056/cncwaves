package o1;

import android.annotation.SuppressLint;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.support.v4.media.f;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"InlinedApi"})
public final class c {
    public static void a(int i4, String str, int i5) {
        int iGlCreateShader = GLES20.glCreateShader(i4);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            Log.e("GlUtil", GLES20.glGetShaderInfoLog(iGlCreateShader) + ", source: " + str);
        }
        GLES20.glAttachShader(i5, iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        b();
    }

    public static void b() {
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                return;
            }
            StringBuilder sbA = f.a("glError ");
            sbA.append(GLU.gluErrorString(iGlGetError));
            Log.e("GlUtil", sbA.toString());
        }
    }

    public static int c(String str, String str2) {
        int iGlCreateProgram = GLES20.glCreateProgram();
        b();
        a(35633, str, iGlCreateProgram);
        a(35632, str2, iGlCreateProgram);
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            StringBuilder sbA = f.a("Unable to link shader program: \n");
            sbA.append(GLES20.glGetProgramInfoLog(iGlCreateProgram));
            Log.e("GlUtil", sbA.toString());
        }
        b();
        return iGlCreateProgram;
    }

    public static FloatBuffer d(float[] fArr) {
        return (FloatBuffer) ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr).flip();
    }

    public static int e(int i4, int i5) {
        for (int i6 = 1; i6 <= 2; i6++) {
            int i7 = (i4 + i6) % 3;
            boolean z3 = false;
            if (i7 == 0 || (i7 == 1 ? (i5 & 1) != 0 : !(i7 != 2 || (i5 & 2) == 0))) {
                z3 = true;
            }
            if (z3) {
                return i7;
            }
        }
        return i4;
    }
}
