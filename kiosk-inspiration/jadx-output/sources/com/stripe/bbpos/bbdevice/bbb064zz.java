package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb064zz extends bbb005zz {
    bbb064zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF46");
        this.aaa001.aaa000(ccc010zz.aaa090, (byte) 0);
        if (ccc067zzVarAaa000 == null || ccc067zzVarAaa000.aaa001.length() <= 0) {
            if (this.aaa001.aaa009) {
                if (z) {
                    return;
                }
                this.aaa000.aaa004(false, "");
                return;
            } else {
                if (z) {
                    return;
                }
                this.aaa000.aaa003(false, (String) null);
                return;
            }
        }
        if (!this.aaa001.aaa009) {
            if (z) {
                return;
            }
            this.aaa000.aaa003(true, ccc067zzVarAaa000.aaa001);
            return;
        }
        try {
            Hashtable<String, String> hashtableAaa000 = aaa003zz.aaa000(ccc067zzVarAaa000.aaa001);
            String str = hashtableAaa000.get(TlvMap.TAG_APPLICATION_PRIMARY_ACCOUNT_NUMBER);
            if (str == null) {
                str = hashtableAaa000.get(TlvMap.TAG_BBPOS_PAN_FIRST_SIX_AND_LAST_FOUR);
            }
            if (str == null) {
                str = "";
            }
            String strReplaceAll = str.replaceAll("f", "X").replaceAll("F", "X");
            while (strReplaceAll.endsWith("X")) {
                strReplaceAll = strReplaceAll.substring(0, strReplaceAll.length() - 1);
            }
            if (z) {
                return;
            }
            this.aaa000.aaa004(true, strReplaceAll);
        } catch (Exception unused) {
            if (z) {
                return;
            }
            this.aaa000.aaa004(false, "");
        }
    }

    void aaa001(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF35");
        if (ccc067zzVarAaa000 != null) {
            try {
                int i = Integer.parseInt(ccc067zzVarAaa000.aaa001, 16);
                if (i != 0) {
                    if (i != 1) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
                    }
                } else if (this.aaa001.aaa009) {
                    this.aaa000.aaa004(false, "");
                } else {
                    this.aaa000.aaa003(false, "");
                }
            } catch (Exception unused) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
            }
        }
    }
}
