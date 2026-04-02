package com.stripe.bbpos.bbdevice;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes3.dex */
final class aaa005zz {
    static ccc028zz aaa003;
    static aaa002zz aaa004;
    private static final Object aaa005 = new Object();
    private Handler aaa000 = new Handler(Looper.getMainLooper());
    private aaa001zz aaa001;
    private int aaa002;

    interface aaa001zz {
        void onBarcodeReaderConnected();

        void onBarcodeReaderDisconnected();

        void onReturnBarcode(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class aaa002zz implements ccc029zz {
        private aaa002zz() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void aaa002() {
            aaa005zz.this.aaa000(1);
            aaa005zz.this.aaa001.onBarcodeReaderConnected();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void aaa003() {
            aaa005zz.this.aaa001.onBarcodeReaderDisconnected();
        }

        @Override // com.stripe.bbpos.bbdevice.ccc029zz
        public void aaa000() {
            aaa005zz.this.aaa000.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.aaa005zz$aaa002zz$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa002();
                }
            }, 500L);
        }

        @Override // com.stripe.bbpos.bbdevice.ccc029zz
        public void aaa001() {
            aaa005zz.this.aaa000(0);
            aaa005zz.this.aaa000.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.aaa005zz$aaa002zz$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa003();
                }
            });
        }

        @Override // com.stripe.bbpos.bbdevice.ccc029zz
        public void onReturnBarcode(final String str) {
            aaa005zz.this.aaa000.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.aaa005zz$aaa002zz$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa000(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void aaa000(String str) {
            aaa005zz.this.aaa001.onReturnBarcode(str);
        }
    }

    aaa005zz(aaa001zz aaa001zzVar) {
        this.aaa001 = aaa001zzVar;
        if (aaa003 != null) {
            aaa002zz aaa002zzVar = new aaa002zz();
            aaa004 = aaa002zzVar;
            aaa003.aaa000(aaa002zzVar);
        }
        aaa000(0);
    }

    void aaa002() {
        ccc028zz ccc028zzVar;
        if (aaa001() != 0) {
            return;
        }
        synchronized (aaa005) {
            if (aaa003 == null) {
                aaa004 = new aaa002zz();
                aaa003 = new ccc028zz(aaa004);
            }
        }
        if (this.aaa002 == 1 || (ccc028zzVar = aaa003) == null) {
            return;
        }
        ccc028zzVar.aaa005();
        aaa003.aaa016();
    }

    void aaa003() {
        ccc028zz ccc028zzVar;
        if (aaa001() != 0 || this.aaa002 == 0 || (ccc028zzVar = aaa003) == null) {
            return;
        }
        ccc028zzVar.aaa018();
        aaa003.aaa004();
    }

    private int aaa001() {
        try {
            System.loadLibrary("SmartPOS_SerialPort-1.2.0");
            try {
                System.loadLibrary("SmartPOS-1.2.0");
                synchronized (aaa005) {
                    if (aaa003 == null) {
                        aaa004 = new aaa002zz();
                        aaa003 = new ccc028zz(aaa004);
                    }
                }
                try {
                    int iAaa001 = aaa003.aaa001();
                    if (iAaa001 == 1) {
                        return 0;
                    }
                    return iAaa001 != 1 ? 1 : 5;
                } catch (UnsatisfiedLinkError unused) {
                    return 4;
                }
            } catch (UnsatisfiedLinkError unused2) {
                return 4;
            }
        } catch (UnsatisfiedLinkError unused3) {
            return 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void aaa000(int i) {
        this.aaa002 = i;
    }

    boolean aaa000() {
        ccc028zz ccc028zzVar;
        if (this.aaa002 == 0 || (ccc028zzVar = aaa003) == null) {
            return false;
        }
        return ccc028zzVar.aaa009();
    }
}
