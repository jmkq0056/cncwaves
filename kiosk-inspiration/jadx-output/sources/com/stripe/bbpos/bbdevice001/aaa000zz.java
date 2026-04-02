package com.stripe.bbpos.bbdevice001;

import android.os.Build;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
class aaa000zz {

    /* JADX INFO: renamed from: com.stripe.bbpos.bbdevice001.aaa000zz$aaa000zz, reason: collision with other inner class name */
    enum EnumC0046aaa000zz {
        WisePOS1,
        WisePOS2,
        WisePOS1_1,
        WisePOSPlus,
        WisePOS_SEVEN,
        WisePOS_TOUCH,
        WisePOS_GO,
        WisePOS_SML
    }

    static EnumC0046aaa000zz aaa000() {
        String strAaa000 = aaa000("persist.bbpos.product_id", "");
        Locale locale = Locale.ROOT;
        String upperCase = strAaa000.toUpperCase(locale);
        if (upperCase.startsWith("SML0")) {
            return EnumC0046aaa000zz.WisePOS_SML;
        }
        if (upperCase.startsWith("WSC6") || upperCase.startsWith("WTH1") || upperCase.startsWith("WTP1")) {
            return EnumC0046aaa000zz.WisePOS_TOUCH;
        }
        if (upperCase.startsWith("WGO1")) {
            return EnumC0046aaa000zz.WisePOS_GO;
        }
        if (upperCase.startsWith("WGP1")) {
            return EnumC0046aaa000zz.WisePOS_GO;
        }
        String upperCase2 = aaa000("ro.product.model", "").toUpperCase(locale);
        if (upperCase2.startsWith("WSC6") || upperCase2.startsWith("WTH1") || upperCase2.startsWith("WTP1")) {
            return EnumC0046aaa000zz.WisePOS_TOUCH;
        }
        if (upperCase2.startsWith("RK3326_GO")) {
            return EnumC0046aaa000zz.WisePOS_GO;
        }
        String str = Build.MODEL;
        if (str.equalsIgnoreCase("P1000") || str.equalsIgnoreCase("WiseposPlus") || str.equalsIgnoreCase("WiseposNeo") || str.equalsIgnoreCase("WiseposTouch") || str.replace(" ", "").equalsIgnoreCase("WiseposE") || str.replace(" ", "").equalsIgnoreCase("WiseposEPlus") || str.replace(" ", "").equalsIgnoreCase("WiseposE+") || upperCase.startsWith("WSC5") || upperCase.startsWith("WSS5")) {
            return EnumC0046aaa000zz.WisePOSPlus;
        }
        String str2 = Build.HARDWARE;
        return str2.equalsIgnoreCase("mt6735") ? EnumC0046aaa000zz.WisePOS2 : str2.equalsIgnoreCase("MT6771") ? EnumC0046aaa000zz.WisePOS_SEVEN : EnumC0046aaa000zz.WisePOS1_1;
    }

    static String aaa000(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, null);
        } catch (Exception unused) {
            return str2;
        }
    }
}
