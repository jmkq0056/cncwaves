package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class aaa064zz extends aaa012zz {
    aaa064zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, Object> hashtable) {
        String str;
        try {
            Object obj = hashtable.get("readNdefRecord");
            if (obj != null) {
                String strAaa000 = ccc034zz.aaa000(obj, "DF8358");
                if (strAaa000 != null) {
                    str = "" + strAaa000;
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                    return;
                }
            } else {
                str = "";
            }
            Object obj2 = hashtable.get("writeNdefRecord");
            if (obj2 != null) {
                if (obj2 instanceof String) {
                    if (!ccc071zz.aaa006((String) obj2)) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (writeNdefRecord)");
                        return;
                    }
                    String strAaa0002 = ccc034zz.aaa000(obj2, "DF8359");
                    if (strAaa0002 != null) {
                        str = str + strAaa0002;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                        return;
                    }
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (writeNdefRecord)");
                    return;
                }
            }
            Object obj3 = hashtable.get("mifareCardKey");
            if (obj3 != null) {
                if (obj3 instanceof String) {
                    if (!ccc071zz.aaa006((String) obj3)) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareCardKey)");
                        return;
                    }
                    String strAaa0003 = ccc034zz.aaa000(obj3, "DF8500");
                    if (strAaa0003 != null) {
                        str = str + strAaa0003;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                        return;
                    }
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareCardKey)");
                    return;
                }
            }
            Object obj4 = hashtable.get("mifareCardKeyNumber");
            if (obj4 != null) {
                if (obj4 instanceof String) {
                    if (!ccc071zz.aaa006((String) obj4)) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareCardKeyNumber)");
                        return;
                    }
                    String strAaa0004 = ccc034zz.aaa000(obj4, "DF8502");
                    if (strAaa0004 != null) {
                        str = str + strAaa0004;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                        return;
                    }
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareCardKeyNumber)");
                    return;
                }
            }
            Object obj5 = hashtable.get("mifareCardBlockNumber");
            if (obj5 != null) {
                if (obj5 instanceof String) {
                    if (!ccc071zz.aaa006((String) obj5)) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareCardBlockNumber)");
                        return;
                    }
                    String strAaa0005 = ccc034zz.aaa000(obj5, "DF8501");
                    if (strAaa0005 != null) {
                        str = str + strAaa0005;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                        return;
                    }
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareCardBlockNumber)");
                    return;
                }
            }
            Object obj6 = hashtable.get("mifareDesFireCardAID");
            if (obj6 != null) {
                if (obj6 instanceof String) {
                    if (!ccc071zz.aaa006((String) obj6)) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareDesFireCardAID)");
                        return;
                    }
                    String strAaa0006 = ccc034zz.aaa000(obj6, "DF8503");
                    if (strAaa0006 != null) {
                        str = str + strAaa0006;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                        return;
                    }
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareDesFireCardAID)");
                    return;
                }
            }
            Object obj7 = hashtable.get("mifareDesFireCardFID");
            if (obj7 != null) {
                if (obj7 instanceof String) {
                    if (!ccc071zz.aaa006((String) obj7)) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareDesFireCardFID)");
                        return;
                    }
                    String strAaa0007 = ccc034zz.aaa000(obj7, "DF8504");
                    if (strAaa0007 != null) {
                        str = str + strAaa0007;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                        return;
                    }
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareDesFireCardFID)");
                    return;
                }
            }
            Object obj8 = hashtable.get("mifareDesFireCardFileOffset");
            if (obj8 != null) {
                if (obj8 instanceof String) {
                    if (!ccc071zz.aaa006((String) obj8)) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareDesFireCardFileOffset)");
                        return;
                    }
                    String strAaa0008 = ccc034zz.aaa000(obj8, "DF8505");
                    if (strAaa0008 != null) {
                        str = str + strAaa0008;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                        return;
                    }
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareDesFireCardFileOffset)");
                    return;
                }
            }
            Object obj9 = hashtable.get("mifareCardDataLength");
            if (obj9 == null) {
                obj9 = hashtable.get("mifareDesFireCardDataLength");
            }
            if (obj9 != null) {
                if (obj9 instanceof String) {
                    if (!ccc071zz.aaa006((String) obj9)) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareCardDataLength)");
                        return;
                    }
                    String strAaa0009 = ccc034zz.aaa000(obj9, "DF8506");
                    if (strAaa0009 != null) {
                        str = str + strAaa0009;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                        return;
                    }
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareCardDataLength)");
                    return;
                }
            }
            Object obj10 = hashtable.get("mifareCardCommand");
            if (obj10 == null) {
                obj10 = hashtable.get("mifareDesFireCardCommand");
            }
            if (obj10 != null) {
                if (obj10 instanceof String) {
                    if (!ccc071zz.aaa006((String) obj10)) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareCardCommand)");
                        return;
                    }
                    String strAaa00010 = ccc034zz.aaa000(obj10, "DF8509");
                    if (strAaa00010 != null) {
                        str = str + strAaa00010;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                        return;
                    }
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareCardCommand)");
                    return;
                }
            }
            Object obj11 = hashtable.get("mifareCardCommandData");
            if (obj11 == null) {
                obj11 = hashtable.get("mifareDesFireCardCommandData");
            }
            if (obj11 != null) {
                if (obj11 instanceof String) {
                    if (!ccc071zz.aaa006((String) obj11)) {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareCardCommandData)");
                        return;
                    }
                    String strAaa00011 = ccc034zz.aaa000(obj11, "DF850A");
                    if (strAaa00011 != null) {
                        str = str + strAaa00011;
                    } else {
                        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
                        return;
                    }
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid HEX string (mifareCardCommandData)");
                    return;
                }
            }
            aaa011zz aaa011zzVar = this.aaa001;
            aaa011zzVar.aaa005 = 0;
            aaa011zzVar.aaa003 = new aaa010zz(ccc010zz.bbb018, (byte) 0, (byte) 0, ccc071zz.aaa005(str));
            aaa011zz aaa011zzVar2 = this.aaa001;
            aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
        } catch (Exception unused) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "");
        }
    }
}
