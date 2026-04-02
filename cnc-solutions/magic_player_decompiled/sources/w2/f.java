package w2;

import android.os.Parcel;
import android.os.Parcelable;
import x2.n;

/* JADX INFO: loaded from: classes2.dex */
public class f extends n implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f3929e;

    public static class a implements Parcelable.Creator<f> {
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
        super(parcel.createByteArray());
        this.f3929e = null;
        b(parcel.readInt());
        boolean[] zArrCreateBooleanArray = parcel.createBooleanArray();
        boolean z3 = zArrCreateBooleanArray[0];
        a();
        this.f3984c = z3;
        this.f3985d = zArrCreateBooleanArray[1];
        this.f3929e = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeByteArray(this.f3982a);
        parcel.writeInt(this.f3983b);
        parcel.writeBooleanArray(new boolean[]{this.f3984c, this.f3985d});
        parcel.writeString(this.f3929e);
    }

    public f(n nVar) {
        super(nVar.f3982a);
        this.f3929e = null;
        b(nVar.f3983b);
        boolean z3 = nVar.f3984c;
        a();
        this.f3984c = z3;
        this.f3985d = nVar.f3985d;
    }
}
