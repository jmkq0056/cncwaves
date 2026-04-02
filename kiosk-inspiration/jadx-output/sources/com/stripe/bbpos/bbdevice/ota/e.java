package com.stripe.bbpos.bbdevice.ota;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes3.dex */
class e {
    static byte[] a(String str, int i) {
        return f0.i(b(str) + a(str) + String.format("%06x", Integer.valueOf(i)));
    }

    private static String b(String str) {
        try {
            return f0.a(MessageDigest.getInstance("SHA-256").digest(c(str).getBytes())).substring(0, 6);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    static String c(String str) {
        return str.substring(0, 5);
    }

    static String a(String str) {
        return str.substring(7, 15);
    }
}
