package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice001.ioctrl;

/* JADX INFO: loaded from: classes3.dex */
class ccc036zz {
    ccc036zz() {
        aaa000("[BB01_Utils_WisePOSPlus]");
    }

    private String aaa000() {
        return new ioctrl().SysfsRead("/sys/devices/virtual/misc/poss/pos_wake");
    }

    private void aaa000(String str) {
    }

    void aaa001() {
        ioctrl ioctrlVar = new ioctrl();
        try {
            ioctrlVar.P1000BootOnOff(1);
        } catch (Exception e) {
            ccc061zz.aaa001("Set WSC5X bootloader/wakeup pin exception during wakeup. (check code - 9071)(" + e + ")");
        }
        try {
            Thread.sleep(50L);
        } catch (Exception e2) {
            ccc061zz.aaa001("Set WSC5X bootloader/wakeup pin exception during wakeup. (check code - 9072)(" + e2 + ")");
        }
        try {
            ioctrlVar.P1000BootOnOff(0);
        } catch (Exception e3) {
            ccc061zz.aaa001("Set WSC5X bootloader/wakeup pin exception during wakeup. (check code - 9073)(" + e3 + ")");
        }
        try {
            Thread.sleep(50L);
        } catch (Exception e4) {
            ccc061zz.aaa001("Set WSC5X bootloader/wakeup pin exception during wakeup. (check code - 9074)(" + e4 + ")");
        }
    }

    boolean aaa002() {
        return !aaa000().contains("Running");
    }
}
