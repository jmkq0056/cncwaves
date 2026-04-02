package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class aaa077zz extends aaa012zz {
    aaa077zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, Object> hashtable) {
        try {
            Object obj = hashtable.get("apdu");
            if (obj != null) {
                String strAaa000 = ccc034zz.aaa000(obj, "DF14");
                if (strAaa000 != null) {
                    String str = "" + strAaa000;
                    Object obj2 = hashtable.get("apduLength");
                    if (obj2 != null) {
                        String strAaa0002 = ccc034zz.aaa000(obj2, "DF43");
                        if (strAaa0002 != null) {
                            str = str + strAaa0002;
                        } else {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "apduLength invalid");
                            return;
                        }
                    }
                    Object obj3 = hashtable.get("samCardSlotNumber");
                    if (obj3 != null) {
                        String strAaa0003 = ccc034zz.aaa000(obj3, "DF8354");
                        if (strAaa0003 != null) {
                            str = str + strAaa0003;
                        } else {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "samCardSlotNumber invalid");
                            return;
                        }
                    }
                    aaa011zz aaa011zzVar = this.aaa001;
                    aaa011zzVar.aaa005 = 0;
                    aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb012, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
                    aaa011zz aaa011zzVar2 = this.aaa001;
                    aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
                    return;
                }
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                return;
            }
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
        }
    }
}
