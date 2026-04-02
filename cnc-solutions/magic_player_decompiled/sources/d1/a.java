package d1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.UUID;
import o1.e;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Comparator<b>, Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0017a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b[] f1512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f1514c;

    /* JADX INFO: renamed from: d1.a$a, reason: collision with other inner class name */
    public class C0017a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public a[] newArray(int i4) {
            return new a[i4];
        }
    }

    public static final class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new C0018a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1515a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final UUID f1516b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        public final String f1517c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f1518d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        public final byte[] f1519e;

        /* JADX INFO: renamed from: d1.a$b$a, reason: collision with other inner class name */
        public class C0018a implements Parcelable.Creator<b> {
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
            this.f1516b = new UUID(parcel.readLong(), parcel.readLong());
            this.f1517c = parcel.readString();
            String string = parcel.readString();
            int i4 = e.f2847a;
            this.f1518d = string;
            this.f1519e = parcel.createByteArray();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            b bVar = (b) obj;
            return e.a(this.f1517c, bVar.f1517c) && e.a(this.f1518d, bVar.f1518d) && e.a(this.f1516b, bVar.f1516b) && Arrays.equals(this.f1519e, bVar.f1519e);
        }

        public int hashCode() {
            if (this.f1515a == 0) {
                int iHashCode = this.f1516b.hashCode() * 31;
                String str = this.f1517c;
                this.f1515a = Arrays.hashCode(this.f1519e) + ((this.f1518d.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31);
            }
            return this.f1515a;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            parcel.writeLong(this.f1516b.getMostSignificantBits());
            parcel.writeLong(this.f1516b.getLeastSignificantBits());
            parcel.writeString(this.f1517c);
            parcel.writeString(this.f1518d);
            parcel.writeByteArray(this.f1519e);
        }
    }

    public a(Parcel parcel) {
        this.f1514c = parcel.readString();
        b[] bVarArr = (b[]) parcel.createTypedArray(b.CREATOR);
        int i4 = e.f2847a;
        this.f1512a = bVarArr;
        int length = bVarArr.length;
    }

    @Override // java.util.Comparator
    public int compare(b bVar, b bVar2) {
        b bVar3 = bVar;
        b bVar4 = bVar2;
        UUID uuid = b1.a.f177a;
        return uuid.equals(bVar3.f1516b) ? uuid.equals(bVar4.f1516b) ? 0 : 1 : bVar3.f1516b.compareTo(bVar4.f1516b);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return e.a(this.f1514c, aVar.f1514c) && Arrays.equals(this.f1512a, aVar.f1512a);
    }

    public int hashCode() {
        if (this.f1513b == 0) {
            String str = this.f1514c;
            this.f1513b = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f1512a);
        }
        return this.f1513b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.f1514c);
        parcel.writeTypedArray(this.f1512a, 0);
    }
}
