package b1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class f implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new a();
    public final int A;
    public final int B;
    public final int C;
    public final int D;

    @Nullable
    public final Class<Object> E;
    public int F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f184c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f185d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f187f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f188g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f189h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    public final String f190i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    public final e1.a f191j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    public final String f192k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    public final String f193l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f194m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<byte[]> f195n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    public final d1.a f196o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f197p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f198q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f199r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final float f200s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f201t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final float f202u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    public final byte[] f203v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f204w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    public final p1.a f205x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f206y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f207z;

    public class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public f createFromParcel(Parcel parcel) {
            return new f(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public f[] newArray(int i4) {
            return new f[i4];
        }
    }

    public f(Parcel parcel) {
        this.f182a = parcel.readString();
        this.f183b = parcel.readString();
        this.f184c = parcel.readString();
        this.f185d = parcel.readInt();
        this.f186e = parcel.readInt();
        int i4 = parcel.readInt();
        this.f187f = i4;
        int i5 = parcel.readInt();
        this.f188g = i5;
        this.f189h = i5 != -1 ? i5 : i4;
        this.f190i = parcel.readString();
        this.f191j = (e1.a) parcel.readParcelable(e1.a.class.getClassLoader());
        this.f192k = parcel.readString();
        this.f193l = parcel.readString();
        this.f194m = parcel.readInt();
        int i6 = parcel.readInt();
        this.f195n = new ArrayList(i6);
        for (int i7 = 0; i7 < i6; i7++) {
            List<byte[]> list = this.f195n;
            byte[] bArrCreateByteArray = parcel.createByteArray();
            Objects.requireNonNull(bArrCreateByteArray);
            list.add(bArrCreateByteArray);
        }
        d1.a aVar = (d1.a) parcel.readParcelable(d1.a.class.getClassLoader());
        this.f196o = aVar;
        this.f197p = parcel.readLong();
        this.f198q = parcel.readInt();
        this.f199r = parcel.readInt();
        this.f200s = parcel.readFloat();
        this.f201t = parcel.readInt();
        this.f202u = parcel.readFloat();
        int i8 = o1.e.f2847a;
        this.f203v = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.f204w = parcel.readInt();
        this.f205x = (p1.a) parcel.readParcelable(p1.a.class.getClassLoader());
        this.f206y = parcel.readInt();
        this.f207z = parcel.readInt();
        this.A = parcel.readInt();
        this.B = parcel.readInt();
        this.C = parcel.readInt();
        this.D = parcel.readInt();
        this.E = aVar != null ? d1.b.class : null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@androidx.annotation.Nullable java.lang.Object r8) {
        /*
            Method dump skipped, instruction units count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b1.f.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        if (this.F == 0) {
            String str = this.f182a;
            int iHashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f183b;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f184c;
            int iHashCode3 = (((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f185d) * 31) + this.f186e) * 31) + this.f187f) * 31) + this.f188g) * 31;
            String str4 = this.f190i;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            e1.a aVar = this.f191j;
            int iHashCode5 = (iHashCode4 + (aVar == null ? 0 : aVar.hashCode())) * 31;
            String str5 = this.f192k;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.f193l;
            int iFloatToIntBits = (((((((((((((((Float.floatToIntBits(this.f202u) + ((((Float.floatToIntBits(this.f200s) + ((((((((((iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31) + this.f194m) * 31) + ((int) this.f197p)) * 31) + this.f198q) * 31) + this.f199r) * 31)) * 31) + this.f201t) * 31)) * 31) + this.f204w) * 31) + this.f206y) * 31) + this.f207z) * 31) + this.A) * 31) + this.B) * 31) + this.C) * 31) + this.D) * 31;
            Class<Object> cls = this.E;
            this.F = iFloatToIntBits + (cls != null ? cls.hashCode() : 0);
        }
        return this.F;
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("Format(");
        sbA.append(this.f182a);
        sbA.append(", ");
        sbA.append(this.f183b);
        sbA.append(", ");
        sbA.append(this.f192k);
        sbA.append(", ");
        sbA.append(this.f193l);
        sbA.append(", ");
        sbA.append(this.f190i);
        sbA.append(", ");
        sbA.append(this.f189h);
        sbA.append(", ");
        sbA.append(this.f184c);
        sbA.append(", [");
        sbA.append(this.f198q);
        sbA.append(", ");
        sbA.append(this.f199r);
        sbA.append(", ");
        sbA.append(this.f200s);
        sbA.append("], [");
        sbA.append(this.f206y);
        sbA.append(", ");
        return android.support.v4.media.e.a(sbA, this.f207z, "])");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.f182a);
        parcel.writeString(this.f183b);
        parcel.writeString(this.f184c);
        parcel.writeInt(this.f185d);
        parcel.writeInt(this.f186e);
        parcel.writeInt(this.f187f);
        parcel.writeInt(this.f188g);
        parcel.writeString(this.f190i);
        parcel.writeParcelable(this.f191j, 0);
        parcel.writeString(this.f192k);
        parcel.writeString(this.f193l);
        parcel.writeInt(this.f194m);
        int size = this.f195n.size();
        parcel.writeInt(size);
        for (int i5 = 0; i5 < size; i5++) {
            parcel.writeByteArray(this.f195n.get(i5));
        }
        parcel.writeParcelable(this.f196o, 0);
        parcel.writeLong(this.f197p);
        parcel.writeInt(this.f198q);
        parcel.writeInt(this.f199r);
        parcel.writeFloat(this.f200s);
        parcel.writeInt(this.f201t);
        parcel.writeFloat(this.f202u);
        int i6 = this.f203v != null ? 1 : 0;
        int i7 = o1.e.f2847a;
        parcel.writeInt(i6);
        byte[] bArr = this.f203v;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.f204w);
        parcel.writeParcelable(this.f205x, i4);
        parcel.writeInt(this.f206y);
        parcel.writeInt(this.f207z);
        parcel.writeInt(this.A);
        parcel.writeInt(this.B);
        parcel.writeInt(this.C);
        parcel.writeInt(this.D);
    }
}
