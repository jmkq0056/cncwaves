package com.stripe.bbpos.bbdevice;

import android.os.Handler;
import android.os.Looper;
import com.stripe.bbpos.bbdevice001.ioctrl;

/* JADX INFO: loaded from: classes3.dex */
final class aaa001zz {
    private Handler aaa000 = new Handler(Looper.getMainLooper());
    private aaa002zz aaa001;
    private int aaa002;
    private ioctrl aaa003;

    aaa001zz(aaa002zz aaa002zzVar) {
        this.aaa001 = aaa002zzVar;
        aaa000(0);
        this.aaa003 = new ioctrl();
    }

    private synchronized void aaa000(int i) {
        this.aaa002 = i;
    }

    private void aaa000(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa006() {
        this.aaa001.aaa001();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa007() {
        this.aaa001.aaa000();
    }

    int aaa001() {
        return this.aaa003.IsAW9523Valid();
    }

    boolean aaa002() {
        aaa000("[K21EnablePinHigh]");
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z = this.aaa003.SysfsWrite("/sys/class/aw9523/k21_enable/value", 1) == 0;
        aaa000("[K21EnablePinHigh] elapsedTime : " + (System.currentTimeMillis() - jCurrentTimeMillis));
        return z;
    }

    boolean aaa003() {
        aaa000("[K21EnablePinLow]");
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z = this.aaa003.SysfsWrite("/sys/class/aw9523/k21_enable/value", 0) == 0;
        aaa000("[K21EnablePinLow] elapsedTime : " + (System.currentTimeMillis() - jCurrentTimeMillis));
        return z;
    }

    boolean aaa004() {
        aaa000("[K21ResetPinHigh]");
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z = this.aaa003.SysfsWrite("/sys/class/aw9523/k21_reset/value", 1) == 0;
        aaa000("[K21ResetPinHigh] elapsedTime : " + (System.currentTimeMillis() - jCurrentTimeMillis));
        return z;
    }

    boolean aaa005() {
        aaa000("[K21ResetPinLow]");
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z = this.aaa003.SysfsWrite("/sys/class/aw9523/k21_reset/value", 0) == 0;
        aaa000("[K21ResetPinLow] elapsedTime : " + (System.currentTimeMillis() - jCurrentTimeMillis));
        return z;
    }

    void aaa008() {
        this.aaa000.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.aaa001zz$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa006();
            }
        });
    }

    void aaa009() {
        this.aaa000.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.aaa001zz$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa007();
            }
        });
    }

    void aaa010() {
        aaa000("[startAw9523] connect");
        long jCurrentTimeMillis = System.currentTimeMillis();
        aaa000("[startAw9523] Aw9523 loaded before");
        aaa000(1);
        aaa000("[startAw9523] elapsedTime : " + (System.currentTimeMillis() - jCurrentTimeMillis));
        aaa008();
    }

    synchronized void aaa011() {
        if (this.aaa002 == 0) {
            return;
        }
        aaa000(0);
        aaa009();
    }

    void aaa012() {
        aaa011();
    }

    boolean aaa000() {
        aaa000("[BootselPinLow]");
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z = this.aaa003.SysfsWrite("/sys/class/aw9523/bootsel/value", 0) == 0;
        aaa000("[BootselPinLow] elapsedTime : " + (System.currentTimeMillis() - jCurrentTimeMillis));
        return z;
    }
}
