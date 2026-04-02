package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;

/* JADX INFO: loaded from: classes3.dex */
class aaa033zz extends aaa012zz {
    aaa033zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(String str, int i, int i2, String str2, String str3) {
        String strAaa000;
        String str4;
        if (ccc071zz.aaa008(str)) {
            String strAaa0002 = ccc034zz.aaa000((Object) str, "DF6C");
            if (strAaa0002 != null) {
                String str5 = "" + strAaa0002;
                if (i < 0) {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "block index invalid");
                    return;
                }
                int i3 = i2 - 1;
                if (i == i3) {
                    strAaa000 = ccc034zz.aaa000((Object) Integer.valueOf(i | 128), "DF75");
                } else {
                    strAaa000 = ccc034zz.aaa000((Object) Integer.valueOf(i), "DF75");
                }
                if (strAaa000 != null) {
                    String str6 = str5 + strAaa000;
                    try {
                        int i4 = Integer.parseInt(str3, 16);
                        if (i4 == 0) {
                            str4 = str6 + "DF876B0100";
                        } else if (i4 == 1) {
                            str4 = str6 + "DF876B0101";
                            if (i == i3) {
                                if (ccc071zz.aaa008(str2)) {
                                    String strAaa0003 = ccc034zz.aaa000((Object) str2, "DF876A");
                                    if (strAaa0003 != null) {
                                        str4 = str4 + strAaa0003;
                                    } else {
                                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "hmac invalid");
                                        return;
                                    }
                                } else {
                                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "hmac is missing");
                                    return;
                                }
                            }
                        } else {
                            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "encryptionMode invalid");
                            return;
                        }
                        aaa011zz aaa011zzVar = this.aaa001;
                        aaa011zzVar.aaa005 = 0;
                        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.ccc021, (byte) 0, (byte) 0, ccc071zz.aaa005(str4));
                        aaa011zz aaa011zzVar2 = this.aaa001;
                        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
                        return;
                    } catch (Exception unused) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "encryptionMode invalid");
                        return;
                    }
                }
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "block index invalid");
                return;
            }
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "opKeyData invalid");
            return;
        }
        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "opKeyData is missing");
    }
}
