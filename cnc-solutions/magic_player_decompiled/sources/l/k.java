package l;

import android.os.Build;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes.dex */
public class k extends PhoneStateListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile k f2352d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TelephonyManager f2353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2355c;

    public k() {
        TelephonyManager telephonyManager = (TelephonyManager) w0.c.a("phone");
        this.f2353a = telephonyManager;
        telephonyManager.listen(this, 320);
    }

    public static k a() {
        if (f2352d == null) {
            synchronized (k.class) {
                if (f2352d == null) {
                    f2352d = new k();
                }
            }
        }
        return f2352d;
    }

    public int b() {
        return this.f2353a.getNetworkType();
    }

    @Override // android.telephony.PhoneStateListener
    public void onDataConnectionStateChanged(int i4, int i5) {
        a.b.a("onDataConnectionStateChanged: state=", i4, " type=", i5, "PhoneStateManager");
    }

    @Override // android.telephony.PhoneStateListener
    public void onSignalStrengthsChanged(SignalStrength signalStrength) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f2354b = signalStrength.getLevel();
            try {
                this.f2355c = ((Integer) SignalStrength.class.getMethod("getDbm", new Class[0]).invoke(signalStrength, new Object[0])).intValue();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }
}
