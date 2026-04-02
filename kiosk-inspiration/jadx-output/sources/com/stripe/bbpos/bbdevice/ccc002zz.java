package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class ccc002zz extends bbb005zz {
    ccc002zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF822D");
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i == 0) {
                this.aaa000.aaa009(true, "");
                return;
            }
            if (i != 1) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            } else if (ccc067zzVarAaa0002 != null) {
                this.aaa000.aaa009(false, ccc034zz.aaa003(ccc067zzVarAaa0002.aaa001));
            } else {
                this.aaa000.aaa009(false, "");
            }
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
