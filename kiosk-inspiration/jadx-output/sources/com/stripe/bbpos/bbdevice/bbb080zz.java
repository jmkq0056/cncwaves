package com.stripe.bbpos.bbdevice;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb080zz extends bbb005zz {
    bbb080zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF8666");
        try {
            if (ccc067zzVarAaa000 == null) {
                this.aaa000.aaa007(false, ccc071zz.aaa000(ccc067zzVarAaa0002));
            } else if (Integer.parseInt(ccc067zzVarAaa000.aaa001, 16) == 0) {
                this.aaa000.aaa007(true, ccc071zz.aaa000(ccc067zzVarAaa0002));
            } else {
                this.aaa000.aaa007(false, ccc071zz.aaa000(ccc067zzVarAaa0002));
            }
        } catch (Exception unused) {
            this.aaa000.aaa007(false, ccc071zz.aaa000(ccc067zzVarAaa0002));
        }
    }
}
