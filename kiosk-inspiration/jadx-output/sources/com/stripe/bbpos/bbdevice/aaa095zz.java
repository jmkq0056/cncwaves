package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class aaa095zz extends aaa012zz {
    aaa095zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, Object> hashtable) {
        String str;
        try {
            Object obj = hashtable.get(BbposDeviceControllerImpl.PIN_ENTRY_TIMEOUT);
            if (obj != null) {
                String strAaa000 = ccc034zz.aaa000(obj, "DF61");
                if (strAaa000 != null) {
                    str = "" + strAaa000;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
            } else {
                str = "";
            }
            Object obj2 = hashtable.get("randomNumber");
            if (obj2 != null) {
                String strAaa0002 = ccc034zz.aaa000(obj2, "CA");
                if (strAaa0002 != null) {
                    str = str + strAaa0002;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
            }
            Object obj3 = hashtable.get("pan");
            if (obj3 != null) {
                String strAaa0003 = ccc034zz.aaa000(obj3, "DF03");
                if (strAaa0003 != null) {
                    str = str + strAaa0003;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
            }
            Object obj4 = hashtable.get("pinBypass");
            if (obj4 != null) {
                String strAaa0004 = ccc034zz.aaa000(obj4, "DF8200");
                if (strAaa0004 != null) {
                    str = str + strAaa0004;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid pinBypass");
                    return;
                }
            }
            Object obj5 = hashtable.get("pinKeyGroupIndex");
            if (obj5 != null) {
                String strAaa0005 = ccc034zz.aaa000(obj5, "DF893F");
                if (strAaa0005 != null) {
                    str = str + strAaa0005;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid pinKeyGroupIndex");
                    return;
                }
            }
            aaa011zz aaa011zzVar = this.aaa001;
            aaa011zzVar.aaa013 = false;
            if (aaa011zzVar.aaa022() == aaa003zz.aaa005zz.SERIAL && this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SEVEN)) {
                this.aaa001.aaa013 = true;
            }
            aaa011zz aaa011zzVar2 = this.aaa001;
            aaa011zzVar2.aaa005 = 0;
            aaa011zzVar2.aaa003 = new aaa010zz(ccc010zz.aaa033, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
            aaa011zz aaa011zzVar3 = this.aaa001;
            aaa011zzVar3.aaa000(aaa011zzVar3.aaa003);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
        }
    }
}
