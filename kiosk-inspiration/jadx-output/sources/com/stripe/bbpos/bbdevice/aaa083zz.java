package com.stripe.bbpos.bbdevice;

/* JADX INFO: loaded from: classes3.dex */
class aaa083zz extends aaa012zz {
    aaa083zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(int i, byte[] bArr) {
        String strAaa000 = ccc034zz.aaa000((Object) Integer.valueOf(((int) Math.ceil(((double) bArr.length) / 512.0d)) - 1), Integer.class);
        String str = "DF8223" + ccc034zz.aaa001(strAaa000.length() / 2) + strAaa000;
        String strAaa0002 = ccc034zz.aaa000((Object) Integer.valueOf(i), Integer.class);
        String str2 = str + "DF8222" + ccc034zz.aaa001(strAaa0002.length() / 2) + strAaa0002;
        int i2 = i * 512;
        int iMin = Math.min(512, bArr.length - i2);
        byte[] bArr2 = new byte[iMin];
        System.arraycopy(bArr, i2, bArr2, 0, iMin);
        String strAaa0003 = ccc034zz.aaa000((Object) bArr2, byte[].class);
        String str3 = str2 + "DF1C" + ccc034zz.aaa001(strAaa0003.length() / 2) + strAaa0003;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.aaa043, (byte) 0, (byte) 0, ccc071zz.aaa005(str3));
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }
}
