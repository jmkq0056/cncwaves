package e;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: e.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0019a extends Binder implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f1525a = 0;

        /* JADX INFO: renamed from: e.a$a$a, reason: collision with other inner class name */
        public static class C0020a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f1526a;

            public C0020a(IBinder iBinder) {
                this.f1526a = iBinder;
            }

            @Override // e.a
            public int a() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.huidu.lcd.core.IMonitorBinder");
                    if (!this.f1526a.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i4 = AbstractBinderC0019a.f1525a;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1526a;
            }
        }
    }

    int a();
}
