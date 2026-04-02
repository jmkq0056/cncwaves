package android.stripe.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.IRemoteCallback;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class BbposRemoteCallback implements Parcelable {
    public static final Parcelable.Creator<BbposRemoteCallback> CREATOR = new 3();
    private final IRemoteCallback mCallback;
    private final Handler mHandler;
    private final OnResultListener mListener;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BbposRemoteCallback(OnResultListener onResultListener) {
        this(onResultListener, null);
    }

    public BbposRemoteCallback(OnResultListener onResultListener, Handler handler) {
        if (onResultListener == null) {
            throw new NullPointerException("listener cannot be null");
        }
        this.mListener = onResultListener;
        this.mHandler = handler;
        this.mCallback = new 1(this);
    }

    BbposRemoteCallback(Parcel parcel) {
        this.mListener = null;
        this.mHandler = null;
        this.mCallback = IRemoteCallback.Stub.asInterface(parcel.readStrongBinder());
    }

    public void sendResult(Bundle bundle) {
        OnResultListener onResultListener = this.mListener;
        if (onResultListener != null) {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new 2(this, bundle));
                return;
            } else {
                onResultListener.onResult(bundle);
                return;
            }
        }
        try {
            this.mCallback.sendResult(bundle);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.mCallback.asBinder());
    }
}
