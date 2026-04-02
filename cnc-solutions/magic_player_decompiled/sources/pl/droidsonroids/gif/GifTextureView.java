package pl.droidsonroids.gif;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.os.Parcelable;
import android.support.v4.media.h;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Surface;
import android.view.TextureView;
import android.widget.ImageView;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.lang.ref.WeakReference;
import p3.f;
import pl.droidsonroids.gif.b;
import pl.droidsonroids.gif.c;

/* JADX INFO: loaded from: classes2.dex */
public class GifTextureView extends TextureView {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ImageView.ScaleType[] f3062g = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ImageView.ScaleType f3063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Matrix f3064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public pl.droidsonroids.gif.c f3065c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c f3066d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f3067e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public b.C0038b f3068f;

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3069a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f3069a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3069a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3069a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3069a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3069a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3069a[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3069a[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3069a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public interface b {
        void a(Canvas canvas);
    }

    public static class c extends Thread implements TextureView.SurfaceTextureListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final p3.b f3070a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public GifInfoHandle f3071b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public IOException f3072c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long[] f3073d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final WeakReference<GifTextureView> f3074e;

        public class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ GifTextureView f3075a;

            public a(GifTextureView gifTextureView) {
                this.f3075a = gifTextureView;
            }

            @Override // java.lang.Runnable
            public void run() {
                GifTextureView gifTextureView = this.f3075a;
                GifInfoHandle gifInfoHandle = c.this.f3071b;
                ImageView.ScaleType[] scaleTypeArr = GifTextureView.f3062g;
                gifTextureView.c(gifInfoHandle);
            }
        }

        public c(GifTextureView gifTextureView) {
            super("GifRenderThread");
            this.f3070a = new p3.b();
            this.f3071b = new GifInfoHandle();
            this.f3074e = new WeakReference<>(gifTextureView);
        }

        public void a(@NonNull GifTextureView gifTextureView, @Nullable b bVar) {
            this.f3070a.a();
            gifTextureView.setSuperSurfaceTextureListener(bVar != null ? new d(bVar) : null);
            GifInfoHandle gifInfoHandle = this.f3071b;
            synchronized (gifInfoHandle) {
                GifInfoHandle.postUnbindSurface(gifInfoHandle.f3060a);
            }
            interrupt();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i4, int i5) {
            GifTextureView gifTextureView = this.f3074e.get();
            if (gifTextureView != null) {
                GifInfoHandle gifInfoHandle = this.f3071b;
                ImageView.ScaleType[] scaleTypeArr = GifTextureView.f3062g;
                gifTextureView.c(gifInfoHandle);
            }
            this.f3070a.b();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            this.f3070a.a();
            GifInfoHandle gifInfoHandle = this.f3071b;
            synchronized (gifInfoHandle) {
                GifInfoHandle.postUnbindSurface(gifInfoHandle.f3060a);
            }
            interrupt();
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i4, int i5) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                GifTextureView gifTextureView = this.f3074e.get();
                if (gifTextureView == null) {
                    return;
                }
                GifInfoHandle gifInfoHandleA = gifTextureView.f3065c.a();
                this.f3071b = gifInfoHandleA;
                GifInfoHandle.setOptions(gifInfoHandleA.f3060a, (char) 1, gifTextureView.isOpaque());
                int i4 = gifTextureView.f3068f.f3087b;
                if (i4 >= 0) {
                    this.f3071b.f(i4);
                }
                GifTextureView gifTextureView2 = this.f3074e.get();
                if (gifTextureView2 == null) {
                    this.f3071b.e();
                    return;
                }
                gifTextureView2.setSuperSurfaceTextureListener(this);
                boolean zIsAvailable = gifTextureView2.isAvailable();
                p3.b bVar = this.f3070a;
                synchronized (bVar) {
                    if (zIsAvailable) {
                        bVar.b();
                    } else {
                        bVar.a();
                    }
                }
                if (zIsAvailable) {
                    gifTextureView2.post(new a(gifTextureView2));
                }
                this.f3071b.g(gifTextureView2.f3067e);
                while (!isInterrupted()) {
                    try {
                        p3.b bVar2 = this.f3070a;
                        synchronized (bVar2) {
                            while (!bVar2.f3026a) {
                                bVar2.wait();
                            }
                        }
                        GifTextureView gifTextureView3 = this.f3074e.get();
                        if (gifTextureView3 == null) {
                            break;
                        }
                        SurfaceTexture surfaceTexture = gifTextureView3.getSurfaceTexture();
                        if (surfaceTexture != null) {
                            Surface surface = new Surface(surfaceTexture);
                            try {
                                GifInfoHandle gifInfoHandle = this.f3071b;
                                GifInfoHandle.bindSurface(gifInfoHandle.f3060a, surface, this.f3073d);
                            } finally {
                                surface.release();
                            }
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
                this.f3071b.e();
                this.f3071b = new GifInfoHandle();
            } catch (IOException e4) {
                this.f3072c = e4;
            }
        }
    }

    public GifTextureView(Context context) {
        super(context);
        this.f3063a = ImageView.ScaleType.FIT_CENTER;
        this.f3064b = new Matrix();
        this.f3067e = 1.0f;
        b(null, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSuperSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
        super.setSurfaceTextureListener(surfaceTextureListener);
    }

    public final void b(AttributeSet attributeSet, int i4, int i5) {
        pl.droidsonroids.gif.c bVar;
        pl.droidsonroids.gif.c cVar;
        if (attributeSet != null) {
            int attributeIntValue = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "scaleType", -1);
            if (attributeIntValue >= 0) {
                ImageView.ScaleType[] scaleTypeArr = f3062g;
                if (attributeIntValue < scaleTypeArr.length) {
                    this.f3063a = scaleTypeArr[attributeIntValue];
                }
            }
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.GifTextureView, i4, i5);
            TypedValue typedValue = new TypedValue();
            if (!typedArrayObtainStyledAttributes.getValue(R$styleable.GifTextureView_gifSource, typedValue)) {
                cVar = null;
            } else if (typedValue.resourceId != 0) {
                String resourceTypeName = typedArrayObtainStyledAttributes.getResources().getResourceTypeName(typedValue.resourceId);
                if (pl.droidsonroids.gif.b.f3083a.contains(resourceTypeName)) {
                    bVar = new c.C0039c(typedArrayObtainStyledAttributes.getResources(), typedValue.resourceId);
                    cVar = bVar;
                } else {
                    if (!"string".equals(resourceTypeName)) {
                        throw new IllegalArgumentException(h.a("Expected string, drawable, mipmap or raw resource type. '", resourceTypeName, "' is not supported"));
                    }
                    bVar = new c.b(typedArrayObtainStyledAttributes.getResources().getAssets(), typedValue.string.toString());
                    cVar = bVar;
                }
            } else {
                bVar = new c.b(typedArrayObtainStyledAttributes.getResources().getAssets(), typedValue.string.toString());
                cVar = bVar;
            }
            this.f3065c = cVar;
            super.setOpaque(typedArrayObtainStyledAttributes.getBoolean(R$styleable.GifTextureView_isOpaque, false));
            typedArrayObtainStyledAttributes.recycle();
            this.f3068f = new b.C0038b(this, attributeSet, i4, i5);
        } else {
            super.setOpaque(false);
            this.f3068f = new b.C0038b();
        }
        if (isInEditMode()) {
            return;
        }
        c cVar2 = new c(this);
        this.f3066d = cVar2;
        if (this.f3065c != null) {
            cVar2.start();
        }
    }

    public final void c(GifInfoHandle gifInfoHandle) {
        Matrix matrix = new Matrix();
        float width = getWidth();
        float height = getHeight();
        float fC = gifInfoHandle.c() / width;
        float fA = gifInfoHandle.a() / height;
        RectF rectF = new RectF(0.0f, 0.0f, gifInfoHandle.c(), gifInfoHandle.a());
        RectF rectF2 = new RectF(0.0f, 0.0f, width, height);
        switch (a.f3069a[this.f3063a.ordinal()]) {
            case 1:
                matrix.setScale(fC, fA, width / 2.0f, height / 2.0f);
                break;
            case 2:
                float fMin = 1.0f / Math.min(fC, fA);
                matrix.setScale(fC * fMin, fMin * fA, width / 2.0f, height / 2.0f);
                break;
            case 3:
                float fMin2 = (((float) gifInfoHandle.c()) > width || ((float) gifInfoHandle.a()) > height) ? Math.min(1.0f / fC, 1.0f / fA) : 1.0f;
                matrix.setScale(fC * fMin2, fMin2 * fA, width / 2.0f, height / 2.0f);
                break;
            case 4:
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
                matrix.preScale(fC, fA);
                break;
            case 5:
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
                matrix.preScale(fC, fA);
                break;
            case 6:
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
                matrix.preScale(fC, fA);
                break;
            case 7:
                return;
            case 8:
                matrix.set(this.f3064b);
                matrix.preScale(fC, fA);
                break;
        }
        super.setTransform(matrix);
    }

    @Nullable
    public IOException getIOException() {
        int nativeErrorCode;
        c cVar = this.f3066d;
        IOException iOException = cVar.f3072c;
        if (iOException != null) {
            return iOException;
        }
        GifInfoHandle gifInfoHandle = cVar.f3071b;
        synchronized (gifInfoHandle) {
            nativeErrorCode = GifInfoHandle.getNativeErrorCode(gifInfoHandle.f3060a);
        }
        int i4 = GifIOException.f3054c;
        if (nativeErrorCode == pl.droidsonroids.gif.a.NO_ERROR.f3082b) {
            return null;
        }
        return new GifIOException(nativeErrorCode, null);
    }

    public ImageView.ScaleType getScaleType() {
        return this.f3063a;
    }

    @Override // android.view.TextureView
    public TextureView.SurfaceTextureListener getSurfaceTextureListener() {
        return null;
    }

    @Override // android.view.TextureView
    public Matrix getTransform(Matrix matrix) {
        if (matrix == null) {
            matrix = new Matrix();
        }
        matrix.set(this.f3064b);
        return matrix;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        this.f3066d.a(this, null);
        super.onDetachedFromWindow();
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.getSuperState());
        this.f3066d.f3073d = fVar.f3050a[0];
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        long[] savedState;
        c cVar = this.f3066d;
        GifInfoHandle gifInfoHandle = cVar.f3071b;
        synchronized (gifInfoHandle) {
            savedState = GifInfoHandle.getSavedState(gifInfoHandle.f3060a);
        }
        cVar.f3073d = savedState;
        return new f(super.onSaveInstanceState(), this.f3068f.f3086a ? this.f3066d.f3073d : null);
    }

    public void setFreezesAnimation(boolean z3) {
        this.f3068f.f3086a = z3;
    }

    public void setImageMatrix(Matrix matrix) {
        setTransform(matrix);
    }

    public synchronized void setInputSource(@Nullable pl.droidsonroids.gif.c cVar) {
        synchronized (this) {
            this.f3066d.a(this, null);
            try {
                this.f3066d.join();
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
            this.f3065c = cVar;
            c cVar2 = new c(this);
            this.f3066d = cVar2;
            if (cVar != null) {
                cVar2.start();
            }
        }
    }

    @Override // android.view.TextureView
    public void setOpaque(boolean z3) {
        if (z3 != isOpaque()) {
            super.setOpaque(z3);
            setInputSource(this.f3065c);
        }
    }

    public void setScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.f3063a = scaleType;
        c(this.f3066d.f3071b);
    }

    public void setSpeed(@FloatRange(from = 0.0d, fromInclusive = false) float f4) {
        this.f3067e = f4;
        this.f3066d.f3071b.g(f4);
    }

    @Override // android.view.TextureView
    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        throw new UnsupportedOperationException("Changing SurfaceTexture is not supported");
    }

    @Override // android.view.TextureView
    public void setSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
        throw new UnsupportedOperationException("Changing SurfaceTextureListener is not supported");
    }

    @Override // android.view.TextureView
    public void setTransform(Matrix matrix) {
        this.f3064b.set(matrix);
        c(this.f3066d.f3071b);
    }

    public GifTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3063a = ImageView.ScaleType.FIT_CENTER;
        this.f3064b = new Matrix();
        this.f3067e = 1.0f;
        b(attributeSet, 0, 0);
    }

    public GifTextureView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f3063a = ImageView.ScaleType.FIT_CENTER;
        this.f3064b = new Matrix();
        this.f3067e = 1.0f;
        b(attributeSet, i4, 0);
    }
}
