package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class aaa066zz extends aaa012zz {
    aaa066zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000() {
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb010, (byte) 0, (byte) 0, new byte[0]);
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }

    void aaa000(Hashtable<String, Object> hashtable) {
        String str = "";
        try {
            Object obj = hashtable.get("samCardSlotNumber");
            if (obj != null) {
                String strAaa000 = ccc034zz.aaa000(obj, "DF8354");
                if (strAaa000 != null) {
                    str = "" + strAaa000;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "samCardSlotNumber invalid");
                    return;
                }
            }
            aaa011zz aaa011zzVar = this.aaa001;
            aaa011zzVar.aaa005 = 0;
            aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb010, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
            aaa011zz aaa011zzVar2 = this.aaa001;
            aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
        }
    }
}
