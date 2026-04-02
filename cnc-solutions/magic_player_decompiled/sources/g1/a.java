package g1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0023a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1716a;

    /* JADX INFO: renamed from: g1.a$a, reason: collision with other inner class name */
    public class C0023a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public a createFromParcel(Parcel parcel) {
            return new a(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public a[] newArray(int i4) {
            return new a[i4];
        }
    }

    public a(int i4) {
        this.f1716a = (i4 & 2) != 0 ? i4 | 1 : i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int a(android.content.Context r10) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g1.a.a(android.content.Context):int");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && a.class == obj.getClass() && this.f1716a == ((a) obj).f1716a;
    }

    public int hashCode() {
        return this.f1716a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.f1716a);
    }
}
