package com.stripe.bbpos.bbdevice;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb032zz extends bbb005zz {
    bbb032zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        ccc067zz ccc067zzVar;
        ccc067zz ccc067zzVar2;
        ccc067zz ccc067zzVar3;
        ccc067zz ccc067zzVar4;
        ccc067zz ccc067zzVar5;
        ccc067zz ccc067zzVar6;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF3B");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF3C");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF3D");
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, "FF8106");
        ccc067zz ccc067zzVarAaa0005 = ccc068zz.aaa000(list, "FF8105");
        ccc067zz ccc067zzVarAaa0006 = ccc068zz.aaa000(list, "DF8129");
        ccc067zz ccc067zzVarAaa0007 = ccc068zz.aaa000(list, "DF8116");
        List<ccc067zz> listEmptyList = Collections.emptyList();
        if (ccc067zzVarAaa000 != null && !ccc067zzVarAaa000.aaa001.equalsIgnoreCase("")) {
            listEmptyList = ccc068zz.aaa000(ccc067zzVarAaa000.aaa001);
        } else if (ccc067zzVarAaa0002 != null && !ccc067zzVarAaa0002.aaa001.equalsIgnoreCase("")) {
            listEmptyList = ccc068zz.aaa000(ccc067zzVarAaa0002.aaa001);
        } else if (ccc067zzVarAaa0003 != null && !ccc067zzVarAaa0003.aaa001.equalsIgnoreCase("")) {
            listEmptyList = ccc068zz.aaa000(ccc067zzVarAaa0003.aaa001);
        }
        if (listEmptyList.size() > 0) {
            ccc067zz ccc067zzVarAaa0008 = ccc068zz.aaa000(listEmptyList, "DF871A");
            ccc067zz ccc067zzVarAaa0009 = ccc068zz.aaa000(listEmptyList, "DF871B");
            ccc067zz ccc067zzVarAaa00010 = ccc068zz.aaa000(listEmptyList, "DF871C");
            ccc067zzVar = ccc067zzVarAaa0007;
            ccc067zzVar4 = ccc067zzVarAaa0004;
            ccc067zz ccc067zzVarAaa00011 = ccc068zz.aaa000(listEmptyList, "DF871D");
            ccc067zzVar5 = ccc067zzVarAaa0005;
            ccc067zzVar6 = ccc067zzVarAaa0006;
            ccc067zz ccc067zzVarAaa00012 = ccc068zz.aaa000(listEmptyList, "DF8718");
            ccc067zzVar3 = ccc067zzVarAaa0003;
            ccc067zz ccc067zzVarAaa00013 = ccc068zz.aaa000(listEmptyList, "DF8719");
            ccc067zzVar2 = ccc067zzVarAaa0002;
            String str = ccc067zzVarAaa0008 != null ? "" + ccc071zz.aaa002("DF871A", ccc067zzVarAaa0008.aaa001) : "";
            if (ccc067zzVarAaa0009 != null) {
                str = str + ccc071zz.aaa002("DF871B", ccc067zzVarAaa0009.aaa001);
            }
            if (ccc067zzVarAaa00010 != null) {
                str = str + ccc071zz.aaa002("DF871C", ccc067zzVarAaa00010.aaa001);
            }
            if (ccc067zzVarAaa00011 != null) {
                str = str + ccc071zz.aaa002("DF871D", ccc067zzVarAaa00011.aaa001);
            }
            if (ccc067zzVarAaa00012 != null) {
                str = str + ccc071zz.aaa002("DF8718", ccc067zzVarAaa00012.aaa001);
            }
            if (ccc067zzVarAaa00013 != null) {
                str = str + ccc071zz.aaa002("DF8719", ccc067zzVarAaa00013.aaa001);
            }
            if (!str.equalsIgnoreCase("")) {
                ccc033zz.aaa001(str, this.aaa000.aaa000);
            }
        } else {
            ccc067zzVar = ccc067zzVarAaa0007;
            ccc067zzVar2 = ccc067zzVarAaa0002;
            ccc067zzVar3 = ccc067zzVarAaa0003;
            ccc067zzVar4 = ccc067zzVarAaa0004;
            ccc067zzVar5 = ccc067zzVarAaa0005;
            ccc067zzVar6 = ccc067zzVarAaa0006;
        }
        if (ccc067zzVarAaa000 != null) {
            this.aaa001.aaa000(ccc010zz.bbb007, (byte) 0);
            if (!z) {
                this.aaa000.aaa012(ccc067zzVarAaa000.aaa001);
                return;
            } else {
                if (Arrays.equals(this.aaa001.aaa003.aaa003(), ccc010zz.aaa077)) {
                    this.aaa001.aaa000((byte) 0);
                    return;
                }
                return;
            }
        }
        if (ccc067zzVar2 != null) {
            this.aaa001.aaa000(ccc010zz.bbb007, (byte) 0);
            if (z) {
                return;
            }
            this.aaa000.aaa013(ccc067zzVar2.aaa001);
            return;
        }
        if (ccc067zzVar3 != null) {
            this.aaa001.aaa000(ccc010zz.bbb007, (byte) 0);
            if (z) {
                return;
            }
            this.aaa000.aaa022(ccc067zzVar3.aaa001);
            return;
        }
        if (ccc067zzVar6 == null) {
            this.aaa001.aaa000(ccc010zz.bbb007, (byte) 12);
            return;
        }
        this.aaa001.aaa000(ccc010zz.bbb007, (byte) 0);
        if (z) {
            return;
        }
        this.aaa000.aaa000(ccc067zzVar6.aaa001, ccc071zz.aaa000(ccc067zzVar4), ccc071zz.aaa000(ccc067zzVar5), ccc071zz.aaa000(ccc067zzVar));
    }
}
