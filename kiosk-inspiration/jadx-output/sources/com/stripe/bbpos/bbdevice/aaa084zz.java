package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;

/* JADX INFO: loaded from: classes3.dex */
class aaa084zz extends aaa012zz {
    aaa084zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(String str) {
        if (str.length() != 12) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
            return;
        }
        try {
            byte[] bArr = new byte[str.length() / 2];
            int i = 0;
            while (i < str.length() - 1) {
                int i2 = i + 2;
                bArr[i / 2] = (byte) (Integer.parseInt(str.substring(i, i2)) & 255);
                i = i2;
            }
            String strAaa000 = ccc071zz.aaa000(bArr);
            String str2 = "DF04" + ccc034zz.aaa001(strAaa000.length() / 2) + strAaa000;
            aaa011zz aaa011zzVar = this.aaa001;
            aaa011zzVar.aaa005 = 0;
            aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.aaa055, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
            aaa011zz aaa011zzVar2 = this.aaa001;
            aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
        }
    }
}
