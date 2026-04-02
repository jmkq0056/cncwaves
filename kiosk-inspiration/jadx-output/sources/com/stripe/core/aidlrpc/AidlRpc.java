package com.stripe.core.aidlrpc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.stripe.core.aidlrpc.AidlRpcListener;
import com.stripe.core.aidlrpc.AidlRpcUpdateListener;

/* JADX INFO: loaded from: classes3.dex */
public interface AidlRpc extends IInterface {
    public static final String DESCRIPTOR = "com.stripe.core.aidlrpc.AidlRpc";

    public static class Default implements AidlRpc {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.stripe.core.aidlrpc.AidlRpc
        public void clearUpdateListener(String str) throws RemoteException {
        }

        @Override // com.stripe.core.aidlrpc.AidlRpc
        public void makeRequest(byte[] bArr, AidlRpcListener aidlRpcListener) throws RemoteException {
        }

        @Override // com.stripe.core.aidlrpc.AidlRpc
        public void setUpdateListener(String str, AidlRpcUpdateListener aidlRpcUpdateListener) throws RemoteException {
        }
    }

    void clearUpdateListener(String str) throws RemoteException;

    void makeRequest(byte[] bArr, AidlRpcListener aidlRpcListener) throws RemoteException;

    void setUpdateListener(String str, AidlRpcUpdateListener aidlRpcUpdateListener) throws RemoteException;

    public static abstract class Stub extends Binder implements AidlRpc {
        static final int TRANSACTION_clearUpdateListener = 3;
        static final int TRANSACTION_makeRequest = 1;
        static final int TRANSACTION_setUpdateListener = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, AidlRpc.DESCRIPTOR);
        }

        public static AidlRpc asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(AidlRpc.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof AidlRpc)) {
                return (AidlRpc) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(AidlRpc.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(AidlRpc.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                makeRequest(parcel.createByteArray(), AidlRpcListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i == 2) {
                setUpdateListener(parcel.readString(), AidlRpcUpdateListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i == 3) {
                clearUpdateListener(parcel.readString());
                parcel2.writeNoException();
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return true;
        }

        private static class Proxy implements AidlRpc {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return AidlRpc.DESCRIPTOR;
            }

            @Override // com.stripe.core.aidlrpc.AidlRpc
            public void makeRequest(byte[] bArr, AidlRpcListener aidlRpcListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AidlRpc.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeStrongInterface(aidlRpcListener);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.stripe.core.aidlrpc.AidlRpc
            public void setUpdateListener(String str, AidlRpcUpdateListener aidlRpcUpdateListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AidlRpc.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongInterface(aidlRpcUpdateListener);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.stripe.core.aidlrpc.AidlRpc
            public void clearUpdateListener(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AidlRpc.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
