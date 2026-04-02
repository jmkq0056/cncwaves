package com.stripe.bbpos.bbdevice;

import android.app.CustServiceManager;
import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
class ccc035zz {
    private CustServiceManager aaa000;

    static /* synthetic */ class aaa000zz {
        static final /* synthetic */ int[] aaa000;

        static {
            int[] iArr = new int[aaa001zz.values().length];
            aaa000 = iArr;
            try {
                iArr[aaa001zz.UART_FOR_MCU.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                aaa000[aaa001zz.UART_FOR_SCAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                aaa000[aaa001zz.UART_FOR_NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    enum aaa001zz {
        UART_FOR_MCU,
        UART_FOR_SCAN,
        UART_FOR_NONE
    }

    ccc035zz(Context context) {
        aaa000("[BB01_Utils_WisePOS7]");
        this.aaa000 = (CustServiceManager) context.getSystemService("custservice");
    }

    private void aaa000(String str) {
    }

    void aaa000(boolean z) {
        aaa000("[setMcuPowerSupplyOn] on : " + z);
        if (z) {
            aaa000("[setMcuPowerSupplyOn] MCU_SWITCH_FILE : 1");
            this.aaa000.writeSysFileStatusInt("/sys/bus/platform/drivers/CUSTDriver/GPIO1_NAME", 1);
        } else {
            aaa000("[setMcuPowerSupplyOn] MCU_SWITCH_FILE : 0");
            this.aaa000.writeSysFileStatusInt("/sys/bus/platform/drivers/CUSTDriver/GPIO1_NAME", 0);
        }
    }

    void aaa001(boolean z) {
        aaa000("[setScanPowerSupplyOn] on : " + z);
        if (z) {
            this.aaa000.writeSysFileStatusInt("/sys/bus/platform/drivers/CUSTDriver/GPIO1_NAME", 0);
            this.aaa000.writeSysFileStatusInt("/sys/bus/platform/drivers/CUSTDriver/GPIO2_NAME", 1);
            this.aaa000.writeSysFileStatusInt("/sys/bus/platform/drivers/CUSTDriver/GPIO3_NAME", 1);
        } else {
            this.aaa000.writeSysFileStatusInt("/sys/bus/platform/drivers/CUSTDriver/GPIO1_NAME", 1);
            this.aaa000.writeSysFileStatusInt("/sys/bus/platform/drivers/CUSTDriver/GPIO2_NAME", 0);
            this.aaa000.writeSysFileStatusInt("/sys/bus/platform/drivers/CUSTDriver/GPIO3_NAME", 0);
        }
    }

    void aaa000(aaa001zz aaa001zzVar) {
        aaa000("[SwitchUart] type : " + aaa001zzVar);
        int i = aaa000zz.aaa000[aaa001zzVar.ordinal()];
        if (i == 1) {
            aaa000(true);
            return;
        }
        if (i == 2) {
            aaa000(false);
            aaa001(true);
        } else {
            if (i != 3) {
                return;
            }
            aaa000(false);
            aaa001(false);
        }
    }

    void aaa000(int i) {
        aaa000("[writeBbWakeUpMcu] input : " + i);
        this.aaa000.writeSysFileStatusInt("/sys/bus/platform/drivers/CUSTDriver/GPIO5_NAME", i);
    }

    String aaa000() {
        String sysFileStatus = this.aaa000.readSysFileStatus("/sys/bus/platform/drivers/CUSTDriver/EINT2");
        aaa000("[readMcuWakeUpBbPinStatus] status : " + sysFileStatus);
        return sysFileStatus;
    }
}
