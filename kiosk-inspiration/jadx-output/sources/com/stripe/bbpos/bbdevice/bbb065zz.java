package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb065zz extends bbb005zz {
    bbb065zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
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
            if (i != 0) {
                if (i != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                } else {
                    this.aaa000.aaa017("");
                    return;
                }
            }
            String str = "";
            for (int i2 = 0; i2 < list.size(); i2++) {
                ccc067zz ccc067zzVar = list.get(i2);
                if (!ccc067zzVar.aaa000.equalsIgnoreCase("DE")) {
                    str = str + ccc067zzVar.aaa000 + ccc067zzVar.aaa000() + ccc067zzVar.aaa001;
                }
            }
            this.aaa000.aaa017(str);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
