package l1;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class d implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f2425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f2426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2427c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f2428d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2429e;

    public class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public d createFromParcel(Parcel parcel) {
            return new d(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public d[] newArray(int i4) {
            return new d[i4];
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        public String f2430a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        public String f2431b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2432c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2433d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2434e;

        public b(d dVar) {
            this.f2430a = dVar.f2425a;
            this.f2431b = dVar.f2426b;
            this.f2432c = dVar.f2427c;
            this.f2433d = dVar.f2428d;
            this.f2434e = dVar.f2429e;
        }
    }

    static {
        new d(null, null, 0, false, 0);
        CREATOR = new a();
    }

    public d(@Nullable String str, @Nullable String str2, int i4, boolean z3, int i5) {
        this.f2425a = o1.e.f(str);
        this.f2426b = o1.e.f(str2);
        this.f2427c = i4;
        this.f2428d = z3;
        this.f2429e = i5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return TextUtils.equals(this.f2425a, dVar.f2425a) && TextUtils.equals(this.f2426b, dVar.f2426b) && this.f2427c == dVar.f2427c && this.f2428d == dVar.f2428d && this.f2429e == dVar.f2429e;
    }

    public int hashCode() {
        String str = this.f2425a;
        int iHashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        String str2 = this.f2426b;
        return ((((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f2427c) * 31) + (this.f2428d ? 1 : 0)) * 31) + this.f2429e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.f2425a);
        parcel.writeString(this.f2426b);
        parcel.writeInt(this.f2427c);
        boolean z3 = this.f2428d;
        int i5 = o1.e.f2847a;
        parcel.writeInt(z3 ? 1 : 0);
        parcel.writeInt(this.f2429e);
    }

    public d(Parcel parcel) {
        this.f2425a = parcel.readString();
        this.f2426b = parcel.readString();
        this.f2427c = parcel.readInt();
        int i4 = o1.e.f2847a;
        this.f2428d = parcel.readInt() != 0;
        this.f2429e = parcel.readInt();
    }
}
