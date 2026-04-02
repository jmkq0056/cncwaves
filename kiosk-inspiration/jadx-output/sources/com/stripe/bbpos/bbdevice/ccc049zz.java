package com.stripe.bbpos.bbdevice;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes3.dex */
final class ccc049zz {
    static String aaa000(String str) {
        try {
            return ccc071zz.aaa000(MessageDigest.getInstance("SHA-256").digest(ccc071zz.aaa005(str)));
        } catch (NoSuchAlgorithmException unused) {
            return "";
        }
    }
}
