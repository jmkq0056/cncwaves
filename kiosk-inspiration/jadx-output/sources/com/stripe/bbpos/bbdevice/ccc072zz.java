package com.stripe.bbpos.bbdevice;

import android.os.Handler;

/* JADX INFO: loaded from: classes3.dex */
class ccc072zz implements Runnable {
    Handler aaa000;
    int aaa001 = 0;
    int aaa002 = 0;

    ccc072zz(Handler handler) {
        this.aaa000 = handler;
    }

    int aaa000() {
        return 7;
    }

    int aaa001() {
        return 360;
    }

    int aaa002() {
        return 5000;
    }

    synchronized void aaa003() {
        this.aaa002 = 0;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.aaa000.postDelayed(this, 2000L);
    }
}
