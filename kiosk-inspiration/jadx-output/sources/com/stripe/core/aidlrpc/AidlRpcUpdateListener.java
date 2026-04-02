package com.stripe.core.aidlrpc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes3.dex */
public interface AidlRpcUpdateListener extends IInterface {
    public static final String DESCRIPTOR = "com.stripe.core.aidlrpc.AidlRpcUpdateListener";

    public static class Default implements AidlRpcUpdateListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.stripe.core.aidlrpc.AidlRpcUpdateListener
        public byte[] onUpdate(byte[] bArr) throws RemoteException {
            return null;
        }
    }

    byte[] onUpdate(byte[] bArr) throws RemoteException;

    public static abstract class Stub extends Binder implements AidlRpcUpdateListener {
        static final int TRANSACTION_onUpdate = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, AidlRpcUpdateListener.DESCRIPTOR);
        }

        public static AidlRpcUpdateListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(AidlRpcUpdateListener.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof AidlRpcUpdateListener)) {
                return (AidlRpcUpdateListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(AidlRpcUpdateListener.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(AidlRpcUpdateListener.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                byte[] bArrOnUpdate = onUpdate(parcel.createByteArray());
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrOnUpdate);
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        private static class Proxy implements AidlRpcUpdateListener {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return AidlRpcUpdateListener.DESCRIPTOR;
            }

            @Override // com.stripe.core.aidlrpc.AidlRpcUpdateListener
            public byte[] onUpdate(byte[] bArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AidlRpcUpdateListener.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
