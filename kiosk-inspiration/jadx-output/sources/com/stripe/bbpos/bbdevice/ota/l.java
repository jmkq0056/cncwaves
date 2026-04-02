package com.stripe.bbpos.bbdevice.ota;

import android.os.Handler;
import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.bbpos.bbdevice.ota.b;

/* JADX INFO: loaded from: classes3.dex */
class l extends h0 {
    private static final String f = h0.class.getName();
    b e;

    l(b bVar, Handler handler) {
        super(handler);
        this.e = bVar;
    }

    private void a(String str) {
    }

    @Override // com.stripe.bbpos.bbdevice.ota.h0, java.lang.Runnable
    public void run() {
        boolean z;
        StringBuilder sbAppend = new StringBuilder("[run] state : ").append(this.e.d()).append(", timeoutCnt : ").append(this.c).append(" (");
        int i = this.b;
        this.b = i + 1;
        a(sbAppend.append(i).append(")").toString());
        boolean z2 = false;
        if (this.e.d() == b.a.IDLE) {
            this.c = 0;
            z = false;
        } else if (this.e.d() != b.a.POLLING_WSP7X_DEVICE_INFO ? this.e.d() == b.a.SEND_SERIAL_INIT_COMMAND_AGAIN || this.e.d() == b.a.POLLING_DEVICE_INFO ? this.c <= 48 : this.c <= 24 : this.c <= 48) {
            z = false;
            z2 = true;
        } else {
            z = true;
            z2 = true;
        }
        if (z2) {
            this.c++;
        }
        if (z) {
            this.e.c(BBDeviceOTAController.OTAResult.FAILED, "No response (6003)");
        }
        this.a.postDelayed(this, 10000L);
    }
}
