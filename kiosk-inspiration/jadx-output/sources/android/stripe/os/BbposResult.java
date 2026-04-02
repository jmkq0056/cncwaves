package android.stripe.os;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class BbposResult implements Parcelable {
    public static final Parcelable.Creator<BbposResult> CREATOR = new 1();
    public int code;
    public String message;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BbposResult() {
        this.code = 0;
        this.message = "";
    }

    public BbposResult(int i, String str) {
        this.code = i;
        this.message = str;
    }

    private BbposResult(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.code);
        parcel.writeString(this.message);
    }

    public void readFromParcel(Parcel parcel) {
        this.code = parcel.readInt();
        this.message = parcel.readString();
    }
}
