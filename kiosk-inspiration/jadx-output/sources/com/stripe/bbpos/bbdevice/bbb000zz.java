package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class bbb000zz extends aaa012zz {
    bbb000zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, String> hashtable) {
        String strAaa000;
        String str = hashtable.get("data");
        if (str != null) {
            if (!str.equalsIgnoreCase("") && !ccc071zz.aaa006(str)) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid data");
                return;
            }
            if (str.equalsIgnoreCase("")) {
                strAaa000 = "DF852200";
            } else {
                strAaa000 = ccc034zz.aaa000((Object) str, "DF8522");
            }
            if (strAaa000 != null) {
                String str2 = "" + strAaa000;
                String str3 = hashtable.get("dataEnum");
                if (str3 != null) {
                    if (ccc071zz.aaa006(str3) && str3.length() == 8) {
                        String strAaa0002 = ccc034zz.aaa000((Object) str3, "DF8747");
                        if (strAaa0002 != null) {
                            String str4 = str2 + strAaa0002;
                            aaa011zz aaa011zzVar = this.aaa001;
                            aaa011zzVar.aaa005 = 0;
                            aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.ccc023, (byte) 0, (byte) 0, ccc071zz.aaa005(str4));
                            aaa011zz aaa011zzVar2 = this.aaa001;
                            aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
                            return;
                        }
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid dataEnum");
                        return;
                    }
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid dataEnum");
                    return;
                }
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "dataEnum is missing");
                return;
            }
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid data");
            return;
        }
        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "data is missing");
    }
}
