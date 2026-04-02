package com.stripe.bbpos.bbdevice.ota;

import android.os.Build;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Hashtable;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
final class o {
    private String A;
    private String A0;
    private String B;
    private String B0;
    private String C;
    private String C0;
    private String D;
    private String D0;
    private String E;
    private String E0;
    private String F;
    private String F0;
    private String G;
    private String G0;
    private String H;
    private String H0;
    private String I;
    private String I0;
    private String J;
    private String J0;
    private String K;
    private String K0;
    private String L;
    private String L0;
    private String M;
    private String M0;
    private String N;
    private String N0;
    private String O;
    private String P;
    private String Q;
    private String R;
    private String S;
    private String T;
    private String U;
    private String V;
    private String W;
    private String X;
    private boolean Y;
    private int Z;
    private y a;
    private String a0;
    private Hashtable<String, String> b;
    private String b0;
    private String c;
    private String c0;
    private String d;
    private String d0;
    private String e;
    private String e0;
    private String f;
    private String f0;
    private String g;
    private String g0;
    private String h;
    private String h0;
    private String i;
    private String i0;
    private String j;
    private String j0;
    private String k;
    private String k0;
    private String l;
    private String l0;
    private String m;
    private String m0;
    private String n;
    private String n0;
    private String o;
    private String o0;
    private String p;
    private String p0;
    private String q;
    private String q0;
    private String r;
    private String r0;
    private String s;
    private String s0;
    private String t;
    private String t0;
    private String u;
    private String u0;
    private String v;
    private String v0;
    private String w;
    private String w0;
    private String x;
    private String x0;
    private String y;
    private String y0;
    private String z;
    private String z0;

    o(Hashtable<String, String> hashtable, y yVar) {
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
        this.o = "";
        this.p = "";
        this.q = "";
        this.r = "";
        this.s = "";
        this.t = "";
        this.u = "";
        this.v = "";
        this.w = "";
        this.x = "";
        this.y = "";
        this.z = "";
        this.A = "";
        this.B = "";
        this.C = "";
        this.D = "";
        this.E = "";
        this.F = "";
        this.G = "";
        this.H = "";
        this.I = "";
        this.J = "";
        this.K = "";
        this.L = "";
        this.M = "";
        this.N = "";
        this.O = "";
        this.P = "";
        this.Q = "";
        this.R = "";
        this.S = "";
        this.T = "";
        this.U = "";
        this.V = "";
        this.W = "";
        this.X = "";
        this.Y = true;
        this.Z = 0;
        this.a0 = "";
        this.b0 = "";
        this.c0 = "";
        this.d0 = "";
        this.e0 = "";
        this.f0 = "";
        this.g0 = "";
        this.h0 = "";
        this.i0 = "";
        this.j0 = "";
        this.k0 = "";
        this.l0 = "";
        this.m0 = "";
        this.n0 = "";
        this.o0 = "";
        this.p0 = "";
        this.q0 = "";
        this.r0 = "";
        this.s0 = "";
        this.t0 = "";
        this.u0 = "";
        this.v0 = "";
        this.w0 = "";
        this.x0 = "";
        this.y0 = "";
        this.z0 = "";
        this.A0 = "";
        this.B0 = "";
        this.C0 = "";
        this.D0 = "";
        this.E0 = "";
        this.F0 = "";
        this.G0 = "";
        this.H0 = "";
        this.I0 = "";
        this.J0 = "";
        this.K0 = "";
        this.L0 = "";
        this.M0 = "";
        this.N0 = "";
        this.a = yVar;
        this.b = hashtable;
        this.c = f0.c(hashtable.get("productID"));
        this.d = f0.c(hashtable.get("vendorID"));
        this.e = f0.c(hashtable.get("uid"));
        this.f = f0.c(hashtable.get("pinKsn"));
        this.g = f0.c(hashtable.get("pinKsn1"));
        this.h = f0.c(hashtable.get("pinKsn2"));
        this.i = f0.c(hashtable.get("pinKsn3"));
        this.j = f0.c(hashtable.get("pinKsn4"));
        this.k = f0.c(hashtable.get("trackKsn"));
        this.l = f0.c(hashtable.get("trackKsn1"));
        this.m = f0.c(hashtable.get("trackKsn2"));
        this.n = f0.c(hashtable.get("trackKsn3"));
        this.o = f0.c(hashtable.get("trackKsn4"));
        this.p = f0.c(hashtable.get("emvKsn"));
        this.q = f0.c(hashtable.get("emvKsn1"));
        this.r = f0.c(hashtable.get("emvKsn2"));
        this.s = f0.c(hashtable.get("emvKsn3"));
        this.t = f0.c(hashtable.get("emvKsn4"));
        this.u = f0.c(hashtable.get("macKsn"));
        this.v = f0.c(hashtable.get("macKsn1"));
        this.w = f0.c(hashtable.get("macKsn2"));
        this.x = f0.c(hashtable.get("macKsn3"));
        this.y = f0.c(hashtable.get("macKsn4"));
        this.z = f0.c(hashtable.get("nfcKsn"));
        this.A = f0.c(hashtable.get("messageKsn"));
        this.B = f0.c(hashtable.get("cmacKsn"));
        this.C = f0.c(hashtable.get("firmwareVersion"));
        this.F = f0.c(hashtable.get("terminalSettingVersion"));
        this.G = f0.c(hashtable.get("deviceSettingVersion"));
        this.E = f0.c(hashtable.get("mainProcessorVersion"));
        this.D = f0.c(hashtable.get("coprocessorVersion"));
        this.H = f0.c(hashtable.get("formatID"));
        this.I = f0.c(hashtable.get("isSupportedTrack1"));
        this.J = f0.c(hashtable.get("isSupportedTrack2"));
        this.K = f0.c(hashtable.get("isSupportedTrack3"));
        this.L = f0.c(hashtable.get("isSupportedNfc"));
        this.M = f0.c(hashtable.get("bootloaderVersion"));
        this.N = f0.c(hashtable.get("isUsbConnected"));
        this.O = f0.c(hashtable.get("isCharging"));
        this.P = f0.c(hashtable.get("batteryLevel"));
        this.Q = f0.c(hashtable.get("batteryPercentage"));
        this.R = f0.c(hashtable.get("hardwareVersion"));
        this.S = f0.c(hashtable.get("csn"));
        this.T = f0.c(hashtable.get("coprocessorBootloaderVersion"));
        this.U = f0.c(hashtable.get("serialNumber"));
        this.V = f0.c(hashtable.get("modelName"));
        this.W = f0.c(hashtable.get("mcuInfo"));
        this.X = f0.c(hashtable.get("bID"));
        this.a0 = f0.c(hashtable.get("deviceTamperStatus"));
        this.b0 = f0.c(hashtable.get("publicKeyVersion"));
        this.c0 = f0.c(hashtable.get("caKeyVersion"));
        this.d0 = f0.c(hashtable.get("firmwareID"));
        this.e0 = f0.c(hashtable.get("bootloaderID"));
        this.f0 = f0.c(hashtable.get("healthCheckStatus"));
        this.g0 = f0.c(hashtable.get("internalTamperState"));
        this.h0 = f0.c(hashtable.get("emvKeyModulusHash"));
        this.i0 = f0.c(hashtable.get("trackKeyModulusHash"));
        this.j0 = f0.c(hashtable.get("defaultLanguage"));
        this.k0 = f0.c(hashtable.get("supportedLanguages"));
        this.l0 = f0.c(hashtable.get("fskPublicKeyHash"));
        String strC = f0.c(hashtable.get("mmk1PublicKeyHash"));
        this.m0 = strC;
        if (strC.isEmpty()) {
            this.m0 = f0.c(hashtable.get("mmk1PublicKeyHashValue"));
        }
        this.n0 = f0.c(hashtable.get("mmk0PublicKeyHash"));
        this.o0 = f0.c(hashtable.get("tmk0CmacKcv"));
        this.p0 = f0.c(hashtable.get("tmk1CmacKcv"));
        this.q0 = f0.c(hashtable.get("tmk2CmacKcv"));
        this.r0 = f0.c(hashtable.get("tmk3CmacKcv"));
        this.s0 = f0.c(hashtable.get("pinKeyProfileID"));
        this.t0 = f0.c(hashtable.get("pinKeyProfileID1"));
        this.u0 = f0.c(hashtable.get("pinKeyProfileID2"));
        this.v0 = f0.c(hashtable.get("pinKeyProfileID3"));
        this.w0 = f0.c(hashtable.get("pinKeyProfileID4"));
        this.x0 = f0.c(hashtable.get("emvKeyProfileID"));
        this.y0 = f0.c(hashtable.get("emvKeyProfileID1"));
        this.z0 = f0.c(hashtable.get("emvKeyProfileID2"));
        this.A0 = f0.c(hashtable.get("emvKeyProfileID3"));
        this.B0 = f0.c(hashtable.get("emvKeyProfileID4"));
        this.C0 = f0.c(hashtable.get("trackKeyProfileID"));
        this.D0 = f0.c(hashtable.get("trackKeyProfileID1"));
        this.E0 = f0.c(hashtable.get("trackKeyProfileID2"));
        this.F0 = f0.c(hashtable.get("trackKeyProfileID3"));
        this.G0 = f0.c(hashtable.get("trackKeyProfileID4"));
        this.H0 = f0.c(hashtable.get("macKeyProfileID"));
        this.I0 = f0.c(hashtable.get("macKeyProfileID1"));
        this.J0 = f0.c(hashtable.get("macKeyProfileID2"));
        this.K0 = f0.c(hashtable.get("macKeyProfileID3"));
        this.L0 = f0.c(hashtable.get("macKeyProfileID4"));
        this.M0 = f0.c(hashtable.get("spocKeyProfileID"));
        this.N0 = f0.c(hashtable.get("cmacKeyProfileID"));
        try {
            if (hashtable.containsKey("isNewProtocol")) {
                this.Y = Boolean.parseBoolean(hashtable.get("isNewProtocol"));
            }
        } catch (Exception unused) {
        }
        boolean z = Boolean.parseBoolean(hashtable.get("isCharging"));
        this.Z = 0;
        if (z && this.Q.equalsIgnoreCase("")) {
            this.Z = 100;
            return;
        }
        if (this.c.equalsIgnoreCase(f0.a("CHB24")) || this.c.equalsIgnoreCase(f0.a("CHB25")) || this.c.equalsIgnoreCase(f0.a("CHB26")) || this.c.equalsIgnoreCase(f0.a("CHB27")) || this.c.equalsIgnoreCase(f0.a("CHB2B")) || this.c.equalsIgnoreCase(f0.a("CHB2C")) || this.c.equalsIgnoreCase(f0.a("CHB2D")) || this.c.equalsIgnoreCase(f0.a("CHB2E")) || this.c.equalsIgnoreCase(f0.a("CHB2G")) || this.c.equalsIgnoreCase(f0.a("SPP02")) || this.c.equalsIgnoreCase(f0.a("TOT10")) || this.c.equalsIgnoreCase(f0.a("SMH10"))) {
            this.Z = 100;
        } else if (this.P.isEmpty() && this.Q.isEmpty()) {
            this.Z = 100;
        } else {
            try {
                this.Z = Integer.parseInt(this.Q);
            } catch (Exception unused2) {
            }
        }
    }

    int a() {
        return this.Z;
    }

    String b() {
        return this.M;
    }

    String c() {
        return this.a0;
    }

    String d() {
        return this.C;
    }

    String e() {
        return this.l0;
    }

    String f() {
        return this.O;
    }

    String g() {
        return this.W;
    }

    String h() {
        return this.c;
    }

    String i() {
        return this.F;
    }

    String j() {
        return this.X;
    }

    public String toString() {
        return "DeviceInfoData{deviceInfo=" + this.b + ", productID='" + this.c + "', vendorID='" + this.d + "', uid='" + this.e + "', pinKsn='" + this.f + "', pinKsn1='" + this.g + "', pinKsn2='" + this.h + "', pinKsn3='" + this.i + "', pinKsn4='" + this.j + "', trackKsn='" + this.k + "', trackKsn1='" + this.l + "', trackKsn2='" + this.m + "', trackKsn3='" + this.n + "', trackKsn4='" + this.o + "', emvKsn='" + this.p + "', emvKsn1='" + this.q + "', emvKsn2='" + this.r + "', emvKsn3='" + this.s + "', emvKsn4='" + this.t + "', macKsn='" + this.u + "', macKsn1='" + this.v + "', macKsn2='" + this.w + "', macKsn3='" + this.x + "', macKsn4='" + this.y + "', nfcKsn='" + this.z + "', messageKsn='" + this.A + "', cmacKsn='" + this.B + "', pinKeyProfileID='" + this.s0 + "', pinKeyProfileID1='" + this.t0 + "', pinKeyProfileID2='" + this.u0 + "', pinKeyProfileID3='" + this.v0 + "', pinKeyProfileID4='" + this.w0 + "', trackKeyProfileID='" + this.C0 + "', trackKeyProfileID1='" + this.D0 + "', trackKeyProfileID2='" + this.E0 + "', trackKeyProfileID3='" + this.F0 + "', trackKeyProfileID4='" + this.G0 + "', emvKeyProfileID='" + this.x0 + "', emvKeyProfileID1='" + this.y0 + "', emvKeyProfileID2='" + this.z0 + "', emvKeyProfileID3='" + this.A0 + "', emvKeyProfileID4='" + this.B0 + "', macKeyProfileID='" + this.H0 + "', macKeyProfileID1='" + this.I0 + "', macKeyProfileID2='" + this.J0 + "', macKeyProfileID3='" + this.K0 + "', macKeyProfileID4='" + this.L0 + "', spocKeyProfileID='" + this.M0 + "', cmacKeyProfileID='" + this.N0 + "', firmwareVersion='" + this.C + "', coprocessorVersion='" + this.D + "', mainProcessorVersion='" + this.E + "', terminalSettingVersion='" + this.F + "', deviceSettingVersion='" + this.G + "', formatID='" + this.H + "', isSupportedTrack1='" + this.I + "', isSupportedTrack2='" + this.J + "', isSupportedTrack3='" + this.K + "', isSupportedNfc='" + this.L + "', bootloaderVersion='" + this.M + "', isUsbConnected='" + this.N + "', isCharging='" + this.O + "', batteryLevel='" + this.P + "', batteryPercentage='" + this.Q + "', hardwareVersion='" + this.R + "', csn='" + this.S + "', coprocessorBootloaderVersion='" + this.T + "', serialNumber='" + this.U + "', modelName='" + this.V + "', mcuInfo='" + this.W + "', bID='" + this.X + "', isNewProtocol=" + this.Y + ", batteryPercentageInt=" + this.Z + ", deviceTamperStatus='" + this.a0 + "', publicKeyVersion='" + this.b0 + "', caKeyVersion='" + this.c0 + "', firmwareID='" + this.d0 + "', bootloaderID='" + this.e0 + "', healthCheckStatus='" + this.f0 + "', internalTamperState='" + this.g0 + "', emvKeyModulusHash='" + this.h0 + "', trackKeyModulusHash='" + this.i0 + "', defaultLanguage='" + this.j0 + "', supportedLanguages='" + this.k0 + "', fskPublicKeyHash='" + this.l0 + "', mmk1PublicKeyHash='" + this.m0 + "', mmk0PublicKeyHash='" + this.n0 + "', tmk0CmacKcv='" + this.o0 + "', tmk1CmacKcv='" + this.p0 + "', tmk2CmacKcv='" + this.q0 + "', tmk3CmacKcv='" + this.r0 + "'}";
    }

    JSONObject a(Date date) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("APIVersion_OTAController", BBDeviceOTAController.getApiVersion());
            jSONObject.put("APIVersion_BBDeviceController", BBDeviceController.getApiVersion());
            jSONObject.put("bID", this.X);
            jSONObject.put("serialNumber", this.U);
            jSONObject.put("firmwareVersion", this.C);
            jSONObject.put("uid", this.e);
            jSONObject.put("mcuInfo", this.W);
            jSONObject.put("deviceTamperStatus", this.a0);
            jSONObject.put("bootloaderVersion", this.M);
            jSONObject.put("terminalSettingVersion", this.F);
            jSONObject.put("publicKeyVersion", this.b0);
            jSONObject.put("caKeyVersion", this.c0);
            jSONObject.put("firmwareID", this.d0);
            jSONObject.put("bootloaderID", this.e0);
            jSONObject.put("healthCheckStatus", this.f0);
            jSONObject.put("internalTamperState", this.g0);
            jSONObject.put("hardwareVersion", this.R);
            jSONObject.put("pinKsn", this.f);
            jSONObject.put("pinKsn1", this.g);
            jSONObject.put("pinKsn2", this.h);
            jSONObject.put("pinKsn3", this.i);
            jSONObject.put("pinKsn4", this.j);
            jSONObject.put("trackKsn", this.k);
            jSONObject.put("trackKsn1", this.l);
            jSONObject.put("trackKsn2", this.m);
            jSONObject.put("trackKsn3", this.n);
            jSONObject.put("trackKsn4", this.o);
            jSONObject.put("emvKsn", this.p);
            jSONObject.put("emvKsn1", this.q);
            jSONObject.put("emvKsn2", this.r);
            jSONObject.put("emvKsn3", this.s);
            jSONObject.put("emvKsn4", this.t);
            jSONObject.put("macKsn", this.u);
            jSONObject.put("macKsn1", this.v);
            jSONObject.put("macKsn2", this.w);
            jSONObject.put("macKsn3", this.x);
            jSONObject.put("macKsn4", this.y);
            jSONObject.put("nfcKsn", this.z);
            jSONObject.put("messageKsn", this.A);
            jSONObject.put("cmacKsn", this.B);
            jSONObject.put("pinKeyProfileID", this.s0);
            jSONObject.put("pinKeyProfileID1", this.t0);
            jSONObject.put("pinKeyProfileID2", this.u0);
            jSONObject.put("pinKeyProfileID3", this.v0);
            jSONObject.put("pinKeyProfileID4", this.w0);
            jSONObject.put("emvKeyProfileID", this.x0);
            jSONObject.put("emvKeyProfileID1", this.y0);
            jSONObject.put("emvKeyProfileID2", this.z0);
            jSONObject.put("emvKeyProfileID3", this.A0);
            jSONObject.put("emvKeyProfileID4", this.B0);
            jSONObject.put("trackKeyProfileID", this.C0);
            jSONObject.put("trackKeyProfileID1", this.D0);
            jSONObject.put("trackKeyProfileID2", this.E0);
            jSONObject.put("trackKeyProfileID3", this.F0);
            jSONObject.put("trackKeyProfileID4", this.G0);
            jSONObject.put("macKeyProfileID", this.H0);
            jSONObject.put("macKeyProfileID1", this.I0);
            jSONObject.put("macKeyProfileID2", this.J0);
            jSONObject.put("macKeyProfileID3", this.K0);
            jSONObject.put("macKeyProfileID4", this.L0);
            jSONObject.put("spocKeyProfileID", this.M0);
            jSONObject.put("cmacKeyProfileID", this.N0);
            jSONObject.put("emvKeyModulusHash", this.h0);
            jSONObject.put("trackKeyModulusHash", this.i0);
            jSONObject.put("fskPublicKeyHash", this.l0);
            jSONObject.put("mmk1PublicKeyHash", this.m0);
            jSONObject.put("mmk0PublicKeyHash", this.n0);
            jSONObject.put("tmk0CmacKcv", this.o0);
            jSONObject.put("tmk1CmacKcv", this.p0);
            jSONObject.put("tmk2CmacKcv", this.q0);
            jSONObject.put("tmk3CmacKcv", this.r0);
            jSONObject.put("android_systemVersion", Build.VERSION.RELEASE);
            jSONObject.put("android_model", Build.MODEL);
            jSONObject.put("android_manufacturer", Build.MANUFACTURER);
            jSONObject.put("android_ro_build_fingerprint", f0.b("ro.build.fingerprint", ""));
            jSONObject.put("android_ro_build_flavor", f0.b("ro.build.flavor", ""));
            jSONObject.put("android_ro_build_host", f0.b("ro.build.host", ""));
            jSONObject.put("android_ro_build_sw_version", f0.b("ro.build.sw.version", ""));
            jSONObject.put("android_ro_build_custom_version", f0.b("ro.build.custom.version", ""));
            jSONObject.put("batteryLevel", this.P);
            jSONObject.put("batteryPercentage", this.Q);
            jSONObject.put("csn", this.S);
            jSONObject.put("modelName", this.V);
            y yVar = this.a;
            if (yVar != null) {
                if (yVar.l() == BBDeviceController.ConnectionMode.AUDIO) {
                    jSONObject.put("commChannel", "Audio");
                } else if (this.a.l() == BBDeviceController.ConnectionMode.BLUETOOTH) {
                    jSONObject.put("commChannel", "BT");
                } else if (this.a.l() == BBDeviceController.ConnectionMode.USB) {
                    jSONObject.put("commChannel", "USB");
                } else if (this.a.l() == BBDeviceController.ConnectionMode.SERIAL) {
                    jSONObject.put("commChannel", "Serial");
                } else {
                    jSONObject.put("commChannel", "Unknown");
                }
            }
            jSONObject.put("phoneSystemTime", new SimpleDateFormat("yy-MM-dd HH:mm:ss z", Locale.US).format(date));
            jSONObject.put("productID", this.c);
            jSONObject.put("vendorID", this.d);
            jSONObject.put("formatID", this.H);
            jSONObject.put("coprocessorVersion", this.D);
            jSONObject.put("mainProcessorVersion", this.E);
            jSONObject.put("deviceSettingVersion", this.G);
            jSONObject.put("isSupportedTrack1", this.I);
            jSONObject.put("isSupportedTrack2", this.J);
            jSONObject.put("isSupportedTrack3", this.K);
            jSONObject.put("isSupportedNfc", this.L);
            jSONObject.put("isUsbConnected", this.N);
            jSONObject.put("isCharging", this.O);
            jSONObject.put("coprocessorBootloaderVersion", this.T);
            jSONObject.put("BBDeviceControllerName", "BBDeviceController");
            jSONObject.put("defaultLanguage", this.j0);
            jSONObject.put("supportedLanguages", this.k0);
            Hashtable<String, String> hashtable = this.b;
            if (hashtable != null) {
                Object[] array = hashtable.keySet().toArray();
                Arrays.sort(array);
                for (Object obj : array) {
                    jSONObject.put((String) obj, this.b.get(obj));
                }
            }
        } catch (JSONException | Exception unused) {
        }
        return jSONObject;
    }
}
