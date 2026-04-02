package com.stripe.bbpos.bbdevice;

import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class ccc057zz extends ccc062zz {
    static boolean aaa004 = false;
    static byte[] aaa005 = new byte[0];
    static boolean aaa006 = false;
    private byte[] aaa003;

    ccc057zz(byte b, byte[] bArr) {
        super(b, (byte) 0);
        if (b == 80) {
            aaa000((byte) -128);
        }
        this.aaa003 = bArr;
        if (aaa004 && b != 80) {
            aaa000((byte) (aaa003() | SignedBytes.MAX_POWER_OF_TWO));
            if (bArr != null) {
                byte bAaa000 = ccc056zz.aaa000(bArr);
                byte[] bArr2 = new byte[bArr.length + 1];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                bArr2[bArr.length] = bAaa000;
                this.aaa003 = ccc069zz.aaa002(bArr2, aaa005);
            }
        }
        if (b == -112) {
            aaa006 = true;
        } else {
            if (b == -111) {
                return;
            }
            aaa006 = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.stripe.bbpos.bbdevice.ccc062zz
    /* JADX INFO: renamed from: aaa000 */
    public ccc062zz clone() {
        return new ccc057zz(aaa002(), aaa003(), this.aaa003);
    }

    @Override // com.stripe.bbpos.bbdevice.ccc062zz
    protected byte[] aaa001() {
        return ccc058zz.aaa000(aaa002(), aaa003(), this.aaa003);
    }

    byte[] aaa004() {
        return this.aaa003;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ccc057zz) {
            ccc057zz ccc057zzVar = (ccc057zz) obj;
            if (ccc057zzVar.aaa002() == aaa002()) {
                byte[] bArr = ccc057zzVar.aaa003;
                if (bArr == null && this.aaa003 == null) {
                    return true;
                }
                try {
                    if (bArr.length == this.aaa003.length) {
                        int i = 0;
                        while (true) {
                            byte[] bArr2 = this.aaa003;
                            if (i >= bArr2.length) {
                                return true;
                            }
                            if (ccc057zzVar.aaa003[i] != bArr2[i]) {
                                return false;
                            }
                            i++;
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.aaa003);
    }

    ccc057zz(byte b, byte b2, byte[] bArr) {
        super(b, b2);
        this.aaa003 = bArr;
        if (b == -112) {
            aaa006 = true;
        } else {
            if (b == -111) {
                return;
            }
            aaa006 = false;
        }
    }
}
