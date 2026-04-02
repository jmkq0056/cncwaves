package pl.droidsonroids.gif;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List<String> f3083a = Arrays.asList("raw", "drawable", "mipmap");

    public static void a(int i4, Drawable drawable) {
        if (drawable instanceof p3.d) {
            ((p3.d) drawable).f3034g.f(i4);
        }
    }

    public static a b(ImageView imageView, AttributeSet attributeSet, int i4, int i5) {
        if (attributeSet == null || imageView.isInEditMode()) {
            return new a();
        }
        a aVar = new a(imageView, attributeSet, i4, i5);
        int i6 = aVar.f3087b;
        if (i6 >= 0) {
            a(i6, imageView.getDrawable());
            a(i6, imageView.getBackground());
        }
        return aVar;
    }

    public static boolean c(ImageView imageView, Uri uri) {
        if (uri == null) {
            return false;
        }
        try {
            imageView.setImageDrawable(new p3.d(imageView.getContext().getContentResolver(), uri));
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean d(ImageView imageView, boolean z3, int i4) {
        Resources resources = imageView.getResources();
        if (resources != null) {
            try {
                if (!f3083a.contains(resources.getResourceTypeName(i4))) {
                    return false;
                }
                p3.d dVar = new p3.d(resources, i4);
                if (z3) {
                    imageView.setImageDrawable(dVar);
                    return true;
                }
                imageView.setBackground(dVar);
                return true;
            } catch (Resources.NotFoundException | IOException unused) {
            }
        }
        return false;
    }

    public static class a extends C0038b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f3084c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f3085d;

        public a(ImageView imageView, AttributeSet attributeSet, int i4, int i5) {
            super(imageView, attributeSet, i4, i5);
            this.f3084c = a(imageView, attributeSet, true);
            this.f3085d = a(imageView, attributeSet, false);
        }

        public static int a(ImageView imageView, AttributeSet attributeSet, boolean z3) {
            int attributeResourceValue = attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", z3 ? "src" : "background", 0);
            if (attributeResourceValue > 0) {
                if (b.f3083a.contains(imageView.getResources().getResourceTypeName(attributeResourceValue)) && !b.d(imageView, z3, attributeResourceValue)) {
                    return attributeResourceValue;
                }
            }
            return 0;
        }

        public a() {
            this.f3084c = 0;
            this.f3085d = 0;
        }
    }

    /* JADX INFO: renamed from: pl.droidsonroids.gif.b$b, reason: collision with other inner class name */
    public static class C0038b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f3086a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f3087b;

        public C0038b(View view, AttributeSet attributeSet, int i4, int i5) {
            TypedArray typedArrayObtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R$styleable.GifView, i4, i5);
            this.f3086a = typedArrayObtainStyledAttributes.getBoolean(R$styleable.GifView_freezesAnimation, false);
            this.f3087b = typedArrayObtainStyledAttributes.getInt(R$styleable.GifView_loopCount, -1);
            typedArrayObtainStyledAttributes.recycle();
        }

        public C0038b() {
            this.f3086a = false;
            this.f3087b = -1;
        }
    }
}
