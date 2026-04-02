package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb015zz extends bbb005zz {
    bbb015zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        String str;
        int iAaa004;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF8572");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF8575");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF8578");
        int iAaa0042 = 0;
        this.aaa001.aaa000(ccc010zz.ccc046, (byte) 0);
        if (ccc067zzVarAaa0003 != null) {
            int iAaa0043 = ccc071zz.aaa004(ccc067zzVarAaa0003.aaa001);
            str = "Error Code " + iAaa0043 + " - " + (iAaa0043 == 1 ? "Test not supported" : iAaa0043 == 2 ? "Test is stopped / not started" : iAaa0043 == 3 ? "Invalid test item" : "Unknown error");
        } else {
            str = "";
        }
        if (ccc067zzVarAaa000 == null) {
            iAaa004 = 0;
        } else {
            try {
                iAaa004 = ccc071zz.aaa004(ccc067zzVarAaa000.aaa001);
            } catch (Exception unused) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
        }
        if (ccc067zzVarAaa0002 != null) {
            iAaa0042 = ccc071zz.aaa004(ccc067zzVarAaa0002.aaa001);
        }
        if (z) {
            return;
        }
        this.aaa000.aaa000(iAaa0042, iAaa004, str);
    }
}
