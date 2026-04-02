package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa005zz;

/* JADX INFO: loaded from: classes3.dex */
final class ccc064zz implements aaa005zz.aaa001zz {
    private final BBDeviceController aaa000;

    ccc064zz(BBDeviceController bBDeviceController) {
        this.aaa000 = bBDeviceController;
    }

    @Override // com.stripe.bbpos.bbdevice.aaa005zz.aaa001zz
    public void onBarcodeReaderConnected() {
        this.aaa000.aaa084();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa005zz.aaa001zz
    public void onBarcodeReaderDisconnected() {
        this.aaa000.aaa085();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa005zz.aaa001zz
    public void onReturnBarcode(String str) {
        this.aaa000.aaa017(str);
    }
}
