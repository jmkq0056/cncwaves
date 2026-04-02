package f1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Comparable<c>, Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1706c;

    public class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public c[] newArray(int i4) {
            return new c[i4];
        }
    }

    public c(Parcel parcel) {
        this.f1704a = parcel.readInt();
        this.f1705b = parcel.readInt();
        this.f1706c = parcel.readInt();
    }

    @Override // java.lang.Comparable
    public int compareTo(c cVar) {
        c cVar2 = cVar;
        int i4 = this.f1704a - cVar2.f1704a;
        if (i4 != 0) {
            return i4;
        }
        int i5 = this.f1705b - cVar2.f1705b;
        return i5 == 0 ? this.f1706c - cVar2.f1706c : i5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f1704a == cVar.f1704a && this.f1705b == cVar.f1705b && this.f1706c == cVar.f1706c;
    }

    public int hashCode() {
        return (((this.f1704a * 31) + this.f1705b) * 31) + this.f1706c;
    }

    public String toString() {
        return this.f1704a + "." + this.f1705b + "." + this.f1706c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.f1704a);
        parcel.writeInt(this.f1705b);
        parcel.writeInt(this.f1706c);
    }
}
