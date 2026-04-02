package com.stripe.cots.common;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CotsTlvEntry.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0003H\u0016J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\u0019\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u001b"}, d2 = {"Lcom/stripe/cots/common/CotsTlvEntry;", "Landroid/os/Parcelable;", "tag", "", "value", "", "(I[B)V", "getTag", "()I", "getValue", "()[B", "component1", "component2", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CotsTlvEntry implements Parcelable {
    public static final Parcelable.Creator<CotsTlvEntry> CREATOR = new Creator();
    private final int tag;
    private final byte[] value;

    /* JADX INFO: compiled from: CotsTlvEntry.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CotsTlvEntry> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final CotsTlvEntry createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new CotsTlvEntry(parcel.readInt(), parcel.createByteArray());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final CotsTlvEntry[] newArray(int i) {
            return new CotsTlvEntry[i];
        }
    }

    public static /* synthetic */ CotsTlvEntry copy$default(CotsTlvEntry cotsTlvEntry, int i, byte[] bArr, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = cotsTlvEntry.tag;
        }
        if ((i2 & 2) != 0) {
            bArr = cotsTlvEntry.value;
        }
        return cotsTlvEntry.copy(i, bArr);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getTag() {
        return this.tag;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final byte[] getValue() {
        return this.value;
    }

    public final CotsTlvEntry copy(int tag, byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return new CotsTlvEntry(tag, value);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "CotsTlvEntry(tag=" + this.tag + ", value=" + Arrays.toString(this.value) + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeInt(this.tag);
        parcel.writeByteArray(this.value);
    }

    public CotsTlvEntry(int i, byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.tag = i;
        this.value = value;
    }

    public final int getTag() {
        return this.tag;
    }

    public final byte[] getValue() {
        return this.value;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.stripe.cots.common.CotsTlvEntry");
        CotsTlvEntry cotsTlvEntry = (CotsTlvEntry) other;
        if (this.tag != cotsTlvEntry.tag) {
            return false;
        }
        return Arrays.equals(this.value, cotsTlvEntry.value);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.tag), Integer.valueOf(Arrays.hashCode(this.value)));
    }
}
