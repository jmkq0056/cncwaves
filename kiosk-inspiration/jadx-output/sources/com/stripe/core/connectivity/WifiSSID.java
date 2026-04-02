package com.stripe.core.connectivity;

import android.os.Parcel;
import android.os.Parcelable;
import com.stripe.strings.StringsExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ConnectivityDataClasses.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\b\u001a\u00020\u0003HÂ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\u000e\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0003J\t\u0010\u0012\u001a\u00020\u000bHÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000bHÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0019"}, d2 = {"Lcom/stripe/core/connectivity/WifiSSID;", "Landroid/os/Parcelable;", "ssid", "", "(Ljava/lang/String;)V", "value", "getValue", "()Ljava/lang/String;", "component1", "copy", "describeContents", "", "equals", "", "other", "", "getHumanReadableName", "defaultValue", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class WifiSSID implements Parcelable {
    public static final Parcelable.Creator<WifiSSID> CREATOR = new Creator();
    private final String ssid;

    /* JADX INFO: compiled from: ConnectivityDataClasses.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<WifiSSID> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final WifiSSID createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new WifiSSID(parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final WifiSSID[] newArray(int i) {
            return new WifiSSID[i];
        }
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    private final String getSsid() {
        return this.ssid;
    }

    public static /* synthetic */ WifiSSID copy$default(WifiSSID wifiSSID, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = wifiSSID.ssid;
        }
        return wifiSSID.copy(str);
    }

    public final WifiSSID copy(String ssid) {
        Intrinsics.checkNotNullParameter(ssid, "ssid");
        return new WifiSSID(ssid);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof WifiSSID) && Intrinsics.areEqual(this.ssid, ((WifiSSID) other).ssid);
    }

    public int hashCode() {
        return this.ssid.hashCode();
    }

    public String toString() {
        return "WifiSSID(ssid=" + this.ssid + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeString(this.ssid);
    }

    public WifiSSID(String ssid) {
        Intrinsics.checkNotNullParameter(ssid, "ssid");
        this.ssid = ssid;
    }

    public final String getValue() {
        return this.ssid;
    }

    public final String getHumanReadableName(String defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (StringsKt.startsWith$default(this.ssid, "0x", false, 2, (Object) null) || Intrinsics.areEqual(this.ssid, "<unknown ssid>")) ? defaultValue : StringsExtKt.removeSurroundingDoubleQuotes(this.ssid);
    }
}
