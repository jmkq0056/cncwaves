package com.stripe.bbpos.bbdevice;

import java.security.SecureRandom;
import java.util.Random;

/* JADX INFO: loaded from: classes3.dex */
class ccc047zz {
    private static final Random aaa000 = new SecureRandom();

    static void aaa000(byte[] bArr) {
        aaa000.nextBytes(bArr);
    }
}
