package p3;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.annotation.NonNull;
import pl.droidsonroids.gif.GifInfoHandle;

/* JADX INFO: loaded from: classes2.dex */
public class f extends View.BaseSavedState {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[][] f3050a;

    public static class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public f createFromParcel(Parcel parcel) {
            return new f(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        public f[] newArray(int i4) {
            return new f[i4];
        }
    }

    public f(Parcelable parcelable, Drawable... drawableArr) {
        long[] savedState;
        super(parcelable);
        this.f3050a = new long[drawableArr.length][];
        for (int i4 = 0; i4 < drawableArr.length; i4++) {
            Drawable drawable = drawableArr[i4];
            if (drawable instanceof d) {
                long[][] jArr = this.f3050a;
                GifInfoHandle gifInfoHandle = ((d) drawable).f3034g;
                synchronized (gifInfoHandle) {
                    savedState = GifInfoHandle.getSavedState(gifInfoHandle.f3060a);
                }
                jArr[i4] = savedState;
            } else {
                this.f3050a[i4] = null;
            }
        }
    }

    public void a(Drawable drawable, int i4) {
        int iRestoreSavedState;
        long[][] jArr = this.f3050a;
        if (jArr[i4] == null || !(drawable instanceof d)) {
            return;
        }
        d dVar = (d) drawable;
        GifInfoHandle gifInfoHandle = dVar.f3034g;
        long[] jArr2 = jArr[i4];
        Bitmap bitmap = dVar.f3033f;
        synchronized (gifInfoHandle) {
            iRestoreSavedState = GifInfoHandle.restoreSavedState(gifInfoHandle.f3060a, jArr2, bitmap);
        }
        dVar.b(iRestoreSavedState);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeInt(this.f3050a.length);
        for (long[] jArr : this.f3050a) {
            parcel.writeLongArray(jArr);
        }
    }

    public f(Parcel parcel, a aVar) {
        super(parcel);
        this.f3050a = new long[parcel.readInt()][];
        int i4 = 0;
        while (true) {
            long[][] jArr = this.f3050a;
            if (i4 >= jArr.length) {
                return;
            }
            jArr[i4] = parcel.createLongArray();
            i4++;
        }
    }

    public f(Parcelable parcelable, long[] jArr) {
        super(parcelable);
        this.f3050a = new long[][]{jArr};
    }
}
