package com.stripe.bbpos.bbdevice.ota;

import android.os.Handler;

/* JADX INFO: loaded from: classes3.dex */
class h0 implements Runnable {
    private static final String d = "com.stripe.bbpos.bbdevice.ota.h0";
    Handler a;
    int b = 0;
    int c = 0;

    h0(Handler handler) {
        this.a = handler;
    }

    private void a(String str) {
    }

    void a() {
        a("[resetTimeoutCnt]");
        this.c = 0;
    }

    @Override // java.lang.Runnable
    public void run() {
        StringBuilder sb = new StringBuilder("[run] cnt : ");
        int i = this.b;
        this.b = i + 1;
        a(sb.append(i).toString());
        this.a.postDelayed(this, 2000L);
    }
}
