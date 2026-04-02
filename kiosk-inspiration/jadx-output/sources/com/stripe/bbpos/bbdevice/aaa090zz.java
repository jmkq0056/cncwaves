package com.stripe.bbpos.bbdevice;

import android.app.Activity;
import android.graphics.Rect;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class aaa090zz extends aaa012zz {
    aaa090zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(Hashtable<String, Rect> hashtable) {
        if (hashtable.size() == 0) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Input size is zero");
            return;
        }
        aaa003zz.aaa005zz aaa005zzVarAaa022 = this.aaa001.aaa022();
        aaa003zz.aaa005zz aaa005zzVar = aaa003zz.aaa005zz.SERIAL;
        if (aaa005zzVarAaa022 == aaa005zzVar && this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SEVEN)) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "PinPad buttons in landscape layout is missing");
            return;
        }
        String strAaa000 = ccc034zz.aaa000((Object) hashtable, "DF850C");
        if (strAaa000 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid key value list");
            return;
        }
        String str = "" + strAaa000;
        String strAaa0002 = ccc034zz.aaa000((Object) hashtable, "DF850D");
        if (strAaa0002 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid key coordinate list");
            return;
        }
        String str2 = str + strAaa0002;
        if (this.aaa000.aaa011.aaa000() > 0) {
            str2 = str2 + ccc071zz.aaa002("DF894C", TlvMap.SET_BUZZER_DISABLED_VALUE);
        }
        String strAaa0003 = ccc034zz.aaa000((Object) Integer.valueOf(this.aaa000.aaa011.aaa026()), "DF894E");
        if (strAaa0003 == null) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid key pinPadTouchEventTimeout");
            return;
        }
        String str3 = str2 + strAaa0003;
        aaa011zz aaa011zzVar = this.aaa001;
        aaa011zzVar.aaa005 = 0;
        if (aaa011zzVar.aaa022() == aaa005zzVar && this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SEVEN)) {
            this.aaa001.aaa003 = new aaa010zz(ccc010zz.ccc001, (byte) 0, (byte) 0, ccc071zz.aaa005(str3));
        } else if (this.aaa001.aaa022() != aaa005zzVar || (!this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOSPlus) && !this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_TOUCH) && !this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SML))) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command");
            return;
        } else {
            this.aaa001.aaa003 = new aaa010zz(ccc010zz.bbb100, (byte) 0, (byte) 0, ccc071zz.aaa005(str3));
        }
        aaa011zz aaa011zzVar2 = this.aaa001;
        aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
    }

    void aaa000(Hashtable<String, Rect> hashtable, Hashtable<String, Rect> hashtable2) {
        if (hashtable.size() == 0) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "pinButtone size is zero");
            return;
        }
        if (hashtable2.size() == 0) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "pinButtonLandscape size is zero");
            return;
        }
        if (!hashtable.keySet().equals(hashtable2.keySet())) {
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Key set of pinButtonLandsacpe doesn't match with pinButton");
            return;
        }
        String strAaa000 = ccc034zz.aaa000((Object) hashtable, "DF850C");
        if (strAaa000 != null) {
            String str = "" + strAaa000;
            String strAaa0002 = ccc034zz.aaa000((Object) hashtable, "DF850D");
            if (strAaa0002 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "pinButton invalid key coordinate list");
                return;
            }
            String strAaa0003 = ccc034zz.aaa000((Object) hashtable2, "DF850D");
            if (strAaa0003 == null) {
                this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "pinButtonLandscape invalid key coordinate list");
                return;
            }
            Hashtable<String, String> hashtableAaa002 = ccc068zz.aaa002(strAaa0002);
            Hashtable<String, String> hashtableAaa0022 = ccc068zz.aaa002(strAaa0003);
            String str2 = str + ("DF850D" + ccc034zz.aaa001((hashtableAaa002.get("DF850D").length() + hashtableAaa0022.get("DF850D").length()) / 2) + hashtableAaa002.get("DF850D") + hashtableAaa0022.get("DF850D"));
            BBDeviceController.PinEntryOrientation pinEntryOrientation = BBDeviceController.PinEntryOrientation.ROTATION_0;
            Activity activityAaa000 = ccc034zz.aaa000();
            if (activityAaa000 != null) {
                try {
                    int rotation = activityAaa000.getWindowManager().getDefaultDisplay().getRotation();
                    if (rotation != 0) {
                        if (rotation == 1) {
                            pinEntryOrientation = BBDeviceController.PinEntryOrientation.ROTATION_90;
                        } else if (rotation == 2) {
                            pinEntryOrientation = BBDeviceController.PinEntryOrientation.ROTATION_180;
                        } else if (rotation == 3) {
                            pinEntryOrientation = BBDeviceController.PinEntryOrientation.ROTATION_270;
                        }
                    }
                } catch (Exception unused) {
                }
            }
            String str3 = str2 + ccc034zz.aaa000((Object) pinEntryOrientation, "DF850E");
            if (this.aaa000.aaa011.aaa000() > 0) {
                str3 = str3 + ccc071zz.aaa002("DF894C", TlvMap.SET_BUZZER_DISABLED_VALUE);
            }
            String strAaa0004 = ccc034zz.aaa000((Object) Integer.valueOf(this.aaa000.aaa011.aaa026()), "DF894E");
            if (strAaa0004 != null) {
                String str4 = str3 + strAaa0004;
                aaa011zz aaa011zzVar = this.aaa001;
                aaa011zzVar.aaa005 = 0;
                aaa003zz.aaa005zz aaa005zzVarAaa022 = aaa011zzVar.aaa022();
                aaa003zz.aaa005zz aaa005zzVar = aaa003zz.aaa005zz.SERIAL;
                if (aaa005zzVarAaa022 == aaa005zzVar && this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SEVEN)) {
                    this.aaa001.aaa003 = new aaa010zz(ccc010zz.ccc001, (byte) 0, (byte) 0, ccc071zz.aaa005(str4));
                } else if (this.aaa001.aaa022() == aaa005zzVar && (this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOSPlus) || this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_TOUCH) || this.aaa001.aaa000(BBDeviceController.aaa006zz.WisePOS_SML))) {
                    this.aaa001.aaa003 = new aaa010zz(ccc010zz.bbb100, (byte) 0, (byte) 0, ccc071zz.aaa005(str4));
                } else {
                    this.aaa000.aaa000(aaa003zz.aaa002zz.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command");
                    return;
                }
                aaa011zz aaa011zzVar2 = this.aaa001;
                aaa011zzVar2.aaa000(aaa011zzVar2.aaa003);
                return;
            }
            this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid key pinPadTouchEventTimeout");
            return;
        }
        this.aaa000.aaa000(aaa003zz.aaa002zz.INPUT_INVALID, "Invalid key value list");
    }
}
