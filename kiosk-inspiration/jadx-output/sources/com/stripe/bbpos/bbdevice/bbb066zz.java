package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb066zz extends bbb005zz {
    bbb066zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i == 0) {
                this.aaa000.aaa013(ccc034zz.aaa002(list));
            } else if (i != 1) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            } else {
                this.aaa000.aaa013((Hashtable<String, String>) null);
            }
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
