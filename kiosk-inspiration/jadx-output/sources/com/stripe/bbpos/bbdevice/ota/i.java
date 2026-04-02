package com.stripe.bbpos.bbdevice.ota;

import com.stripe.bbpos.bbdevice.ota.w;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: loaded from: classes3.dex */
final class i {
    private static final IvParameterSpec a = new IvParameterSpec(new byte[16]);
    private static final IvParameterSpec b = new IvParameterSpec(new byte[8]);

    static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr3 == null) {
            bArr3 = new byte[16];
        }
        if (bArr3.length == 16 && bArr != null && bArr.length != 0 && bArr.length % 16 == 0 && bArr2 != null && bArr2.length != 0) {
            if (bArr2.length != 16 && bArr2.length != 24 && bArr2.length != 32) {
                return null;
            }
            try {
                return w.a(bArr, bArr2, bArr3, w.a.Encrypt, w.b.CBC);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    static byte[] b(byte[] bArr, byte[] bArr2) {
        if (bArr != null && bArr.length != 0 && bArr.length % 16 == 0 && bArr2 != null && bArr2.length != 0) {
            if (bArr2.length != 16 && bArr2.length != 24 && bArr2.length != 32) {
                return null;
            }
            try {
                return w.a(bArr, bArr2, null, w.a.Encrypt, w.b.ECB);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    static byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr != null && bArr.length != 0 && bArr.length % 16 == 0 && bArr2 != null && bArr2.length != 0) {
            if (bArr2.length != 16 && bArr2.length != 24 && bArr2.length != 32) {
                return null;
            }
            try {
                return w.a(bArr, bArr2, null, w.a.Decrypt, w.b.CBC);
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
