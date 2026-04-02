package pl.droidsonroids.gif;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.os.Build;
import android.system.Os;
import android.view.Surface;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import java.io.FileDescriptor;
import java.io.IOException;
import p3.h;
import q3.f;

/* JADX INFO: loaded from: classes2.dex */
public final class GifInfoHandle {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f3059b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile long f3060a;

    static {
        try {
            System.loadLibrary("pl_droidsonroids_gif");
        } catch (UnsatisfiedLinkError unused) {
            if (h.f3052a == null) {
                try {
                    h.f3052a = (Context) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentApplication", new Class[0]).invoke(null, new Object[0]);
                } catch (Exception e4) {
                    throw new IllegalStateException("LibraryLoader not initialized. Call LibraryLoader.initialize() before using library classes.", e4);
                }
            }
            new f().c(h.f3052a, "pl_droidsonroids_gif", null, null);
        }
    }

    public GifInfoHandle() {
    }

    public static native void bindSurface(long j4, Surface surface, long[] jArr);

    public static native int createTempNativeFileDescriptor();

    public static native int extractNativeFileDescriptor(FileDescriptor fileDescriptor, boolean z3);

    public static native void free(long j4);

    public static native int getCurrentFrameIndex(long j4);

    public static native int getCurrentLoop(long j4);

    public static native int getCurrentPosition(long j4);

    public static native int getDuration(long j4);

    public static native int getHeight(long j4);

    public static native int getLoopCount(long j4);

    public static native int getNativeErrorCode(long j4);

    public static native int getNumberOfFrames(long j4);

    public static native long[] getSavedState(long j4);

    public static native int getWidth(long j4);

    public static native boolean isOpaque(long j4);

    public static native long openByteArray(byte[] bArr);

    public static native long openFile(String str);

    public static native long openNativeFileDescriptor(int i4, long j4);

    public static native void postUnbindSurface(long j4);

    public static native long renderFrame(long j4, Bitmap bitmap);

    public static native boolean reset(long j4);

    public static native long restoreRemainder(long j4);

    public static native int restoreSavedState(long j4, long[] jArr, Bitmap bitmap);

    public static native void saveRemainder(long j4);

    public static native void seekToTime(long j4, int i4, Bitmap bitmap);

    public static native void setLoopCount(long j4, char c4);

    public static native void setOptions(long j4, char c4, boolean z3);

    public static native void setSpeedFactor(long j4, float f4);

    public synchronized int a() {
        return getHeight(this.f3060a);
    }

    public synchronized int b() {
        return getNumberOfFrames(this.f3060a);
    }

    public synchronized int c() {
        return getWidth(this.f3060a);
    }

    public synchronized boolean d() {
        return this.f3060a == 0;
    }

    public synchronized void e() {
        free(this.f3060a);
        this.f3060a = 0L;
    }

    public void f(@IntRange(from = 0, to = 65535) int i4) {
        if (i4 < 0 || i4 > 65535) {
            throw new IllegalArgumentException("Loop count of range <0, 65535>");
        }
        synchronized (this) {
            setLoopCount(this.f3060a, (char) i4);
        }
    }

    public void finalize() throws Throwable {
        try {
            e();
        } finally {
            super.finalize();
        }
    }

    public void g(@FloatRange(from = 0.0d, fromInclusive = false) float f4) {
        if (f4 <= 0.0f || Float.isNaN(f4)) {
            throw new IllegalArgumentException("Speed factor is not positive");
        }
        if (f4 < 4.656613E-10f) {
            f4 = 4.656613E-10f;
        }
        synchronized (this) {
            setSpeedFactor(this.f3060a, f4);
        }
    }

    public GifInfoHandle(byte[] bArr) {
        this.f3060a = openByteArray(bArr);
    }

    public GifInfoHandle(String str) {
        this.f3060a = openFile(str);
    }

    public GifInfoHandle(AssetFileDescriptor assetFileDescriptor) {
        int iCreateTempNativeFileDescriptor;
        try {
            FileDescriptor fileDescriptor = assetFileDescriptor.getFileDescriptor();
            long startOffset = assetFileDescriptor.getStartOffset();
            if (Build.VERSION.SDK_INT > 27) {
                try {
                    iCreateTempNativeFileDescriptor = createTempNativeFileDescriptor();
                    Os.dup2(fileDescriptor, iCreateTempNativeFileDescriptor);
                } finally {
                }
            } else {
                iCreateTempNativeFileDescriptor = extractNativeFileDescriptor(fileDescriptor, false);
            }
            this.f3060a = openNativeFileDescriptor(iCreateTempNativeFileDescriptor, startOffset);
            try {
                assetFileDescriptor.close();
            } catch (IOException unused) {
            }
        } catch (Throwable th) {
            try {
                assetFileDescriptor.close();
            } catch (IOException unused2) {
            }
            throw th;
        }
    }
}
