package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.io.ByteArrayOutputStream;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
class aaa082zz extends aaa012zz {
    aaa082zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(String str) {
        if (!Pattern.matches("\\d{4,12}", str)) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
            this.aaa001.aaa003();
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < str.length()) {
            int i2 = i + 1;
            byteArrayOutputStream.write(Integer.parseInt(str.substring(i, i2)));
            i = i2;
        }
        String strAaa000 = ccc071zz.aaa000(byteArrayOutputStream.toByteArray());
        String str2 = "DF28" + ccc034zz.aaa001(strAaa000.length() / 2) + strAaa000;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.aaa075, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
