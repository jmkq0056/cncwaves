package com.stripe.bbpos.bbdevice;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb026zz extends bbb005zz {
    bbb026zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF8116"));
        String strAaa0002 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF825F"));
        String strAaa0003 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF8260"));
        this.aaa001.aaa000(ccc010zz.ddd027, (byte) 0);
        if (z) {
            return;
        }
        this.aaa000.aaa001(strAaa000, strAaa0002, strAaa0003);
    }
}
