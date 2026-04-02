package p1;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.f;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0036a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2986c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    public final byte[] f2987d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2988e;

    /* JADX INFO: renamed from: p1.a$a, reason: collision with other inner class name */
    public class C0036a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public a[] newArray(int i4) {
            return new a[i4];
        }
    }

    public a(Parcel parcel) {
        this.f2984a = parcel.readInt();
        this.f2985b = parcel.readInt();
        this.f2986c = parcel.readInt();
        int i4 = o1.e.f2847a;
        this.f2987d = parcel.readInt() != 0 ? parcel.createByteArray() : null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f2984a == aVar.f2984a && this.f2985b == aVar.f2985b && this.f2986c == aVar.f2986c && Arrays.equals(this.f2987d, aVar.f2987d);
    }

    public int hashCode() {
        if (this.f2988e == 0) {
            this.f2988e = Arrays.hashCode(this.f2987d) + ((((((527 + this.f2984a) * 31) + this.f2985b) * 31) + this.f2986c) * 31);
        }
        return this.f2988e;
    }

    public String toString() {
        StringBuilder sbA = f.a("ColorInfo(");
        sbA.append(this.f2984a);
        sbA.append(", ");
        sbA.append(this.f2985b);
        sbA.append(", ");
        sbA.append(this.f2986c);
        sbA.append(", ");
        sbA.append(this.f2987d != null);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.f2984a);
        parcel.writeInt(this.f2985b);
        parcel.writeInt(this.f2986c);
        int i5 = this.f2987d != null ? 1 : 0;
        int i6 = o1.e.f2847a;
        parcel.writeInt(i5);
        byte[] bArr = this.f2987d;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
