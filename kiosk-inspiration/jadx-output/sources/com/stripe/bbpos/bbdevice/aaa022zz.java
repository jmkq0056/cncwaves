package com.stripe.bbpos.bbdevice;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Hashtable;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
class aaa022zz extends aaa012zz {
    aaa022zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, Object> hashtable) {
        String str;
        if (!hashtable.containsKey(TypedValues.TransitionType.S_DURATION)) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "duration is missing");
            return;
        }
        Object obj = hashtable.get(TypedValues.TransitionType.S_DURATION);
        String str2 = "";
        if (obj != null) {
            try {
                String strAaa000 = ccc034zz.aaa000(obj, "DF8616");
                if (strAaa000 != null) {
                    str = "" + strAaa000;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid duration");
                    return;
                }
            } catch (Exception unused) {
                str = str2;
                aaa011zz aaa011zzVar = this.aaa001;
                aaa011zzVar.aaa005 = 0;
                aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb081, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
                aaa011zz aaa011zzVar2 = this.aaa001;
                aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
            }
        } else {
            str = "";
        }
        try {
            ArrayList<Map.Entry> arrayList = new ArrayList(hashtable.entrySet());
            Collections.sort(arrayList, new Comparator() { // from class: com.stripe.bbpos.bbdevice.aaa022zz$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    return aaa022zz.aaa000((Map.Entry) obj2, (Map.Entry) obj3);
                }
            });
            int i = 0;
            for (Map.Entry entry : arrayList) {
                if (((String) entry.getKey()).startsWith("ledIndex")) {
                    i++;
                    Hashtable hashtable2 = (Hashtable) entry.getValue();
                    if (!hashtable2.containsKey("mode")) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "mode is missing");
                        return;
                    }
                    String strAaa0002 = ccc034zz.aaa000((Object) Integer.valueOf(Integer.parseInt(r6.substring(8)) - 1), "DF8614");
                    if (strAaa0002 != null) {
                        String str3 = "" + strAaa0002;
                        Object obj2 = hashtable2.get("mode");
                        if (obj2 != null) {
                            String strAaa0003 = ccc034zz.aaa000(obj2, "DF8615");
                            if (strAaa0003 != null) {
                                str3 = str3 + strAaa0003;
                            } else {
                                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid mode");
                                return;
                            }
                        }
                        Object obj3 = hashtable2.get("flashOnInterval");
                        if (obj3 != null) {
                            String strAaa0004 = ccc034zz.aaa000(obj3, "DF8617");
                            if (strAaa0004 != null) {
                                str3 = str3 + strAaa0004;
                            } else {
                                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid flashOnInterval");
                                return;
                            }
                        }
                        Object obj4 = hashtable2.get("flashOffInterval");
                        if (obj4 != null) {
                            String strAaa0005 = ccc034zz.aaa000(obj4, "DF8618");
                            if (strAaa0005 != null) {
                                str3 = str3 + strAaa0005;
                            } else {
                                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid flashOffInterval");
                                return;
                            }
                        }
                        str = str + "E5" + ccc034zz.aaa001(str3.length() / 2) + str3;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "invalid ledIndex");
                        return;
                    }
                }
            }
            if (i == 0) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "ledIndex is missing");
                return;
            }
        } catch (Exception unused2) {
            str2 = str;
            str = str2;
        }
        aaa011zz aaa011zzVar3 = this.aaa001;
        aaa011zzVar3.aaa005 = 0;
        aaa011zzVar3.aaa003 = new aaa010zz(ccc010zz.bbb081, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
        aaa011zz aaa011zzVar22 = this.aaa001;
        aaa011zzVar22.aaa000(aaa011zzVar22.aaa003);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int aaa000(Map.Entry entry, Map.Entry entry2) {
        return ((String) entry.getKey()).compareTo((String) entry2.getKey());
    }
}
