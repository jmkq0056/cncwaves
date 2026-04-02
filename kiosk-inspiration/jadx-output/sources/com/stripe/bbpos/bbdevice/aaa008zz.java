package com.stripe.bbpos.bbdevice;

import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
final class aaa008zz {
    boolean aaa000;
    private String aaa001;
    private String aaa002;
    private String aaa003;
    private String aaa004;
    private String aaa005;
    private String aaa006;
    private String aaa007;
    private String aaa008;
    private String aaa009;
    private String aaa010;
    private String aaa011;
    private String aaa012;
    private String aaa013;
    private String aaa014;
    private String aaa015;
    private String aaa016;
    private String aaa017;
    private String aaa018;
    private String aaa019;
    private String aaa020;
    private String aaa021;
    private String aaa022;
    private String aaa023;
    private String aaa024;
    private String aaa025;

    /* JADX WARN: Removed duplicated region for block: B:234:0x0a73  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0a7d  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0a87  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0aa8  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0ab4  */
    /* JADX WARN: Removed duplicated region for block: B:260:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    aaa008zz(byte[] r26) {
        /*
            Method dump skipped, instruction units count: 2743
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.aaa008zz.<init>(byte[]):void");
    }

    Hashtable<String, String> aaa000() {
        Hashtable<String, String> hashtable = new Hashtable<>();
        hashtable.put("formatID", this.aaa001);
        hashtable.put("maskedPAN", this.aaa002);
        if (ccc071zz.aaa008(this.aaa003)) {
            hashtable.put("pan", this.aaa003);
        }
        hashtable.put("expiryDate", this.aaa004);
        hashtable.put("cardholderName", this.aaa005);
        hashtable.put("ksn", this.aaa006);
        hashtable.put("serviceCode", this.aaa007);
        hashtable.put("track1Length", this.aaa008);
        hashtable.put("track2Length", this.aaa009);
        hashtable.put("track3Length", this.aaa010);
        hashtable.put("encTracks", this.aaa011);
        if (ccc071zz.aaa008(this.aaa015)) {
            hashtable.put("partialTrack", this.aaa015);
        }
        if (ccc071zz.aaa008(this.aaa021)) {
            hashtable.put("finalMessage", this.aaa021);
        }
        if (ccc071zz.aaa008(this.aaa022)) {
            hashtable.put("randomNumber", this.aaa022);
        }
        if (ccc071zz.aaa008(this.aaa023)) {
            hashtable.put("encWorkingKey", this.aaa023);
        }
        if (ccc071zz.aaa008(this.aaa024)) {
            hashtable.put("mac", this.aaa024);
        }
        if (ccc071zz.aaa008(this.aaa025)) {
            hashtable.put("data", this.aaa025);
        }
        String str = this.aaa016;
        if (str == null || str.equalsIgnoreCase("")) {
            hashtable.put("encTrack1", this.aaa012);
        } else {
            hashtable.put("track1", this.aaa016);
        }
        String str2 = this.aaa017;
        if (str2 == null || str2.equalsIgnoreCase("")) {
            hashtable.put("encTrack2", this.aaa013);
        } else {
            hashtable.put("track2", this.aaa017);
        }
        String str3 = this.aaa018;
        if (str3 == null || str3.equalsIgnoreCase("")) {
            hashtable.put("encTrack3", this.aaa014);
            return hashtable;
        }
        hashtable.put("track3", this.aaa018);
        return hashtable;
    }
}
