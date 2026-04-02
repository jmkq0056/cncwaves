package e1;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.f;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0021a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b[] f1616a;

    /* JADX INFO: renamed from: e1.a$a, reason: collision with other inner class name */
    public class C0021a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public a[] newArray(int i4) {
            return new a[i4];
        }
    }

    public interface b extends Parcelable {
    }

    public a(Parcel parcel) {
        this.f1616a = new b[parcel.readInt()];
        int i4 = 0;
        while (true) {
            b[] bVarArr = this.f1616a;
            if (i4 >= bVarArr.length) {
                return;
            }
            bVarArr[i4] = (b) parcel.readParcelable(b.class.getClassLoader());
            i4++;
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
        return Arrays.equals(this.f1616a, ((a) obj).f1616a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1616a);
    }

    public String toString() {
        StringBuilder sbA = f.a("entries=");
        sbA.append(Arrays.toString(this.f1616a));
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.f1616a.length);
        for (b bVar : this.f1616a) {
            parcel.writeParcelable(bVar, 0);
        }
    }
}
