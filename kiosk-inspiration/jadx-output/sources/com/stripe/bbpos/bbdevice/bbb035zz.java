package com.stripe.bbpos.bbdevice;

import com.stripe.hardware.emv.TlvMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb035zz extends bbb005zz {
    bbb035zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        int i;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF1A");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF1B");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF8222");
        if (ccc067zzVarAaa0003 != null && (i = Integer.parseInt(ccc067zzVarAaa0003.aaa001, 16)) != 0) {
            this.aaa001.aaa000(ccc010zz.aaa042, (byte) 0);
            this.aaa001.aaa004(i);
        } else {
            if (ccc067zzVarAaa000 == null || ccc067zzVarAaa0002 == null) {
                this.aaa001.aaa000(ccc010zz.aaa042, (byte) 12);
                return;
            }
            boolean z2 = !ccc067zzVarAaa000.aaa001.equalsIgnoreCase(TlvMap.SET_BUZZER_ENABLED_VALUE);
            int i2 = Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16);
            this.aaa001.aaa000(ccc010zz.aaa042, (byte) 0);
            if (z) {
                return;
            }
            this.aaa000.aaa000(i2 - 1, z2);
        }
    }
}
