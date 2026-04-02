package com.stripe.bbpos.bbdevice.ota;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes3.dex */
class v {
    static String a(String str) {
        try {
            return f0.a(MessageDigest.getInstance("SHA-256").digest(f0.i(str)));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }
}
