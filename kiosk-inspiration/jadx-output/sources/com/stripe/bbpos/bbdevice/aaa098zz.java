package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.bbpos.bbdevice.ccc066zz;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class aaa098zz extends aaa012zz {
    aaa098zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, Object> hashtable) {
        String str = "";
        if (this.aaa000.aaa011.aaa025() == ccc066zz.aaa002zz.SEMI_PASS_THROUGH) {
            this.aaa001.aaa005(ccc050zz.aaa000());
            return;
        }
        try {
            Object obj = hashtable.get("nfcCardRemovalTimeout");
            if (obj != null) {
                String strAaa000 = ccc034zz.aaa000(obj, "DF60");
                if (strAaa000 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
                str = "" + strAaa000;
            }
            aaa011zz aaa011zzVar = this.aaa001;
            aaa011zzVar.aaa005 = 0;
            aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb016, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
            aaa011zz aaa011zzVar2 = this.aaa001;
            aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
        }
    }
}
