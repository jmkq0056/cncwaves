package v0;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3646b;

    public d(int i4, int i5) {
        this.f3645a = i4;
        this.f3646b = i5;
    }

    public final boolean a(int i4) {
        int i5 = cn.huidu.lcd.core.a.f337c;
        String str = i5 == 102 ? "/dev/input/event8" : i5 == 38 ? "/dev/input/event1" : (i5 == 107 || i5 == 108) ? "/dev/input/event3" : "/dev/input/event0";
        String[] strArr = {"sendevent " + str + " 1 " + i4 + " 1", "sendevent " + str + " 0 0 0", "sendevent " + str + " 1 " + i4 + " 0", "sendevent " + str + " 0 0 0"};
        return (Build.VERSION.SDK_INT >= 24 ? w0.d.c(strArr) : w0.d.a(strArr)).f3778a == 0;
    }
}
