package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;

/* JADX INFO: loaded from: classes3.dex */
class aaa068zz extends aaa012zz {
    aaa068zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(String str) {
        if (!ccc071zz.aaa006(str)) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (appIndex)");
            return;
        }
        if (str.length() > 8) {
            str = str.substring(str.length() - 8);
        }
        while (str.length() < 8) {
            str = TlbConst.TYPELIB_MINOR_VERSION_SHELL + str;
        }
        String str2 = ("DF837C" + ccc034zz.aaa001(str.length() / 2) + str) + "DF0A" + ccc034zz.aaa001(36) + "9F069F099F1BDF8120DF8121DF8122979F49DF24DF26DF23DF20DF21DF22DF259F2AEBEC";
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb022, (byte) 0, (byte) 0, ccc071zz.aaa005(str2));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
