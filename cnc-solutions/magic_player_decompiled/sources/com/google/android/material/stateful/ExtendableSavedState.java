package com.google.android.material.stateful;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.f;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import androidx.customview.view.AbsSavedState;

/* JADX INFO: loaded from: classes2.dex */
public class ExtendableSavedState extends AbsSavedState {
    public static final Parcelable.Creator<ExtendableSavedState> CREATOR = new Parcelable.ClassLoaderCreator<ExtendableSavedState>() { // from class: com.google.android.material.stateful.ExtendableSavedState.1
        @Override // android.os.Parcelable.Creator
        @NonNull
        public ExtendableSavedState[] newArray(int i4) {
            return new ExtendableSavedState[i4];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        @NonNull
        public ExtendableSavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
            return new ExtendableSavedState(parcel, classLoader);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Parcelable.Creator
        @Nullable
        public ExtendableSavedState createFromParcel(@NonNull Parcel parcel) {
            return new ExtendableSavedState(parcel, null);
        }
    };

    @NonNull
    public final SimpleArrayMap<String, Bundle> extendableStates;

    @NonNull
    public String toString() {
        StringBuilder sbA = f.a("ExtendableSavedState{");
        sbA.append(Integer.toHexString(System.identityHashCode(this)));
        sbA.append(" states=");
        sbA.append(this.extendableStates);
        sbA.append("}");
        return sbA.toString();
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        int size = this.extendableStates.size();
        parcel.writeInt(size);
        String[] strArr = new String[size];
        Bundle[] bundleArr = new Bundle[size];
        for (int i5 = 0; i5 < size; i5++) {
            strArr[i5] = this.extendableStates.keyAt(i5);
            bundleArr[i5] = this.extendableStates.valueAt(i5);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }

    public ExtendableSavedState(Parcelable parcelable) {
        super(parcelable);
        this.extendableStates = new SimpleArrayMap<>();
    }

    private ExtendableSavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int i4 = parcel.readInt();
        String[] strArr = new String[i4];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[i4];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.extendableStates = new SimpleArrayMap<>(i4);
        for (int i5 = 0; i5 < i4; i5++) {
            this.extendableStates.put(strArr[i5], bundleArr[i5]);
        }
    }
}
