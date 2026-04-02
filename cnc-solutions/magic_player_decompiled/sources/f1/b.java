package f1;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import o1.e;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f1698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f1699c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<c> f1700d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    public final byte[] f1701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    public final String f1702f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final byte[] f1703g;

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

    public b(Parcel parcel) {
        String string = parcel.readString();
        int i4 = e.f2847a;
        this.f1697a = string;
        this.f1698b = Uri.parse(parcel.readString());
        this.f1699c = parcel.readString();
        int i5 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i5);
        for (int i6 = 0; i6 < i5; i6++) {
            arrayList.add((c) parcel.readParcelable(c.class.getClassLoader()));
        }
        this.f1700d = Collections.unmodifiableList(arrayList);
        this.f1701e = parcel.createByteArray();
        this.f1702f = parcel.readString();
        this.f1703g = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f1697a.equals(bVar.f1697a) && this.f1698b.equals(bVar.f1698b) && e.a(this.f1699c, bVar.f1699c) && this.f1700d.equals(bVar.f1700d) && Arrays.equals(this.f1701e, bVar.f1701e) && e.a(this.f1702f, bVar.f1702f) && Arrays.equals(this.f1703g, bVar.f1703g);
    }

    public final int hashCode() {
        int iHashCode = (this.f1698b.hashCode() + (this.f1697a.hashCode() * 31 * 31)) * 31;
        String str = this.f1699c;
        int iHashCode2 = (Arrays.hashCode(this.f1701e) + ((this.f1700d.hashCode() + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31;
        String str2 = this.f1702f;
        return Arrays.hashCode(this.f1703g) + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public String toString() {
        return this.f1699c + ":" + this.f1697a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.f1697a);
        parcel.writeString(this.f1698b.toString());
        parcel.writeString(this.f1699c);
        parcel.writeInt(this.f1700d.size());
        for (int i5 = 0; i5 < this.f1700d.size(); i5++) {
            parcel.writeParcelable(this.f1700d.get(i5), 0);
        }
        parcel.writeByteArray(this.f1701e);
        parcel.writeString(this.f1702f);
        parcel.writeByteArray(this.f1703g);
    }
}
