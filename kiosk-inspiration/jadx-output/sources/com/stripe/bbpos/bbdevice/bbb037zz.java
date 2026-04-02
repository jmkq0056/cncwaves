package com.stripe.bbpos.bbdevice;

import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb037zz extends bbb005zz {
    bbb037zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        boolean z2;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF27");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF3E");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "BF0C");
        if (ccc067zzVarAaa0003 != null && ccc067zzVarAaa0003.aaa001.equalsIgnoreCase("")) {
            this.aaa001.aaa000(ccc010zz.aaa068, (byte) 0);
            if (!z) {
                this.aaa000.aaa000(new ArrayList<>(), false);
                return;
            }
        }
        if (ccc067zzVarAaa0002 == null) {
            this.aaa001.aaa000(ccc010zz.aaa068, (byte) 12);
            return;
        }
        if (ccc067zzVarAaa000 == null && ccc067zzVarAaa0003 == null) {
            this.aaa001.aaa000(ccc010zz.aaa068, (byte) 12);
            return;
        }
        try {
            int i = Integer.parseInt(ccc067zzVarAaa0002.aaa001, 16);
            if (i != 0) {
                z2 = true;
                if (i != 1) {
                    this.aaa001.aaa000(ccc010zz.aaa068, (byte) 12);
                    return;
                }
            } else {
                z2 = false;
            }
            ArrayList<String> arrayList = new ArrayList<>();
            if (ccc067zzVarAaa0003 != null) {
                List<ccc067zz> listAaa000 = ccc068zz.aaa000(ccc067zzVarAaa0003.aaa001);
                for (int i2 = 0; i2 < listAaa000.size(); i2++) {
                    try {
                        arrayList.add(listAaa000.get(i2).aaa001);
                    } catch (Exception unused) {
                    }
                }
            } else {
                if (ccc067zzVarAaa000 == null) {
                    this.aaa001.aaa000(ccc010zz.aaa068, (byte) 12);
                    return;
                }
                byte[] bArrAaa005 = ccc071zz.aaa005(ccc067zzVarAaa000.aaa001);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                for (byte b : bArrAaa005) {
                    if (b != 0) {
                        byteArrayOutputStream.write(b);
                    } else if (byteArrayOutputStream.size() > 0) {
                        arrayList.add(new String(byteArrayOutputStream.toByteArray()));
                        byteArrayOutputStream.reset();
                    }
                }
            }
            if (arrayList.size() == 0) {
                this.aaa001.aaa000(ccc010zz.aaa068, (byte) 12);
                return;
            }
            this.aaa001.aaa000(ccc010zz.aaa068, (byte) 0);
            if (z) {
                return;
            }
            this.aaa000.aaa000(arrayList, z2);
        } catch (Exception unused2) {
            this.aaa001.aaa000(ccc010zz.aaa068, (byte) 12);
        }
    }
}
