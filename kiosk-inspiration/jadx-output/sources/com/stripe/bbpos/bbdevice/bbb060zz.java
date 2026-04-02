package com.stripe.bbpos.bbdevice;

import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb060zz extends bbb005zz {
    bbb060zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z, aaa010zz aaa010zzVar) {
        Hashtable<String, String> hashtableAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(list), ccc034zz.aaa001());
        if (hashtableAaa000.containsKey("bID")) {
            hashtableAaa000.put("bID", ccc071zz.aaa003(hashtableAaa000.get("bID")));
        }
        if (hashtableAaa000.containsKey("bootloaderVersion")) {
            hashtableAaa000.put("bootloaderVersion", ccc071zz.aaa003(hashtableAaa000.get("bootloaderVersion")));
        }
        if (hashtableAaa000.containsKey("hardwareID")) {
            hashtableAaa000.put("hardwareID", ccc071zz.aaa003(hashtableAaa000.get("hardwareID")));
        }
        if (hashtableAaa000.containsKey("DF8645") && ccc071zz.aaa003(hashtableAaa000.get("DF8645"), 0) != 0) {
            hashtableAaa000.put("deviceTamperStatus", hashtableAaa000.get("DF8645"));
        }
        Object[] array = hashtableAaa000.keySet().toArray();
        Arrays.sort(array);
        for (Object obj : array) {
            String str = (String) obj;
            if (str.equalsIgnoreCase("mcuInfo")) {
                hashtableAaa000.remove(obj);
            } else if (!ccc034zz.aaa001(str)) {
                hashtableAaa000.remove(obj);
            }
        }
        this.aaa000.aaa011(hashtableAaa000);
    }
}
