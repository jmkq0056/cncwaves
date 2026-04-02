package com.stripe.bbpos.bbdevice;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb069zz extends bbb005zz {
    bbb069zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        try {
            if (ccc067zzVarAaa000 == null) {
                this.aaa000.aaa012(false);
            } else if (Integer.parseInt(ccc067zzVarAaa000.aaa001, 16) == 0) {
                this.aaa000.aaa012(true);
            } else {
                this.aaa000.aaa012(false);
            }
        } catch (Exception unused) {
            this.aaa000.aaa012(false);
        }
    }
}
