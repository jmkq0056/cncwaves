package com.stripe.bbpos.bbdevice;

import android.content.Context;
import android.stripe.bbpos.CustServiceManager;
import com.stripe.bbpos.bbdevice.BBDeviceController;

/* JADX INFO: loaded from: classes3.dex */
class ccc037zz {
    private CustServiceManager aaa000;

    ccc037zz(Context context) {
        this.aaa000 = (CustServiceManager) context.getSystemService("custservice");
    }

    boolean aaa000(String str, int i) {
        return this.aaa000.writeSysFileStatusInt(str, i);
    }

    void aaa001() {
        ccc061zz.aaa001("Prepare reboot SP to application mode (check code - 9097)");
        if (BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_TOUCH) || BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_SML)) {
            try {
                this.aaa000.writeSysFileStatusInt("/sys/devices/platform/soc/4c80000.qcom,qup_uart/wakeup", 0);
            } catch (Exception e) {
                ccc061zz.aaa001("Set WTH1X bootloader/wakeup pin exception during reboot. (check code - 9083)(" + e + ")");
            }
            try {
                aaa000();
            } catch (Exception e2) {
                ccc061zz.aaa001("Reboot WTH1X exception. (check code - 9084)(" + e2 + ")");
            }
        }
    }

    void aaa002() {
        try {
            this.aaa000.writeSysFileStatusInt("/sys/devices/platform/soc/4c80000.qcom,qup_uart/wakeup", 1);
        } catch (Exception e) {
            ccc061zz.aaa001("Set WTH1X booloader/wakeup pin exception during wakeup. (check code - 9085)(" + e + ")");
        }
        try {
            this.aaa000.writeSysFileStatusInt("/sys/devices/platform/soc/4c80000.qcom,qup_uart/wakeup", 0);
        } catch (Exception e2) {
            ccc061zz.aaa001("Set WTH1X booloader/wakeup pin exception during wakeup. (check code - 9086)(" + e2 + ")");
        }
        try {
            this.aaa000.writeSysFileStatusInt("/sys/devices/platform/soc/4c80000.qcom,qup_uart/wakeup", 1);
        } catch (Exception e3) {
            ccc061zz.aaa001("Set WTH1X booloader/wakeup pin exception during wakeup. (check code - 9087)(" + e3 + ")");
        }
        try {
            this.aaa000.writeSysFileStatusInt("/sys/devices/platform/soc/4c80000.qcom,qup_uart/wakeup", 0);
        } catch (Exception e4) {
            ccc061zz.aaa001("Set WTH1X booloader/wakeup pin exception during wakeup. (check code - 9088)(" + e4 + ")");
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c3 -> B:42:0x00d9). Please report as a decompilation issue!!! */
    void aaa000() {
        boolean zAaa000;
        ccc061zz.aaa001("Prepare reboot SP (check code - 9095)");
        if (BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_TOUCH) || BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_SML)) {
            try {
                ccc061zz.aaa001("Reset SP Step 0 (check code - 9089)");
                zAaa000 = aaa000("/sys/devices/platform/soc/4c80000.qcom,qup_uart/reset", 0);
                if (!zAaa000) {
                    try {
                        ccc061zz.aaa001("Reboot SP Step 0 (check code - 9090)");
                        aaa000("/sys/devices/platform/soc/4c80000.qcom,qup_uart/enable", 1);
                    } catch (Exception e) {
                        e = e;
                        ccc061zz.aaa001("Set WTH1X power or reset pin exception during reboot SP. (check code - 9075)(" + e + ")");
                    }
                }
            } catch (Exception e2) {
                e = e2;
                zAaa000 = false;
            }
            try {
                Thread.sleep(500L);
            } catch (Exception e3) {
                ccc061zz.aaa001("Sleep interrupt exception during reboot WTH. (check code - 9076)(" + e3 + ")");
            }
            try {
                if (zAaa000) {
                    ccc061zz.aaa001("Reset SP Step 1 (check code - 9091)");
                    aaa000("/sys/devices/platform/soc/4c80000.qcom,qup_uart/reset", 1);
                } else {
                    ccc061zz.aaa001("Reboot SP Step 1 (check code - 9092)");
                    aaa000("/sys/devices/platform/soc/4c80000.qcom,qup_uart/enable", 0);
                }
            } catch (Exception e4) {
                ccc061zz.aaa001("Set WTH1X power or reset pin exception during reboot SP. (check code - 9077)(" + e4 + ")");
            }
            try {
                Thread.sleep(500L);
            } catch (Exception e5) {
                ccc061zz.aaa001("Sleep interrupt exception during reboot WTH. (check code - 9078)(" + e5 + ")");
            }
            try {
                if (zAaa000) {
                    ccc061zz.aaa001("Reset SP Step 2 (check code - 9093)");
                    aaa000("/sys/devices/platform/soc/4c80000.qcom,qup_uart/reset", 0);
                } else {
                    ccc061zz.aaa001("Reboot SP Step 2 (check code - 9094)");
                    aaa000("/sys/devices/platform/soc/4c80000.qcom,qup_uart/enable", 1);
                }
            } catch (Exception e6) {
                ccc061zz.aaa001("Set WTH1X power or reset pin exception during reboot SP. (check code - 9079)(" + e6 + ")");
            }
            try {
                Thread.sleep(500L);
            } catch (Exception e7) {
                ccc061zz.aaa001("Sleep interrupt exception during reboot WTH. (check code - 9080)(" + e7 + ")");
            }
        }
    }
}
