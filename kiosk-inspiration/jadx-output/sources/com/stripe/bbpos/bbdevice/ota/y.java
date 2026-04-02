package com.stripe.bbpos.bbdevice.ota;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.hardware.emv.TlvMap;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes3.dex */
final class y {
    private String A;
    private String A0;
    private String B;
    private String B0;
    private String C;
    private a C0;
    private String D;
    private int D0;
    private String E;
    private String E0;
    private String F;
    private int G;
    private int H;
    private String I;
    private String J;
    private String K;
    private String L;
    private String M;
    private String N;
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
    private String Y;
    private List<k> Z;
    private String a;
    private int a0;
    private String b;
    private int b0;
    private String c;
    private BBDeviceOTAController.TargetVersionType c0;
    private String d;
    private String d0;
    private boolean e;
    private String e0;
    private boolean f;
    private String f0;
    private b g;
    private String g0;
    private o h;
    private String h0;
    private p i;
    private String i0;
    private BBDeviceController.ConnectionMode j;
    private int j0;
    private String k;
    private boolean k0;
    private byte[] l;
    private String l0;
    private String m;
    private Hashtable<String, Object> m0;
    private String n;
    private int n0;
    private String o;
    private int o0;
    private String p;
    private boolean p0;
    private String q;
    private boolean q0;
    private String r;
    private BBDeviceOTAController.OTAResult r0;
    private String s;
    private String s0;
    private String t;
    private String t0;
    private List<b0> u;
    private String u0;
    private int v;
    private String v0;
    private ByteArrayOutputStream w;
    private String w0;
    private boolean x;
    private boolean x0;
    private boolean y;
    private boolean y0;
    private String z;
    private boolean z0;

    enum a {
        UNKNOWN,
        BOOTLOADER,
        APPLICATION,
        RECOVERY
    }

    enum b {
        NONE,
        REMOTE_FIRMWARE_UPDATE,
        REMOTE_CONFIG_UPDATE,
        REMOTE_KEY_INJECTION,
        GET_TARGET_VERSION,
        GET_TARGET_VERSION_LIST,
        SET_TARGET_VERSION,
        LOCAL_FIRMWARE_UPDATE,
        LOCAL_CONFIG_UPDATE,
        GET_FILE_SIGNATURE
    }

    y(Hashtable<String, Object> hashtable, b bVar) throws IllegalArgumentException {
        String str;
        this.a = "";
        this.b = "";
        this.c = "";
        this.d = "";
        this.k = "";
        this.l = null;
        this.m = "";
        this.n = "";
        this.o = "";
        this.p = "";
        this.q = "";
        this.r = "";
        this.s = "";
        this.t = "";
        this.u = null;
        this.v = 0;
        this.z = "";
        this.A = "";
        this.B = "";
        this.C = "";
        this.D = "";
        this.E = "";
        this.F = "";
        this.G = 0;
        this.H = 0;
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
        this.Y = "";
        this.Z = null;
        this.a0 = 0;
        this.b0 = 0;
        this.j0 = 0;
        this.l0 = "";
        this.m0 = null;
        this.n0 = 0;
        this.o0 = 0;
        this.A0 = "";
        this.B0 = "";
        this.C0 = a.UNKNOWN;
        this.D0 = 0;
        this.E0 = "";
        try {
            if (hashtable.containsKey("VendorID")) {
                this.a = (String) hashtable.get("VendorID");
            } else {
                this.a = (String) hashtable.get("vendorID");
            }
            if (hashtable.containsKey("AppID")) {
                this.b = (String) hashtable.get("AppID");
            } else {
                this.b = (String) hashtable.get("appID");
            }
            if (hashtable.containsKey("VendorSecret")) {
                this.c = (String) hashtable.get("VendorSecret");
            } else {
                this.c = (String) hashtable.get("vendorSecret");
            }
            if (hashtable.containsKey("AppSecret")) {
                this.d = (String) hashtable.get("AppSecret");
            } else {
                this.d = (String) hashtable.get("appSecret");
            }
            Object obj = hashtable.get("forceUpdate");
            if (obj == null) {
                this.e = false;
            } else if (obj instanceof Boolean) {
                this.e = ((Boolean) obj).booleanValue();
            } else if (obj instanceof String) {
                this.e = Boolean.parseBoolean((String) obj);
            }
            if (hashtable.containsKey("listType")) {
                this.c0 = (BBDeviceOTAController.TargetVersionType) hashtable.get("listType");
            } else if (hashtable.containsKey("targetVersionType")) {
                this.c0 = (BBDeviceOTAController.TargetVersionType) hashtable.get("targetVersionType");
            } else {
                this.c0 = null;
            }
            String str2 = (String) hashtable.get("firmwareVersion");
            this.d0 = str2;
            if (str2 == null) {
                this.d0 = "";
            }
            String str3 = (String) hashtable.get("terminalSettingVersion");
            this.e0 = str3;
            if (str3 == null) {
                this.e0 = "";
            }
            String str4 = (String) hashtable.get("deviceSettingVersion");
            this.f0 = str4;
            if (str4 == null) {
                this.f0 = "";
            }
            String str5 = (String) hashtable.get("mainProcessorVersion");
            this.g0 = str5;
            if (str5 == null) {
                this.g0 = "";
            }
            String str6 = (String) hashtable.get("coprocessorVersion");
            this.h0 = str6;
            if (str6 == null) {
                this.h0 = "";
            }
            String str7 = (String) hashtable.get("keyProfileName");
            this.i0 = str7;
            if (str7 == null) {
                this.i0 = "";
            }
            Object obj2 = hashtable.get("keyProfileID");
            if (obj2 == null) {
                this.j0 = 0;
            } else if (obj2 instanceof Integer) {
                this.j0 = ((Integer) obj2).intValue();
            } else {
                if (!(obj2 instanceof String)) {
                    r.a("", "[BBDeviceOTAController] [" + A0() + "] throw IllegalArgumentException \"Invalid keyProfileID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                    throw new IllegalArgumentException("Invalid keyProfileID");
                }
                this.j0 = Integer.parseInt((String) obj2);
            }
            Object obj3 = hashtable.get("applyToAll");
            if (obj3 == null) {
                this.k0 = false;
            } else if (obj3 instanceof Boolean) {
                this.k0 = ((Boolean) obj3).booleanValue();
            } else if (obj3 instanceof String) {
                this.k0 = Boolean.parseBoolean((String) obj3);
            }
            Object obj4 = hashtable.get("authOnly");
            if (obj4 == null) {
                this.z0 = false;
            } else if (obj4 instanceof Boolean) {
                this.z0 = ((Boolean) obj4).booleanValue();
            } else if (obj4 instanceof String) {
                this.z0 = Boolean.parseBoolean((String) obj4);
            }
            if (hashtable.containsKey("romID")) {
                this.A0 = (String) hashtable.get("romID");
            }
            this.m0 = (Hashtable) hashtable.clone();
            if (bVar == b.REMOTE_FIRMWARE_UPDATE || bVar == b.REMOTE_CONFIG_UPDATE || bVar == b.REMOTE_KEY_INJECTION || bVar == b.GET_TARGET_VERSION || bVar == b.GET_TARGET_VERSION_LIST || bVar == b.SET_TARGET_VERSION || bVar == b.GET_FILE_SIGNATURE) {
                if (this.a == null) {
                    r.a("", "[BBDeviceOTAController] [" + A0() + "] throw IllegalArgumentException \"Missing vendorID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                    throw new IllegalArgumentException("Missing vendorID");
                }
                if (this.b == null) {
                    r.a("", "[BBDeviceOTAController] [" + A0() + "] throw IllegalArgumentException \"Missing appID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                    throw new IllegalArgumentException("Missing appID");
                }
                if (this.c == null) {
                    r.a("", "[BBDeviceOTAController] [" + A0() + "] throw IllegalArgumentException \"Missing vendorSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                    throw new IllegalArgumentException("Missing vendorSecret");
                }
                if (this.d == null) {
                    r.a("", "[BBDeviceOTAController] [" + A0() + "] throw IllegalArgumentException \"Missing appSecret\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                    throw new IllegalArgumentException("Missing appSecret");
                }
            }
            if (bVar == b.GET_FILE_SIGNATURE && ((str = this.A0) == null || str.equalsIgnoreCase(""))) {
                r.a("", "[BBDeviceOTAController] [" + A0() + "] throw IllegalArgumentException \"Missing romID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing romID");
            }
            if (bVar == b.SET_TARGET_VERSION && this.c0 == BBDeviceOTAController.TargetVersionType.KEY_PROFILE && this.i0.equalsIgnoreCase("") && this.j0 == 0) {
                r.a("", "[BBDeviceOTAController] [" + A0() + "] throw IllegalArgumentException \"Missing keyProfileName or keyProfileID\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Missing keyProfileName or keyProfileID");
            }
            this.g = bVar;
            this.h = null;
            this.i = null;
            this.j = BBDeviceController.ConnectionMode.NONE;
            this.f = false;
            this.k = "";
            this.l = null;
            this.m = "";
            this.n = "";
            this.o = "";
            this.p = "";
            this.q = "";
            this.r = "";
            this.s = "";
            this.t = "";
            this.u = null;
            this.v = 0;
            this.w = null;
            this.x = false;
            this.y = false;
            this.z = "";
            this.A = "";
            this.B = "";
            this.C = "";
            this.D = "";
            this.E = "";
            this.F = "";
            this.G = 0;
            this.H = 0;
            this.I = "";
            this.J = "";
            this.K = "";
            this.L = "";
            this.M = "";
            this.N = "";
            this.O = "";
            this.Q = "";
            this.P = "";
            this.R = "";
            this.S = "";
            this.T = "";
            this.U = "";
            this.V = "";
            this.W = "";
            this.X = "";
            this.Y = "";
            this.l0 = "";
            this.Z = null;
            this.a0 = 0;
            this.b0 = 0;
            this.n0 = 0;
            this.o0 = 0;
            this.p0 = false;
            this.q0 = false;
            this.r0 = null;
            this.s0 = "";
            this.t0 = f0.c((String) hashtable.get("encHexFilePath"));
            this.u0 = f0.c((String) hashtable.get("encHex"));
            this.v0 = f0.c((String) hashtable.get("tmk0"));
            this.w0 = f0.c((String) hashtable.get("dekBDK"));
            this.x0 = true;
            this.y0 = true;
            this.B0 = "";
            this.C0 = a.UNKNOWN;
            this.D0 = 0;
            this.E0 = "";
        } catch (Exception unused) {
            r.a("", "[BBDeviceOTAController] [" + A0() + "] throw IllegalArgumentException \"Input error\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalArgumentException("Input error");
        }
    }

    static String a(b bVar) {
        return bVar == b.REMOTE_FIRMWARE_UPDATE ? "startRemoteFirmwareUpdate" : bVar == b.REMOTE_CONFIG_UPDATE ? "startRemoteConfigUpdate" : bVar == b.REMOTE_KEY_INJECTION ? "startRemoteKeyInjection" : bVar == b.GET_TARGET_VERSION ? "getTargetVersionWithData" : bVar == b.GET_TARGET_VERSION_LIST ? "getTargetVersionListWithData" : bVar == b.SET_TARGET_VERSION ? "setTargetVersionWithData" : bVar == b.LOCAL_CONFIG_UPDATE ? "startLocalConfigUpdateWithData" : bVar == b.LOCAL_FIRMWARE_UPDATE ? "startLocalFirmwareUpdateWithData" : bVar == b.GET_FILE_SIGNATURE ? "getAPResourceSignature" : "none";
    }

    void A(String str) {
        this.n = str;
    }

    String A0() {
        return a(this.g);
    }

    void B(String str) {
        this.r = str;
    }

    k B0() {
        List<k> list = this.Z;
        if (list == null || list.size() == 0) {
            return null;
        }
        this.b0++;
        return this.Z.remove(0);
    }

    String C() {
        return this.o;
    }

    void D(String str) {
        this.M = str;
    }

    void E(String str) {
        this.C = str;
    }

    void F(String str) {
        this.W = str;
    }

    void G(String str) {
        this.V = str;
    }

    b H() {
        return this.g;
    }

    void I(String str) {
        this.s = str;
    }

    void J(String str) {
        this.t = str;
        List<b0> listA = c0.a(str);
        List<b0> list = this.u;
        if (list == null) {
            this.u = new ArrayList();
        } else {
            list.clear();
        }
        int size = listA.size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            for (int i3 = 0; i3 < listA.size(); i3++) {
                if (f0.h(f0.b(c0.a(c0.a(listA.get(i3).c), "DF856C").c).substring(2)) == i) {
                    this.u.add(listA.get(i3));
                    i++;
                }
            }
        }
        this.w = new ByteArrayOutputStream();
    }

    void K(String str) {
        this.N = str;
    }

    int L() {
        return this.o0;
    }

    int M() {
        return this.n0;
    }

    int N() {
        return this.H;
    }

    String O() {
        return this.z;
    }

    int P() {
        return this.D0;
    }

    String Q() {
        return this.S;
    }

    String R() {
        return this.R;
    }

    String S() {
        return this.m;
    }

    String T() {
        return this.A0;
    }

    String U() {
        return this.f0;
    }

    String V() {
        return this.d0;
    }

    int W() {
        return this.j0;
    }

    String X() {
        return this.i0;
    }

    String Y() {
        return this.e0;
    }

    String Z() {
        return this.U;
    }

    String a0() {
        return this.n;
    }

    void b(Hashtable<String, String> hashtable) {
        if (hashtable == null) {
            this.i = null;
        } else {
            this.i = new p(hashtable, this);
        }
    }

    String b0() {
        return this.r;
    }

    void c(String str) {
        this.K = str;
    }

    String c0() {
        return this.L;
    }

    void d(boolean z) {
        this.y = z;
    }

    BBDeviceOTAController.TargetVersionType d0() {
        return this.c0;
    }

    String e() {
        return this.b;
    }

    String e0() {
        return this.C;
    }

    String f() {
        return this.d;
    }

    String f0() {
        return this.v0;
    }

    void g(boolean z) {
        this.f = z;
    }

    String g0() {
        return this.W;
    }

    void h(String str) {
        this.q = str;
    }

    String h0() {
        return this.V;
    }

    void i(int i) {
        this.v = i;
    }

    String i0() {
        return this.s;
    }

    void j(String str) {
        this.A = str;
    }

    List<b0> j0() {
        return this.u;
    }

    String k() {
        return this.s0;
    }

    int k0() {
        return this.v;
    }

    BBDeviceController.ConnectionMode l() {
        return this.j;
    }

    ByteArrayOutputStream l0() {
        return this.w;
    }

    void m(String str) {
        this.O = str;
    }

    String m0() {
        return this.a;
    }

    o n() {
        return this.h;
    }

    String n0() {
        return this.c;
    }

    p o() {
        return this.i;
    }

    String o0() {
        return this.N;
    }

    void p(String str) {
        this.P = str;
    }

    void p0() {
        this.v++;
    }

    void q(String str) {
        this.Q = str;
    }

    boolean q0() {
        return this.z0;
    }

    byte[] r() {
        return this.l;
    }

    boolean r0() {
        return this.x;
    }

    String s() {
        return this.p;
    }

    boolean s0() {
        return this.e;
    }

    String t() {
        return this.B;
    }

    boolean t0() {
        return this.y;
    }

    public String toString() {
        return "SessionData{vendorID='" + this.a + "', appID='" + this.b + "', vendorSecret='" + this.c + "', appSecret='" + this.d + "', forceUpdate=" + this.e + ", stopProcess=" + this.f + ", operation=" + this.g + ", deviceInfoData=" + this.h + ", deviceInfoDataSP=" + this.i + ", connectionMode=" + this.j + ", bearerToken='" + this.k + "', encResource=" + Arrays.toString(this.l) + ", resourceType='" + this.m + "', singleMcuInfo='" + this.n + "', multipleMcuInfo='" + this.o + "', encResourceHash='" + this.p + "', encResourceVersion='" + this.q + "', sourceAndCmac='" + this.r + "', updateTargetBootloadVersion='" + this.s + "', updateTargetBootloaderRaw='" + this.t + "', updateTargetBootloaderCommandListSorted='" + this.u + "', updateTargetBootloaderCommandSteps='" + this.v + "', bootloaderUpdated='" + this.x + "', hasErrorDuringBootloaderUpdateAndNeedToExitPassThroughModeBeforeReturnResult='" + this.y + "', rawHexSignature='" + this.z + "', firmwareIndex=" + this.G + ", progressPercentage=" + this.H + ", challengeTMKxEncryptedR1='" + this.I + "', challengeResponseKEKEncryptedR1='" + this.J + "', challengeResponseKEKEncryptedR1InTr31Format='" + this.K + "', TMKxEncryptedKEK='" + this.L + "', TMKxEncryptedKEKInTr31Format='" + this.M + "', webServiceAuthSessionToken='" + this.N + "', kcvOfKek='" + this.O + "', mutualAuthorizationChallengeFullTlv='" + this.P + "', mutualAuthorizationConfirmFullTlvForKcvOfKek='" + this.Q + "', resourceGetterFullTlv='" + this.R + "', resourceAuthDataGetterFullTlv='" + this.S + "', otaKeyGetterFullTlv='" + this.T + "', signCode='" + this.U + "', tr31Flk='" + this.V + "', tr31Fak='" + this.W + "', tr31Wk='" + this.X + "', notifyStatus='" + this.Y + "', otaKeyList=" + this.Z + ", origOtaKeyListSize=" + this.a0 + ", injectedNumberOfKey=" + this.b0 + ", targetVersionType=" + this.c0 + ", setTargetVersionFirmwareVersion='" + this.d0 + "', setTargetVersionTerminalSettingVersion='" + this.e0 + "', setTargetVersionDeviceSettingVersion='" + this.f0 + "', setTargetVersionMainProcessorVersion='" + this.g0 + "', setTargetVersionCoprocessorVersion='" + this.h0 + "', setTargetVersionKeyProfileName='" + this.i0 + "', setTargetVersionKeyProfileID=" + this.j0 + ", setTargetApplyToAll=" + this.k0 + ", otaServerUrl='" + this.l0 + "', fallbackInput=" + this.m0 + ", pollingDeviceInfoWSP7XRetryCount=" + this.n0 + ", pollingDeviceInfoRetryCount=" + this.o0 + ", notifiedStarted=" + this.p0 + ", needChangeOTAResult=" + this.q0 + ", changeOTAResult=" + this.r0 + ", changeOTAResultMessage='" + this.s0 + "', encHexFilePath='" + this.t0 + "', encHex='" + this.u0 + "', tmk0='" + this.v0 + "', dekBDK='" + this.w0 + "', flagSkipInjectMmk1=" + this.x0 + ", flagTmk0CmacKcvMatch=" + this.y0 + ", authOnly=" + this.z0 + ", romId=" + this.A0 + ", fakDecryptedSignature=" + this.B0 + ", firmwareOperatingMode=" + this.C0 + ", remoteKeyInjectionRetryCnt=" + this.D0 + ", failedReason=" + this.E0 + AbstractJsonLexerKt.END_OBJ;
    }

    String u() {
        return this.A;
    }

    boolean u0() {
        return this.q0;
    }

    void v(String str) {
        this.z = str;
    }

    boolean v0() {
        return this.p0;
    }

    void w(String str) {
        this.S = str;
    }

    boolean w0() {
        return this.k0;
    }

    void x(String str) {
        this.R = str;
    }

    boolean x0() {
        return this.f;
    }

    void y(String str) {
        this.m = str;
    }

    void y0() {
        int i = this.o0;
        if (i > 0) {
            this.o0 = i - 1;
        }
    }

    void z(String str) {
        this.U = str;
    }

    void z0() {
        int i = this.n0;
        if (i > 0) {
            this.n0 = i - 1;
        }
    }

    int A() {
        return this.b0;
    }

    String B() {
        return this.O;
    }

    void C(String str) {
        this.L = str;
    }

    String D() {
        return this.P;
    }

    String E() {
        return this.Q;
    }

    String F() {
        return this.Y;
    }

    int G() {
        List<k> list = this.Z;
        if (list == null || list.size() == 0) {
            return 0;
        }
        return this.Z.size();
    }

    void H(String str) {
        this.X = str;
    }

    int I() {
        return this.a0;
    }

    String K() {
        return this.l0;
    }

    String c() {
        List<k> list = this.Z;
        if (list == null || list.size() == 0) {
            return TlvMap.ENTRY_MODE_CONTACT;
        }
        if (f0.k(this.Z.get(0).d())) {
            return this.Z.get(0).d();
        }
        String strC = this.Z.get(0).c();
        return (strC.equalsIgnoreCase("DEK") || strC.equalsIgnoreCase("DEK1") || strC.equalsIgnoreCase("DEK2") || strC.equalsIgnoreCase("DEK3") || strC.equalsIgnoreCase("DEK4") || strC.equalsIgnoreCase("MACK") || strC.equalsIgnoreCase("MACK1") || strC.equalsIgnoreCase("MACK2") || strC.equalsIgnoreCase("MACK3") || strC.equalsIgnoreCase("MACK4") || strC.equalsIgnoreCase("TEK") || strC.equalsIgnoreCase("TEK1") || strC.equalsIgnoreCase("TEK2") || strC.equalsIgnoreCase("TEK3") || strC.equalsIgnoreCase("TEK4") || strC.equalsIgnoreCase("CMACK")) ? "06" : (strC.equalsIgnoreCase("PEK0") || strC.equalsIgnoreCase("PEK1") || strC.equalsIgnoreCase("PEK2") || strC.equalsIgnoreCase("PEK3") || strC.equalsIgnoreCase("PEK4") || strC.equalsIgnoreCase("PEK5")) ? TlvMap.ENTRY_MODE_CONTACTLESS : (strC.equalsIgnoreCase("SPOC_MK_RA") || strC.equalsIgnoreCase("SPOC_MK_SR")) ? "08" : TlvMap.ENTRY_MODE_CONTACT;
    }

    void d(String str) {
        this.I = str;
    }

    void e(int i) {
        this.o0 = i;
    }

    void f(int i) {
        this.n0 = i;
    }

    String g() {
        return this.k;
    }

    String h() {
        return this.J;
    }

    void i(String str) {
        this.B = str;
    }

    BBDeviceOTAController.OTAResult j() {
        return this.r0;
    }

    void k(String str) {
        this.E0 = str;
    }

    void l(String str) {
        this.B0 = str;
    }

    String m() {
        return this.w0;
    }

    void n(String str) {
        this.E = str;
    }

    void o(String str) {
        this.o = str;
    }

    String p() {
        return this.u0;
    }

    String q() {
        return this.t0;
    }

    void r(String str) {
        this.Y = str;
    }

    void s(String str) {
        this.T = str;
    }

    void t(String str) {
        this.l0 = str;
    }

    void u(String str) {
        this.D = str;
    }

    String v() {
        return this.E0;
    }

    String w() {
        return this.B0;
    }

    Hashtable<String, Object> x() {
        return this.m0;
    }

    int y() {
        return this.G;
    }

    a z() {
        return this.C0;
    }

    String d() {
        String str;
        List<k> list = this.Z;
        if (list != null && list.size() != 0) {
            String strB = this.Z.get(0).b();
            if (f0.k(strB)) {
                return strB;
            }
            String strA = this.Z.get(0).a();
            if (strA.equalsIgnoreCase("DUKPT")) {
                str = TlvMap.SET_BUZZER_DISABLED_VALUE;
            } else if (strA.equalsIgnoreCase("MK_SK")) {
                str = "02";
            } else if (strA.equalsIgnoreCase("FK")) {
                str = "03";
            } else if (strA.equalsIgnoreCase("AES_DUKPT")) {
                str = "11";
            } else if (strA.equalsIgnoreCase("RSA_PUBLIC")) {
                str = "04";
            }
            String strC = this.Z.get(0).c();
            if (strC.equalsIgnoreCase("DEK")) {
                return str.concat("0202");
            }
            if (strC.equalsIgnoreCase("MACK")) {
                return str.concat("0404");
            }
            if (strC.equalsIgnoreCase("TEK")) {
                return str.concat("0303");
            }
            if (strC.equalsIgnoreCase("PEK0")) {
                return str.concat("0101");
            }
            if (strC.equalsIgnoreCase("PEK1")) {
                return str.concat("0909");
            }
            if (strC.equalsIgnoreCase("PEK2")) {
                return str.concat("0A0A");
            }
            if (strC.equalsIgnoreCase("PEK3")) {
                return str.concat("0B0B");
            }
            if (strC.equalsIgnoreCase("PEK4")) {
                return str.concat("0C0C");
            }
            if (strC.equalsIgnoreCase("PEK5")) {
                return str.concat("0D0D");
            }
            if (strC.equalsIgnoreCase("SPOC_MK_RA")) {
                return str.concat("0E0E");
            }
            if (strC.equalsIgnoreCase("SPOC_MK_SR")) {
                return str.concat("0F0F");
            }
            if (strC.equalsIgnoreCase("DEK1")) {
                return str.concat("1818");
            }
            if (strC.equalsIgnoreCase("DEK2")) {
                return str.concat("1919");
            }
            if (strC.equalsIgnoreCase("DEK3")) {
                return str.concat("2020");
            }
            if (strC.equalsIgnoreCase("DEK4")) {
                return str.concat("2121");
            }
            if (strC.equalsIgnoreCase("TEK1")) {
                return str.concat("2222");
            }
            if (strC.equalsIgnoreCase("TEK2")) {
                return str.concat("2323");
            }
            if (strC.equalsIgnoreCase("TEK3")) {
                return str.concat("2424");
            }
            if (strC.equalsIgnoreCase("TEK4")) {
                return str.concat("2525");
            }
            if (strC.equalsIgnoreCase("MACK1")) {
                return str.concat("2626");
            }
            if (strC.equalsIgnoreCase("MACK2")) {
                return str.concat("2727");
            }
            if (strC.equalsIgnoreCase("MACK3")) {
                return str.concat("2828");
            }
            if (strC.equalsIgnoreCase("MACK4")) {
                return str.concat("2929");
            }
            if (strC.equalsIgnoreCase("CMACK")) {
                return str.concat("3030");
            }
        }
        return "000000";
    }

    void e(boolean z) {
        this.q0 = z;
    }

    void f(boolean z) {
        this.p0 = z;
    }

    void g(String str) {
        this.p = str;
    }

    void h(int i) {
        this.D0 = i;
    }

    String i() {
        return this.I;
    }

    void b(String str) {
        this.J = str;
    }

    void e(String str) {
        this.s0 = str;
    }

    void f(String str) {
        this.u0 = str;
    }

    void g(int i) {
        this.H = i;
    }

    String b() {
        List<k> list = this.Z;
        if (list == null || list.size() == 0) {
            return "TMK0";
        }
        String strC = this.Z.get(0).c();
        return (strC.equalsIgnoreCase("DEK") || strC.equalsIgnoreCase("DEK1") || strC.equalsIgnoreCase("DEK2") || strC.equalsIgnoreCase("DEK3") || strC.equalsIgnoreCase("DEK4") || strC.equalsIgnoreCase("MACK") || strC.equalsIgnoreCase("MACK1") || strC.equalsIgnoreCase("MACK2") || strC.equalsIgnoreCase("MACK3") || strC.equalsIgnoreCase("MACK4") || strC.equalsIgnoreCase("TEK") || strC.equalsIgnoreCase("TEK1") || strC.equalsIgnoreCase("TEK2") || strC.equalsIgnoreCase("TEK3") || strC.equalsIgnoreCase("TEK4") || strC.equalsIgnoreCase("CMACK")) ? "TMK1" : (strC.equalsIgnoreCase("PEK0") || strC.equalsIgnoreCase("PEK1") || strC.equalsIgnoreCase("PEK2") || strC.equalsIgnoreCase("PEK3") || strC.equalsIgnoreCase("PEK4") || strC.equalsIgnoreCase("PEK5")) ? "TMK2" : (strC.equalsIgnoreCase("SPOC_MK_RA") || strC.equalsIgnoreCase("SPOC_MK_SR")) ? "TMK3" : "TMK0";
    }

    String J() {
        return this.T;
    }

    void a(Hashtable<String, String> hashtable) {
        if (hashtable == null) {
            this.h = null;
            return;
        }
        this.h = new o(hashtable, this);
        if (this.w0.equalsIgnoreCase("") || !this.v0.equalsIgnoreCase("")) {
            return;
        }
        this.v0 = new d0().a(this.h.j(), this.w0);
    }

    void a(BBDeviceController.ConnectionMode connectionMode) {
        this.j = connectionMode;
    }

    void a(String str) {
        this.k = str;
    }

    void a(byte[] bArr) {
        this.l = bArr;
    }

    void a(boolean z) {
        this.x = z;
    }

    void a(int i) {
        this.G = i;
    }

    void a(String str, String str2, String str3, String str4, String str5) {
        if (this.Z == null) {
            this.Z = new ArrayList();
        }
        this.Z.add(new k(str, str2, str3, str4, str5));
    }

    String a() {
        List<k> list = this.Z;
        if (list == null || list.size() == 0) {
            return null;
        }
        return this.Z.get(0).c();
    }

    void a(boolean z, BBDeviceOTAController.OTAResult oTAResult, String str) {
        this.q0 = z;
        if (z) {
            this.r0 = oTAResult;
            this.s0 = str;
        }
    }

    void a(BBDeviceOTAController.OTAResult oTAResult) {
        this.r0 = oTAResult;
    }

    void b(boolean z) {
        this.x0 = z;
    }

    void c(int i) {
        this.b0 = i;
    }

    void b(int i) {
        if (i == 0) {
            this.C0 = a.APPLICATION;
            return;
        }
        if (i == 1) {
            this.C0 = a.BOOTLOADER;
        } else if (i == 2) {
            this.C0 = a.RECOVERY;
        } else {
            this.C0 = a.UNKNOWN;
        }
    }

    void c(boolean z) {
        this.y0 = z;
    }

    void d(int i) {
        this.a0 = i;
    }
}
