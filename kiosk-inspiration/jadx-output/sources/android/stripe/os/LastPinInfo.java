package android.stripe.os;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class LastPinInfo implements Parcelable {
    public static final Parcelable.Creator<LastPinInfo> CREATOR = new 1();
    public String pin;
    public long time;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public LastPinInfo() {
        this.pin = null;
        this.time = 0L;
    }

    public LastPinInfo(String str, long j) {
        this.pin = str;
        this.time = j;
    }

    private LastPinInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.pin);
        parcel.writeLong(this.time);
    }

    public void readFromParcel(Parcel parcel) {
        this.pin = parcel.readString();
        this.time = parcel.readLong();
    }
}
