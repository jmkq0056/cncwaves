package com.stripe.bbpos.bbdevice.ota;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.ota.b;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final class BBDeviceOTAController {
    private static BBDeviceOTAController e;
    static BBDeviceOTAControllerListener f;
    private static com.stripe.bbpos.bbdevice.ota.a g;
    private static final Object h = new Object();
    private static a i = a.OTAFLOW_WISECUBE;
    private static final String j = BBDeviceOTAController.class.getName();
    private com.stripe.bbpos.bbdevice.ota.b a;
    private com.stripe.bbpos.bbdevice.ota.c b;
    private BBDeviceController c;
    Handler d;

    public interface BBDeviceOTAControllerListener {
        void onReturnLocalConfigUpdateResult(OTAResult oTAResult, String str);

        void onReturnLocalFirmwareUpdateResult(OTAResult oTAResult, String str);

        void onReturnOTADebugLog(Hashtable<String, Object> hashtable);

        void onReturnOTAProgress(double d);

        void onReturnRemoteConfigUpdateResult(OTAResult oTAResult, String str);

        void onReturnRemoteFirmwareUpdateResult(OTAResult oTAResult, String str);

        void onReturnRemoteKeyInjectionResult(OTAResult oTAResult, String str);

        void onReturnSetTargetVersionResult(OTAResult oTAResult, String str);

        void onReturnTargetVersionListResult(OTAResult oTAResult, List<Hashtable<String, String>> list, String str);

        void onReturnTargetVersionResult(OTAResult oTAResult, Hashtable<String, String> hashtable);
    }

    public enum BBDeviceOTAControllerState {
        IDLE,
        DEVICE_BUSY
    }

    public enum DebugLogType {
        FUNCTION,
        CALLBACK,
        EXTRA_DEBUG_MESSAGE
    }

    public enum OTAResult {
        SUCCESS,
        BATTERY_LOW_ERROR,
        SETUP_ERROR,
        DEVICE_COMM_ERROR,
        SERVER_COMM_ERROR,
        FAILED,
        STOPPED,
        NO_UPDATE_REQUIRED,
        INCOMPATIBLE_FIRMWARE_HEX,
        INCOMPATIBLE_CONFIG_HEX
    }

    public enum TargetVersionType {
        FIRMWARE,
        CONFIG,
        KEY_PROFILE
    }

    enum a {
        OTAFlow_OLD,
        OTAFLOW_WISECUBE,
        OTAFLOW_P1000_FW
    }

    enum b {
        REMOTE,
        LOCAL
    }

    enum c {
        WisePOS1,
        WisePOS2,
        WisePOS1_1,
        WisePOSPlus,
        WisePOS_SEVEN,
        WisePOS_TOUCH,
        WisePOS_GO
    }

    private BBDeviceOTAController(Context context, BBDeviceOTAControllerListener bBDeviceOTAControllerListener) {
        r.a(this);
        this.d = new Handler(Looper.getMainLooper());
        f = bBDeviceOTAControllerListener;
        g = new com.stripe.bbpos.bbdevice.ota.a(context, this);
        this.a = new com.stripe.bbpos.bbdevice.ota.b(context, this);
        this.b = new com.stripe.bbpos.bbdevice.ota.c(context, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(double d) {
        f.onReturnOTAProgress(d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(OTAResult oTAResult, String str) {
        f.onReturnRemoteConfigUpdateResult(oTAResult, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(OTAResult oTAResult, String str) {
        f.onReturnRemoteFirmwareUpdateResult(oTAResult, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(OTAResult oTAResult, String str) {
        f.onReturnRemoteKeyInjectionResult(oTAResult, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(OTAResult oTAResult, String str) {
        f.onReturnSetTargetVersionResult(oTAResult, str);
    }

    public static String getApiVersion() {
        r.b("[BBDeviceOTAController] [getApiVersion] versionStr : 1.6.29");
        return "1.6.29";
    }

    public static BBDeviceOTAController getInstance(Context context, BBDeviceOTAControllerListener bBDeviceOTAControllerListener) {
        if (e == null) {
            if (context == null) {
                r.a("", "[BBDeviceOTAController] [getInstance] throw IllegalArgumentException \"Context cannot be null\"", DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("Context cannot be null");
            }
            if (bBDeviceOTAControllerListener == null) {
                r.a("", "[BBDeviceOTAController] [getInstance] throw IllegalArgumentException \"BBDeviceOTAControllerListener cannot be null\"", DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new IllegalArgumentException("BBDeviceOTAControllerListener cannot be null");
            }
            e = new BBDeviceOTAController(context, bBDeviceOTAControllerListener);
        } else if (bBDeviceOTAControllerListener != null) {
            f = bBDeviceOTAControllerListener;
        }
        return e;
    }

    public static void setDebugLogEnabled(boolean z) {
        r.b("[BBDeviceOTAController] [setDebugLogEnabled] isEnabled : " + z);
        r.a(z, e);
    }

    void a(String str) {
    }

    void b(final double d) {
        r.a("[BBDeviceOTAController] [onReturnOTAProgress]", " percentage : " + d, DebugLogType.CALLBACK);
        this.d.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceOTAController.a(d);
            }
        });
    }

    void g(OTAResult oTAResult, String str) {
        r.a("[BBDeviceOTAController] [onReturnAPResourceSignatureResult]", " otaResult : " + oTAResult + ", message : " + str, DebugLogType.CALLBACK);
    }

    public BBDeviceOTAControllerState getBBDeviceOTAControllerState() {
        r.b("[BBDeviceOTAController] [BBDeviceOTAControllerState] state : " + g.i());
        BBDeviceOTAControllerState bBDeviceOTAControllerStateI = g.i();
        BBDeviceOTAControllerState bBDeviceOTAControllerState = BBDeviceOTAControllerState.DEVICE_BUSY;
        return (bBDeviceOTAControllerStateI == bBDeviceOTAControllerState || this.a.a() == bBDeviceOTAControllerState || this.b.a() == bBDeviceOTAControllerState) ? bBDeviceOTAControllerState : BBDeviceOTAControllerState.IDLE;
    }

    public void getTargetVersionListWithData(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        r.a("[BBDeviceOTAController] [getTargetVersionListWithData]", " input : " + f0.c(hashtable), DebugLogType.FUNCTION);
        a(hashtable);
    }

    public void getTargetVersionWithData(Hashtable<String, String> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        r.a("[BBDeviceOTAController] [getTargetVersionWithData]", " input : " + f0.c(hashtable), DebugLogType.FUNCTION);
        b(hashtable);
    }

    void h(final OTAResult oTAResult, final String str) {
        r.a("[BBDeviceOTAController] [onReturnLocalConfigUpdateResult]", " otaResult : " + oTAResult + ", message : " + str, DebugLogType.CALLBACK);
        this.d.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceOTAController.a(oTAResult, str);
            }
        });
    }

    void i(final OTAResult oTAResult, final String str) {
        r.a("[BBDeviceOTAController] [onReturnLocalFirmwareUpdateResult]", " otaResult : " + oTAResult + ", message : " + str, DebugLogType.CALLBACK);
        this.d.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceOTAController.b(oTAResult, str);
            }
        });
    }

    public void internalFunction1(boolean z, String str) {
        synchronized (h) {
            r.c("[BBDeviceOTAController] [internalFunction1] arg0 : " + z + ", arg1 : " + str + ", otaFlowVersion : " + i);
            if (z) {
                if (i == a.OTAFlow_OLD) {
                    g.f(str);
                } else if (i == a.OTAFLOW_P1000_FW) {
                    this.b.f(str);
                } else {
                    this.a.f(str);
                }
                i = a.OTAFLOW_WISECUBE;
            } else if (i == a.OTAFlow_OLD) {
                g.a(str);
            } else if (i == a.OTAFLOW_P1000_FW) {
                this.b.a(str);
            } else {
                this.a.a(str);
            }
        }
    }

    public void internalFunction2(Hashtable<String, String> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        r.c("[BBDeviceOTAController] [internalFunction2] arg0 : " + hashtable);
        if (hashtable.containsKey("spWCConnectionHealthCheck")) {
            if (this.a.d() == b.a.REQUEST_SP_DEVICE_INFO_FROM_7MD_FW) {
                this.a.c(hashtable);
                return;
            } else {
                this.a.b(hashtable);
                return;
            }
        }
        if (this.a.d() == b.a.POLLING_DEVICE_INFO) {
            this.a.a(hashtable);
            return;
        }
        if (i == a.OTAFlow_OLD) {
            g.a(hashtable);
        } else if (i == a.OTAFLOW_P1000_FW) {
            this.b.a(hashtable);
        } else {
            this.a.c(hashtable);
        }
    }

    void j(final OTAResult oTAResult, final String str) {
        r.a("[BBDeviceOTAController] [onReturnRemoteConfigUpdateResult]", " otaResult : " + oTAResult + ", message : " + str, DebugLogType.CALLBACK);
        this.d.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceOTAController.c(oTAResult, str);
            }
        });
    }

    void k(final OTAResult oTAResult, final String str) {
        r.a("[BBDeviceOTAController] [onReturnRemoteFirmwareUpdateResult]", " otaResult : " + oTAResult + ", message : " + str, DebugLogType.CALLBACK);
        this.d.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceOTAController.d(oTAResult, str);
            }
        });
    }

    void l(final OTAResult oTAResult, final String str) {
        r.a("[BBDeviceOTAController] [onReturnRemoteKeyInjectionResult]", " otaResult : " + oTAResult + ", message : " + str, DebugLogType.CALLBACK);
        this.d.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceOTAController.e(oTAResult, str);
            }
        });
    }

    void m(final OTAResult oTAResult, final String str) {
        r.a("[BBDeviceOTAController] [onReturnSetTargetVersionResult]", " otaResult : " + oTAResult + ", message : " + str, DebugLogType.CALLBACK);
        this.d.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceOTAController.f(oTAResult, str);
            }
        });
    }

    void n(OTAResult oTAResult, String str) {
        r.a("[BBDeviceOTAController] [onReturnVerifyCertResult]", " otaResult : " + oTAResult + ", message : " + str, DebugLogType.CALLBACK);
        this.d.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceOTAController.c();
            }
        });
    }

    public void setBBDeviceController(Object obj) throws BBDeviceControllerNotSupportOTAException, IllegalArgumentException {
        r.a("[BBDeviceOTAController] [setBBDeviceController]", " bbDeviceController : " + obj, DebugLogType.FUNCTION);
        if (obj instanceof BBDeviceController) {
            this.c = (BBDeviceController) obj;
        }
        g.a(obj);
        this.a.a(obj);
        this.b.a(obj);
    }

    public void setOTAServerURL(String str) throws IllegalArgumentException {
        r.a("[BBDeviceOTAController] [setOTAServerURL]", " url : " + str, DebugLogType.FUNCTION);
        if (str.endsWith(".svc/")) {
            g.e(str);
            this.a.e("abcd");
            this.b.e("abcd");
        } else {
            g.e(str + "tms1/");
            if (str.startsWith("http://")) {
                this.a.e(str);
                this.b.e(str);
            } else {
                this.a.e(str + "tms2/sdk-service/");
                this.b.e(str + "tms2/sdk-service/");
            }
        }
        g.a((Proxy) null);
        this.a.a((Proxy) null);
        this.b.a((Proxy) null);
    }

    public void setTargetVersionWithData(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        r.a("[BBDeviceOTAController] [setTargetVersionWithData]", " input : " + f0.c(hashtable), DebugLogType.FUNCTION);
        c(hashtable);
    }

    public void startLocalConfigUpdateWithData(Hashtable<String, Object> hashtable) throws IllegalStateException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException {
        r.a("[BBDeviceOTAController] [startLocalConfigUpdateWithData]", " input : " + f0.c(hashtable), DebugLogType.FUNCTION);
        d(hashtable);
    }

    public void startLocalFirmwareUpdateWithData(Hashtable<String, Object> hashtable) throws IllegalStateException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException {
        r.a("[BBDeviceOTAController] [startLocalFirmwareUpdateWithData]", " input : " + f0.c(hashtable), DebugLogType.FUNCTION);
        e(hashtable);
    }

    public void startRemoteConfigUpdate(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        r.a("[BBDeviceOTAController] [startRemoteConfigUpdate]", " input : " + f0.c(hashtable), DebugLogType.FUNCTION);
        f(hashtable);
    }

    public void startRemoteFirmwareUpdate(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        r.a("[BBDeviceOTAController] [startRemoteFirmwareUpdate]", " input : " + f0.c(hashtable), DebugLogType.FUNCTION);
        g(hashtable);
    }

    public void startRemoteKeyInjection(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        r.a("[BBDeviceOTAController] [startRemoteKeyInjection]", " input : " + f0.c(hashtable), DebugLogType.FUNCTION);
        h(hashtable);
    }

    public void stop() throws IllegalStateException {
        r.a("[BBDeviceOTAController] [stop]", "", DebugLogType.FUNCTION);
        BBDeviceOTAControllerState bBDeviceOTAControllerStateI = g.i();
        BBDeviceOTAControllerState bBDeviceOTAControllerState = BBDeviceOTAControllerState.DEVICE_BUSY;
        if (bBDeviceOTAControllerStateI == bBDeviceOTAControllerState) {
            g.J();
        }
        if (this.a.a() == bBDeviceOTAControllerState) {
            this.a.r();
        }
        if (this.b.a() == bBDeviceOTAControllerState) {
            this.b.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(OTAResult oTAResult, String str) {
        f.onReturnLocalConfigUpdateResult(oTAResult, str);
    }

    void c(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        if (i == a.OTAFLOW_P1000_FW) {
            i = a.OTAFLOW_WISECUBE;
        }
        if (i == a.OTAFlow_OLD) {
            g.d(hashtable);
        } else {
            this.a.f(hashtable);
        }
    }

    void d(Hashtable<String, Object> hashtable) throws IllegalStateException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException {
        if (i == a.OTAFLOW_P1000_FW) {
            i = a.OTAFLOW_WISECUBE;
        }
        if (i == a.OTAFlow_OLD) {
            g.f(hashtable);
        } else {
            this.a.g(hashtable);
        }
    }

    void e(Hashtable<String, Object> hashtable) throws IllegalStateException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException {
        if (i == a.OTAFLOW_P1000_FW) {
            i = a.OTAFLOW_WISECUBE;
        }
        if (i == a.OTAFlow_OLD) {
            g.g(hashtable);
        } else {
            this.a.h(hashtable);
        }
    }

    void f(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        a aVar = i;
        a aVar2 = a.OTAFLOW_WISECUBE;
        if ((aVar == aVar2 || i == a.OTAFLOW_P1000_FW) && this.c != null) {
            if (a(c.WisePOSPlus) && this.c.getConnectionMode() == BBDeviceController.ConnectionMode.SERIAL) {
                i = a.OTAFLOW_P1000_FW;
            } else {
                i = aVar2;
            }
        }
        if (i == a.OTAFlow_OLD) {
            g.h(hashtable);
        } else if (i == a.OTAFLOW_P1000_FW) {
            this.b.b(hashtable);
        } else {
            this.a.i(hashtable);
        }
    }

    void g(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        a aVar = i;
        a aVar2 = a.OTAFLOW_WISECUBE;
        if ((aVar == aVar2 || i == a.OTAFLOW_P1000_FW) && this.c != null) {
            if (a(c.WisePOSPlus) && this.c.getConnectionMode() == BBDeviceController.ConnectionMode.SERIAL) {
                i = a.OTAFLOW_P1000_FW;
            } else {
                i = aVar2;
            }
        }
        if (i == a.OTAFlow_OLD) {
            g.i(hashtable);
        } else if (i == a.OTAFLOW_P1000_FW) {
            this.b.c(hashtable);
        } else {
            this.a.j(hashtable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(OTAResult oTAResult, Hashtable hashtable) {
        f.onReturnTargetVersionResult(oTAResult, hashtable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(OTAResult oTAResult, String str) {
        f.onReturnLocalFirmwareUpdateResult(oTAResult, str);
    }

    void h(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        if (i == a.OTAFLOW_P1000_FW) {
            i = a.OTAFLOW_WISECUBE;
        }
        if (i == a.OTAFlow_OLD) {
            g.j(hashtable);
        } else {
            this.a.k(hashtable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(OTAResult oTAResult, List list, String str) {
        f.onReturnTargetVersionListResult(oTAResult, list, str);
    }

    void b(final OTAResult oTAResult, final Hashtable<String, String> hashtable) {
        r.a("[BBDeviceOTAController] [onReturnTargetVersionResult]", " otaResult : " + oTAResult + ", data : " + hashtable, DebugLogType.CALLBACK);
        this.d.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceOTAController.a(oTAResult, hashtable);
            }
        });
    }

    void a(a aVar) {
        a aVar2 = a.OTAFlow_OLD;
        if (aVar == aVar2) {
            i = aVar2;
            return;
        }
        a aVar3 = a.OTAFLOW_P1000_FW;
        if (aVar == aVar3) {
            i = aVar3;
        } else {
            i = a.OTAFLOW_WISECUBE;
        }
    }

    void b(final OTAResult oTAResult, final List<Hashtable<String, String>> list, final String str) {
        r.a("[BBDeviceOTAController] [onReturnTargetVersionListResult]", " otaResult : " + oTAResult + ", data : " + list + ", message : " + str, DebugLogType.CALLBACK);
        this.d.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceOTAController.a(oTAResult, list, str);
            }
        });
    }

    static String b() {
        String strB = f0.b("persist.bbpos.product_id", "");
        Locale locale = Locale.ROOT;
        String upperCase = strB.toUpperCase(locale);
        if (!upperCase.equalsIgnoreCase("")) {
            return upperCase.length() > 4 ? upperCase.substring(0, 4) : upperCase;
        }
        String upperCase2 = f0.b("ro.product.model", "").toUpperCase(locale);
        if (upperCase2.startsWith("WSC6")) {
            return "WSC6";
        }
        if (upperCase2.startsWith("WSC5")) {
            return "WSC5";
        }
        if (upperCase2.startsWith("WSS5")) {
            return "WSS5";
        }
        if (upperCase2.startsWith("WTH1")) {
            return "WTH1";
        }
        if (upperCase2.startsWith("WTP1")) {
            return "WTP1";
        }
        if (upperCase2.startsWith("WGO1")) {
            return "WGO1";
        }
        if (upperCase2.startsWith("WGP1")) {
            return "WGP1";
        }
        if (upperCase2.startsWith("WSP7")) {
            return "WSP7";
        }
        if (upperCase2.startsWith("WSC4")) {
            return "WSC4";
        }
        if (upperCase2.startsWith("WSC3")) {
            return "WSC3";
        }
        if (upperCase2.startsWith("WSC2")) {
            return "WSC2";
        }
        if (upperCase2.startsWith("WSC1")) {
            return "WSC1";
        }
        String str = Build.MODEL;
        if (str.equalsIgnoreCase("P1000") || str.equalsIgnoreCase("WiseposPlus") || str.equalsIgnoreCase("WiseposNeo") || str.equalsIgnoreCase("WiseposTouch") || str.replace(" ", "").equalsIgnoreCase("WiseposE") || str.replace(" ", "").equalsIgnoreCase("WiseposEPlus") || str.replace(" ", "").equalsIgnoreCase("WiseposE+") || upperCase.startsWith("WSC5") || upperCase.startsWith("WSS5")) {
            return "WSC5";
        }
        String str2 = Build.HARDWARE;
        if (str2.equalsIgnoreCase("mt6735")) {
            return "WSC2";
        }
        if (str2.equalsIgnoreCase("MT6771")) {
            return "WSP7";
        }
        return "WSC4";
    }

    c a() {
        String strB = f0.b("persist.bbpos.product_id", "");
        Locale locale = Locale.ROOT;
        String upperCase = strB.toUpperCase(locale);
        if (!upperCase.startsWith("WSC6") && !upperCase.startsWith("WTH1") && !upperCase.startsWith("WTP1")) {
            if (upperCase.startsWith("WGO1")) {
                return c.WisePOS_GO;
            }
            if (upperCase.startsWith("WGP1")) {
                return c.WisePOS_GO;
            }
            String upperCase2 = f0.b("ro.product.model", "").toUpperCase(locale);
            if (!upperCase2.startsWith("WSC6") && !upperCase2.startsWith("WTH1") && !upperCase2.startsWith("WTP1")) {
                if (upperCase2.startsWith("RK3326_GO")) {
                    return c.WisePOS_GO;
                }
                String str = Build.MODEL;
                if (!str.equalsIgnoreCase("P1000") && !str.equalsIgnoreCase("WiseposPlus") && !str.equalsIgnoreCase("WiseposNeo") && !str.equalsIgnoreCase("WiseposTouch") && !str.replace(" ", "").equalsIgnoreCase("WiseposE") && !str.replace(" ", "").equalsIgnoreCase("WiseposEPlus") && !str.replace(" ", "").equalsIgnoreCase("WiseposE+") && !upperCase.startsWith("WSC5") && !upperCase.startsWith("WSS5")) {
                    String str2 = Build.HARDWARE;
                    if (str2.equalsIgnoreCase("mt6735")) {
                        return c.WisePOS2;
                    }
                    if (str2.equalsIgnoreCase("MT6771")) {
                        return c.WisePOS_SEVEN;
                    }
                    return c.WisePOS1_1;
                }
                return c.WisePOSPlus;
            }
            return c.WisePOS_TOUCH;
        }
        return c.WisePOS_TOUCH;
    }

    public void setOTAServerURL(String str, String str2, String str3) throws IllegalArgumentException {
        setOTAServerURL(str);
        try {
            Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(str2, Integer.parseInt(str3)));
            g.a(proxy);
            this.a.a(proxy);
            this.b.a(proxy);
        } catch (Exception unused) {
            throw new IllegalArgumentException();
        }
    }

    boolean a(c cVar) {
        return a() == cVar;
    }

    void a(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        if (i == a.OTAFLOW_P1000_FW) {
            i = a.OTAFLOW_WISECUBE;
        }
        if (i == a.OTAFlow_OLD) {
            g.b(hashtable);
        } else {
            this.a.d(hashtable);
        }
    }

    void b(Hashtable<String, String> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        if (i == a.OTAFLOW_P1000_FW) {
            i = a.OTAFLOW_WISECUBE;
        }
        if (i == a.OTAFlow_OLD) {
            g.c(hashtable);
        } else {
            this.a.e(hashtable);
        }
    }
}
