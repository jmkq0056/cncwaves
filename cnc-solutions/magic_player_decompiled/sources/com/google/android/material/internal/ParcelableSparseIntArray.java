package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ParcelableSparseIntArray extends SparseIntArray implements Parcelable {
    public static final Parcelable.Creator<ParcelableSparseIntArray> CREATOR = new Parcelable.Creator<ParcelableSparseIntArray>() { // from class: com.google.android.material.internal.ParcelableSparseIntArray.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public ParcelableSparseIntArray createFromParcel(@NonNull Parcel parcel) {
            int i4 = parcel.readInt();
            ParcelableSparseIntArray parcelableSparseIntArray = new ParcelableSparseIntArray(i4);
            int[] iArr = new int[i4];
            int[] iArr2 = new int[i4];
            parcel.readIntArray(iArr);
            parcel.readIntArray(iArr2);
            for (int i5 = 0; i5 < i4; i5++) {
                parcelableSparseIntArray.put(iArr[i5], iArr2[i5]);
            }
            return parcelableSparseIntArray;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public ParcelableSparseIntArray[] newArray(int i4) {
            return new ParcelableSparseIntArray[i4];
        }
    };

    public ParcelableSparseIntArray() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i4) {
        int[] iArr = new int[size()];
        int[] iArr2 = new int[size()];
        for (int i5 = 0; i5 < size(); i5++) {
            iArr[i5] = keyAt(i5);
            iArr2[i5] = valueAt(i5);
        }
        parcel.writeInt(size());
        parcel.writeIntArray(iArr);
        parcel.writeIntArray(iArr2);
    }

    public ParcelableSparseIntArray(int i4) {
        super(i4);
    }

    public ParcelableSparseIntArray(@NonNull SparseIntArray sparseIntArray) {
        for (int i4 = 0; i4 < sparseIntArray.size(); i4++) {
            put(sparseIntArray.keyAt(i4), sparseIntArray.valueAt(i4));
        }
    }
}
