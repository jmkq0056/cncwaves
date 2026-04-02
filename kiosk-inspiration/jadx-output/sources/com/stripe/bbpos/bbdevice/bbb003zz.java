package com.stripe.bbpos.bbdevice;

import androidx.room.RoomMasterTable;

/* JADX INFO: loaded from: classes3.dex */
class bbb003zz extends aaa012zz {
    bbb003zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000() {
        String str = "DF74" + ccc034zz.aaa001(1) + RoomMasterTable.DEFAULT_ID;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.ddd032, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
