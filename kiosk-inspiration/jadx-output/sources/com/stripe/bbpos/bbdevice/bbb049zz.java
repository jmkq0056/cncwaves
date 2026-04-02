package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb049zz extends bbb005zz {
    bbb049zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            if (i != 0) {
                if (i != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Failed to get CAPK List (3062)");
                    return;
                }
            }
            aaa011zz aaa011zzVar = this.aaa001;
            int i2 = aaa011zzVar.aaa015;
            if (i2 == 1) {
                aaa011zzVar.aaa015 = 2;
                aaa011zzVar.aaa016 = ccc034zz.aaa001(list);
                this.aaa001.aaa003 = new aaa010zz(ccc010zz.bbb044, (byte) 0, (byte) 0, ccc071zz.aaa005("DF824A" + ccc034zz.aaa001(1) + "19"));
                aaa011zz aaa011zzVar2 = this.aaa001;
                aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
                return;
            }
            if (i2 != 2) {
                this.aaa000.aaa000(ccc034zz.aaa001(list));
                return;
            }
            aaa011zzVar.aaa015 = 0;
            List<CAPK> listAaa001 = ccc034zz.aaa001(list);
            if (this.aaa001.aaa016 == null) {
                this.aaa000.aaa000(listAaa001);
                return;
            }
            for (int i3 = 0; i3 < listAaa001.size(); i3++) {
                CAPK capk = listAaa001.get(i3);
                int i4 = 0;
                while (true) {
                    if (i4 >= this.aaa001.aaa016.size()) {
                        this.aaa001.aaa016.add(capk);
                        break;
                    } else if (this.aaa001.aaa016.get(i4).location.equalsIgnoreCase(capk.location)) {
                        break;
                    } else {
                        i4++;
                    }
                }
            }
            this.aaa000.aaa000(this.aaa001.aaa016);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
