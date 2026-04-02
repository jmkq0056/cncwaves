package e;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends Binder implements IInterface {
    public b() {
        attachInterface(this, "cn.huidu.lcd.core.IPlayerBinder");
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    @Override // android.os.Binder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTransact(int r4, android.os.Parcel r5, android.os.Parcel r6, int r7) {
        /*
            r3 = this;
            r0 = 1
            java.lang.String r1 = "cn.huidu.lcd.core.IPlayerBinder"
            if (r4 == r0) goto L13
            r2 = 1598968902(0x5f4e5446, float:1.4867585E19)
            if (r4 == r2) goto Lf
            boolean r4 = super.onTransact(r4, r5, r6, r7)
            return r4
        Lf:
            r6.writeString(r1)
            return r0
        L13:
            r5.enforceInterface(r1)
            r4 = r3
            cn.huidu.lcd.player.PlayerService$b r4 = (cn.huidu.lcd.player.PlayerService.b) r4
            cn.huidu.lcd.player.PlayerService r4 = cn.huidu.lcd.player.PlayerService.this
            android.content.Context r4 = r4.getApplicationContext()
            boolean r5 = l.e.v(r4)
            if (r5 == 0) goto L27
            r4 = 1
            goto L43
        L27:
            java.lang.String r5 = "cn.huidu.testapp"
            boolean r4 = w0.a.c(r4, r5)
            if (r4 != 0) goto L42
            l.a r4 = l.a.a()
            java.util.Objects.requireNonNull(r4)
            java.io.File r4 = l.e.l()
            boolean r4 = r4.exists()
            if (r4 == 0) goto L42
            r4 = 2
            goto L43
        L42:
            r4 = 0
        L43:
            r6.writeNoException()
            r6.writeInt(r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
