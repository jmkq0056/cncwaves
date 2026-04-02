package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class aaa032zz extends aaa012zz {
    aaa032zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, Object> hashtable) {
        String str = "" + ccc034zz.aaa000((Object) Integer.valueOf(this.aaa001.aaa022().aaa000()), "DF39");
        Object obj = hashtable.get("data");
        if (obj != null) {
            String strAaa000 = ccc034zz.aaa000(obj, "DF1E");
            if (strAaa000 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                return;
            }
            str = str + strAaa000;
        }
        Object obj2 = hashtable.get("randomNumber");
        if (obj2 != null) {
            String strAaa0002 = ccc034zz.aaa000(obj2, "CA");
            if (strAaa0002 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                return;
            }
            str = str + strAaa0002;
        }
        Object obj3 = hashtable.get("encryptionMethod");
        Object obj4 = hashtable.get("encryptionKeySource");
        Object obj5 = hashtable.get("encryptionPaddingMethod");
        Object obj6 = hashtable.get("macLength");
        if (obj3 != null || obj4 != null || obj5 != null || obj6 != null) {
            String strAaa0003 = ccc034zz.aaa000(obj3, obj4, obj5, obj6);
            if (strAaa0003 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                return;
            }
            str = str + strAaa0003;
        }
        Object obj7 = hashtable.get("encWorkingKey");
        Object obj8 = hashtable.get("kcvOfWorkingKey");
        if (obj7 != null) {
            String strAaa0004 = ccc034zz.aaa000(obj7, obj8);
            if (strAaa0004 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                return;
            }
            str = str + strAaa0004;
        }
        Object obj9 = hashtable.get("keyUsage");
        if (obj9 != null) {
            String strAaa0005 = ccc034zz.aaa000(obj9, "DF5A");
            if (strAaa0005 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                return;
            }
            str = str + strAaa0005;
        }
        Object obj10 = hashtable.get("initialVector");
        if (obj10 != null) {
            String strAaa0006 = ccc034zz.aaa000(obj10, "DF1D");
            if (strAaa0006 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                return;
            }
            str = str + strAaa0006;
        }
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.aaa049, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
