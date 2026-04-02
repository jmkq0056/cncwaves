package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;

/* JADX INFO: loaded from: classes3.dex */
class aaa089zz extends aaa012zz {
    aaa089zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(String str, int i, int i2, String str2) {
        if (ccc071zz.aaa008(str)) {
            String strAaa000 = ccc034zz.aaa000((Object) str, "DF6C");
            if (strAaa000 != null) {
                String str3 = "" + strAaa000;
                if (i >= 0) {
                    String strAaa0002 = ccc034zz.aaa000((Object) Integer.valueOf(i), "DF75");
                    if (strAaa0002 != null) {
                        String str4 = str3 + strAaa0002;
                        if (i == i2 - 1) {
                            if (ccc071zz.aaa008(str2)) {
                                String strAaa0003 = ccc034zz.aaa000((Object) str2, "DF8654");
                                if (strAaa0003 != null) {
                                    str4 = str4 + strAaa0003;
                                } else {
                                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "hash invalid");
                                    return;
                                }
                            } else {
                                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "hash is missing");
                                return;
                            }
                        }
                        aaa011zz aaa011zzVar = this.aaa001;
                        aaa011zzVar.aaa005 = 0;
                        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.ccc009, (byte) 0, (byte) 0, ccc071zz.aaa005(str4));
                        aaa011zz aaa011zzVar2 = this.aaa001;
                        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
                        return;
                    }
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "block index invalid");
                    return;
                }
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "block index invalid");
                return;
            }
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "data invalid");
            return;
        }
        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "data is missing");
    }
}
