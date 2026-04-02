package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.bbpos.bbdevice.ccc066zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb009zz extends bbb005zz {
    bbb009zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        if (ccc067zzVarAaa000 != null) {
            try {
                int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
                if (i == 0) {
                    this.aaa000.aaa011.aaa001(ccc066zz.aaa000zz.START_EMV_SUCCEED);
                    return;
                }
                if (i != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                this.aaa000.aaa011.aaa001(ccc066zz.aaa000zz.IDLE);
                ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF822D");
                String str = ccc067zzVarAaa0002 != null ? ccc067zzVarAaa0002.aaa001 : null;
                this.aaa000.aaa000(ccc034zz.aaa002(str), ccc034zz.aaa003(str));
            } catch (Exception unused) {
                this.aaa000.aaa011.aaa001(ccc066zz.aaa000zz.IDLE);
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            }
        }
    }
}
