package com.stripe.bbpos.bbdevice;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb061zz extends bbb005zz {
    bbb061zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        try {
            if (ccc067zzVarAaa000 == null) {
                this.aaa000.aaa002(false, "Disable factory mode failed. (error code - 8022)");
            } else if (Integer.parseInt(ccc067zzVarAaa000.aaa001, 16) == 0) {
                this.aaa000.aaa002(true, "");
            } else {
                this.aaa000.aaa002(false, "Disable factory mode failed. (error code - 8021)");
            }
        } catch (Exception unused) {
            this.aaa000.aaa002(false, "Disable factory mode failed. (error code - 8023)");
        }
    }
}
