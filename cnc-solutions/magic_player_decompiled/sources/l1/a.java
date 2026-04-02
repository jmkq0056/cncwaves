package l1;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserView;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import l1.d;
import s1.j;

/* JADX INFO: loaded from: classes.dex */
public class a extends l1.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f2377b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference<b> f2378a = new AtomicReference<>(b.F);

    public static final class c extends d.b {
        public boolean A;
        public boolean B;
        public int C;
        public final SparseArray<Map<h1.b, d>> D;
        public final SparseBooleanArray E;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2400f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f2401g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f2402h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f2403i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f2404j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f2405k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f2406l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f2407m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f2408n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f2409o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f2410p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f2411q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f2412r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public boolean f2413s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f2414t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f2415u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public boolean f2416v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public boolean f2417w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f2418x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public boolean f2419y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public boolean f2420z;

        public c(b bVar, C0029a c0029a) {
            super(bVar);
            this.f2400f = bVar.f2379f;
            this.f2401g = bVar.f2380g;
            this.f2402h = bVar.f2381h;
            this.f2403i = bVar.f2382i;
            this.f2404j = bVar.f2383j;
            this.f2405k = bVar.f2384k;
            this.f2406l = bVar.f2385l;
            this.f2407m = bVar.f2386m;
            this.f2408n = bVar.f2387n;
            this.f2409o = bVar.f2388o;
            this.f2410p = bVar.f2389p;
            this.f2411q = bVar.f2390q;
            this.f2412r = bVar.f2391r;
            this.f2413s = bVar.f2392s;
            this.f2414t = bVar.f2393t;
            this.f2415u = bVar.f2394u;
            this.f2416v = bVar.f2395v;
            this.f2417w = bVar.f2396w;
            this.f2418x = bVar.f2397x;
            this.f2419y = bVar.f2398y;
            this.f2420z = bVar.f2399z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            SparseArray<Map<h1.b, d>> sparseArray = bVar.D;
            SparseArray<Map<h1.b, d>> sparseArray2 = new SparseArray<>();
            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                sparseArray2.put(sparseArray.keyAt(i4), new HashMap(sparseArray.valueAt(i4)));
            }
            this.D = sparseArray2;
            this.E = bVar.E.clone();
        }

        public b a() {
            return new b(this.f2400f, this.f2401g, this.f2402h, this.f2403i, this.f2404j, this.f2405k, this.f2406l, this.f2407m, this.f2408n, this.f2409o, this.f2410p, this.f2411q, this.f2412r, this.f2413s, this.f2430a, this.f2414t, this.f2415u, this.f2416v, this.f2417w, this.f2418x, this.f2419y, this.f2431b, this.f2432c, this.f2433d, this.f2434e, this.f2420z, this.A, this.B, this.C, this.D, this.E);
        }

        public final c b(int i4) {
            Map<h1.b, d> map = this.D.get(i4);
            if (map != null && !map.isEmpty()) {
                this.D.remove(i4);
            }
            return this;
        }

        public final c c(int i4, boolean z3) {
            if (this.E.get(i4) == z3) {
                return this;
            }
            if (z3) {
                this.E.put(i4, true);
            } else {
                this.E.delete(i4);
            }
            return this;
        }
    }

    public static final class d implements Parcelable {
        public static final Parcelable.Creator<d> CREATOR = new C0031a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f2421a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f2422b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f2423c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f2424d;

        /* JADX INFO: renamed from: l1.a$d$a, reason: collision with other inner class name */
        public class C0031a implements Parcelable.Creator<d> {
            @Override // android.os.Parcelable.Creator
            public d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public d[] newArray(int i4) {
                return new d[i4];
            }
        }

        public d(Parcel parcel) {
            this.f2421a = parcel.readInt();
            int[] iArr = new int[parcel.readByte()];
            this.f2422b = iArr;
            parcel.readIntArray(iArr);
            this.f2423c = parcel.readInt();
            this.f2424d = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f2421a == dVar.f2421a && Arrays.equals(this.f2422b, dVar.f2422b) && this.f2423c == dVar.f2423c && this.f2424d == dVar.f2424d;
        }

        public int hashCode() {
            return ((((Arrays.hashCode(this.f2422b) + (this.f2421a * 31)) * 31) + this.f2423c) * 31) + this.f2424d;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            parcel.writeInt(this.f2421a);
            parcel.writeInt(this.f2422b.length);
            parcel.writeIntArray(this.f2422b);
            parcel.writeInt(this.f2423c);
            parcel.writeInt(this.f2424d);
        }
    }

    static {
        j.a(p.a.f2916e);
        j.a(p.a.f2917f);
    }

    @Deprecated
    public a() {
    }

    public b a() {
        return this.f2378a.get();
    }

    public void b(c cVar) {
        b bVarA = cVar.a();
        this.f2378a.getAndSet(bVarA).equals(bVarA);
    }

    public static final class b extends l1.d {
        public final boolean A;
        public final boolean B;
        public final int C;
        public final SparseArray<Map<h1.b, d>> D;
        public final SparseBooleanArray E;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f2379f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f2380g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f2381h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f2382i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f2383j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f2384k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f2385l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final int f2386m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final boolean f2387n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final boolean f2388o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final boolean f2389p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final int f2390q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final int f2391r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public final boolean f2392s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final int f2393t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final int f2394u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final boolean f2395v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public final boolean f2396w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final boolean f2397x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public final boolean f2398y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public final boolean f2399z;
        public static final b F = new b(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 0, 0, 0, 0, true, false, true, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, true, null, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, true, false, false, false, null, 0, false, 0, false, false, true, 0, new SparseArray(), new SparseBooleanArray());
        public static final Parcelable.Creator<b> CREATOR = new C0030a();

        /* JADX INFO: renamed from: l1.a$b$a, reason: collision with other inner class name */
        public class C0030a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public b createFromParcel(Parcel parcel) {
                return new b(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public b[] newArray(int i4) {
                return new b[i4];
            }
        }

        public b(int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, boolean z3, boolean z4, boolean z5, int i12, int i13, boolean z6, @Nullable String str, int i14, int i15, boolean z7, boolean z8, boolean z9, boolean z10, @Nullable String str2, int i16, boolean z11, int i17, boolean z12, boolean z13, boolean z14, int i18, SparseArray<Map<h1.b, d>> sparseArray, SparseBooleanArray sparseBooleanArray) {
            super(str, str2, i16, z11, i17);
            this.f2379f = i4;
            this.f2380g = i5;
            this.f2381h = i6;
            this.f2382i = i7;
            this.f2383j = i8;
            this.f2384k = i9;
            this.f2385l = i10;
            this.f2386m = i11;
            this.f2387n = z3;
            this.f2388o = z4;
            this.f2389p = z5;
            this.f2390q = i12;
            this.f2391r = i13;
            this.f2392s = z6;
            this.f2393t = i14;
            this.f2394u = i15;
            this.f2395v = z7;
            this.f2396w = z8;
            this.f2397x = z9;
            this.f2398y = z10;
            this.f2399z = z12;
            this.A = z13;
            this.B = z14;
            this.C = i18;
            this.D = sparseArray;
            this.E = sparseBooleanArray;
        }

        public c a() {
            return new c(this, null);
        }

        @Override // l1.d, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:101:0x00dc A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:108:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:71:0x00ce  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0136 A[LOOP:0: B:75:0x00df->B:92:0x0136, LOOP_END] */
        @Override // l1.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(@androidx.annotation.Nullable java.lang.Object r11) {
            /*
                Method dump skipped, instruction units count: 320
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: l1.a.b.equals(java.lang.Object):boolean");
        }

        @Override // l1.d
        public int hashCode() {
            return (((((((((((((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.f2379f) * 31) + this.f2380g) * 31) + this.f2381h) * 31) + this.f2382i) * 31) + this.f2383j) * 31) + this.f2384k) * 31) + this.f2385l) * 31) + this.f2386m) * 31) + (this.f2387n ? 1 : 0)) * 31) + (this.f2388o ? 1 : 0)) * 31) + (this.f2389p ? 1 : 0)) * 31) + (this.f2392s ? 1 : 0)) * 31) + this.f2390q) * 31) + this.f2391r) * 31) + this.f2393t) * 31) + this.f2394u) * 31) + (this.f2395v ? 1 : 0)) * 31) + (this.f2396w ? 1 : 0)) * 31) + (this.f2397x ? 1 : 0)) * 31) + (this.f2398y ? 1 : 0)) * 31) + (this.f2399z ? 1 : 0)) * 31) + (this.A ? 1 : 0)) * 31) + (this.B ? 1 : 0)) * 31) + this.C;
        }

        @Override // l1.d, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            super.writeToParcel(parcel, i4);
            parcel.writeInt(this.f2379f);
            parcel.writeInt(this.f2380g);
            parcel.writeInt(this.f2381h);
            parcel.writeInt(this.f2382i);
            parcel.writeInt(this.f2383j);
            parcel.writeInt(this.f2384k);
            parcel.writeInt(this.f2385l);
            parcel.writeInt(this.f2386m);
            parcel.writeInt(this.f2387n ? 1 : 0);
            parcel.writeInt(this.f2388o ? 1 : 0);
            parcel.writeInt(this.f2389p ? 1 : 0);
            parcel.writeInt(this.f2390q);
            parcel.writeInt(this.f2391r);
            parcel.writeInt(this.f2392s ? 1 : 0);
            parcel.writeInt(this.f2393t);
            parcel.writeInt(this.f2394u);
            parcel.writeInt(this.f2395v ? 1 : 0);
            parcel.writeInt(this.f2396w ? 1 : 0);
            parcel.writeInt(this.f2397x ? 1 : 0);
            parcel.writeInt(this.f2398y ? 1 : 0);
            parcel.writeInt(this.f2399z ? 1 : 0);
            parcel.writeInt(this.A ? 1 : 0);
            parcel.writeInt(this.B ? 1 : 0);
            parcel.writeInt(this.C);
            SparseArray<Map<h1.b, d>> sparseArray = this.D;
            int size = sparseArray.size();
            parcel.writeInt(size);
            for (int i5 = 0; i5 < size; i5++) {
                int iKeyAt = sparseArray.keyAt(i5);
                Map<h1.b, d> mapValueAt = sparseArray.valueAt(i5);
                int size2 = mapValueAt.size();
                parcel.writeInt(iKeyAt);
                parcel.writeInt(size2);
                for (Map.Entry<h1.b, d> entry : mapValueAt.entrySet()) {
                    parcel.writeParcelable(entry.getKey(), 0);
                    parcel.writeParcelable(entry.getValue(), 0);
                }
            }
            parcel.writeSparseBooleanArray(this.E);
        }

        public b(Parcel parcel) {
            super(parcel);
            this.f2379f = parcel.readInt();
            this.f2380g = parcel.readInt();
            this.f2381h = parcel.readInt();
            this.f2382i = parcel.readInt();
            this.f2383j = parcel.readInt();
            this.f2384k = parcel.readInt();
            this.f2385l = parcel.readInt();
            this.f2386m = parcel.readInt();
            this.f2387n = parcel.readInt() != 0;
            this.f2388o = parcel.readInt() != 0;
            this.f2389p = parcel.readInt() != 0;
            this.f2390q = parcel.readInt();
            this.f2391r = parcel.readInt();
            this.f2392s = parcel.readInt() != 0;
            this.f2393t = parcel.readInt();
            this.f2394u = parcel.readInt();
            this.f2395v = parcel.readInt() != 0;
            this.f2396w = parcel.readInt() != 0;
            this.f2397x = parcel.readInt() != 0;
            this.f2398y = parcel.readInt() != 0;
            this.f2399z = parcel.readInt() != 0;
            this.A = parcel.readInt() != 0;
            this.B = parcel.readInt() != 0;
            this.C = parcel.readInt();
            int i4 = parcel.readInt();
            SparseArray<Map<h1.b, d>> sparseArray = new SparseArray<>(i4);
            for (int i5 = 0; i5 < i4; i5++) {
                int i6 = parcel.readInt();
                int i7 = parcel.readInt();
                HashMap map = new HashMap(i7);
                for (int i8 = 0; i8 < i7; i8++) {
                    h1.b bVar = (h1.b) parcel.readParcelable(h1.b.class.getClassLoader());
                    Objects.requireNonNull(bVar);
                    map.put(bVar, (d) parcel.readParcelable(d.class.getClassLoader()));
                }
                sparseArray.put(i6, map);
            }
            this.D = sparseArray;
            this.E = parcel.readSparseBooleanArray();
        }
    }
}
