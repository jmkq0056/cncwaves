package com.stripe.bbpos.bbdevice;

/* JADX INFO: loaded from: classes3.dex */
class ccc026zz implements Runnable {
    private static final Object aaa007 = new Object();
    byte[] aaa001;
    int aaa002;
    Thread aaa004;
    private final aaa009zz aaa005;
    private final aaa011zz aaa006;
    private boolean aaa000 = false;
    private int aaa003 = 0;

    ccc026zz(byte[] bArr, int i, aaa009zz aaa009zzVar, aaa011zz aaa011zzVar) {
        i = aaa009zz.aaa040 ? aaa009zz.aaa041 ? 90000 : 9000 : i;
        this.aaa001 = bArr;
        this.aaa002 = i;
        this.aaa005 = aaa009zzVar;
        this.aaa006 = aaa011zzVar;
    }

    void aaa000() {
        synchronized (this.aaa005.aaa004) {
            this.aaa000 = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:220:0x0324 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instruction units count: 914
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.ccc026zz.run():void");
    }
}
