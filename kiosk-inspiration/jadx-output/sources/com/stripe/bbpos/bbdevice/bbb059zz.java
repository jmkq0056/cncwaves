package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb059zz extends bbb005zz {
    bbb059zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF871E"));
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF8712");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF8713");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF8714");
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, "DF8715");
        String strAaa0002 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF8716"));
        ccc067zz ccc067zzVarAaa0005 = ccc068zz.aaa000(list, "DF8717");
        ccc067zz ccc067zzVarAaa0006 = ccc068zz.aaa000(list, "DF8718");
        ccc067zz ccc067zzVarAaa0007 = ccc068zz.aaa000(list, "DF8719");
        String strAaa0003 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF8645"));
        ccc067zz ccc067zzVarAaa0008 = ccc068zz.aaa000(list, "DF871F");
        String strAaa0004 = ccc071zz.aaa000(ccc068zz.aaa000(list, "DF8551"));
        String strAaa003 = ccc067zzVarAaa000 == null ? "" : ccc071zz.aaa003(ccc067zzVarAaa000.aaa001);
        String strAaa0032 = ccc067zzVarAaa0002 == null ? "" : ccc071zz.aaa003(ccc067zzVarAaa0002.aaa001);
        String strReplaceAll = (ccc067zzVarAaa0003 == null ? "" : ccc071zz.aaa003(ccc067zzVarAaa0003.aaa001)).replaceAll("\\u0000", "");
        String strReplaceAll2 = (ccc067zzVarAaa0004 == null ? "" : ccc071zz.aaa003(ccc067zzVarAaa0004.aaa001)).replaceAll("\\u0000", "");
        String strAaa0033 = ccc067zzVarAaa0005 == null ? "" : ccc071zz.aaa003(ccc067zzVarAaa0005.aaa001);
        String str = ccc067zzVarAaa0006 == null ? "" : "" + Integer.parseInt(ccc067zzVarAaa0006.aaa001, 16);
        String str2 = ccc067zzVarAaa0007 == null ? "" : "" + Integer.parseInt(ccc067zzVarAaa0007.aaa001, 16);
        String strAaa0034 = ccc067zzVarAaa0008 == null ? "" : ccc071zz.aaa003(ccc067zzVarAaa0008.aaa001);
        Hashtable<String, String> hashtable = new Hashtable<>();
        hashtable.put("spUID", strAaa000);
        hashtable.put("spFirmwareVersion", strAaa003);
        hashtable.put("spID", strAaa0032);
        hashtable.put("spPCIFWVersion", strReplaceAll);
        hashtable.put("spPCIHWVersion", strReplaceAll2);
        hashtable.put("spWCConnectionHealthCheck", strAaa0002);
        hashtable.put("spProductID", strAaa0033);
        hashtable.put("spMSRSuccessCounter", str);
        hashtable.put("spMSRFailCounter", str2);
        hashtable.put("spTamperState", strAaa0003);
        hashtable.put("spSredFwVersion", strAaa0034);
        hashtable.put("spInternalTamperState", strAaa0004);
        if (!aaa011zz.aaa018) {
            this.aaa000.aaa012(hashtable);
            return;
        }
        try {
            this.aaa000.aaa019(hashtable);
        } catch (Throwable unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.UNKNOWN, "");
        }
    }
}
