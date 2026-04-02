package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb010zz extends bbb005zz {
    bbb010zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        try {
            if (ccc067zzVarAaa000 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                return;
            }
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i != 0) {
                if (i != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
            }
            aaa003zz aaa003zzVar = this.aaa000;
            BBDeviceController.DisplayPromptOption displayPromptOption = aaa003zzVar.aaa009;
            if (displayPromptOption != BBDeviceController.DisplayPromptOption.DISPLAY_ONLY && displayPromptOption != BBDeviceController.DisplayPromptOption.DISPLAY_ONLY_WITHOUT_TIMEOUT) {
                aaa003zzVar.aaa055();
                return;
            }
            aaa003zzVar.aaa046();
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
