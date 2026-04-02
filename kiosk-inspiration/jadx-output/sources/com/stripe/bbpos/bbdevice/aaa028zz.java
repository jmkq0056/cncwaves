package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class aaa028zz extends aaa012zz {
    aaa028zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, Object> hashtable) {
        Object obj = hashtable.get("numberOfAccountTypes");
        if (obj == null) {
            obj = hashtable.get("numberOfAccounTypes");
        }
        if (obj != null) {
            String strAaa000 = ccc034zz.aaa000(obj, "DF860D");
            if (strAaa000 != null) {
                String str = "" + strAaa000;
                Object obj2 = hashtable.get("selectionTimeout");
                if (obj2 != null) {
                    String strAaa0002 = ccc034zz.aaa000(obj2, "DF860B");
                    if (strAaa0002 != null) {
                        String str2 = str + strAaa0002;
                        aaa011zz aaa011zzVar = this.aaa001;
                        aaa011zzVar.aaa005 = 0;
                        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb073, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
                        aaa011zz aaa011zzVar2 = this.aaa001;
                        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
                        return;
                    }
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid selectionTimeout");
                    return;
                }
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "selectionTimeout is missing");
                return;
            }
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid numberOfAccountTypes");
            return;
        }
        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "numberOfAccountTypes is missing");
    }
}
