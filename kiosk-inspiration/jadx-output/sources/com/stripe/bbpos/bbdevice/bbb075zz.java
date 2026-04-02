package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb075zz extends bbb005zz {
    bbb075zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF75");
        String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF6C"));
        String strAaa0002 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF8654"));
        String strAaa001 = ccc071zz.aaa001(strAaa000);
        String strAaa0012 = ccc071zz.aaa001(strAaa0002);
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Error when request firmware debug log. (error code - 9002)");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i != 0) {
                if (i != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Error when request firmware debug log. (error code - 9000)");
                    return;
                } else {
                    this.aaa000.aaa000(false, "", "", 0);
                    return;
                }
            }
            if (ccc067zzVarAaa0002 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Error when request firmware debug log. (error code - 9001)");
            } else {
                this.aaa000.aaa000(true, strAaa001, strAaa0012, Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16));
            }
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Error when request firmware debug log. (error code - 9001)");
        }
    }
}
