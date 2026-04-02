package cn.huidu.lcd.core;

import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f339e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final boolean f340f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f341g;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x010d  */
    static {
        /*
            Method dump skipped, instruction units count: 676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.huidu.lcd.core.a.<clinit>():void");
    }

    public static boolean a() {
        if (f337c == 38) {
            return false;
        }
        File file = new File("/dev/ttyUSB0");
        if (!file.canRead()) {
            cn.huidu.lcd.core.util.a.a("/dev/ttyUSB0");
        }
        return file.exists();
    }

    public static boolean b() {
        int i4 = f337c;
        return i4 == 103 || i4 == 104 || i4 == 105 || i4 == 106 || i4 == 107 || i4 == 108;
    }

    public static boolean c() {
        int i4 = f337c;
        return (i4 == 104 || i4 == 107 || i4 == 108) ? false : true;
    }

    public static boolean d() {
        int i4 = f337c;
        return i4 == 101 || i4 == 39 || i4 == 103 || i4 == 104 || i4 == 105 || i4 == 106;
    }

    public static boolean e() {
        int i4 = f337c;
        return i4 == 101 || i4 == 104;
    }

    public static boolean f() {
        return f337c == 103;
    }
}
