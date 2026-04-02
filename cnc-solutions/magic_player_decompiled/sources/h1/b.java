package h1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h1.a[] f1859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1860c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f1857d = new b(new h1.a[0]);
    public static final Parcelable.Creator<b> CREATOR = new a();

    public class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public b[] newArray(int i4) {
            return new b[i4];
        }
    }

    public b(h1.a... aVarArr) {
        this.f1859b = aVarArr;
        this.f1858a = aVarArr.length;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f1858a == bVar.f1858a && Arrays.equals(this.f1859b, bVar.f1859b);
    }

    public int hashCode() {
        if (this.f1860c == 0) {
            this.f1860c = Arrays.hashCode(this.f1859b);
        }
        return this.f1860c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.f1858a);
        for (int i5 = 0; i5 < this.f1858a; i5++) {
            parcel.writeParcelable(this.f1859b[i5], 0);
        }
    }

    public b(Parcel parcel) {
        int i4 = parcel.readInt();
        this.f1858a = i4;
        this.f1859b = new h1.a[i4];
        for (int i5 = 0; i5 < this.f1858a; i5++) {
            this.f1859b[i5] = (h1.a) parcel.readParcelable(h1.a.class.getClassLoader());
        }
    }
}
