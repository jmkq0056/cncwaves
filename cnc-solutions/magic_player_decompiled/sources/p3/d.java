package p3;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.SystemClock;
import android.util.TypedValue;
import android.widget.MediaController;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.xbill.DNS.TTL;
import p3.e;
import pl.droidsonroids.gif.GifInfoHandle;

/* JADX INFO: loaded from: classes2.dex */
public class d extends Drawable implements Animatable, MediaController.MediaPlayerControl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f3028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile boolean f3029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f3030c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f3031d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Paint f3032e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Bitmap f3033f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final GifInfoHandle f3034g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConcurrentLinkedQueue<p3.a> f3035h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ColorStateList f3036i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public PorterDuffColorFilter f3037j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PorterDuff.Mode f3038k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f3039l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final g f3040m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final i f3041n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Rect f3042o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ScheduledFuture<?> f3043p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3044q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3045r;

    public class a extends j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f3046b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, int i4) {
            super(dVar);
            this.f3046b = i4;
        }

        @Override // p3.j
        public void a() {
            d dVar = d.this;
            GifInfoHandle gifInfoHandle = dVar.f3034g;
            int i4 = this.f3046b;
            Bitmap bitmap = dVar.f3033f;
            synchronized (gifInfoHandle) {
                GifInfoHandle.seekToTime(gifInfoHandle.f3060a, i4, bitmap);
            }
            this.f3053a.f3040m.sendEmptyMessageAtTime(-1, 0L);
        }
    }

    public d(@NonNull Resources resources, @DrawableRes @RawRes int i4) {
        this(new GifInfoHandle(resources.openRawResourceFd(i4)), null, null, true);
        List<String> list = pl.droidsonroids.gif.b.f3083a;
        TypedValue typedValue = new TypedValue();
        resources.getValue(i4, typedValue, true);
        int i5 = typedValue.density;
        if (i5 == 0) {
            i5 = 160;
        } else if (i5 == 65535) {
            i5 = 0;
        }
        int i6 = resources.getDisplayMetrics().densityDpi;
        float f4 = (i5 <= 0 || i6 <= 0) ? 1.0f : i6 / i5;
        this.f3045r = (int) (this.f3034g.a() * f4);
        this.f3044q = (int) (this.f3034g.c() * f4);
    }

    public void a() {
        this.f3029b = false;
        this.f3040m.removeMessages(-1);
        this.f3034g.e();
        this.f3033f.recycle();
    }

    public void b(long j4) {
        if (this.f3039l) {
            this.f3030c = 0L;
            this.f3040m.sendEmptyMessageAtTime(-1, 0L);
            return;
        }
        ScheduledFuture<?> scheduledFuture = this.f3043p;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f3040m.removeMessages(-1);
        this.f3043p = this.f3028a.schedule(this.f3041n, Math.max(j4, 0L), TimeUnit.MILLISECONDS);
    }

    public final PorterDuffColorFilter c(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return this.f3034g.b() > 1;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return this.f3034g.b() > 1;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        boolean z3;
        if (this.f3037j == null || this.f3032e.getColorFilter() != null) {
            z3 = false;
        } else {
            this.f3032e.setColorFilter(this.f3037j);
            z3 = true;
        }
        canvas.drawBitmap(this.f3033f, this.f3042o, this.f3031d, this.f3032e);
        if (z3) {
            this.f3032e.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f3032e.getAlpha();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        return 100;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f3032e.getColorFilter();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        int currentPosition;
        GifInfoHandle gifInfoHandle = this.f3034g;
        synchronized (gifInfoHandle) {
            currentPosition = GifInfoHandle.getCurrentPosition(gifInfoHandle.f3060a);
        }
        return currentPosition;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        int duration;
        GifInfoHandle gifInfoHandle = this.f3034g;
        synchronized (gifInfoHandle) {
            duration = GifInfoHandle.getDuration(gifInfoHandle.f3060a);
        }
        return duration;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f3045r;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f3044q;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        boolean zIsOpaque;
        GifInfoHandle gifInfoHandle = this.f3034g;
        synchronized (gifInfoHandle) {
            zIsOpaque = GifInfoHandle.isOpaque(gifInfoHandle.f3060a);
        }
        return (!zIsOpaque || this.f3032e.getAlpha() < 255) ? -2 : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        if (this.f3039l && this.f3029b) {
            long j4 = this.f3030c;
            if (j4 != Long.MIN_VALUE) {
                long jMax = Math.max(0L, j4 - SystemClock.uptimeMillis());
                this.f3030c = Long.MIN_VALUE;
                this.f3028a.remove(this.f3041n);
                this.f3043p = this.f3028a.schedule(this.f3041n, jMax, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return this.f3029b;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f3029b;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        return super.isStateful() || ((colorStateList = this.f3036i) != null && colorStateList.isStateful());
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f3031d.set(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f3036i;
        if (colorStateList == null || (mode = this.f3038k) == null) {
            return false;
        }
        this.f3037j = c(colorStateList, mode);
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        stop();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(@IntRange(from = 0, to = TTL.MAX_VALUE) int i4) {
        if (i4 < 0) {
            throw new IllegalArgumentException("Position is not positive");
        }
        this.f3028a.execute(new a(this, i4));
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i4) {
        this.f3032e.setAlpha(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f3032e.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated
    public void setDither(boolean z3) {
        this.f3032e.setDither(z3);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z3) {
        this.f3032e.setFilterBitmap(z3);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f3036i = colorStateList;
        this.f3037j = c(colorStateList, this.f3038k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        this.f3038k = mode;
        this.f3037j = c(this.f3036i, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z3, boolean z4) {
        boolean visible = super.setVisible(z3, z4);
        if (!this.f3039l) {
            if (z3) {
                if (z4) {
                    this.f3028a.execute(new c(this, this));
                }
                if (visible) {
                    start();
                }
            } else if (visible) {
                stop();
            }
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable, android.widget.MediaController.MediaPlayerControl
    public void start() {
        long jRestoreRemainder;
        synchronized (this) {
            if (this.f3029b) {
                return;
            }
            this.f3029b = true;
            GifInfoHandle gifInfoHandle = this.f3034g;
            synchronized (gifInfoHandle) {
                jRestoreRemainder = GifInfoHandle.restoreRemainder(gifInfoHandle.f3060a);
            }
            b(jRestoreRemainder);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        synchronized (this) {
            if (this.f3029b) {
                this.f3029b = false;
                ScheduledFuture<?> scheduledFuture = this.f3043p;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.f3040m.removeMessages(-1);
                GifInfoHandle gifInfoHandle = this.f3034g;
                synchronized (gifInfoHandle) {
                    GifInfoHandle.saveRemainder(gifInfoHandle.f3060a);
                }
            }
        }
    }

    @NonNull
    public String toString() {
        int nativeErrorCode;
        Locale locale = Locale.ENGLISH;
        Object[] objArr = new Object[4];
        objArr[0] = Integer.valueOf(this.f3034g.c());
        objArr[1] = Integer.valueOf(this.f3034g.a());
        objArr[2] = Integer.valueOf(this.f3034g.b());
        GifInfoHandle gifInfoHandle = this.f3034g;
        synchronized (gifInfoHandle) {
            nativeErrorCode = GifInfoHandle.getNativeErrorCode(gifInfoHandle.f3060a);
        }
        objArr[3] = Integer.valueOf(nativeErrorCode);
        return String.format(locale, "GIF: size: %dx%d, frames: %d, error: %d", objArr);
    }

    public d(@NonNull String str) {
        this(new GifInfoHandle(str), null, null, true);
    }

    public d(@Nullable ContentResolver contentResolver, @NonNull Uri uri) throws IOException {
        GifInfoHandle gifInfoHandle;
        int i4 = GifInfoHandle.f3059b;
        if ("file".equals(uri.getScheme())) {
            gifInfoHandle = new GifInfoHandle(uri.getPath());
        } else {
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
            if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                gifInfoHandle = new GifInfoHandle(assetFileDescriptorOpenAssetFileDescriptor);
            } else {
                throw new IOException("Could not open AssetFileDescriptor for " + uri);
            }
        }
        this(gifInfoHandle, null, null, true);
    }

    public d(GifInfoHandle gifInfoHandle, d dVar, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, boolean z3) {
        boolean zIsOpaque;
        this.f3029b = true;
        this.f3030c = Long.MIN_VALUE;
        this.f3031d = new Rect();
        this.f3032e = new Paint(6);
        this.f3035h = new ConcurrentLinkedQueue<>();
        i iVar = new i(this);
        this.f3041n = iVar;
        this.f3039l = z3;
        int i4 = e.f3048a;
        this.f3028a = e.b.f3049a;
        this.f3034g = gifInfoHandle;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(gifInfoHandle.c(), gifInfoHandle.a(), Bitmap.Config.ARGB_8888);
        this.f3033f = bitmapCreateBitmap;
        synchronized (gifInfoHandle) {
            zIsOpaque = GifInfoHandle.isOpaque(gifInfoHandle.f3060a);
        }
        bitmapCreateBitmap.setHasAlpha(true ^ zIsOpaque);
        this.f3042o = new Rect(0, 0, gifInfoHandle.c(), gifInfoHandle.a());
        this.f3040m = new g(this);
        iVar.a();
        this.f3044q = gifInfoHandle.c();
        this.f3045r = gifInfoHandle.a();
    }
}
