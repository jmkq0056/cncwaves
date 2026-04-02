package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb056zz extends bbb005zz {
    bbb056zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Error when clear firmware debug log. (error code - 9005)");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i == 0) {
                this.aaa000.aaa006(true);
            } else if (i != 1) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Error when clear firmware debug log. (error code - 9003)");
            } else {
                this.aaa000.aaa006(false);
            }
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Error when clear firmware debug log. (error code - 9004)");
        }
    }
}
