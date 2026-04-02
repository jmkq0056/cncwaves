package com.stripe.core.aidlrpc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes3.dex */
public interface AidlRpcListener extends IInterface {
    public static final String DESCRIPTOR = "com.stripe.core.aidlrpc.AidlRpcListener";

    public static class Default implements AidlRpcListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.stripe.core.aidlrpc.AidlRpcListener
        public void onComplete(byte[] bArr) throws RemoteException {
        }
    }

    void onComplete(byte[] bArr) throws RemoteException;

    public static abstract class Stub extends Binder implements AidlRpcListener {
        static final int TRANSACTION_onComplete = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, AidlRpcListener.DESCRIPTOR);
        }

        public static AidlRpcListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(AidlRpcListener.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof AidlRpcListener)) {
                return (AidlRpcListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(AidlRpcListener.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(AidlRpcListener.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onComplete(parcel.createByteArray());
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        private static class Proxy implements AidlRpcListener {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return AidlRpcListener.DESCRIPTOR;
            }

            @Override // com.stripe.core.aidlrpc.AidlRpcListener
            public void onComplete(byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AidlRpcListener.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }
    }
}
