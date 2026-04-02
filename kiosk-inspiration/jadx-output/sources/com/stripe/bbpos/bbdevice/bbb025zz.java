package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb025zz extends bbb005zz {
    bbb025zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        int i;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF8226");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF891D");
        if (ccc067zzVarAaa000 == null) {
            i = 0;
        } else {
            try {
                i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            } catch (Exception unused) {
                if (this.aaa001.aaa022() == aaa003zz.aaa005zz.SERIAL && this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SEVEN)) {
                    this.aaa001.aaa000(ccc010zz.aaa013, (byte) 12);
                    return;
                } else {
                    this.aaa001.aaa000(ccc010zz.aaa011, (byte) 12);
                    return;
                }
            }
        }
        String strAaa003 = ccc067zzVarAaa0002 == null ? "" : ccc071zz.aaa003(ccc067zzVarAaa0002.aaa001);
        int length = i - strAaa003.length();
        if (this.aaa001.aaa022() == aaa003zz.aaa005zz.SERIAL && this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SEVEN)) {
            this.aaa001.aaa000(ccc010zz.aaa013, (byte) 0);
        } else {
            this.aaa001.aaa000(ccc010zz.aaa011, (byte) 0);
        }
        if (z) {
            return;
        }
        this.aaa000.aaa000(strAaa003, length);
    }
}
