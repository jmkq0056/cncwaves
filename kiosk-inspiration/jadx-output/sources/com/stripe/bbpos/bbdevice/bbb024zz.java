package com.stripe.bbpos.bbdevice;

import com.stripe.hardware.emv.TlvMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb024zz extends bbb005zz {
    bbb024zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, TlvMap.TAG_APPLICATION_LABEL);
        this.aaa001.aaa000(ccc010zz.ccc052, (byte) 0);
        if (ccc067zzVarAaa000 != null) {
            this.aaa000.aaa010(ccc071zz.aaa003(ccc067zzVarAaa000.aaa001));
        } else {
            this.aaa000.aaa010("");
        }
    }
}
