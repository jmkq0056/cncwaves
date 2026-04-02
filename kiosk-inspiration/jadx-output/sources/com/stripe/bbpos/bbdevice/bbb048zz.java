package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb048zz extends bbb005zz {
    bbb048zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            boolean z2 = true;
            if (i != 0) {
                if (i != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                z2 = false;
            }
            List<CAPK> listAaa001 = ccc034zz.aaa001(list);
            if (!z2 || listAaa001.size() <= 0) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "Failed to get CAPK Detail (3063)");
                return;
            }
            if ((!ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WSC5") && !ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WSS5") && !ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WTH1") && !ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WTP1") && !ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WGO1") && !ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WGP1")) || (!listAaa001.get(0).location.equalsIgnoreCase("FF") && !listAaa001.get(0).location.equalsIgnoreCase("31"))) {
                this.aaa000.aaa000(listAaa001.get(0));
                return;
            }
            CAPK capk = listAaa001.get(0);
            capk.modulus += capk.checksum;
            capk.checksum = "";
            this.aaa000.aaa000(capk);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
