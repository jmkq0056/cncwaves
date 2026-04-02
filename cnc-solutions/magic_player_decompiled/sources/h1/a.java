package h1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b1.f;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0025a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f[] f1855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1856c;

    /* JADX INFO: renamed from: h1.a$a, reason: collision with other inner class name */
    public class C0025a implements Parcelable.Creator<a> {
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
        int i4 = parcel.readInt();
        this.f1854a = i4;
        this.f1855b = new f[i4];
        for (int i5 = 0; i5 < this.f1854a; i5++) {
            this.f1855b[i5] = (f) parcel.readParcelable(f.class.getClassLoader());
        }
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
        return this.f1854a == aVar.f1854a && Arrays.equals(this.f1855b, aVar.f1855b);
    }

    public int hashCode() {
        if (this.f1856c == 0) {
            this.f1856c = 527 + Arrays.hashCode(this.f1855b);
        }
        return this.f1856c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.f1854a);
        for (int i5 = 0; i5 < this.f1854a; i5++) {
            parcel.writeParcelable(this.f1855b[i5], 0);
        }
    }
}
