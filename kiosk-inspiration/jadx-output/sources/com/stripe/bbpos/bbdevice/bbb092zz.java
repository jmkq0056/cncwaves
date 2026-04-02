package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb092zz extends bbb005zz {
    bbb092zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        aaa003zz.aaa011zz aaa011zzVar;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF52");
        if (ccc067zzVarAaa000 == null) {
            this.aaa001.aaa000(ccc010zz.aaa048, (byte) 12);
            return;
        }
        int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
        if (i == 0) {
            aaa011zzVar = aaa003zz.aaa011zz.SUCCESS;
        } else if (i == 1) {
            aaa011zzVar = aaa003zz.aaa011zz.NO_PAPER_OR_COVER_OPENED;
        } else if (i == 2) {
            aaa011zzVar = aaa003zz.aaa011zz.WRONG_PRINTER_COMMAND;
        } else if (i == 3) {
            aaa011zzVar = aaa003zz.aaa011zz.OVERHEAT;
        } else {
            if (i != 4) {
                this.aaa001.aaa000(ccc010zz.aaa048, (byte) 12);
                return;
            }
            aaa011zzVar = aaa003zz.aaa011zz.PRINTER_ERROR;
        }
        this.aaa001.aaa000(ccc010zz.aaa048, (byte) 0);
        if (z) {
            return;
        }
        this.aaa000.aaa000(aaa011zzVar);
        this.aaa000.aaa070();
    }

    void aaa001(List<ccc067zz> list, boolean z) {
        aaa003zz.aaa011zz aaa011zzVar;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF52");
        if (ccc067zzVarAaa000 != null) {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i == 0) {
                aaa011zzVar = aaa003zz.aaa011zz.SUCCESS;
            } else if (i == 1) {
                aaa011zzVar = aaa003zz.aaa011zz.NO_PAPER_OR_COVER_OPENED;
            } else if (i == 2) {
                aaa011zzVar = aaa003zz.aaa011zz.WRONG_PRINTER_COMMAND;
            } else if (i == 3) {
                aaa011zzVar = aaa003zz.aaa011zz.OVERHEAT;
            } else if (i != 4) {
                return;
            } else {
                aaa011zzVar = aaa003zz.aaa011zz.PRINTER_ERROR;
            }
            if (z || aaa011zzVar == aaa003zz.aaa011zz.SUCCESS) {
                return;
            }
            this.aaa000.aaa000(aaa011zzVar);
            this.aaa000.aaa070();
        }
    }
}
