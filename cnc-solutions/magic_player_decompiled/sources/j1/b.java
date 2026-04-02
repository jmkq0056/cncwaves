package j1;

import android.graphics.Bitmap;
import android.text.Layout;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public final CharSequence f1984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public final Layout.Alignment f1985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public final Bitmap f1986c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f1987d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1988e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1989f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f1990g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1991h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f1992i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f1993j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f1994k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f1995l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f1996m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float f1997n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f1998o;

    static {
        C0027b c0027b = new C0027b();
        c0027b.f1999a = "";
        c0027b.a();
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, Bitmap bitmap, float f4, int i4, int i5, float f5, int i6, int i7, float f6, float f7, float f8, boolean z3, int i8, int i9, a aVar) {
        if (charSequence == null) {
            Objects.requireNonNull(bitmap);
        } else {
            o1.a.a(bitmap == null);
        }
        this.f1984a = charSequence;
        this.f1985b = alignment;
        this.f1986c = bitmap;
        this.f1987d = f4;
        this.f1988e = i4;
        this.f1989f = i5;
        this.f1990g = f5;
        this.f1991h = i6;
        this.f1992i = f7;
        this.f1993j = f8;
        this.f1994k = z3;
        this.f1995l = i8;
        this.f1996m = i7;
        this.f1997n = f6;
        this.f1998o = i9;
    }

    public C0027b a() {
        return new C0027b(this, null);
    }

    /* JADX INFO: renamed from: j1.b$b, reason: collision with other inner class name */
    public static final class C0027b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        public CharSequence f1999a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        public Bitmap f2000b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        public Layout.Alignment f2001c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f2002d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2003e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2004f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f2005g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f2006h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f2007i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f2008j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f2009k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public float f2010l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f2011m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        @ColorInt
        public int f2012n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f2013o;

        public C0027b() {
            this.f1999a = null;
            this.f2000b = null;
            this.f2001c = null;
            this.f2002d = -3.4028235E38f;
            this.f2003e = Integer.MIN_VALUE;
            this.f2004f = Integer.MIN_VALUE;
            this.f2005g = -3.4028235E38f;
            this.f2006h = Integer.MIN_VALUE;
            this.f2007i = Integer.MIN_VALUE;
            this.f2008j = -3.4028235E38f;
            this.f2009k = -3.4028235E38f;
            this.f2010l = -3.4028235E38f;
            this.f2011m = false;
            this.f2012n = ViewCompat.MEASURED_STATE_MASK;
            this.f2013o = Integer.MIN_VALUE;
        }

        public b a() {
            return new b(this.f1999a, this.f2001c, this.f2000b, this.f2002d, this.f2003e, this.f2004f, this.f2005g, this.f2006h, this.f2007i, this.f2008j, this.f2009k, this.f2010l, this.f2011m, this.f2012n, this.f2013o, null);
        }

        public C0027b(b bVar, a aVar) {
            this.f1999a = bVar.f1984a;
            this.f2000b = bVar.f1986c;
            this.f2001c = bVar.f1985b;
            this.f2002d = bVar.f1987d;
            this.f2003e = bVar.f1988e;
            this.f2004f = bVar.f1989f;
            this.f2005g = bVar.f1990g;
            this.f2006h = bVar.f1991h;
            this.f2007i = bVar.f1996m;
            this.f2008j = bVar.f1997n;
            this.f2009k = bVar.f1992i;
            this.f2010l = bVar.f1993j;
            this.f2011m = bVar.f1994k;
            this.f2012n = bVar.f1995l;
            this.f2013o = bVar.f1998o;
        }
    }
}
