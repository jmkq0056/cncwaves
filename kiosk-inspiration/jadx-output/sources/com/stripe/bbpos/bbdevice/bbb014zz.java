package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb014zz extends bbb005zz {
    bbb014zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF8270");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF8271");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF8272");
        if (ccc067zzVarAaa000 == null || !ccc071zz.aaa008(ccc067zzVarAaa000.aaa001)) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Missing DF8270. (error code - 9023)");
            return;
        }
        if (!ccc067zzVarAaa000.aaa001.equalsIgnoreCase("80")) {
            String str = "Integrity Check Error Code: " + ccc067zzVarAaa000.aaa001;
            this.aaa000.aaa011.aaa002(true);
            this.aaa000.aaa011.aaa007(str);
            this.aaa000.aaa000(aaa003zz.aaa002zz.INTEGRITY_CHECK_ERROR, str);
            return;
        }
        String str2 = (ccc067zzVarAaa0002 == null || !ccc071zz.aaa008(ccc067zzVarAaa0002.aaa001)) ? "" : "Tamper Status : " + ccc067zzVarAaa0002.aaa001;
        if (ccc067zzVarAaa0003 != null && ccc071zz.aaa008(ccc067zzVarAaa0003.aaa001)) {
            if (ccc071zz.aaa008(str2)) {
                str2 = str2 + ", ";
            }
            str2 = str2 + "Tamper Time : " + ccc067zzVarAaa0003.aaa001;
        }
        this.aaa000.aaa011.aaa009(true);
        this.aaa000.aaa011.aaa022(str2);
        this.aaa000.aaa000(aaa003zz.aaa002zz.TAMPER, str2);
    }

    void aaa001(List<ccc067zz> list) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF8270");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF8271");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF8272");
        String str = (ccc067zzVarAaa000 == null || ccc067zzVarAaa000.aaa001.isEmpty()) ? "" : "Tamper Mode : " + ccc067zzVarAaa000.aaa001;
        if (ccc067zzVarAaa0002 != null && !ccc067zzVarAaa0002.aaa001.isEmpty()) {
            if (!str.isEmpty()) {
                str = str + ", ";
            }
            str = str + "Tamper Status : " + ccc067zzVarAaa0002.aaa001;
        }
        if (ccc067zzVarAaa0003 != null && !ccc067zzVarAaa0003.aaa001.isEmpty()) {
            if (!str.isEmpty()) {
                str = str + ", ";
            }
            str = str + "Tamper Time : " + ccc067zzVarAaa0003.aaa001;
        }
        this.aaa000.aaa011.aaa009(true);
        this.aaa000.aaa011.aaa022(str);
        this.aaa000.aaa000(aaa003zz.aaa002zz.TAMPER, str);
    }
}
