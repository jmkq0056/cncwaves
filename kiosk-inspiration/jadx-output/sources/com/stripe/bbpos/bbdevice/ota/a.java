package com.stripe.bbpos.bbdevice.ota;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import com.google.firebase.perf.FirebasePerformance;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.bbpos.bbdevice.ota.i0;
import com.stripe.bbpos.bbdevice.ota.y;
import com.stripe.hardware.emv.TlvMap;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
class a {
    private static int C1 = 0;
    private static int D1 = 0;
    private static int E1 = 0;
    private static int F1 = 0;
    private static BBDeviceOTAController R = null;
    static String S = "";
    static int T = 0;
    private static boolean U = false;
    private static boolean V = false;
    private static boolean W = false;
    private static String X = "";
    private static String Y = "";
    private static int Z = 0;
    private static ByteArrayOutputStream a0 = null;
    private static int b0 = 0;
    private static String c0 = "";
    private static String d0 = "";
    private static String e0 = "";
    private static List<ByteArrayOutputStream> f0 = null;
    private static int g0 = 0;
    private static int h0 = 0;
    private static String i0 = "";
    private static String j0 = "";
    private static String k0 = "";
    private static String l0 = "";
    private static String m0 = "";
    private static String n0 = "";
    private static boolean o0 = false;
    private static String p0 = "";
    private static Hashtable<String, Object> q0;
    private static byte[] x1;
    private static byte[] y1;
    private C0045a J;
    private i0 K;
    private z L;
    private Proxy M;
    Handler N;
    HandlerThread O;
    Handler P;
    HandlerThread Q;
    private Context a;
    private BBDeviceController b;
    private static BBDeviceOTAController.TargetVersionType r0 = BBDeviceOTAController.TargetVersionType.FIRMWARE;
    private static String s0 = "";
    private static String t0 = "";
    private static String u0 = "";
    private static String v0 = "";
    private static String w0 = "";
    private static String x0 = "";
    private static BBDeviceOTAController.b y0 = BBDeviceOTAController.b.REMOTE;
    private static String z0 = "";
    private static String A0 = "";
    private static String B0 = "";
    private static String C0 = "";
    private static byte[] D0 = new byte[0];
    private static byte[] E0 = new byte[0];
    private static String F0 = "";
    private static String G0 = "";
    private static byte[] H0 = null;
    private static String I0 = "";
    private static String J0 = "";
    private static String K0 = "";
    private static String L0 = "";
    private static String M0 = "";
    private static String N0 = "";
    private static String O0 = "";
    private static String P0 = "";
    private static String Q0 = "";
    private static String R0 = "";
    private static String S0 = "";
    private static String T0 = "";
    private static String U0 = "";
    private static String V0 = "";
    private static String W0 = "";
    private static String X0 = "";
    private static String Y0 = "";
    private static String Z0 = "";
    private static String a1 = "";
    private static String b1 = "";
    private static String c1 = "";
    private static String d1 = "";
    private static String e1 = "";
    private static String f1 = "";
    private static String g1 = "";
    private static String h1 = "";
    private static String i1 = "";
    private static String j1 = "";
    private static String k1 = "";
    private static String l1 = "";
    private static String m1 = "";
    private static String n1 = "";
    private static String o1 = "";
    private static String p1 = "";
    private static String q1 = "";
    private static String r1 = "";
    private static String s1 = "";
    private static String t1 = "";
    private static String u1 = "";
    private static String v1 = "";
    private static String w1 = "";
    private static String z1 = "";
    private static String A1 = "";
    private static String B1 = "";
    private static final Object G1 = new Object();
    private static final Object H1 = new Object();
    private static int I1 = 0;
    private static boolean J1 = false;
    private static final String K1 = a.class.getName();
    private String c = "";
    private String d = "";
    private String e = "";
    private String f = "";
    private String g = "";
    private String h = "";
    private String i = "";
    private String j = "";
    private String k = "";
    private String l = "";
    private String m = "";
    private String n = "";
    private String o = "";
    private String p = "";
    private String q = "";
    private String r = "";
    private String s = "";
    private String t = "";
    private String u = "";
    private String v = "";
    private String w = "";
    private String x = "";
    private String y = "";
    private String z = "";
    private String A = "";
    private String B = "";
    private String C = "";
    private String D = "";
    private String E = "";
    private String F = "";
    private String G = "";
    private boolean H = true;
    private String I = "";

    /* JADX INFO: renamed from: com.stripe.bbpos.bbdevice.ota.a$a, reason: collision with other inner class name */
    class C0045a extends Thread {
        private boolean a = false;

        C0045a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            for (int i = 0; i < 10 && !this.a; i++) {
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException unused) {
                }
            }
            if (this.a) {
                return;
            }
            a.this.d();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            a.this.c("[PollingThread] [clear]");
            this.a = true;
        }
    }

    a(Context context, BBDeviceOTAController bBDeviceOTAController) {
        HandlerThread handlerThread = new HandlerThread("BBDeviceOTA-Thread");
        this.O = handlerThread;
        handlerThread.start();
        this.N = new Handler(this.O.getLooper());
        HandlerThread handlerThread2 = new HandlerThread("BBDeviceOTA-Notify-Thread");
        this.Q = handlerThread2;
        handlerThread2.start();
        this.P = new Handler(this.Q.getLooper());
        this.a = context;
        R = bBDeviceOTAController;
        this.L = new z();
        this.K = new i0();
    }

    private void A() {
        String strB = e0.b(C0, A0);
        Locale locale = Locale.ROOT;
        d((("" + f0.d("DF2F", "8CBC")) + f0.d("DF6F", strB.toUpperCase(locale))) + f0.d("DF71", e0.b("0000000000000000", C0).toUpperCase(locale).substring(0, 6)));
    }

    private void B() {
        String str = "" + f0.d("DF2F", "8C86");
        String hexString = Integer.toHexString(C1);
        while (hexString.length() < 4) {
            hexString = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString;
        }
        String str2 = str + f0.d("DF6B", hexString);
        String hexString2 = Integer.toHexString(g0);
        while (hexString2.length() < 8) {
            hexString2 = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString2;
        }
        d(((str2 + f0.d("DF6E", hexString2)) + f0.d("DF72", f0.a("0000" + hexString + hexString2 + G0, C0))) + f0.d("DF8600", F0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public void s() {
        c("[login]");
        r.c("[BBDeviceOTA] [login]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("VendorID", i0);
            jSONObject.put("VendorSecret", k0);
            jSONObject.put("AppID", j0);
            jSONObject.put("AppSecret", l0);
        } catch (JSONException unused) {
        }
        a(S + "Login", jSONObject, 0);
    }

    private void D() {
        c("[sendNextSegment]");
        r.c("[BBDeviceOTA] [sendNextSegment]");
        r.c("[BBDeviceOTA] [sendNextSegment] firmwareIndex : " + g0 + ", encryptedFirmware.length : " + x1.length);
        if (g0 >= x1.length) {
            if (U) {
                a(BBDeviceOTAController.OTAResult.STOPPED, "");
                return;
            } else {
                a(98);
                H();
                return;
            }
        }
        F1 = 512;
        if (U) {
            a(BBDeviceOTAController.OTAResult.STOPPED, "");
            return;
        }
        a(-1);
        String str = "" + f0.d("DF2F", "8C84");
        String hexString = Integer.toHexString(C1);
        while (hexString.length() < 4) {
            hexString = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString;
        }
        String str2 = str + f0.d("DF6B", hexString);
        String hexString2 = Integer.toHexString(g0);
        while (hexString2.length() < 8) {
            hexString2 = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString2;
        }
        String str3 = str2 + f0.d("DF69", hexString2);
        int iMin = Math.min(F1, x1.length - g0);
        byte[] bArr = new byte[iMin];
        System.arraycopy(x1, g0, bArr, 0, iMin);
        String str4 = str3 + f0.d("DF6C", f0.a(bArr));
        int iMin2 = Math.min(8, y1.length - h0);
        byte[] bArr2 = new byte[iMin2];
        System.arraycopy(y1, h0, bArr2, 0, iMin2);
        String str5 = str4 + f0.d("DF6D", f0.a(bArr2));
        g0 += iMin;
        h0 += iMin2;
        d(str5);
    }

    private void E() {
        c("[sendTMACKAndKcv]");
        r.c("[BBDeviceOTA] [sendTMACKAndKcv]");
        d((("" + f0.d("DF2F", "8C5E")) + f0.d("DF6F", d0)) + f0.d("DF71", R0));
    }

    private void F() {
        c("[sendTPEKAndKcv]");
        r.c("[BBDeviceOTA] [sendTPEKAndKcv]");
        d((("" + f0.d("DF2F", "8C56")) + f0.d("DF6F", z1)) + f0.d("DF71", B1));
    }

    private void G() {
        c("[setTargetVersion]");
        r.c("[BBDeviceOTA] [setTargetVersion]");
        JSONObject jSONObjectJ = j();
        try {
            if (r0 == BBDeviceOTAController.TargetVersionType.FIRMWARE) {
                jSONObjectJ.put("ListType", TlbConst.TYPELIB_MINOR_VERSION_SHELL);
            } else if (r0 == BBDeviceOTAController.TargetVersionType.CONFIG) {
                jSONObjectJ.put("ListType", "1");
            } else {
                jSONObjectJ.put("ListType", "2");
            }
            String str = s0;
            if (str != null && !str.equalsIgnoreCase("")) {
                jSONObjectJ.put("FirmwareVersion", s0);
            }
            String str2 = u0;
            if (str2 != null && !str2.equalsIgnoreCase("")) {
                jSONObjectJ.put("DeviceSettingVersion", u0);
            }
            String str3 = t0;
            if (str3 != null && !str3.equalsIgnoreCase("")) {
                jSONObjectJ.put("TerminalSettingVersion", t0);
            }
            String str4 = v0;
            if (str4 != null && !str4.equalsIgnoreCase("")) {
                jSONObjectJ.put("MainProcessorVersion", v0);
            }
            String str5 = w0;
            if (str5 != null && !str5.equalsIgnoreCase("")) {
                jSONObjectJ.put("CoprocessorVersion", w0);
            }
            String str6 = x0;
            if (str6 != null && !str6.equalsIgnoreCase("")) {
                jSONObjectJ.put("KeyName", x0);
            }
        } catch (Exception unused) {
        }
        a(S + "SetTargetVersion", jSONObjectJ, 0);
    }

    private void H() {
        c("[signFirmware]");
        r.c("[BBDeviceOTA] [signFirmware]");
        String str = "" + f0.d("DF2F", "8C86");
        String hexString = Integer.toHexString(C1);
        while (hexString.length() < 4) {
            hexString = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString;
        }
        String str2 = str + f0.d("DF6B", hexString);
        String hexString2 = Integer.toHexString(E1);
        while (hexString2.length() < 8) {
            hexString2 = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString2;
        }
        d((str2 + f0.d("DF6E", hexString2)) + f0.d("DF72", A1));
    }

    private void I() {
        K();
        C0045a c0045a = new C0045a();
        this.J = c0045a;
        c0045a.start();
    }

    private void K() {
        C0045a c0045a = this.J;
        if (c0045a != null) {
            c0045a.a();
            this.J = null;
        }
    }

    private void L() {
        q0 = this.L.c();
        byte[] bArr = new byte[24];
        new Random().nextBytes(bArr);
        q0.put("dekBDK", f0.a(bArr));
        y0 = BBDeviceOTAController.b.LOCAL;
        int i = T;
        if (i == 2) {
            C1 = 4;
        } else if (i == 3) {
            C1 = 18;
        }
        this.L.b(true);
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void r() {
        c("[getKek]");
        r.c("[BBDeviceOTA] [getKek]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uid", this.e);
            jSONObject.put("bid", this.G);
        } catch (JSONException unused) {
        }
        a(S.replace("tms1/", "tms1/sdk/terminals/") + "key-getter", jSONObject, 0);
    }

    private void l() {
        c("[getOTAToken]");
        r.c("[BBDeviceOTA] [getOTAToken]");
        JSONObject jSONObjectJ = j();
        try {
            if (T != 5) {
                jSONObjectJ.put("UserOTAToken", m0);
                jSONObjectJ.put("ForceUpdate", o0);
            }
        } catch (JSONException unused) {
        }
        a(S + "GetToken", jSONObjectJ, 0);
    }

    private void m() {
        c("[getTCert]");
        r.c("[BBDeviceOTA] [getTCert]");
        Z = 0;
        d(("" + f0.d("DF2F", "8C78")) + f0.d("DF75", TlvMap.SET_BUZZER_ENABLED_VALUE + f0.a((byte) (Z + 1))));
    }

    private void n() {
        c("[getTSK]");
        r.c("[BBDeviceOTA] [getTSK]");
        d("" + f0.d("DF2F", "8C62"));
    }

    private void o() {
        c("[getTargetVersionList]");
        r.c("[BBDeviceOTA] [getTargetVersionList]");
        JSONObject jSONObjectJ = j();
        try {
            if (r0 == BBDeviceOTAController.TargetVersionType.FIRMWARE) {
                jSONObjectJ.put("ListType", TlbConst.TYPELIB_MINOR_VERSION_SHELL);
            } else if (r0 == BBDeviceOTAController.TargetVersionType.CONFIG) {
                jSONObjectJ.put("ListType", "1");
            } else {
                jSONObjectJ.put("ListType", "2");
            }
        } catch (Exception unused) {
        }
        a(S + "GetTargetVersionList", jSONObjectJ, 0);
    }

    private void p() {
        c("[injectNextDUKPTKsn]");
        r.c("[BBDeviceOTA] [injectNextDUKPTKsn]");
        if (!Z0.equals("") && !r1.equalsIgnoreCase("000000")) {
            String str = ((((("" + f0.d("DF2F", "8C68")) + f0.d("DF74", "010101")) + f0.d("DF70", T0)) + f0.d("DF6F", Z0)) + f0.d("DF71", f1)) + f0.d("DF72", l1);
            Z0 = "";
            T0 = "";
            r1 = "";
            d(str);
            return;
        }
        if (!a1.equals("") && !s1.equalsIgnoreCase("000000")) {
            String str2 = ((((("" + f0.d("DF2F", "8C68")) + f0.d("DF74", "010202")) + f0.d("DF70", U0)) + f0.d("DF6F", a1)) + f0.d("DF71", g1)) + f0.d("DF72", m1);
            a1 = "";
            U0 = "";
            s1 = "";
            d(str2);
            return;
        }
        if (!b1.equals("") && !t1.equalsIgnoreCase("000000")) {
            String str3 = ((((("" + f0.d("DF2F", "8C68")) + f0.d("DF74", "010303")) + f0.d("DF70", V0)) + f0.d("DF6F", b1)) + f0.d("DF71", h1)) + f0.d("DF72", n1);
            b1 = "";
            V0 = "";
            t1 = "";
            d(str3);
            return;
        }
        if (!c1.equals("") && !u1.equalsIgnoreCase("000000")) {
            String str4 = ((((("" + f0.d("DF2F", "8C68")) + f0.d("DF74", "010404")) + f0.d("DF70", W0)) + f0.d("DF6F", c1)) + f0.d("DF71", i1)) + f0.d("DF72", o1);
            c1 = "";
            W0 = "";
            u1 = "";
            d(str4);
            return;
        }
        if (!d1.equals("") && !v1.equalsIgnoreCase("000000")) {
            String str5 = ((((("" + f0.d("DF2F", "8C68")) + f0.d("DF74", "010505")) + f0.d("DF70", X0)) + f0.d("DF6F", d1)) + f0.d("DF71", j1)) + f0.d("DF72", p1);
            d1 = "";
            X0 = "";
            v1 = "";
            d(str5);
            return;
        }
        if (e1.equals("") || w1.equalsIgnoreCase("000000")) {
            h();
            return;
        }
        String str6 = ((((("" + f0.d("DF2F", "8C68")) + f0.d("DF74", "010606")) + f0.d("DF70", Y0)) + f0.d("DF6F", e1)) + f0.d("DF71", k1)) + f0.d("DF72", q1);
        e1 = "";
        Y0 = "";
        w1 = "";
        d(str6);
    }

    private void t() {
        String strB = e0.b(B0, A0);
        Locale locale = Locale.ROOT;
        d((("" + f0.d("DF2F", "8CBA")) + f0.d("DF6F", strB.toUpperCase(locale))) + f0.d("DF71", e0.b("0000000000000000", B0).toUpperCase(locale).substring(0, 6)));
    }

    private void u() {
        if (!this.L.e().equalsIgnoreCase("")) {
            String strA = e0.a(this.L.e(), this.L.d());
            A0 = strA;
            A0 = strA.toUpperCase(Locale.ROOT);
            a(2);
            x();
            return;
        }
        String str = this.e;
        if (str == null || str.equals("") || this.e.length() < 24) {
            a(BBDeviceOTAController.OTAResult.SETUP_ERROR, "UID incorrect");
            return;
        }
        String strC = e0.c(this.e.substring(0, 24) + this.e.substring(0, 24), z0);
        A0 = strC;
        A0 = strC.toUpperCase(Locale.ROOT);
        a(2);
        x();
    }

    private void v() {
        String str = "" + f0.d("DF2F", "8CBE");
        String hexString = Integer.toHexString(C1);
        while (hexString.length() < 4) {
            hexString = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString;
        }
        String str2 = str + f0.d("DF6B", hexString);
        if (H0 != null) {
            if (this.G.startsWith("CHB1") || this.G.startsWith("CHB7")) {
                List<b0> listA = c0.a(f0.a(H0));
                int i = 0;
                while (true) {
                    if (i < listA.size()) {
                        if (listA.get(i).a.equalsIgnoreCase("DF861D") && ((this.l.startsWith("2.00.03.03") || this.l.startsWith("2.00.03.04") || this.l.startsWith("2.00.03.05")) && listA.get(i).c.equalsIgnoreCase("43484231"))) {
                            listA.get(i).c = "43484237";
                            H0 = f0.i(f0.a(listA));
                            break;
                        }
                        i++;
                    } else {
                        break;
                    }
                }
            }
            str2 = str2 + f0.a(H0);
        }
        d(str2);
    }

    private void w() {
        T = 0;
        U = false;
        V = false;
        I1 = 0;
    }

    private void x() {
        B0 = f0.a(24);
        C0 = f0.a(24);
        byte[] bArrC = e0.c(D0, f0.i(B0));
        E0 = bArrC;
        G0 = f0.a(f0.a(bArrC), C0);
        a(3);
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0338, code lost:
    
        u();
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x033b, code lost:
    
        return;
     */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void q() {
        /*
            Method dump skipped, instruction units count: 1214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.ota.a.q():void");
    }

    private void z() {
        r.c("[BBDeviceOTA] [localUpdateSendNextSegment] firmwareIndex : " + g0 + ", localUpdateEncryptedHex.length : " + D0.length);
        if (g0 >= D0.length) {
            if (U) {
                a(BBDeviceOTAController.OTAResult.STOPPED, "");
                return;
            } else {
                a(98);
                B();
                return;
            }
        }
        F1 = 512;
        if (U) {
            a(BBDeviceOTAController.OTAResult.STOPPED, "");
            return;
        }
        a(-1);
        String str = "" + f0.d("DF2F", "8C84");
        String hexString = Integer.toHexString(C1);
        while (hexString.length() < 4) {
            hexString = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString;
        }
        String str2 = str + f0.d("DF6B", hexString);
        String hexString2 = Integer.toHexString(g0);
        while (hexString2.length() < 8) {
            hexString2 = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString2;
        }
        String str3 = str2 + f0.d("DF69", hexString2);
        int iMin = Math.min(F1, E0.length - g0);
        byte[] bArr = new byte[iMin];
        System.arraycopy(E0, g0, bArr, 0, iMin);
        String strA = f0.a(bArr);
        String str4 = (str3 + f0.d("DF6C", strA)) + f0.d("DF6D", f0.a(strA, C0));
        g0 += iMin;
        d(str4);
    }

    void J() {
        if (T != 0) {
            U = true;
        } else {
            r.a("", "[BBDeviceOTA] [stop] throw IllegalStateException \"BBDeviceOTAController is in idle state\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalStateException("BBDeviceOTAController is in idle state");
        }
    }

    void b(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        c("[getTargetVersionListWithData]");
        if (this.b == null) {
            r.a("", "[BBDeviceOTA] [getTargetVersionListWithData] throw BBDeviceControllerNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceControllerNotSetException();
        }
        String str = S;
        if (str == null || str.equals("")) {
            r.a("", "[BBDeviceOTA] [getTargetVersionListWithData] throw OTAServerURLNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new OTAServerURLNotSetException();
        }
        if (this.b.getConnectionMode() == BBDeviceController.ConnectionMode.NONE) {
            r.a("", "[BBDeviceOTA] [getTargetVersionListWithData] throw BBDeviceNotConnectedException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceNotConnectedException();
        }
        if (T != 0) {
            r.a("", "[BBDeviceOTA] [getTargetVersionListWithData] throw IllegalStateException \"BBDeviceOTAController is in not idle state\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalStateException("BBDeviceOTAController is in not idle state");
        }
        try {
            e(hashtable);
            if (hashtable.containsKey("listType")) {
                r0 = (BBDeviceOTAController.TargetVersionType) hashtable.get("listType");
            } else if (hashtable.containsKey("targetVersionType")) {
                r0 = (BBDeviceOTAController.TargetVersionType) hashtable.get("targetVersionType");
            } else {
                r0 = null;
            }
            String str2 = (String) hashtable.get("otaToken");
            m0 = str2;
            o0 = false;
            if (str2 == null) {
                str2 = "";
            }
            m0 = str2;
            if (i0 == null) {
                r.a("", "[BBDeviceOTA] [getTargetVersionListWithData] throw IllegalArgumentException \"Missing vendorID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing vendorID");
            }
            if (j0 == null) {
                r.a("", "[BBDeviceOTA] [getTargetVersionListWithData] throw IllegalArgumentException \"Missing appID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing appID");
            }
            if (k0 == null) {
                r.a("", "[BBDeviceOTA] [getTargetVersionListWithData] throw IllegalArgumentException \"Missing vendorSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing vendorSecret");
            }
            if (l0 == null) {
                r.a("", "[BBDeviceOTA] [getTargetVersionListWithData] throw IllegalArgumentException \"Missing appSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing appSecret");
            }
            if (r0 == null) {
                r.a("", "[BBDeviceOTA] [getTargetVersionListWithData] throw IllegalArgumentException \"Missing targetVersionType\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing targetVersionType");
            }
            Object obj = hashtable.get("networkChecking");
            if (obj != null) {
                f0.a(obj);
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.a.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                r.a("", "[BBDeviceOTA] [getTargetVersionListWithData] throw NoInternetConnectionException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new NoInternetConnectionException();
            }
            T = 6;
            a0 = new ByteArrayOutputStream();
            U = false;
            V = false;
            a();
            X = "";
            Y = "";
            y0 = BBDeviceOTAController.b.REMOTE;
            I1 = 0;
            J1 = true;
            this.L.a(hashtable, y.b.GET_TARGET_VERSION_LIST);
            BBDeviceController bBDeviceController = this.b;
            if (bBDeviceController != null) {
                bBDeviceController.internalFunction4();
            }
        } catch (Exception unused) {
            r.a("", "[BBDeviceOTA] [getTargetVersionListWithData] throw IllegalArgumentException \"Input error\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalArgumentException("Input error");
        }
    }

    void c(Hashtable<String, String> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        c("[getTargetVersionWithData]");
        if (this.b == null) {
            r.a("", "[BBDeviceOTA] [getTargetVersionWithData] throw BBDeviceControllerNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceControllerNotSetException();
        }
        String str = S;
        if (str == null || str.equals("")) {
            r.a("", "[BBDeviceOTA] [getTargetVersionWithData] throw OTAServerURLNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new OTAServerURLNotSetException();
        }
        if (this.b.getConnectionMode() == BBDeviceController.ConnectionMode.NONE) {
            r.a("", "[BBDeviceOTA] [getTargetVersionWithData] throw BBDeviceNotConnectedException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceNotConnectedException();
        }
        if (T != 0) {
            r.a("", "[BBDeviceOTA] [getTargetVersionWithData] throw IllegalStateException \"BBDeviceOTAController is in not idle state\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalStateException("BBDeviceOTAController is in not idle state");
        }
        try {
            e(hashtable);
            String str2 = hashtable.get("otaToken");
            m0 = str2;
            o0 = false;
            if (str2 == null) {
                str2 = "";
            }
            m0 = str2;
            if (i0 == null) {
                r.a("", "[BBDeviceOTA] [getTargetVersionWithData] throw IllegalArgumentException \"Missing vendorID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing vendorID");
            }
            if (j0 == null) {
                r.a("", "[BBDeviceOTA] [getTargetVersionWithData] throw IllegalArgumentException \"Missing appID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing appID");
            }
            if (k0 == null) {
                r.a("", "[BBDeviceOTA] [getTargetVersionWithData] throw IllegalArgumentException \"Missing vendorSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing vendorSecret");
            }
            if (l0 == null) {
                r.a("", "[BBDeviceOTA] [getTargetVersionWithData] throw IllegalArgumentException \"Missing appSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing appSecret");
            }
            String str3 = hashtable.get("networkChecking");
            if (str3 != null) {
                f0.a((Object) str3);
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.a.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                r.a("", "[BBDeviceOTA] [getTargetVersionWithData] throw NoInternetConnectionException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new NoInternetConnectionException();
            }
            T = 5;
            a0 = new ByteArrayOutputStream();
            U = false;
            V = false;
            a();
            X = "";
            Y = "";
            y0 = BBDeviceOTAController.b.REMOTE;
            I1 = 0;
            J1 = true;
            this.L.b(hashtable, y.b.GET_TARGET_VERSION);
            BBDeviceController bBDeviceController = this.b;
            if (bBDeviceController != null) {
                bBDeviceController.internalFunction4();
            }
        } catch (Exception unused) {
            r.a("", "[BBDeviceOTA] [getTargetVersionWithData] throw IllegalArgumentException \"Input error\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalArgumentException("Input error");
        }
    }

    void d(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        c("[setTargetVersionWithData]");
        if (this.b == null) {
            r.a("", "[BBDeviceOTA] [setTargetVersionWithData] throw BBDeviceControllerNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceControllerNotSetException();
        }
        String str = S;
        if (str == null || str.equals("")) {
            r.a("", "[BBDeviceOTA] [setTargetVersionWithData] throw OTAServerURLNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new OTAServerURLNotSetException();
        }
        if (this.b.getConnectionMode() == BBDeviceController.ConnectionMode.NONE) {
            r.a("", "[BBDeviceOTA] [setTargetVersionWithData] throw BBDeviceNotConnectedException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceNotConnectedException();
        }
        if (T != 0) {
            r.a("", "[BBDeviceOTA] [setTargetVersionWithData] throw IllegalStateException \"BBDeviceOTAController is in not idle state\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalStateException("BBDeviceOTAController is in not idle state");
        }
        try {
            e(hashtable);
            if (hashtable.containsKey("listType")) {
                r0 = (BBDeviceOTAController.TargetVersionType) hashtable.get("listType");
            } else if (hashtable.containsKey("targetVersionType")) {
                r0 = (BBDeviceOTAController.TargetVersionType) hashtable.get("targetVersionType");
            } else {
                r0 = null;
            }
            s0 = (String) hashtable.get("firmwareVersion");
            t0 = (String) hashtable.get("terminalSettingVersion");
            u0 = (String) hashtable.get("deviceSettingVersion");
            v0 = (String) hashtable.get("mainProcessorVersion");
            w0 = (String) hashtable.get("coprocessorVersion");
            x0 = (String) hashtable.get("keyProfileName");
            String str2 = (String) hashtable.get("otaToken");
            m0 = str2;
            o0 = false;
            if (str2 == null) {
                str2 = "";
            }
            m0 = str2;
            String str3 = s0;
            if (str3 == null) {
                str3 = "";
            }
            s0 = str3;
            String str4 = t0;
            if (str4 == null) {
                str4 = "";
            }
            t0 = str4;
            String str5 = u0;
            if (str5 == null) {
                str5 = "";
            }
            u0 = str5;
            String str6 = v0;
            if (str6 == null) {
                str6 = "";
            }
            v0 = str6;
            String str7 = w0;
            if (str7 == null) {
                str7 = "";
            }
            w0 = str7;
            String str8 = x0;
            if (str8 == null) {
                str8 = "";
            }
            x0 = str8;
            if (i0 == null) {
                r.a("", "[BBDeviceOTA] [setTargetVersionWithData] throw IllegalArgumentException \"Missing vendorID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing vendorID");
            }
            if (j0 == null) {
                r.a("", "[BBDeviceOTA] [setTargetVersionWithData] throw IllegalArgumentException \"Missing appID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing appID");
            }
            if (k0 == null) {
                r.a("", "[BBDeviceOTA] [setTargetVersionWithData] throw IllegalArgumentException \"Missing vendorSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing vendorSecret");
            }
            if (l0 == null) {
                r.a("", "[BBDeviceOTA] [setTargetVersionWithData] throw IllegalArgumentException \"Missing appSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing appSecret");
            }
            if (r0 == null) {
                r.a("", "[BBDeviceOTA] [getTargetVersionListWithData] throw IllegalArgumentException \"Missing targetVersionType\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing targetVersionType");
            }
            Object obj = hashtable.get("networkChecking");
            if (obj != null) {
                f0.a(obj);
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.a.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                r.a("", "[BBDeviceOTA] [setTargetVersionWithData] throw NoInternetConnectionException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new NoInternetConnectionException();
            }
            T = 7;
            a0 = new ByteArrayOutputStream();
            U = false;
            V = false;
            a();
            X = "";
            Y = "";
            y0 = BBDeviceOTAController.b.REMOTE;
            I1 = 0;
            J1 = true;
            this.L.a(hashtable, y.b.SET_TARGET_VERSION);
            BBDeviceController bBDeviceController = this.b;
            if (bBDeviceController != null) {
                bBDeviceController.internalFunction4();
            }
        } catch (Exception unused) {
            r.a("", "[BBDeviceOTA] [setTargetVersionWithData] throw IllegalArgumentException \"Input error\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalArgumentException("Input error");
        }
    }

    void e(String str) throws IllegalArgumentException {
        if (str == null || str.equals("")) {
            r.a("", "[BBDeviceOTA] [setOTAServerURL] throw IllegalArgumentException \"Not a valid url\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalArgumentException("Not a valid url");
        }
        S = str;
    }

    void f(Hashtable<String, Object> hashtable) throws IllegalStateException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException {
        c("[startLocalConfigUpdateWithData]");
        BBDeviceController bBDeviceController = this.b;
        if (bBDeviceController == null) {
            r.a("", "[BBDeviceOTA] [startLocalConfigUpdateWithData] throw BBDeviceControllerNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceControllerNotSetException();
        }
        if (bBDeviceController.getConnectionMode() == BBDeviceController.ConnectionMode.NONE) {
            r.a("", "[BBDeviceOTA] [startLocalConfigUpdateWithData] throw BBDeviceNotConnectedException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceNotConnectedException();
        }
        if (T != 0) {
            r.a("", "[BBDeviceOTA] [startLocalConfigUpdateWithData] throw IllegalStateException \"BBDeviceOTAController is in not idle state\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalStateException("BBDeviceOTAController is in not idle state");
        }
        q0 = hashtable;
        T = 3;
        U = false;
        V = false;
        a();
        X = "";
        Y = "";
        y0 = BBDeviceOTAController.b.LOCAL;
        C1 = 18;
        I1 = 0;
        J1 = true;
        this.L.a(hashtable, y.b.LOCAL_CONFIG_UPDATE);
        BBDeviceController bBDeviceController2 = this.b;
        if (bBDeviceController2 != null) {
            bBDeviceController2.internalFunction4();
        }
    }

    void g(Hashtable<String, Object> hashtable) throws IllegalStateException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException {
        c("[startLocalFirmwareUpdateWithData]");
        BBDeviceController bBDeviceController = this.b;
        if (bBDeviceController == null) {
            r.a("", "[BBDeviceOTA] [startLocalFirmwareUpdateWithData] throw BBDeviceControllerNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceControllerNotSetException();
        }
        if (bBDeviceController.getConnectionMode() == BBDeviceController.ConnectionMode.NONE) {
            r.a("", "[BBDeviceOTA] [startLocalFirmwareUpdateWithData] throw BBDeviceNotConnectedException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceNotConnectedException();
        }
        if (T != 0) {
            r.a("", "[BBDeviceOTA] [startLocalFirmwareUpdateWithData] throw IllegalStateException \"BBDeviceOTAController is in not idle state\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalStateException("BBDeviceOTAController is in not idle state");
        }
        q0 = hashtable;
        T = 2;
        U = false;
        V = false;
        a();
        X = "";
        Y = "";
        y0 = BBDeviceOTAController.b.LOCAL;
        C1 = 4;
        I1 = 0;
        J1 = true;
        this.L.a(hashtable, y.b.LOCAL_FIRMWARE_UPDATE);
        BBDeviceController bBDeviceController2 = this.b;
        if (bBDeviceController2 != null) {
            bBDeviceController2.internalFunction4();
        }
    }

    void h(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        c("[startRemoteConfigUpdate]");
        if (this.b == null) {
            r.a("", "[BBDeviceOTA] [startRemoteConfigUpdate] throw BBDeviceControllerNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceControllerNotSetException();
        }
        String str = S;
        if (str == null || str.equals("")) {
            r.a("", "[BBDeviceOTA] [startRemoteConfigUpdate] throw OTAServerURLNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new OTAServerURLNotSetException();
        }
        if (this.b.getConnectionMode() == BBDeviceController.ConnectionMode.NONE) {
            r.a("", "[BBDeviceOTA] [startRemoteConfigUpdate] throw BBDeviceNotConnectedException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceNotConnectedException();
        }
        if (T != 0) {
            r.a("", "[BBDeviceOTA] [startRemoteConfigUpdate] throw IllegalStateException \"BBDeviceOTAController is in not idle state\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalStateException("BBDeviceOTAController is in not idle state");
        }
        try {
            e(hashtable);
            try {
                p0 = (String) hashtable.get("oem");
            } catch (Exception unused) {
            }
            m0 = (String) hashtable.get("otaToken");
            Object obj = hashtable.get("forceUpdate");
            if (obj == null) {
                o0 = false;
            } else if (obj instanceof Boolean) {
                o0 = ((Boolean) obj).booleanValue();
            } else if (obj instanceof String) {
                o0 = Boolean.parseBoolean((String) obj);
            }
            String str2 = m0;
            if (str2 == null) {
                str2 = "";
            }
            m0 = str2;
            if (i0 == null) {
                r.a("", "[BBDeviceOTA] [startRemoteConfigUpdate] throw IllegalArgumentException \"Missing vendorID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing vendorID");
            }
            if (j0 == null) {
                r.a("", "[BBDeviceOTA] [startRemoteConfigUpdate] throw IllegalArgumentException \"Missing appID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing appID");
            }
            if (k0 == null) {
                r.a("", "[BBDeviceOTA] [startRemoteConfigUpdate] throw IllegalArgumentException \"Missing vendorSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing vendorSecret");
            }
            if (l0 == null) {
                r.a("", "[BBDeviceOTA] [startRemoteConfigUpdate] throw IllegalArgumentException \"Missing appSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing appSecret");
            }
            Object obj2 = hashtable.get("networkChecking");
            if (obj2 != null) {
                f0.a(obj2);
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.a.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                r.a("", "[BBDeviceOTA] [startRemoteConfigUpdate] throw NoInternetConnectionException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new NoInternetConnectionException();
            }
            T = 3;
            a0 = new ByteArrayOutputStream();
            U = false;
            V = false;
            a();
            X = "";
            Y = "";
            y0 = BBDeviceOTAController.b.REMOTE;
            I1 = 0;
            J1 = true;
            this.L.a(hashtable, y.b.REMOTE_CONFIG_UPDATE);
            BBDeviceController bBDeviceController = this.b;
            if (bBDeviceController != null) {
                bBDeviceController.internalFunction4();
            }
        } catch (Exception unused2) {
            r.a("", "[BBDeviceOTA] [startRemoteConfigUpdate] throw IllegalArgumentException \"Input error\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalArgumentException("Input error");
        }
    }

    BBDeviceOTAController.BBDeviceOTAControllerState i() {
        return T == 0 ? BBDeviceOTAController.BBDeviceOTAControllerState.IDLE : BBDeviceOTAController.BBDeviceOTAControllerState.DEVICE_BUSY;
    }

    void j(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        c("[startRemoteKeyInjection]");
        if (this.b == null) {
            r.a("", "[BBDeviceOTA] [startRemoteKeyInjection] throw BBDeviceControllerNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceControllerNotSetException();
        }
        String str = S;
        if (str == null || str.equals("")) {
            r.a("", "[BBDeviceOTA] [startRemoteKeyInjection] throw OTAServerURLNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new OTAServerURLNotSetException();
        }
        if (this.b.getConnectionMode() == BBDeviceController.ConnectionMode.NONE) {
            r.a("", "[BBDeviceOTA] [startRemoteKeyInjection] throw BBDeviceNotConnectedException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceNotConnectedException();
        }
        if (T != 0) {
            r.a("", "[BBDeviceOTA] [startRemoteKeyInjection] throw IllegalStateException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalStateException("BBDeviceOTAController is in not idle state");
        }
        try {
            e(hashtable);
            m0 = (String) hashtable.get("otaToken");
            try {
                p0 = (String) hashtable.get("oem");
            } catch (Exception unused) {
            }
            String str2 = m0;
            if (str2 == null) {
                str2 = "";
            }
            m0 = str2;
            if (i0 == null) {
                r.a("", "[BBDeviceOTA] [startRemoteKeyInjection] throw IllegalArgumentException \"Missing vendorID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing vendorID");
            }
            if (j0 == null) {
                r.a("", "[BBDeviceOTA] [startRemoteKeyInjection] throw IllegalArgumentException \"Missing appID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing appID");
            }
            if (k0 == null) {
                r.a("", "[BBDeviceOTA] [startRemoteKeyInjection] throw IllegalArgumentException \"Missing vendorSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing vendorSecret");
            }
            if (l0 == null) {
                r.a("", "[BBDeviceOTA] [startRemoteKeyInjection] throw IllegalArgumentException \"issing appSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing appSecret");
            }
            Object obj = hashtable.get("networkChecking");
            if (obj != null) {
                f0.a(obj);
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.a.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                r.a("", "[BBDeviceOTA] [startRemoteKeyInjection] throw NoInternetConnectionException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new NoInternetConnectionException();
            }
            T = 1;
            a0 = new ByteArrayOutputStream();
            U = false;
            V = false;
            a();
            X = "";
            Y = "";
            y0 = BBDeviceOTAController.b.REMOTE;
            I1 = 0;
            J1 = true;
            this.L.a(hashtable, y.b.REMOTE_KEY_INJECTION);
            this.f = "";
            Z0 = "";
            T0 = "";
            r1 = "";
            this.h = "";
            a1 = "";
            U0 = "";
            s1 = "";
            this.g = "";
            b1 = "";
            V0 = "";
            t1 = "";
            this.i = "";
            c1 = "";
            W0 = "";
            u1 = "";
            this.j = "";
            d1 = "";
            X0 = "";
            v1 = "";
            this.k = "";
            e1 = "";
            Y0 = "";
            w1 = "";
            BBDeviceController bBDeviceController = this.b;
            if (bBDeviceController != null) {
                bBDeviceController.internalFunction4();
            }
        } catch (Exception unused2) {
            r.a("", "[BBDeviceOTA] [startRemoteKeyInjection] throw IllegalArgumentException \"Input error\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalArgumentException("Input error");
        }
    }

    void a(Object obj) throws IllegalArgumentException {
        c("[setBBDeviceController]");
        try {
            if (obj instanceof BBDeviceController) {
                this.b = (BBDeviceController) obj;
                return;
            }
        } catch (Error unused) {
        }
        r.a("", "[BBDeviceOTA] [setBBDeviceController] throw IllegalArgumentException \"Not a valid controller\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
        throw new IllegalArgumentException("Not a valid controller");
    }

    void i(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        c("[startRemoteFirmwareUpdate]");
        if (this.b != null) {
            String str = S;
            if (str != null && !str.equals("")) {
                if (this.b.getConnectionMode() != BBDeviceController.ConnectionMode.NONE) {
                    if (T == 0) {
                        try {
                            e(hashtable);
                            m0 = (String) hashtable.get("otaToken");
                            Object obj = hashtable.get("forceUpdate");
                            if (obj == null) {
                                o0 = false;
                            } else if (obj instanceof Boolean) {
                                o0 = ((Boolean) obj).booleanValue();
                            } else if (obj instanceof String) {
                                o0 = Boolean.parseBoolean((String) obj);
                            }
                            try {
                                p0 = (String) hashtable.get("oem");
                            } catch (Exception unused) {
                            }
                            String str2 = m0;
                            if (str2 == null) {
                                str2 = "";
                            }
                            m0 = str2;
                            if (i0 != null) {
                                if (j0 != null) {
                                    if (k0 != null) {
                                        if (l0 != null) {
                                            Object obj2 = hashtable.get("networkChecking");
                                            if (obj2 != null) {
                                                f0.a(obj2);
                                            }
                                            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.a.getSystemService("connectivity")).getActiveNetworkInfo();
                                            if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
                                                T = 2;
                                                a0 = new ByteArrayOutputStream();
                                                U = false;
                                                V = false;
                                                a();
                                                X = "";
                                                Y = "";
                                                y0 = BBDeviceOTAController.b.REMOTE;
                                                I1 = 0;
                                                J1 = true;
                                                this.L.a(hashtable, y.b.REMOTE_FIRMWARE_UPDATE);
                                                BBDeviceController bBDeviceController = this.b;
                                                if (bBDeviceController != null) {
                                                    bBDeviceController.internalFunction4();
                                                    return;
                                                }
                                                return;
                                            }
                                            r.a("", "[BBDeviceOTA] [startRemoteFirmwareUpdate] throw NoInternetConnectionException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                                            throw new NoInternetConnectionException();
                                        }
                                        r.a("", "[BBDeviceOTA] [startRemoteFirmwareUpdate] throw IllegalArgumentException \"Missing appSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                                        throw new IllegalArgumentException("Missing appSecret");
                                    }
                                    r.a("", "[BBDeviceOTA] [startRemoteFirmwareUpdate] throw IllegalArgumentException \"Missing vendorSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                                    throw new IllegalArgumentException("Missing vendorSecret");
                                }
                                r.a("", "[BBDeviceOTA] [startRemoteFirmwareUpdate] throw IllegalArgumentException \"Missing appID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                                throw new IllegalArgumentException("Missing appID");
                            }
                            r.a("", "[BBDeviceOTA] [startRemoteFirmwareUpdate] throw IllegalArgumentException \"Missing vendorID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                            throw new IllegalArgumentException("Missing vendorID");
                        } catch (Exception unused2) {
                            r.a("", "[BBDeviceOTA] [startRemoteFirmwareUpdate] throw IllegalArgumentException \"Input error\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                            throw new IllegalArgumentException("Input error");
                        }
                    }
                    r.a("", "[BBDeviceOTA] [startRemoteFirmwareUpdate] throw IllegalStateException \"BBDeviceOTAController is in not idle state\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                    throw new IllegalStateException("BBDeviceOTAController is in not idle state");
                }
                r.a("", "[BBDeviceOTA] [startRemoteFirmwareUpdate] throw BBDeviceNotConnectedException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new BBDeviceNotConnectedException();
            }
            r.a("", "[BBDeviceOTA] [startRemoteFirmwareUpdate] throw OTAServerURLNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new OTAServerURLNotSetException();
        }
        r.a("", "[BBDeviceOTA] [startRemoteFirmwareUpdate] throw BBDeviceControllerNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
        throw new BBDeviceControllerNotSetException();
    }

    <T> void e(Hashtable<String, T> hashtable) {
        if (hashtable.containsKey("VendorID")) {
            i0 = (String) hashtable.get("VendorID");
        } else {
            i0 = (String) hashtable.get("vendorID");
        }
        if (hashtable.containsKey("AppID")) {
            j0 = (String) hashtable.get("AppID");
        } else {
            j0 = (String) hashtable.get("appID");
        }
        if (hashtable.containsKey("VendorSecret")) {
            k0 = (String) hashtable.get("VendorSecret");
        } else {
            k0 = (String) hashtable.get("vendorSecret");
        }
        if (hashtable.containsKey("AppSecret")) {
            l0 = (String) hashtable.get("AppSecret");
        } else {
            l0 = (String) hashtable.get("appSecret");
        }
    }

    private void a() {
        c("[clearAcquirerMode]");
        W = false;
        K();
    }

    synchronized void a(Proxy proxy) {
        synchronized (G1) {
            this.M = proxy;
        }
    }

    void a(Hashtable<String, String> hashtable) {
        int i;
        c("[deviceInfoReceived]");
        r.c("[BBDeviceOTA] [deviceInfoReceived] data : " + hashtable);
        if (T == 0) {
            r.c("[BBDeviceOTA] [deviceInfoReceived] deviceInfoReceived is received while state is IDLE");
            return;
        }
        if (!J1) {
            r.c("[BBDeviceOTA] [deviceInfoReceived] Duplicated device info is received");
            return;
        }
        J1 = false;
        if (U) {
            a(BBDeviceOTAController.OTAResult.STOPPED, "");
            return;
        }
        this.c = hashtable.get("productID");
        this.d = hashtable.get("vendorID");
        this.e = hashtable.get("uid");
        this.f = hashtable.get("pinKsn");
        this.g = hashtable.get("trackKsn");
        this.h = hashtable.get("emvKsn");
        this.i = hashtable.get("macKsn");
        this.j = hashtable.get("nfcKsn");
        this.k = hashtable.get("messageKsn");
        this.l = hashtable.get("firmwareVersion");
        this.o = hashtable.get("terminalSettingVersion");
        this.p = hashtable.get("deviceSettingVersion");
        this.n = hashtable.get("mainProcessorVersion");
        this.m = hashtable.get("coprocessorVersion");
        this.q = hashtable.get("formatID");
        this.r = hashtable.get("isSupportedTrack1");
        this.s = hashtable.get("isSupportedTrack2");
        this.t = hashtable.get("isSupportedTrack3");
        this.u = hashtable.get("isSupportedNfc");
        this.v = hashtable.get("bootloaderVersion");
        this.w = hashtable.get("isUsbConnected");
        this.x = hashtable.get("isCharging");
        this.y = hashtable.get("batteryLevel");
        this.z = hashtable.get("batteryPercentage");
        this.A = hashtable.get("hardwareVersion");
        this.B = hashtable.get("csn");
        this.C = hashtable.get("coprocessorBootloaderVersion");
        this.D = hashtable.get("serialNumber");
        this.E = hashtable.get("modelName");
        this.F = hashtable.get("mcuInfo");
        this.G = hashtable.get("bID");
        String str = hashtable.get("mmkHash");
        this.I = str;
        String str2 = this.c;
        if (str2 == null) {
            str2 = "";
        }
        this.c = str2;
        String str3 = this.d;
        if (str3 == null) {
            str3 = "";
        }
        this.d = str3;
        String str4 = this.e;
        if (str4 == null) {
            str4 = "";
        }
        this.e = str4;
        String str5 = this.f;
        if (str5 == null) {
            str5 = "";
        }
        this.f = str5;
        String str6 = this.g;
        if (str6 == null) {
            str6 = "";
        }
        this.g = str6;
        String str7 = this.h;
        if (str7 == null) {
            str7 = "";
        }
        this.h = str7;
        String str8 = this.i;
        if (str8 == null) {
            str8 = "";
        }
        this.i = str8;
        String str9 = this.j;
        if (str9 == null) {
            str9 = "";
        }
        this.j = str9;
        String str10 = this.k;
        if (str10 == null) {
            str10 = "";
        }
        this.k = str10;
        String str11 = this.l;
        if (str11 == null) {
            str11 = "";
        }
        this.l = str11;
        String str12 = this.o;
        if (str12 == null) {
            str12 = "";
        }
        this.o = str12;
        String str13 = this.p;
        if (str13 == null) {
            str13 = "";
        }
        this.p = str13;
        String str14 = this.n;
        if (str14 == null) {
            str14 = "";
        }
        this.n = str14;
        String str15 = this.m;
        if (str15 == null) {
            str15 = "";
        }
        this.m = str15;
        String str16 = this.r;
        this.q = str16 == null ? "" : this.q;
        if (str16 == null) {
            str16 = "";
        }
        this.r = str16;
        String str17 = this.s;
        if (str17 == null) {
            str17 = "";
        }
        this.s = str17;
        String str18 = this.t;
        if (str18 == null) {
            str18 = "";
        }
        this.t = str18;
        String str19 = this.u;
        if (str19 == null) {
            str19 = "";
        }
        this.u = str19;
        String str20 = this.v;
        if (str20 == null) {
            str20 = "";
        }
        this.v = str20;
        String str21 = this.w;
        if (str21 == null) {
            str21 = "";
        }
        this.w = str21;
        String str22 = this.x;
        if (str22 == null) {
            str22 = "";
        }
        this.x = str22;
        String str23 = this.y;
        if (str23 == null) {
            str23 = "";
        }
        this.y = str23;
        String str24 = this.z;
        if (str24 == null) {
            str24 = "";
        }
        this.z = str24;
        String str25 = this.A;
        if (str25 == null) {
            str25 = "";
        }
        this.A = str25;
        String str26 = this.B;
        if (str26 == null) {
            str26 = "";
        }
        this.B = str26;
        String str27 = this.C;
        if (str27 == null) {
            str27 = "";
        }
        this.C = str27;
        String str28 = this.D;
        if (str28 == null) {
            str28 = "";
        }
        this.D = str28;
        String str29 = this.E;
        if (str29 == null) {
            str29 = "";
        }
        this.E = str29;
        if (str9 == null) {
            str9 = "";
        }
        this.j = str9;
        if (str10 == null) {
            str10 = "";
        }
        this.k = str10;
        String str30 = this.F;
        if (str30 == null) {
            str30 = "";
        }
        this.F = str30;
        String str31 = this.G;
        if (str31 == null) {
            str31 = "";
        }
        this.G = str31;
        if (str == null) {
            str = "";
        }
        this.I = str;
        try {
            if (hashtable.containsKey("isNewProtocol")) {
                this.H = Boolean.parseBoolean(hashtable.get("isNewProtocol"));
            }
        } catch (Exception unused) {
        }
        if (!this.H) {
            a(BBDeviceOTAController.OTAResult.FAILED, "Device end of life");
            return;
        }
        boolean z = Boolean.parseBoolean(hashtable.get("isCharging"));
        if ((z && this.z.equalsIgnoreCase("")) || z || this.c.equalsIgnoreCase(f0.a("CHB24")) || this.c.equalsIgnoreCase(f0.a("CHB25")) || this.c.equalsIgnoreCase(f0.a("CHB26")) || this.c.equalsIgnoreCase(f0.a("CHB27")) || this.c.equalsIgnoreCase(f0.a("CHB2B")) || this.c.equalsIgnoreCase(f0.a("CHB2C")) || this.c.equalsIgnoreCase(f0.a("CHB2D")) || this.c.equalsIgnoreCase(f0.a("CHB2E")) || this.c.equalsIgnoreCase(f0.a("CHB2G")) || this.c.equalsIgnoreCase(f0.a("SPP02")) || this.c.equalsIgnoreCase(f0.a("TOT10")) || this.c.equalsIgnoreCase(f0.a("SMH10")) || (this.y.isEmpty() && this.z.isEmpty())) {
            i = 100;
        } else {
            try {
                i = Integer.parseInt(this.z);
            } catch (Exception unused2) {
                i = 0;
            }
        }
        int i2 = T;
        boolean z2 = true;
        if (i2 == 2 || i2 == 3 || i2 == 1) {
            if (i < 50) {
                a(BBDeviceOTAController.OTAResult.BATTERY_LOW_ERROR, "Please connect to power source and charge up the device to 50% or above before doing OTA.");
                return;
            }
            BBDeviceController bBDeviceController = this.b;
            if (bBDeviceController != null && bBDeviceController.getConnectionMode() == BBDeviceController.ConnectionMode.SERIAL && f0.a(this.a) < 50) {
                a(BBDeviceOTAController.OTAResult.BATTERY_LOW_ERROR, "Please connect to power source and charge up the device to 50% or above before doing OTA.");
                return;
            }
        }
        if (y0 == BBDeviceOTAController.b.LOCAL) {
            this.N.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.q();
                }
            });
            return;
        }
        if (!this.I.equalsIgnoreCase("") && ((this.G.startsWith("CHB1") || this.G.startsWith("CHB7") || (this.G.startsWith("CHB2") && !this.G.startsWith("CHB28"))) && !this.e.equalsIgnoreCase("") && this.e.length() >= 24)) {
            String strA = f0.a(h.b(f0.i(this.e.substring(0, 24) + this.e.substring(0, 24)), f0.i("243C321C2A3A171F3106320B3D331C3B1C3A3C240F332D2A320B32031D0F25361C1A193E191A333E390D12023B1B331B1C282D360B3D193F2B0F0013073D372633170D0617072C3E082D1F193D17233817150523381B293B283C27192D3B383E07160E070F113F360C313619071E233717120325193E3315061A353C3C2B2A1B113F2F1A08341A232F14073A2A32202D0E3D03371403123119390F07041D2A0C3D1D1C1736000D3C340E1F33313138003C1F3720201C043B18173B271A2527103E221A1E080531232F3A32260F0F06281D3A22331223190E1518361F3D0810091A1E161D141A0F021E36350B29240D140F2F3703272224032D240E3D08272E121613341F202F071C16343A2C3712321B360B063C0B3709192508392F0C3F052638372826290836262A0B3F2433023B173407193B1F3C0B19391D1D30043D150B2D2F043A1F013E1E2B201D330715033B3B35281D113F2121033B0F18282A353C0725333B2A193E163F36250817141A33022E3E0D1734210D2F3213051C083A36")));
            String strSubstring = e0.b("00000000000000000000000000000000", strA).substring(0, 6);
            this.L.c(strA);
            if (strSubstring.equalsIgnoreCase(this.I)) {
                this.L.a(true);
            }
            boolean zH = this.L.h();
            if ((this.L.g() != y.b.REMOTE_FIRMWARE_UPDATE && this.L.g() != y.b.REMOTE_CONFIG_UPDATE) || this.L.c() == null || (!this.L.c().containsKey("encHexFilePath") && !this.L.c().containsKey("encHex"))) {
                z2 = zH;
            }
            if (z2) {
                this.N.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.r();
                    }
                });
                return;
            }
        }
        this.N.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.a$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.s();
            }
        });
    }

    private void e() {
        c("[eraseMemory]");
        r.c("[BBDeviceOTA] [eraseMemory]");
        String str = "" + f0.d("DF2F", "8C82");
        String hexString = Integer.toHexString(C1);
        while (hexString.length() < 4) {
            hexString = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString;
        }
        d(str + f0.d("DF6B", hexString));
    }

    private void g() {
        c("[exchangeRkek]");
        r.c("[BBDeviceOTA] [exchangeRkek]");
        d("" + f0.d("DF2F", "8C7C"));
    }

    void f(final String str) {
        this.N.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.a$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(str);
            }
        });
    }

    private void f() {
        c("[exchangeK1]");
        r.c("[BBDeviceOTA] [exchangeK1]");
        d("" + f0.d("DF2F", "8C7E"));
    }

    void c() {
        if (W) {
            try {
                Thread.sleep(3000L);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str, JSONObject jSONObject, int i) {
        HttpsURLConnection httpsURLConnection;
        BufferedReader bufferedReader;
        StringBuffer stringBuffer;
        synchronized (G1) {
            c("[callWS] url : " + str + ", jsonObject : " + jSONObject);
            c("[callWS] Thread.currentThread().getId() : " + Thread.currentThread().getId());
            r.c("[BBDeviceOTA] [callWS] url : " + str + ", jsonObject : " + jSONObject);
            if (T == 0 && !str.equalsIgnoreCase(S + "NotifyTMS")) {
                r.c("[BBDeviceOTA] [callWS] callWS while state is IDLE");
                return;
            }
            if (this.K.a(str, jSONObject, i)) {
                try {
                    try {
                        if (W && T != 0) {
                            I();
                        }
                        try {
                            a0 a0Var = new a0();
                            c("[callWS] tlsSocketFactory.getDefaultCipherSuites() : " + Arrays.deepToString(a0Var.getDefaultCipherSuites()));
                            c("[callWS] tlsSocketFactory.getSupportedCipherSuites() : " + Arrays.deepToString(a0Var.getSupportedCipherSuites()));
                        } catch (KeyManagementException | NoSuchAlgorithmException unused) {
                        }
                        if (this.M != null) {
                            httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection(this.M)));
                        } else {
                            httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
                        }
                        httpsURLConnection.setConnectTimeout(120000);
                        httpsURLConnection.setReadTimeout(120000);
                        httpsURLConnection.setDoInput(true);
                        httpsURLConnection.setDoOutput(true);
                        httpsURLConnection.setRequestMethod(FirebasePerformance.HttpMethod.POST);
                        if (str.endsWith("key-getter")) {
                            httpsURLConnection.setRequestProperty("Content-Type", "application/json");
                        } else {
                            httpsURLConnection.setRequestProperty("Content-Type", "text/json");
                        }
                        httpsURLConnection.connect();
                        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                        dataOutputStream.write(jSONObject.toString().getBytes());
                        dataOutputStream.flush();
                        dataOutputStream.close();
                        bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream()));
                        stringBuffer = new StringBuffer();
                    } catch (IOException unused2) {
                        this.K.a(str, "");
                        a(this.K);
                    }
                } catch (MalformedURLException e) {
                    c("MalformedURLException : " + r.a(e));
                    this.K.a(str, "");
                    a(this.K);
                } catch (SocketTimeoutException unused3) {
                    this.K.a(str, "");
                    a(this.K);
                }
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    } else {
                        stringBuffer.append(line);
                    }
                }
                bufferedReader.close();
                K();
                this.K.a(str, stringBuffer.toString());
                a(this.K);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        a(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, JSONObject jSONObject, int i) {
        HttpsURLConnection httpsURLConnection;
        BufferedReader bufferedReader;
        StringBuffer stringBuffer;
        synchronized (H1) {
            c("[callWS] url : " + str + ", jsonObject : " + jSONObject);
            c("[callWS] Thread.currentThread().getId() : " + Thread.currentThread().getId());
            r.c("[BBDeviceOTA] [callWS] url : " + str + ", jsonObject : " + jSONObject);
            if (T == 0 && !str.equalsIgnoreCase(S + "NotifyTMS")) {
                r.c("[BBDeviceOTA] [callWS] callWS while state is IDLE");
                return;
            }
            if (this.K.a(str, jSONObject, i)) {
                try {
                    try {
                        if (W && T != 0) {
                            I();
                        }
                        try {
                            a0 a0Var = new a0();
                            c("[callWS] tlsSocketFactory.getDefaultCipherSuites() : " + Arrays.deepToString(a0Var.getDefaultCipherSuites()));
                            c("[callWS] tlsSocketFactory.getSupportedCipherSuites() : " + Arrays.deepToString(a0Var.getSupportedCipherSuites()));
                        } catch (KeyManagementException | NoSuchAlgorithmException unused) {
                        }
                        if (this.M != null) {
                            httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection(this.M)));
                        } else {
                            httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
                        }
                        httpsURLConnection.setConnectTimeout(120000);
                        httpsURLConnection.setReadTimeout(120000);
                        httpsURLConnection.setDoInput(true);
                        httpsURLConnection.setDoOutput(true);
                        httpsURLConnection.setRequestMethod(FirebasePerformance.HttpMethod.POST);
                        if (str.endsWith("key-getter")) {
                            httpsURLConnection.setRequestProperty("Content-Type", "application/json");
                        } else {
                            httpsURLConnection.setRequestProperty("Content-Type", "text/json");
                        }
                        httpsURLConnection.connect();
                        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                        dataOutputStream.write(jSONObject.toString().getBytes());
                        dataOutputStream.flush();
                        dataOutputStream.close();
                        bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream()));
                        stringBuffer = new StringBuffer();
                    } catch (IOException unused2) {
                        this.K.a(str, "");
                        a(this.K);
                    }
                } catch (MalformedURLException e) {
                    c("MalformedURLException : " + r.a(e));
                    this.K.a(str, "");
                    a(this.K);
                } catch (SocketTimeoutException unused3) {
                    this.K.a(str, "");
                    a(this.K);
                }
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    } else {
                        stringBuffer.append(line);
                    }
                }
                bufferedReader.close();
                K();
                this.K.a(str, stringBuffer.toString());
                a(this.K);
            }
        }
    }

    private void h() {
        c("[exitAcquirerMode]");
        r.c("[BBDeviceOTA] [exitAcquirerMode]");
        d(("" + f0.d("DF2F", "8C50")) + f0.d("DF73", TlvMap.SET_BUZZER_ENABLED_VALUE));
    }

    private void d(String str) {
        c("[sendOTACommand] command : " + str);
        c("[sendOTACommand] Thread.currentThread().getId() : " + Thread.currentThread().getId());
        r.c("[BBDeviceOTA] [sendOTACommand] command : " + str);
        if (this.b != null) {
            K();
            this.b.internalFunction3(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        c("[enterAcquirerMode]");
        r.c("[BBDeviceOTA] [enterAcquirerMode]");
        d(("" + f0.d("DF2F", "8C50")) + f0.d("DF73", TlvMap.SET_BUZZER_DISABLED_VALUE));
    }

    private JSONObject j() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ProductID", this.c);
            jSONObject.put("VendorID", this.d);
            if (!this.e.equals("")) {
                jSONObject.put("UniqueID", this.e);
            } else if (!this.f.equals("")) {
                jSONObject.put("UniqueID", this.f);
            } else if (!this.g.equals("")) {
                jSONObject.put("UniqueID", this.g);
            } else if (!this.h.equals("")) {
                jSONObject.put("UniqueID", this.h);
            } else if (!this.j.equals("")) {
                jSONObject.put("UniqueID", this.j);
            } else if (!this.k.equals("")) {
                jSONObject.put("UniqueID", this.k);
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("productID", this.c);
            jSONObject2.put("vendorID", this.d);
            jSONObject2.put("uid", this.e);
            jSONObject2.put("formatID", this.q);
            jSONObject2.put("pinKsn", this.f);
            jSONObject2.put("trackKsn", this.g);
            jSONObject2.put("emvKsn", this.h);
            jSONObject2.put("macKsn", this.i);
            jSONObject2.put("nfcKsn", this.j);
            jSONObject2.put("messageKsn", this.k);
            jSONObject2.put("firmwareVersion", this.l);
            jSONObject.put("FirmwareVersion", this.l);
            jSONObject2.put("coprocessorVersion", this.m);
            jSONObject2.put("mainProcessorVersion", this.n);
            jSONObject2.put("terminalSettingVersion", this.o);
            jSONObject.put("TerminalSettingVersion", this.o);
            jSONObject2.put("deviceSettingVersion", this.p);
            jSONObject.put("DeviceSettingVersion", this.p);
            jSONObject2.put("isSupportedTrack1", this.r);
            jSONObject2.put("isSupportedTrack2", this.s);
            jSONObject2.put("isSupportedTrack3", this.t);
            jSONObject2.put("isSupportedNfc", this.u);
            jSONObject2.put("bootloaderVersion", this.v);
            jSONObject2.put("isUsbConnected", this.w);
            jSONObject2.put("isCharging", this.x);
            jSONObject2.put("batteryLevel", this.y);
            jSONObject2.put("batteryPercentage", this.z);
            jSONObject2.put("hardwareVersion", this.A);
            jSONObject2.put("csn", this.B);
            jSONObject2.put("coprocessorBootloaderVersion", this.C);
            jSONObject2.put("serialNumber", this.D);
            jSONObject2.put("modelName", this.E);
            jSONObject2.put("mcuInfo", this.F);
            jSONObject2.put("bID", this.G);
            jSONObject2.put("mmkHash", this.I);
            jSONObject2.put("android_systemVersion", Build.VERSION.RELEASE);
            jSONObject2.put("android_model", Build.MODEL);
            jSONObject2.put("android_manufacturer", Build.MANUFACTURER);
            jSONObject2.put("android_ro_build_fingerprint", f0.b("ro.build.fingerprint", ""));
            jSONObject2.put("android_ro_build_flavor", f0.b("ro.build.flavor", ""));
            jSONObject2.put("android_ro_build_host", f0.b("ro.build.host", ""));
            jSONObject2.put("android_ro_build_sw_version", f0.b("ro.build.sw.version", ""));
            jSONObject2.put("android_ro_build_custom_version", f0.b("ro.build.custom.version", ""));
            jSONObject2.put("LoginToken", L0);
            jSONObject2.put("SessionID", M0);
            jSONObject2.put("APIVersion_OTAController", BBDeviceOTAController.getApiVersion());
            if (this.b != null) {
                jSONObject2.put("BBDeviceControllerName", "BBDeviceController");
                jSONObject2.put("APIVersion_BBDeviceController", BBDeviceController.getApiVersion());
                if (this.b.getConnectionMode() == BBDeviceController.ConnectionMode.AUDIO) {
                    jSONObject2.put("commChannel", "Audio");
                } else if (this.b.getConnectionMode() == BBDeviceController.ConnectionMode.BLUETOOTH || this.b.getConnectionMode() == BBDeviceController.ConnectionMode.BLUETOOTH) {
                    jSONObject2.put("commChannel", "BT");
                } else if (this.b.getConnectionMode() == BBDeviceController.ConnectionMode.USB) {
                    jSONObject2.put("commChannel", "USB");
                } else if (this.b.getConnectionMode() == BBDeviceController.ConnectionMode.SERIAL) {
                    jSONObject2.put("commChannel", "Serial");
                } else {
                    jSONObject2.put("commChannel", "Unknown");
                }
            } else {
                jSONObject2.put("BBDeviceControllerName", "");
                jSONObject2.put("commChannel", "Unknown");
            }
            jSONObject2.put("phoneSystemTime", new SimpleDateFormat("yy-MM-dd HH:mm:ss z", Locale.US).format(new Date()));
            jSONObject.put("DeviceInfo", jSONObject2.toString());
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    private void b(BBDeviceOTAController.OTAResult oTAResult, String str) {
        T = 0;
        U = false;
        R.m(oTAResult, str);
    }

    private void b() {
        c("[createNewSession]");
        r.c("[BBDeviceOTA] [createNewSession]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("LoginToken", L0);
            jSONObject.put("KSN", this.f);
        } catch (JSONException unused) {
        }
        a(S + "CreateNewSession", jSONObject, 0);
    }

    private void b(String str, String str2) {
        c("[setInternalKeyEncryptionKey]");
        r.c("[BBDeviceOTA] [getTCert]");
        Z = 0;
        d((("" + f0.d("DF2F", "DC94")) + f0.d("DF6F", str)) + f0.d("DF71", str2));
    }

    void a(String str) {
        List<b0> listA;
        String str2;
        c("[dataReceived] result : " + str);
        c("[dataReceived] Thread.currentThread().getId() : " + Thread.currentThread().getId());
        r.c("[BBDeviceOTA] [dataReceived] result : " + str);
        if (T == 0) {
            return;
        }
        try {
            listA = c0.a(str);
            str2 = c0.a(listA, "DF30").c;
        } catch (Exception e) {
            a(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "Unknown error. (" + e.toString() + ")");
        }
        if (str2 == null) {
            a(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "Device response invalid data");
            return;
        }
        if (str2.equalsIgnoreCase("0C51")) {
            String str3 = c0.a(listA, "DF73").c;
            if (str3 == null) {
                a(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "Failed to change to acquirer mode");
                return;
            }
            if (str3.equalsIgnoreCase(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                a(100);
                a(BBDeviceOTAController.OTAResult.SUCCESS, "Update success.");
                return;
            }
            if (str3.equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE)) {
                if (U) {
                    a(BBDeviceOTAController.OTAResult.STOPPED, "");
                    return;
                }
                if (this.L.h()) {
                    this.L.a(false);
                    b(this.L.e(), this.L.f());
                    return;
                }
                boolean z = W;
                if (!z && T != 0) {
                    W = true;
                    if (y0 == BBDeviceOTAController.b.LOCAL) {
                        a(4);
                        try {
                            Thread.sleep(1500L);
                        } catch (Exception unused) {
                        }
                        v();
                        return;
                    } else {
                        a(4);
                        m();
                        return;
                    }
                }
                if (z && T != 0 && this.K.a == i0.a.PROCESSING) {
                    I();
                    return;
                }
                return;
            }
            return;
        }
        if (str2.equalsIgnoreCase("0CBF")) {
            String str4 = c0.a(listA, "DE").c;
            if (str4 == null) {
                a(5);
                t();
                return;
            }
            if (str4.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                if (y0 == BBDeviceOTAController.b.LOCAL) {
                    a(5);
                    t();
                    return;
                }
                return;
            }
            String str5 = c0.a(listA, "DF8322").c;
            int i = Integer.parseInt(str5, 16);
            if (i == 9) {
                a(BBDeviceOTAController.OTAResult.INCOMPATIBLE_FIRMWARE_HEX, f0.l(str5) + " (02)");
                return;
            } else if (i == 10) {
                a(BBDeviceOTAController.OTAResult.INCOMPATIBLE_CONFIG_HEX, f0.l(str5) + " (02)");
                return;
            } else {
                a(BBDeviceOTAController.OTAResult.FAILED, f0.l(str5));
                return;
            }
        }
        if (str2.equalsIgnoreCase("0C79")) {
            String strA = c0.a(listA, "DF75").c;
            String str6 = c0.a(listA, "DF6C").c;
            if (strA == null || str6 == null) {
                strA = f0.a((byte) Z);
                str6 = "";
            }
            int i2 = Integer.parseInt(strA, 16);
            byte[] bArrI = f0.i(str6);
            if (i2 - 1 == Z) {
                if (i2 == 1) {
                    a0.reset();
                }
                a0.write(bArrI, 0, bArrI.length);
                Z = i2;
            }
            if (bArrI.length != 0) {
                d(("" + f0.d("DF2F", "8C78")) + f0.d("DF75", TlvMap.SET_BUZZER_ENABLED_VALUE + f0.a((byte) (i2 + 1))));
                return;
            }
            if (U) {
                a(BBDeviceOTAController.OTAResult.STOPPED, "");
                return;
            }
            a(5);
            Z = 0;
            b0 = 0;
            f0 = new ArrayList();
            d((("" + f0.d("DF2F", "8C76")) + f0.d("DF75", TlvMap.SET_BUZZER_ENABLED_VALUE + f0.a((byte) (Z + 1)))) + f0.d("DF74", f0.a((byte) (b0 + 1))));
            return;
        }
        if (str2.equalsIgnoreCase("0C77")) {
            String strA2 = c0.a(listA, "DF75").c;
            String str7 = c0.a(listA, "DF6C").c;
            if (strA2 == null || str7 == null) {
                strA2 = f0.a((byte) Z);
                ArrayList arrayList = new ArrayList();
                f0 = arrayList;
                arrayList.add(new ByteArrayOutputStream());
                f0.add(new ByteArrayOutputStream());
                str7 = "";
            }
            int i3 = Integer.parseInt(strA2, 16);
            byte[] bArrI2 = f0.i(str7);
            if (i3 - 1 == Z) {
                if (i3 == 1) {
                    f0.add(new ByteArrayOutputStream());
                }
                f0.get(r8.size() - 1).write(bArrI2, 0, bArrI2.length);
                Z = i3;
            }
            if (bArrI2.length != 0) {
                d((("" + f0.d("DF2F", "8C76")) + f0.d("DF75", TlvMap.SET_BUZZER_ENABLED_VALUE + f0.a((byte) (Z + 1)))) + f0.d("DF74", f0.a((byte) (b0 + 1))));
                return;
            }
            if (f0.get(r0.size() - 1).size() != 0) {
                Z = 0;
                b0++;
                d((("" + f0.d("DF2F", "8C76")) + f0.d("DF75", TlvMap.SET_BUZZER_ENABLED_VALUE + f0.a((byte) (Z + 1)))) + f0.d("DF74", f0.a((byte) (b0 + 1))));
                return;
            }
            if (U) {
                a(BBDeviceOTAController.OTAResult.STOPPED, "");
                return;
            }
            a(7);
            f0.remove(r0.size() - 1);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("SessionID", M0);
                jSONObject.put("SignedTermPubKey", f0.a(a0.toByteArray()));
                JSONArray jSONArray = new JSONArray();
                for (int i4 = 0; i4 < f0.size(); i4++) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("CertIndex", "" + i4);
                    jSONObject2.put("Cert", f0.a(f0.get(i4).toByteArray()));
                    jSONArray.put(jSONObject2);
                }
                jSONObject.put("SignedCACerts", jSONArray);
                a(S + "AuthenticateTerminal", jSONObject, 0);
                return;
            } catch (Exception e2) {
                a(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response invalid data");
                R.a(r.a(e2));
                return;
            }
        }
        if (str2.equalsIgnoreCase("0C7B")) {
            String str8 = c0.a(listA, "DE").c;
            if (str8 != null && !str8.equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE)) {
                if (str8.equalsIgnoreCase(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    if (U) {
                        a(BBDeviceOTAController.OTAResult.STOPPED, "");
                        return;
                    } else {
                        a(9);
                        g();
                        return;
                    }
                }
                return;
            }
            a(BBDeviceOTAController.OTAResult.FAILED, "Failed to exchange K1");
            return;
        }
        if (str2.equalsIgnoreCase("0C7D")) {
            if (U) {
                a(BBDeviceOTAController.OTAResult.STOPPED, "");
                return;
            }
            a(10);
            Object obj = c0.a(listA, "DF6F").c;
            Object obj2 = c0.a(listA, "DF72").c;
            if (obj != null && obj2 != null) {
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("SessionID", M0);
                    jSONObject3.put("EncRKEK", obj);
                    jSONObject3.put("SignedHashEncRKEK", obj2);
                    a(S + "ExchangeRKEK", jSONObject3, 0);
                    return;
                } catch (JSONException e3) {
                    R.a(r.a(e3));
                    a(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response invalid data");
                    return;
                }
            }
            a(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "Cannot get RKEK");
            return;
        }
        if (str2.equalsIgnoreCase("0C7F")) {
            if (U) {
                a(BBDeviceOTAController.OTAResult.STOPPED, "");
                return;
            }
            a(12);
            Object obj3 = c0.a(listA, "DF6F").c;
            if (obj3 == null) {
                a(BBDeviceOTAController.OTAResult.FAILED, "Failed to exchange K1");
                return;
            }
            try {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("SessionID", M0);
                jSONObject4.put("EncK1", obj3);
                a(S + "ExchangeK1", jSONObject4, 0);
                return;
            } catch (Exception e4) {
                a(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response invalid data");
                R.a(r.a(e4));
                return;
            }
        }
        if (str2.equalsIgnoreCase("0C81")) {
            String str9 = c0.a(listA, "DE").c;
            if (str9 != null && !str9.equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE)) {
                if (str9.equalsIgnoreCase(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    if (U) {
                        a(BBDeviceOTAController.OTAResult.STOPPED, "");
                        return;
                    }
                    a(14);
                    int i5 = T;
                    if (i5 == 1) {
                        n();
                        return;
                    }
                    if (i5 != 3 && i5 != 2) {
                        if (i5 == 4) {
                            a(BBDeviceOTAController.OTAResult.SUCCESS, "Update success.");
                            return;
                        }
                        return;
                    }
                    JSONObject jSONObject5 = new JSONObject();
                    try {
                        jSONObject5.put("SessionID", M0);
                        jSONObject5.put("FWID", m0);
                    } catch (JSONException unused2) {
                    }
                    a(S + "UpdateFirmware2", jSONObject5, 0);
                    return;
                }
                return;
            }
            a(BBDeviceOTAController.OTAResult.FAILED, "Failed to verify RKEK KCV");
            return;
        }
        if (str2.equalsIgnoreCase("0C63")) {
            if (U) {
                a(BBDeviceOTAController.OTAResult.STOPPED, "");
                return;
            }
            a(40);
            String str10 = c0.a(listA, "DF6F").c;
            String str11 = c0.a(listA, "DF71").c;
            c0 = str10;
            Q0 = str11;
            d("" + f0.d("DF2F", "8C5C"));
            return;
        }
        if (str2.equalsIgnoreCase("0C5D")) {
            if (U) {
                a(BBDeviceOTAController.OTAResult.STOPPED, "");
                return;
            }
            a(50);
            String str12 = c0.a(listA, "DF6F").c;
            String str13 = c0.a(listA, "DF71").c;
            d0 = str12;
            R0 = str13;
            try {
                JSONObject jSONObject6 = new JSONObject();
                jSONObject6.put("SessionID", M0);
                jSONObject6.put("EncTSK", c0);
                jSONObject6.put("EncTMACK", d0);
                JSONArray jSONArray2 = new JSONArray();
                String str14 = this.f;
                if (str14 != null && !str14.equals("")) {
                    JSONObject jSONObject7 = new JSONObject();
                    jSONObject7.put("KSN", this.f);
                    jSONObject7.put("Type", "010101");
                    jSONArray2.put(jSONObject7);
                }
                String str15 = this.h;
                if (str15 != null && !str15.equals("")) {
                    JSONObject jSONObject8 = new JSONObject();
                    jSONObject8.put("KSN", this.h);
                    jSONObject8.put("Type", "010202");
                    jSONArray2.put(jSONObject8);
                }
                String str16 = this.g;
                if (str16 != null && !str16.equals("")) {
                    JSONObject jSONObject9 = new JSONObject();
                    jSONObject9.put("KSN", this.g);
                    jSONObject9.put("Type", "010303");
                    jSONArray2.put(jSONObject9);
                }
                String str17 = this.i;
                if (str17 != null && !str17.equals("")) {
                    JSONObject jSONObject10 = new JSONObject();
                    jSONObject10.put("KSN", this.i);
                    jSONObject10.put("Type", "010404");
                    jSONArray2.put(jSONObject10);
                }
                String str18 = this.j;
                if (str18 != null && !str18.equals("")) {
                    JSONObject jSONObject11 = new JSONObject();
                    jSONObject11.put("KSN", this.j);
                    jSONObject11.put("Type", "010505");
                    jSONArray2.put(jSONObject11);
                }
                String str19 = this.k;
                if (str19 != null && !str19.equals("")) {
                    JSONObject jSONObject12 = new JSONObject();
                    jSONObject12.put("KSN", this.k);
                    jSONObject12.put("Type", "010606");
                    jSONArray2.put(jSONObject12);
                }
                jSONObject6.put("KSNInfos", jSONArray2);
                jSONObject6.put("KeyToken", m0);
                a(S + "InjectWorkingKey3", jSONObject6, 0);
                return;
            } catch (JSONException e5) {
                a(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response invalid data");
                R.a(r.a(e5));
                return;
            }
        }
        if (str2.equalsIgnoreCase("0C69")) {
            if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                p();
                return;
            } else {
                a(BBDeviceOTAController.OTAResult.FAILED, "Failed to inject key");
                return;
            }
        }
        if (str2.equalsIgnoreCase("0C57")) {
            if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                if (U) {
                    a(BBDeviceOTAController.OTAResult.STOPPED, "");
                    return;
                } else {
                    a(16);
                    E();
                    return;
                }
            }
            a(BBDeviceOTAController.OTAResult.FAILED, "Failed to exchange TPEK");
            return;
        }
        if (str2.equalsIgnoreCase("0C5F")) {
            if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                if (U) {
                    a(BBDeviceOTAController.OTAResult.STOPPED, "");
                    return;
                } else {
                    a(17);
                    e();
                    return;
                }
            }
            a(BBDeviceOTAController.OTAResult.FAILED, "Failed to exchange TMACK");
            return;
        }
        if (str2.equalsIgnoreCase("0C83")) {
            if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                if (y0 == BBDeviceOTAController.b.LOCAL) {
                    g0 = 0;
                    h0 = 0;
                    z();
                    return;
                } else {
                    g0 = 0;
                    h0 = 0;
                    D();
                    return;
                }
            }
            a(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "Failed to erase firmware memory. " + f0.l(c0.a(listA, "DF8322").c));
            return;
        }
        if (str2.equalsIgnoreCase("0C85")) {
            if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                if (y0 == BBDeviceOTAController.b.LOCAL) {
                    z();
                    return;
                } else {
                    D();
                    return;
                }
            }
            a(BBDeviceOTAController.OTAResult.FAILED, f0.l(c0.a(listA, "DF8322").c));
            return;
        }
        if (str2.equalsIgnoreCase("0C87")) {
            if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                a(100);
                a(BBDeviceOTAController.OTAResult.SUCCESS, "Update success.");
                return;
            }
            String str20 = c0.a(listA, "DF8322").c;
            int i6 = T;
            if (i6 == 3) {
                a(BBDeviceOTAController.OTAResult.FAILED, "Failed to sign config. " + f0.l(str20));
                return;
            } else {
                if (i6 == 2) {
                    a(BBDeviceOTAController.OTAResult.FAILED, "Failed to sign firmware. " + f0.l(str20));
                    return;
                }
                return;
            }
        }
        if (str2.equalsIgnoreCase("0CBB")) {
            String str21 = c0.a(listA, "DE").c;
            if (str21 != null && !str21.equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE)) {
                if (str21.equalsIgnoreCase(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    if (U) {
                        a(BBDeviceOTAController.OTAResult.STOPPED, "");
                        return;
                    } else {
                        if (y0 == BBDeviceOTAController.b.LOCAL) {
                            a(6);
                            A();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            a(BBDeviceOTAController.OTAResult.FAILED, "Incorrect dekBDK values");
            return;
        }
        if (str2.equalsIgnoreCase("0CBD")) {
            String str22 = c0.a(listA, "DE").c;
            if (str22 != null && !str22.equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE)) {
                if (str22.equalsIgnoreCase(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    if (U) {
                        a(BBDeviceOTAController.OTAResult.STOPPED, "");
                        return;
                    } else {
                        if (y0 == BBDeviceOTAController.b.LOCAL) {
                            a(7);
                            e();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            a(BBDeviceOTAController.OTAResult.FAILED, "Failed to set MACK");
            return;
        }
        if (str2.equalsIgnoreCase("4C95")) {
            String str23 = c0.a(listA, "DE").c;
            if (str23 != null && !str23.equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE)) {
                str23.equalsIgnoreCase(TlvMap.SET_BUZZER_ENABLED_VALUE);
            }
            if ((this.L.g() == y.b.REMOTE_FIRMWARE_UPDATE || this.L.g() == y.b.REMOTE_CONFIG_UPDATE) && this.L.c() != null && (this.L.c().containsKey("encHexFilePath") || this.L.c().containsKey("encHex"))) {
                L();
                return;
            } else {
                s();
                return;
            }
        }
        return;
        a(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "Unknown error. (" + e.toString() + ")");
    }

    /* JADX WARN: Removed duplicated region for block: B:662:0x109d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void a(com.stripe.bbpos.bbdevice.ota.i0 r27) {
        /*
            Method dump skipped, instruction units count: 4347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.ota.a.a(com.stripe.bbpos.bbdevice.ota.i0):void");
    }

    private void a(final String str, final JSONObject jSONObject, final int i) {
        c("[callWS]");
        if (str.equalsIgnoreCase(S + "NotifyTMS")) {
            this.P.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.a$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(str, jSONObject, i);
                }
            });
        } else {
            this.N.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.a$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c(str, jSONObject, i);
                }
            });
        }
    }

    private void a(BBDeviceOTAController.OTAResult oTAResult, String str) {
        c("[returnOTAResult] otaResult : " + oTAResult + ", message : " + str);
        r.c("[BBDeviceOTA] [returnOTAResult] otaResult : " + oTAResult + ", message : " + str);
        this.L.b(str);
        a();
        if (y0 != BBDeviceOTAController.b.LOCAL && T != 0 && V) {
            if (oTAResult == BBDeviceOTAController.OTAResult.SUCCESS) {
                if (X == "started" && Y == m0) {
                    Object obj = H1;
                    synchronized (obj) {
                        a("completed", m0);
                        try {
                            obj.wait(245000L);
                        } catch (Exception unused) {
                        }
                    }
                }
            } else if (oTAResult == BBDeviceOTAController.OTAResult.STOPPED) {
                if (X == "started" && Y == m0) {
                    Object obj2 = H1;
                    synchronized (obj2) {
                        a("aborted", m0);
                        try {
                            obj2.wait(245000L);
                        } catch (Exception unused2) {
                        }
                    }
                }
            } else if (X == "started" && Y == m0) {
                Object obj3 = H1;
                synchronized (obj3) {
                    a("failed", m0);
                    try {
                        obj3.wait(245000L);
                    } catch (Exception unused3) {
                    }
                }
            }
        }
        if (this.L.i()) {
            y0 = BBDeviceOTAController.b.REMOTE;
        }
        int i = T;
        if (i == 1) {
            T = 0;
            U = false;
            if (!this.L.a().equalsIgnoreCase("")) {
                str = str + this.L.a();
            }
            R.l(oTAResult, str);
            return;
        }
        if (i == 2) {
            if (y0 == BBDeviceOTAController.b.LOCAL) {
                T = 0;
                U = false;
                R.i(oTAResult, str);
                return;
            } else {
                T = 0;
                U = false;
                if (!this.L.a().equalsIgnoreCase("")) {
                    str = str + this.L.a();
                }
                R.k(oTAResult, str);
                return;
            }
        }
        if (i == 3) {
            if (y0 == BBDeviceOTAController.b.LOCAL) {
                T = 0;
                U = false;
                R.h(oTAResult, str);
                return;
            } else {
                T = 0;
                U = false;
                if (!this.L.a().equalsIgnoreCase("")) {
                    str = str + this.L.a();
                }
                R.j(oTAResult, str);
                return;
            }
        }
        if (i == 4) {
            T = 0;
            U = false;
            R.n(oTAResult, str);
        } else {
            if (i == 5) {
                Hashtable<String, String> hashtable = new Hashtable<>();
                hashtable.put("errorMessage", str);
                T = 0;
                U = false;
                R.b(BBDeviceOTAController.OTAResult.FAILED, hashtable);
                return;
            }
            if (i == 6) {
                a(oTAResult, (List<Hashtable<String, String>>) null, str);
            } else if (i == 7) {
                b(oTAResult, str);
            }
        }
    }

    private void a(BBDeviceOTAController.OTAResult oTAResult, Hashtable<String, String> hashtable) {
        T = 0;
        U = false;
        R.b(oTAResult, hashtable);
    }

    private void a(BBDeviceOTAController.OTAResult oTAResult, List<Hashtable<String, String>> list, String str) {
        T = 0;
        U = false;
        R.b(oTAResult, list, str);
    }

    private void a(int i) {
        c("[updateOTAProgress] progress : " + i);
        r.c("[BBDeviceOTA] [updateOTAProgress] progress : " + i);
        if (i >= 0) {
            R.b(i);
            I1 = i;
            return;
        }
        if (i == -1 && y0 != BBDeviceOTAController.b.LOCAL) {
            double d = g0;
            double d2 = F1;
            int iCeil = (int) ((((d / d2) / Math.ceil(((double) x1.length) / d2)) * 78.0d) + 20.0d);
            if (iCeil - I1 >= 1) {
                R.b(iCeil);
                I1 = iCeil;
                return;
            }
            return;
        }
        if (i == -1 && y0 == BBDeviceOTAController.b.LOCAL) {
            double d3 = g0;
            double d4 = F1;
            int iCeil2 = (int) ((((d3 / d4) / Math.ceil(((double) D0.length) / d4)) * 78.0d) + 20.0d);
            if (iCeil2 - I1 >= 1) {
                R.b(iCeil2);
                I1 = iCeil2;
            }
        }
    }

    private void a(String str, String str2) {
        c("[notifyTMS] otaStatus : " + str + ", token : " + str2);
        r.c("[BBDeviceOTA] [notifyTMS] otaStatus : " + str + ", token : " + str2);
        X = str;
        Y = str2;
        JSONObject jSONObjectJ = j();
        try {
            jSONObjectJ.put("Token", str2);
            jSONObjectJ.put("OTAStatus", str);
            if (str.equalsIgnoreCase("failed") && !this.L.b().equalsIgnoreCase("")) {
                jSONObjectJ.put("ErrorMessage", this.L.b());
            }
        } catch (JSONException unused) {
        }
        a(S + "NotifyTMS", jSONObjectJ, 0);
    }
}
