package com.stripe.bbpos.bbdevice.ota;

import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;

/* JADX INFO: loaded from: classes3.dex */
class u implements Runnable {
    private c a;
    String b = "";
    int c = 0;

    u(c cVar) {
        this.a = cVar;
    }

    void a(String str) {
        this.b = str;
        this.c = 0;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.d().k0() == 1) {
            this.a.b().f(this.b);
            int i = this.c + 1;
            this.c = i;
            if (i >= 50) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "No response (6002)");
            } else {
                this.a.k.postDelayed(this, 200L);
            }
        }
    }
}
