package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;

/* JADX INFO: loaded from: classes3.dex */
class aaa100zz extends aaa012zz {
    aaa100zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(CAPK capk) {
        String str;
        if (!ccc034zz.aaa000(capk)) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid input. CAPK format error");
            return;
        }
        if ((ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WSC5") || ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WSS5") || ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WTH1") || ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WTP1") || ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WGO1") || ccc071zz.aaa003(this.aaa000.aaa011.aaa014().aaa005()).startsWith("WGP1")) && (capk.location.equalsIgnoreCase("FF") || capk.location.equalsIgnoreCase("31"))) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Update CAPK invalid location. (error code - 9021)");
            return;
        }
        try {
            String str2 = capk.checksum;
            if (str2 != null) {
                String strAaa000 = ccc034zz.aaa000((Object) str2, "DF824F");
                if (strAaa000 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
                str = "" + strAaa000;
            } else {
                str = "";
            }
            String str3 = capk.exponent;
            if (str3 != null) {
                String strAaa0002 = ccc034zz.aaa000((Object) str3, "DF824D");
                if (strAaa0002 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
                str = str + strAaa0002;
            }
            String str4 = capk.index;
            if (str4 != null) {
                String strAaa0003 = ccc034zz.aaa000((Object) str4, "9F22");
                if (strAaa0003 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
                str = str + strAaa0003;
            }
            String str5 = capk.location;
            if (str5 != null) {
                String strAaa0004 = ccc034zz.aaa000((Object) str5, "DF824A");
                if (strAaa0004 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
                str = str + strAaa0004;
            }
            String str6 = capk.modulus;
            if (str6 != null) {
                String strAaa0005 = ccc034zz.aaa000((Object) str6, "DF824E");
                if (strAaa0005 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
                str = str + strAaa0005;
            }
            String str7 = capk.rid;
            if (str7 != null) {
                String strAaa0006 = ccc034zz.aaa000((Object) str7, "DF824B");
                if (strAaa0006 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
                str = str + strAaa0006;
            }
            String str8 = capk.size;
            if (str8 != null) {
                String strAaa0007 = ccc034zz.aaa000((Object) str8, "DF8250");
                if (strAaa0007 == null) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
                str = str + strAaa0007;
            }
            aaa011zz aaa011zzVar = this.aaa001;
            aaa011zzVar.aaa005 = 0;
            aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb050, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
            aaa011zz aaa011zzVar2 = this.aaa001;
            aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
        }
    }
}
