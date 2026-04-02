package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb007zz extends bbb005zz {
    bbb007zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        if (ccc067zzVarAaa000 != null) {
            try {
                int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
                if (i != 0) {
                    if (i != 1) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command encryptDataWithSettings");
                    }
                }
            } catch (Exception unused) {
            }
        }
    }
}
