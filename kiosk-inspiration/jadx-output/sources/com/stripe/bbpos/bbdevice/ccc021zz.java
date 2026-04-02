package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.ccc066zz;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
final class ccc021zz extends ccc018zz {
    private aaa009zz aaa000;
    private OutputStream aaa001;
    private ccc035zz aaa002;
    private ccc036zz aaa003;
    private ccc037zz aaa004;

    ccc021zz(aaa009zz aaa009zzVar, OutputStream outputStream, ccc035zz ccc035zzVar, ccc036zz ccc036zzVar, ccc037zz ccc037zzVar) {
        this.aaa000 = aaa009zzVar;
        this.aaa001 = outputStream;
        this.aaa002 = ccc035zzVar;
        this.aaa003 = ccc036zzVar;
        this.aaa004 = ccc037zzVar;
    }

    @Override // com.stripe.bbpos.bbdevice.ccc018zz
    void aaa000() {
    }

    void aaa000(OutputStream outputStream) {
        this.aaa001 = outputStream;
    }

    @Override // com.stripe.bbpos.bbdevice.ccc018zz
    void aaa000(byte[] bArr) {
        try {
            this.aaa000.aaa024.aaa011.aaa063();
            if (this.aaa000.aaa024.aaa011.aaa025() != ccc066zz.aaa002zz.NO) {
                this.aaa000.aaa024.aaa011.aaa004(true);
                this.aaa001.write(bArr);
                this.aaa001.flush();
                return;
            }
            if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SEVEN) {
                String strAaa000 = this.aaa002.aaa000();
                if (strAaa000 == null || !strAaa000.equalsIgnoreCase("1")) {
                    this.aaa002.aaa000(0);
                    try {
                        Thread.sleep(80L);
                    } catch (Exception unused) {
                    }
                }
            } else if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOSPlus) {
                if (this.aaa003 == null) {
                    this.aaa003 = new ccc036zz();
                }
                for (int i = 0; i < 3 && this.aaa003.aaa002(); i++) {
                    this.aaa003.aaa001();
                }
            } else if (BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_TOUCH) || BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_SML)) {
                this.aaa004.aaa002();
            } else if (this.aaa000.aaa024.aaa011.aaa014().aaa003() == 1 && this.aaa000.aaa024.aaa011.aaa014().aaa000() == 1) {
                aaa003zz.aaa014.aaa006();
            }
            this.aaa000.aaa024.aaa011.aaa004(true);
            this.aaa001.write(bArr);
            this.aaa001.flush();
            if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SEVEN) {
                this.aaa002.aaa000(1);
            } else if (this.aaa000.aaa024.aaa011.aaa014().aaa003() == 1 && this.aaa000.aaa024.aaa011.aaa014().aaa000() == 1) {
                aaa003zz.aaa014.aaa000();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
