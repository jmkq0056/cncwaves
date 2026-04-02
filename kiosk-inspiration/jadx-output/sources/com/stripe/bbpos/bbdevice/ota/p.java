package com.stripe.bbpos.bbdevice.ota;

import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
final class p {
    private y a;
    private Hashtable<String, String> b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;

    p(Hashtable<String, String> hashtable, y yVar) {
        this.c = "";
        this.d = "";
        this.e = "";
        this.f = "";
        this.g = "";
        this.h = "";
        this.i = "";
        this.j = "";
        this.k = "";
        this.l = "";
        this.m = "";
        this.n = "";
        this.a = yVar;
        this.b = hashtable;
        this.c = f0.c(hashtable.get("spUID"));
        this.d = f0.c(hashtable.get("spFirmwareVersion"));
        this.e = f0.c(hashtable.get("spID"));
        this.f = f0.c(hashtable.get("spPCIFWVersion"));
        this.g = f0.c(hashtable.get("spPCIHWVersion"));
        this.h = f0.c(hashtable.get("spWCConnectionHealthCheck"));
        this.i = f0.c(hashtable.get("spProductID"));
        this.j = f0.c(hashtable.get("spMSRSuccessCounter"));
        this.k = f0.c(hashtable.get("spMSRFailCounter"));
        this.l = f0.c(hashtable.get("spTamperState"));
        this.m = f0.c(hashtable.get("spSredFwVersion"));
        this.n = f0.c(hashtable.get("spInternalTamperState"));
    }

    String a() {
        return this.i;
    }

    String b() {
        return this.l;
    }

    public String toString() {
        return "DeviceInfoDataSP{deviceInfo=" + this.b + ", spUID='" + this.c + "', spFirmwareVersion='" + this.d + "', spID='" + this.e + "', spPCIFWVersion='" + this.f + "', spPCIHWVersion='" + this.g + "', spWCConnectionHealthCheck='" + this.h + "', spProductID='" + this.i + "', spMSRSuccessCounter='" + this.j + "', spMSRFailCounter='" + this.k + "', spTamperState='" + this.l + "', spSredFwVersion='" + this.m + "', spInternalTamperState='" + this.n + "'}";
    }
}
