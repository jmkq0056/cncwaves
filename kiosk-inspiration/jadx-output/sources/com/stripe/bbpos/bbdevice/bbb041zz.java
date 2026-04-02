package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb041zz extends bbb005zz {
    bbb041zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DE");
        String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF75"));
        String strAaa0002 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF865D"));
        String strAaa0003 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF865B"));
        String strAaa0004 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF865E"));
        String strAaa0005 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF8658"));
        String strAaa0006 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF8545"));
        String strAaa0007 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF865C"));
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF822D");
        if (ccc067zzVarAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
            boolean z = true;
            if (i != 0) {
                if (i != 1) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    return;
                }
                z = false;
            }
            Hashtable<String, String> hashtable = new Hashtable<>();
            if (z) {
                if (ccc071zz.aaa004(strAaa000) == 0) {
                    hashtable.put("KA", strAaa0002);
                    hashtable.put("RD", strAaa0003);
                    hashtable.put("KN", "" + ccc071zz.aaa004(strAaa0004));
                    hashtable.put("CE", "" + ccc071zz.aaa004(strAaa0005));
                    hashtable.put("FC", TlbConst.TYPELIB_MINOR_VERSION_SHELL);
                } else {
                    hashtable.put("AP", strAaa0007);
                }
                hashtable.put("blockIndex", strAaa000);
                hashtable.put("maxBlockIndex", "" + strAaa0006);
            } else if (ccc067zzVarAaa0002 != null) {
                hashtable.put("errorMessage", ccc034zz.aaa003(ccc067zzVarAaa0002.aaa001));
            }
            this.aaa000.aaa001(z, hashtable);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
