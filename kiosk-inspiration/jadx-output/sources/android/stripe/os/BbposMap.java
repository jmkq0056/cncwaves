package android.stripe.os;

import android.os.Parcel;
import android.os.Parcelable;
import java.security.cert.Certificate;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class BbposMap implements Parcelable {
    public static final Parcelable.Creator<BbposMap> CREATOR = new 1();
    private Map<String, Certificate> map;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Map<String, Certificate> getMap() {
        return this.map;
    }

    public void setMap(Map<String, Certificate> map) {
        this.map = map;
    }

    BbposMap(Parcel parcel) {
        HashMap map = new HashMap();
        this.map = map;
        parcel.readMap(map, null);
    }

    public BbposMap() {
        this.map = new HashMap();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeMap(this.map);
    }
}
