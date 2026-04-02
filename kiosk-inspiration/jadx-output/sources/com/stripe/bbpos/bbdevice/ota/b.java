package com.stripe.bbpos.bbdevice.ota;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.bbpos.bbdevice.ota.y;
import com.stripe.hardware.emv.TlvMap;
import java.io.File;
import java.io.IOException;
import java.net.Proxy;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
final class b {
    BBDeviceController b;
    private BBDeviceOTAController c;
    private Context d;
    private a e;
    private y g;
    private m h;
    private j i;
    HandlerThread j;
    Handler k;
    private HandlerThread l;
    private Handler m;
    private l n;
    private final Object a = new Object();
    String f = "https://api.emms.bbpos.com/tms2/deviceasset/";

    enum a {
        IDLE,
        REQUEST_SP_DEVICE_INFO_FROM_7MD_FW,
        RECEIVED_SP_DEVICE_INFO_FROM_7MD_FW,
        REQUEST_DEVICE_INFO_FROM_FW,
        RECEIVED_DEVICE_INFO_FROM_FW,
        REQUEST_WEB_SERVICE_LOGIN_TO_TMS,
        RECEIVED_WEB_SERVICE_LOGIN_FROM_TMS,
        REQUEST_WEB_SERVICE_GET_RESOURCE_TO_TMS,
        RECEIVED_WEB_SERVICE_GET_RESOURCE_FROM_TMS,
        REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_MODE_RESET,
        RECEIVED_EXIT_ACQUIRE_MODE_FOR_MODE_RESET,
        REQUEST_FW_ENTER_ACQUIRE_MODE,
        RECEIVED_ENTERED_ACQUIRE_MODE,
        SEND_INJECT_MMK1,
        RECEIVED_INJECT_MMK1_RESULT,
        REQUEST_KEK_FOR_INJECT_TMK0,
        RECEIVED_ENC_KEK_FOR_INJECT_TMK0,
        SEND_KEK_KCV_OR_CMAC_KCV_TO_FW_FOR_INJECT_TMK0,
        RECEIVED_KEK_KCV_OR_CMAC_KCV_RESULT_FROM_FW_FOR_INJECT_TMK0,
        SEND_INJECT_TMK0,
        RECEIVED_INJECT_TMK0_RESULT,
        REQUEST_FW_ERASE_MEMORY,
        RECEIVED_ERASED_MEMORY,
        SEND_WEB_SERVICE_NOTIFY_START_TO_TMS,
        RECEIVED_WEB_SERVICE_NOTIFY_START_FROM_TMS,
        SENDING_ENCRYPTED_HEX_BLOCK_DATA_TO_FW,
        REQUEST_CHALLENGE_R1_FROM_FW,
        RECEIVED_CHALLENGE_TMK_X_ENCRYPTED_R1_FROM_FW,
        SEND_CHALLENGE_TMK_X_ENCRYPTED_R1_TO_TMS,
        RECEIVED_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_FROM_TMS,
        SEND_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_TO_FW,
        RECEIVED_KCV_OF_KEK_FROM_FW,
        SEND_KCV_OF_KEK_TO_TMS,
        RECEIVED_SEND_KCV_OF_KEK_FROM_TMS,
        REQUEST_RESOURCE_AUTH_DATA_FROM_TMS,
        RECEIVED_RESOURCE_AUTH_DATA_FROM_TMS,
        SEND_TR31_FLK_TO_FW,
        RECEIVED_SEND_TR31_FLK_TO_FW,
        SEND_TR31_FAK_TO_FW,
        RECEIVED_SEND_TR31_FAK_TO_FW,
        SEND_ENCRYPTED_SIGN_CODE_TO_FW,
        RECEIVED_SEND_ENCRYPTED_SIGN_CODE_FROM_FW,
        SEND_OTA_COMPLETE_TO_FW,
        RECEIVED_SEND_OTA_COMPLETED_FROM_FW,
        REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_COMPLETED,
        RECEIVED_EXIT_ACQUIRE_MODE_FOR_COMPLETED,
        REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_STOP,
        RECEIVED_EXIT_ACQUIRE_MODE_FOR_STOP,
        REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_ERROR,
        RECEIVED_EXIT_ACQUIRE_MODE_FOR_ERROR,
        SEND_WEB_SERVICE_NOTIFY_COMPLETED_TO_TMS,
        RECEIVED_WEB_SERVICE_NOTIFY_COMPLETED_FROM_TMS,
        POLLING_WSP7X_DEVICE_INFO,
        SEND_SERIAL_INIT_COMMAND_AGAIN,
        POLLING_DEVICE_INFO,
        REQUEST_WEB_SERVICE_GET_TARGET_VERSION_TO_TMS,
        RECEIVED_WEB_SERVICE_GET_TARGET_VERSION_FROM_TMS,
        REQUEST_WEB_SERVICE_GET_TARGET_VERSION_LIST_TO_TMS,
        RECEIVED_WEB_SERVICE_GET_TARGET_VERSION_LIST_FROM_TMS,
        REQUEST_WEB_SERVICE_SET_TARGET_VERSION_TO_TMS,
        RECEIVED_WEB_SERVICE_SET_TARGET_VERSION_FROM_TMS,
        SEND_WEB_SERVICE_NOTIFY_KEY_INJECTION_START_TO_TMS,
        RECEIVED_WEB_SERVICE_NOTIFY_KEY_INJECTION_START_FROM_TMS,
        REQUEST_WEB_SERVICE_GET_OTA_KEY_LIST_TO_TMS,
        RECEIVED_WEB_SERVICE_GET_OTA_KEY_LIST_FROM_TMS,
        REQUEST_WEB_SERVICE_GET_OTA_KEY_TO_TMS,
        RECEIVED_WEB_SERVICE_GET_OTA_KEY_FROM_TMS,
        SEND_TR31_WK_TO_FW,
        RECEIVED_SEND_TR31_WK_TO_FW,
        SEND_WEB_SERVICE_NOTIFY_KEY_INJECTION_DONE_TO_TMS,
        RECEIVED_WEB_SERVICE_NOTIFY_KEY_INJECTION_DONE_FROM_TMS,
        REQUEST_FW_EXIT_ACQUIRE_MODE_AFTER_KEY_INJECTION,
        RECEIVED_EXIT_ACQUIRE_MODE_AFTER_KEY_INJECTION,
        REQUEST_WEB_SERVICE_GET_FILE_SIGNATURE_TO_TMS,
        RECEIVED_WEB_SERVICE_GET_FILE_SIGNATURE_FROM_TMS
    }

    b(Context context, BBDeviceOTAController bBDeviceOTAController) {
        this.d = context;
        this.c = bBDeviceOTAController;
        HandlerThread handlerThread = new HandlerThread("OTA-Cube-Flow-General-Thread-1");
        this.j = handlerThread;
        handlerThread.start();
        this.k = new Handler(this.j.getLooper());
        a(a.IDLE);
        this.i = new j(this);
        this.h = new m(this);
        HandlerThread handlerThread2 = new HandlerThread("OTA-WatchDog-Thread-1");
        this.l = handlerThread2;
        handlerThread2.start();
        this.m = new Handler(this.l.getLooper());
        l lVar = new l(this, this.m);
        this.n = lVar;
        this.m.post(lVar);
    }

    private void b(String str) {
    }

    void a(a aVar) {
        synchronized (this.a) {
            this.e = aVar;
        }
    }

    j b() {
        return this.i;
    }

    BBDeviceOTAController c() {
        return this.c;
    }

    a d() {
        a aVar;
        synchronized (this.a) {
            aVar = this.e;
        }
        return aVar;
    }

    void e(String str) throws IllegalArgumentException {
        if (str == null || str.equals("")) {
            r.a("", "[BBDeviceOTAController] [setOTAServerURL] throw IllegalArgumentException \"Not a valid url\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalArgumentException("Not a valid url");
        }
        this.f = str;
    }

    m f() {
        return this.h;
    }

    boolean g() {
        a aVar = this.e;
        return aVar == a.REQUEST_CHALLENGE_R1_FROM_FW || aVar == a.RECEIVED_CHALLENGE_TMK_X_ENCRYPTED_R1_FROM_FW || aVar == a.SEND_CHALLENGE_TMK_X_ENCRYPTED_R1_TO_TMS || aVar == a.RECEIVED_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_FROM_TMS || aVar == a.SEND_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_TO_FW || aVar == a.RECEIVED_KCV_OF_KEK_FROM_FW || aVar == a.SEND_KCV_OF_KEK_TO_TMS || aVar == a.RECEIVED_SEND_KCV_OF_KEK_FROM_TMS || aVar == a.REQUEST_WEB_SERVICE_GET_OTA_KEY_TO_TMS || aVar == a.RECEIVED_WEB_SERVICE_GET_OTA_KEY_FROM_TMS || aVar == a.SEND_TR31_WK_TO_FW || aVar == a.RECEIVED_SEND_TR31_WK_TO_FW;
    }

    void h(Hashtable<String, Object> hashtable) throws IllegalStateException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException {
        b("[startLocalFirmwareUpdateWithData]");
        q();
        y.b bVar = y.b.LOCAL_FIRMWARE_UPDATE;
        a(bVar);
        a(hashtable, bVar);
    }

    void i(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        b("[startRemoteConfigUpdateCube]");
        q();
        y.b bVar = y.b.REMOTE_CONFIG_UPDATE;
        a(bVar, hashtable.get("networkChecking"));
        a(hashtable, bVar);
    }

    void j(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        b("[startRemoteFirmwareUpdateCube]");
        q();
        y.b bVar = y.b.REMOTE_FIRMWARE_UPDATE;
        a(bVar, hashtable.get("networkChecking"));
        a(hashtable, bVar);
    }

    void k(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        b("[startRemoteKeyInjection]");
        q();
        y.b bVar = y.b.REMOTE_KEY_INJECTION;
        a(bVar, hashtable.get("networkChecking"));
        a(hashtable, bVar);
    }

    void n() {
        if (this.g.p().equalsIgnoreCase("") && this.g.q().equalsIgnoreCase("")) {
            c(BBDeviceOTAController.OTAResult.FAILED, "Missing update file");
            return;
        }
        if (this.g.f0().equalsIgnoreCase("") && this.g.m().equalsIgnoreCase("")) {
            c(BBDeviceOTAController.OTAResult.FAILED, "Missing dekBDK");
            return;
        }
        if (this.g.p().equalsIgnoreCase("") && !this.g.q().equalsIgnoreCase("")) {
            String strQ = this.g.q();
            if (new File(strQ).exists()) {
                try {
                    this.g.f(f0.f(strQ).trim());
                } catch (IOException unused) {
                    c(BBDeviceOTAController.OTAResult.FAILED, "Input hex file can't be accessed");
                }
            } else {
                c(BBDeviceOTAController.OTAResult.FAILED, "Input hex file doesn't exist");
            }
        }
        String strP = this.g.p();
        if (!f0.j(strP)) {
            c(BBDeviceOTAController.OTAResult.FAILED, "Invalid encHex or encHexFile");
            return;
        }
        try {
            List<b0> listA = c0.a(strP);
            String strB = f0.b(c0.a(listA, "DF861E").c);
            String strB2 = f0.b(c0.a(listA, "DF8629").c);
            String strB3 = f0.b(c0.a(listA, "DF863E").c);
            String strB4 = f0.b(c0.a(listA, "DF866D").c);
            String strB5 = f0.b(c0.a(listA, "DF866F").c);
            String strB6 = f0.b(c0.a(listA, "DF866E").c);
            String strB7 = f0.b(c0.a(listA, "DF8728").c);
            String str = new String(f0.i(strB6));
            String strB8 = f0.b(c0.a(listA, "DF8771").c);
            String strB9 = f0.b(c0.a(listA, "DF8773").c);
            String strB10 = f0.b(c0.a(listA, "DF8774").c);
            String strB11 = f0.b(c0.a(listA, "DF8775").c);
            String strB12 = f0.b(c0.a(listA, "DF8776").c);
            String strB13 = f0.b(c0.a(listA, "DF8777").c);
            if (!f0.j(strB)) {
                c(BBDeviceOTAController.OTAResult.FAILED, "Incorrect HEX file. (DF861E)");
                return;
            }
            if (!f0.j(strB5)) {
                c(BBDeviceOTAController.OTAResult.FAILED, "Incorrect HEX file. (DF866F)");
                return;
            }
            if (!f0.j(strB4)) {
                c(BBDeviceOTAController.OTAResult.FAILED, "Incorrect HEX file. (DF866D)");
                return;
            }
            if (!f0.j(strB8)) {
                c(BBDeviceOTAController.OTAResult.FAILED, "Incorrect HEX file. (DF8771)");
                return;
            }
            if (!f0.j(strB9)) {
                c(BBDeviceOTAController.OTAResult.FAILED, "Incorrect HEX file. (DF8773)");
                return;
            }
            if (!f0.j(strB10)) {
                c(BBDeviceOTAController.OTAResult.FAILED, "Incorrect HEX file. (DF8774)");
                return;
            }
            if (!f0.j(strB11)) {
                c(BBDeviceOTAController.OTAResult.FAILED, "Incorrect HEX file. (DF8775)");
                return;
            }
            if (!f0.j(strB12)) {
                c(BBDeviceOTAController.OTAResult.FAILED, "Incorrect HEX file. (DF8776)");
                return;
            }
            if (!f0.j(strB13)) {
                c(BBDeviceOTAController.OTAResult.FAILED, "Incorrect HEX file. (DF8777)");
                return;
            }
            if (!strB5.equalsIgnoreCase(v.a(strB4))) {
                c(BBDeviceOTAController.OTAResult.FAILED, "Incorrect HEX file. (incorrect hash)");
                return;
            }
            this.g.b(true);
            this.g.c(true);
            this.g.y(strB);
            this.g.A(strB2);
            this.g.o(strB3);
            this.g.a(f0.i(strB4));
            this.g.g(strB5);
            this.g.h(str);
            this.g.B(strB7);
            this.g.v(strB8);
            this.g.j(f0.g(strB9));
            this.g.i(f0.g(strB10));
            this.g.E(strB11);
            this.g.u(strB12);
            this.g.n(strB13);
            a(5);
            a(a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_MODE_RESET);
            b().b();
        } catch (Exception unused2) {
            b(BBDeviceOTAController.OTAResult.FAILED, "Invalid encHex or encHexFile");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public synchronized void m() {
        b("[pollingDeviceInfo]");
        r.c("[BBDeviceOTACubeFlowController] [pollingDeviceInfo]");
        this.b.internalFunction4();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public synchronized void l() {
        b("[pollDeviceInfoWSP7X]");
        r.c("[BBDeviceOTACubeFlowController] [pollDeviceInfoWSP7X]");
        this.b.internalFunction5();
    }

    void q() throws IllegalStateException {
        if (d() == a.IDLE) {
            return;
        }
        r.a("", "[BBDeviceOTAController] [startRemoteFirmwareUpdate] throw IllegalStateException \"BBDeviceOTAController is in not idle state\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
        throw new IllegalStateException("BBDeviceOTAController is in not idle state");
    }

    void r() {
        if (d() == a.IDLE) {
            r.a("", "[BBDeviceOTAController] [stop] throw IllegalStateException \"BBDeviceOTAController is in idle state\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalStateException("BBDeviceOTAController is in idle state");
        }
        y yVar = this.g;
        if (yVar != null) {
            yVar.k("otaResult : " + BBDeviceOTAController.OTAResult.STOPPED + ", message : OTA process aborted, percentage : " + this.g.N() + "%");
            this.g.g(true);
        }
    }

    synchronized void b(Hashtable<String, String> hashtable) {
        b("[checkPollingDeviceInfoWSP7X] arg0 : " + hashtable);
        r.c("[BBDeviceOTACubeFlowController] [checkPollingDeviceInfoWSP7X]");
        if (d() == a.POLLING_WSP7X_DEVICE_INFO && this.g.l() == BBDeviceController.ConnectionMode.SERIAL && this.c.a(BBDeviceOTAController.c.WisePOS_SEVEN)) {
            String str = hashtable.get("spWCConnectionHealthCheck");
            if (str.equalsIgnoreCase(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                c(BBDeviceOTAController.OTAResult.SUCCESS, "");
            } else if (str.equalsIgnoreCase(TlvMap.ENTRY_MODE_CONTACT)) {
                this.k.removeCallbacksAndMessages(null);
                this.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.b$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.h();
                    }
                }, 3000L);
            } else {
                c(BBDeviceOTAController.OTAResult.FAILED, "Health check failed after OTA.  (" + str + ")");
            }
        }
    }

    void c(String str) {
        b("[sendOTACommand] command : " + str);
        r.c("[BBDeviceOTACubeFlowController] [sendOTACommand] command : " + str);
        this.b.internalFunction3(str);
    }

    void f(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        b("[setTargetVersionWithData]");
        q();
        y.b bVar = y.b.SET_TARGET_VERSION;
        a(bVar, hashtable.get("networkChecking"));
        a(hashtable, bVar);
    }

    void g(Hashtable<String, Object> hashtable) throws IllegalStateException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException {
        b("[startLocalConfigUpdateWithData]");
        q();
        y.b bVar = y.b.LOCAL_CONFIG_UPDATE;
        a(bVar);
        a(hashtable, bVar);
    }

    BBDeviceOTAController.BBDeviceOTAControllerState a() {
        if (d() == a.IDLE) {
            return BBDeviceOTAController.BBDeviceOTAControllerState.IDLE;
        }
        return BBDeviceOTAController.BBDeviceOTAControllerState.DEVICE_BUSY;
    }

    void d(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        b("[getTargetVersionListWithData]");
        q();
        y.b bVar = y.b.GET_TARGET_VERSION_LIST;
        a(bVar, hashtable.get("networkChecking"));
        a(hashtable, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        this.b.stopSerial();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        this.b.stopSerial();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        this.b.resetDevice();
    }

    void c(Hashtable<String, String> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        String str;
        b("[deviceInfoReceived] data : " + hashtable);
        r.c("[BBDeviceOTACubeFlowController] [deviceInfoReceived] data : " + hashtable);
        a aVarD = d();
        a aVar = a.REQUEST_DEVICE_INFO_FROM_FW;
        if (aVarD != aVar && d() != a.REQUEST_SP_DEVICE_INFO_FROM_7MD_FW) {
            r.c("[BBDeviceOTACubeFlowController] [deviceInfoReceived] deviceInfoReceived is received in incorrect state");
            return;
        }
        if (d() == a.REQUEST_SP_DEVICE_INFO_FROM_7MD_FW) {
            a(a.RECEIVED_SP_DEVICE_INFO_FROM_7MD_FW);
            this.g.b(hashtable);
            a(aVar);
            this.b.internalFunction4();
            return;
        }
        if ((this.b.getConnectionMode() == BBDeviceController.ConnectionMode.SERIAL && this.c.a(BBDeviceOTAController.c.WisePOSPlus)) || (hashtable.containsKey("supportCubeSecurityMode") && hashtable.get("supportCubeSecurityMode").equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE))) {
            if (this.g.n() != null) {
                r.c("[BBDeviceOTACubeFlowController] [deviceInfoReceived] Duplicated device info is received");
                return;
            }
            a(a.RECEIVED_DEVICE_INFO_FROM_FW);
            this.g.a(hashtable);
            y.b bVarH = this.g.H();
            y.b bVar = y.b.LOCAL_FIRMWARE_UPDATE;
            if ((bVarH != bVar && this.g.H() != y.b.LOCAL_CONFIG_UPDATE) || f0.g(this.g.n().h()).startsWith("CHB8")) {
                if (this.g.x0()) {
                    c(BBDeviceOTAController.OTAResult.STOPPED, "OTA process aborted");
                    return;
                }
                b("[deviceInfoReceived] userSessionData : " + this.g);
                if (this.g.o() != null && !this.g.o().b().isEmpty() && !this.g.o().b().equalsIgnoreCase("00000000")) {
                    str = this.g.o().a() + "-" + this.g.o().b();
                } else {
                    str = "";
                }
                if (!this.g.n().c().isEmpty()) {
                    if (!str.isEmpty()) {
                        str = str + ", ";
                    }
                    str = str + f0.g(this.g.n().h()) + "-" + this.g.n().c();
                }
                if (!str.isEmpty()) {
                    c(BBDeviceOTAController.OTAResult.FAILED, "Device Tampered. " + str);
                    return;
                }
                if (this.g.H() == y.b.REMOTE_FIRMWARE_UPDATE || this.g.H() == y.b.REMOTE_CONFIG_UPDATE || this.g.H() == y.b.REMOTE_KEY_INJECTION || this.g.H() == bVar || this.g.H() == y.b.LOCAL_CONFIG_UPDATE) {
                    if (this.g.n().a() < 50 && !Boolean.parseBoolean(this.g.n().f())) {
                        c(BBDeviceOTAController.OTAResult.BATTERY_LOW_ERROR, "Please connect to power source and charge up the device to 50% or above before doing OTA.");
                        return;
                    }
                    if (this.b.getConnectionMode() == BBDeviceController.ConnectionMode.SERIAL) {
                        int iA = f0.a(this.d);
                        if (f0.b(this.d)) {
                            if (iA < 20) {
                                c(BBDeviceOTAController.OTAResult.BATTERY_LOW_ERROR, "Please charge up the device to 20% or above before doing OTA while the device is charging.");
                                return;
                            }
                        } else if (iA < 50) {
                            c(BBDeviceOTAController.OTAResult.BATTERY_LOW_ERROR, "Please connect to power source and charge up the device to 50% or above before doing OTA.");
                            return;
                        }
                    }
                }
                if (this.g.H() != bVar && this.g.H() != y.b.LOCAL_CONFIG_UPDATE) {
                    a(a.REQUEST_WEB_SERVICE_LOGIN_TO_TMS);
                    this.h.a(this.g.K(), this.g, new Date());
                    return;
                } else {
                    n();
                    return;
                }
            }
            c(BBDeviceOTAController.OTAResult.FAILED, "The command is not compatible with the device.");
            return;
        }
        a(a.IDLE);
        if (this.g.H() == y.b.REMOTE_FIRMWARE_UPDATE) {
            this.c.a(BBDeviceOTAController.a.OTAFlow_OLD);
            this.c.g(this.g.x());
            return;
        }
        if (this.g.H() == y.b.REMOTE_CONFIG_UPDATE) {
            this.c.a(BBDeviceOTAController.a.OTAFlow_OLD);
            this.c.f(this.g.x());
            return;
        }
        if (this.g.H() == y.b.REMOTE_KEY_INJECTION) {
            this.c.a(BBDeviceOTAController.a.OTAFlow_OLD);
            this.c.h(this.g.x());
            return;
        }
        if (this.g.H() == y.b.LOCAL_FIRMWARE_UPDATE) {
            this.c.a(BBDeviceOTAController.a.OTAFlow_OLD);
            this.c.e(this.g.x());
            return;
        }
        if (this.g.H() == y.b.LOCAL_CONFIG_UPDATE) {
            this.c.a(BBDeviceOTAController.a.OTAFlow_OLD);
            this.c.d(this.g.x());
            return;
        }
        if (this.g.H() == y.b.GET_TARGET_VERSION) {
            this.c.a(BBDeviceOTAController.a.OTAFlow_OLD);
            this.c.b(f0.a(this.g.x()));
            return;
        }
        if (this.g.H() == y.b.GET_TARGET_VERSION_LIST) {
            this.c.a(BBDeviceOTAController.a.OTAFlow_OLD);
            this.c.a(this.g.x());
        } else if (this.g.H() == y.b.SET_TARGET_VERSION) {
            this.c.a(BBDeviceOTAController.a.OTAFlow_OLD);
            this.c.c(this.g.x());
        } else if (this.g.H() == y.b.GET_FILE_SIGNATURE) {
            c(BBDeviceOTAController.OTAResult.FAILED, "Command not supported");
        } else {
            this.c.a(BBDeviceOTAController.a.OTAFlow_OLD);
        }
    }

    synchronized void f(String str) {
        if (d() != a.IDLE && this.g != null) {
            Locale locale = Locale.ROOT;
            if ((str.toLowerCase(locale).startsWith("device error") || str.toLowerCase(locale).startsWith("device busy")) && d() == a.POLLING_WSP7X_DEVICE_INFO && this.g.M() > 0) {
                this.g.z0();
                this.k.removeCallbacksAndMessages(null);
                this.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.b$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.l();
                    }
                }, 3000L);
                return;
            }
            if ((str.toLowerCase(locale).startsWith("device error") || str.toLowerCase(locale).startsWith("device busy") || str.toLowerCase(locale).startsWith("device no response")) && d() == a.POLLING_DEVICE_INFO && this.g.L() > 0) {
                this.g.y0();
                this.k.removeCallbacksAndMessages(null);
                this.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.b$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m();
                    }
                }, 3000L);
                return;
            }
            if (str.toLowerCase(locale).startsWith("serial disconnected") && d() == a.POLLING_DEVICE_INFO) {
                this.k.removeCallbacksAndMessages(null);
                c(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, str);
                return;
            }
            if ((this.g.H() == y.b.REMOTE_FIRMWARE_UPDATE || this.g.H() == y.b.REMOTE_CONFIG_UPDATE || this.g.H() == y.b.REMOTE_KEY_INJECTION) && this.g.v0()) {
                if (!this.g.F().equalsIgnoreCase("COMPLETED") && !this.g.F().equalsIgnoreCase("FAILED") && !this.g.F().equalsIgnoreCase("FAILED")) {
                    this.g.e(true);
                    this.g.a(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR);
                    this.g.e(str);
                    this.g.k("otaResult : " + this.g.j() + ", message : " + this.g.k() + ", percentage : " + this.g.N() + "%");
                    this.h.a(this.g.K(), this.g, "FAILED");
                    return;
                }
                return;
            }
            c(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, str);
        }
    }

    void a(Proxy proxy) {
        this.h.a(proxy);
    }

    void d(String str) {
        b("[sendVirtualOTACommand] command : " + str);
        r.c("[BBDeviceOTACubeFlowController] [sendVirtualOTACommand] command : " + str);
        this.b.internalFunction3(str);
    }

    y e() {
        return this.g;
    }

    void a(Object obj) throws BBDeviceControllerNotSupportOTAException, IllegalArgumentException {
        b("[setBBDeviceController] controller : " + obj);
        if (obj instanceof BBDeviceController) {
            this.b = (BBDeviceController) obj;
            return;
        }
        throw new IllegalArgumentException("Not a valid controller");
    }

    void e(Hashtable<String, String> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        b("[getTargetVersionWithData]");
        q();
        y.b bVar = y.b.GET_TARGET_VERSION;
        a(bVar, hashtable.get("networkChecking"));
        a(f0.b(hashtable), bVar);
    }

    void d(BBDeviceOTAController.OTAResult oTAResult, String str) {
        a(a.IDLE);
        this.c.m(oTAResult, str);
    }

    void b(BBDeviceOTAController.OTAResult oTAResult, String str) {
        b("[returnFailedOTAResultWithNotify] otaResult : " + oTAResult + ", message : " + str);
        if (this.g.v0()) {
            if (this.g.H() == y.b.REMOTE_KEY_INJECTION && g() && this.g.P() < 5 && this.g.G() > 0) {
                y yVar = this.g;
                yVar.h(yVar.P() + 1);
                a(a.REQUEST_CHALLENGE_R1_FROM_FW);
                b().e(this.g.c());
                return;
            }
            this.g.a(true, oTAResult, str);
            this.g.k("otaResult : " + this.g.j() + ", message : " + this.g.k() + ", percentage : " + this.g.N() + "%");
            f().a(this.g.K(), this.g, "FAILED");
            return;
        }
        c(oTAResult, str);
    }

    void a(y.b bVar, Object obj) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        if (this.b != null) {
            String str = this.f;
            if (str != null && !str.equals("")) {
                if (this.b.getConnectionMode() != BBDeviceController.ConnectionMode.NONE) {
                    if (obj != null) {
                        f0.a(obj);
                    }
                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.d.getSystemService("connectivity")).getActiveNetworkInfo();
                    if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                        r.a("", "[BBDeviceOTAController] [" + y.a(bVar) + "] throw NoInternetConnectionException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                        throw new NoInternetConnectionException();
                    }
                    return;
                }
                r.a("", "[BBDeviceOTAController] [" + y.a(bVar) + "] throw BBDeviceNotConnectedException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
                throw new BBDeviceNotConnectedException();
            }
            r.a("", "[BBDeviceOTAController] [" + y.a(bVar) + "] throw OTAServerURLNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new OTAServerURLNotSetException();
        }
        r.a("", "[BBDeviceOTAController] [" + y.a(bVar) + "] throw BBDeviceControllerNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
        throw new BBDeviceControllerNotSetException();
    }

    void a(y.b bVar) throws IllegalStateException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException {
        BBDeviceController bBDeviceController = this.b;
        if (bBDeviceController != null) {
            if (bBDeviceController.getConnectionMode() != BBDeviceController.ConnectionMode.NONE) {
                return;
            }
            r.a("", "[BBDeviceOTAController] [" + y.a(bVar) + "] throw BBDeviceNotConnectedException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new BBDeviceNotConnectedException();
        }
        r.a("", "[BBDeviceOTAController] [" + y.a(bVar) + "] throw BBDeviceControllerNotSetException", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
        throw new BBDeviceControllerNotSetException();
    }

    private void a(Hashtable<String, Object> hashtable, y.b bVar) {
        this.n.a();
        y yVar = new y(hashtable, bVar);
        this.g = yVar;
        yVar.a((Hashtable<String, String>) null);
        this.g.a(this.b.getConnectionMode());
        this.g.t(this.f);
        if (this.c.a(BBDeviceOTAController.c.WisePOS_SEVEN) && this.b.getConnectionMode() == BBDeviceController.ConnectionMode.SERIAL) {
            a(a.REQUEST_SP_DEVICE_INFO_FROM_7MD_FW);
            this.b.internalFunction5();
        } else {
            a(a.REQUEST_DEVICE_INFO_FROM_FW);
            this.b.internalFunction4();
        }
    }

    synchronized void a(Hashtable<String, String> hashtable) {
        b("[checkPollingDeviceInfo] arg0 : " + hashtable);
        r.c("[BBDeviceOTACubeFlowController] [checkPollingDeviceInfo]");
        if (d() == a.POLLING_DEVICE_INFO && this.g.l() == BBDeviceController.ConnectionMode.SERIAL && (this.c.a(BBDeviceOTAController.c.WisePOS_TOUCH) || this.c.a(BBDeviceOTAController.c.WisePOS_GO))) {
            c(BBDeviceOTAController.OTAResult.SUCCESS, "");
        }
    }

    void a(String str) {
        this.i.a(str);
    }

    void a(int i) {
        b("[updateOTAProgress] progress : " + i);
        r.c("[BBDeviceOTA] [updateOTAProgress] progress : " + i);
        this.n.a();
        if (i == 20) {
            a((((((double) this.g.y()) / 512.0d) / Math.ceil(((double) this.g.r().length) / 512.0d)) * 70.0d) + 20.0d);
            return;
        }
        if (i == 91 && this.g.H() == y.b.REMOTE_KEY_INJECTION) {
            a((((double) this.g.A()) * ((double) (79 / this.g.I()))) + 20.0d);
            return;
        }
        if (i == 92 && this.g.H() == y.b.REMOTE_KEY_INJECTION) {
            double dI = 79 / this.g.I();
            a((((double) this.g.A()) * dI) + 20.0d + (dI * 0.1666d));
            return;
        }
        if (i == 93 && this.g.H() == y.b.REMOTE_KEY_INJECTION) {
            double dI2 = 79 / this.g.I();
            a((((double) this.g.A()) * dI2) + 20.0d + (dI2 * 0.3333d));
            return;
        }
        if (i == 94 && this.g.H() == y.b.REMOTE_KEY_INJECTION) {
            double dI3 = 79 / this.g.I();
            a((((double) this.g.A()) * dI3) + 20.0d + (dI3 * 0.5d));
            return;
        }
        if (i == 96 && this.g.H() == y.b.REMOTE_KEY_INJECTION) {
            double dI4 = 79 / this.g.I();
            a((((double) this.g.A()) * dI4) + 20.0d + (dI4 * 0.6666d));
        } else if (i == 99 && this.g.H() == y.b.REMOTE_KEY_INJECTION) {
            double dI5 = 79 / this.g.I();
            a((((double) (this.g.A() - 1)) * dI5) + 20.0d + (dI5 * 0.8333d));
        } else {
            if (i < 0 || i - this.g.N() < 1) {
                return;
            }
            this.c.b(i);
            this.g.g(i);
        }
    }

    void a(double d) {
        int i = (int) d;
        if (i - this.g.N() >= 1) {
            this.c.b(i);
            this.g.g(i);
        }
    }

    void a(BBDeviceOTAController.OTAResult oTAResult, Hashtable<String, String> hashtable) {
        a(a.IDLE);
        this.c.b(oTAResult, hashtable);
    }

    void a(BBDeviceOTAController.OTAResult oTAResult, List<Hashtable<String, String>> list, String str) {
        a(a.IDLE);
        this.c.b(oTAResult, list, str);
    }

    void a(BBDeviceOTAController.OTAResult oTAResult, String str) {
        a(a.IDLE);
        this.c.g(oTAResult, str);
    }

    void c(BBDeviceOTAController.OTAResult oTAResult, String str) {
        b("[returnOTAResult] otaResult : " + oTAResult + ", message : " + str);
        r.c("[BBDeviceOTACubeFlowController] [returnOTAResult] otaResult : " + oTAResult + ", message : " + str);
        this.n.a();
        if (this.g.u0()) {
            oTAResult = this.g.j();
            str = this.g.k();
        }
        if (oTAResult == BBDeviceOTAController.OTAResult.SUCCESS) {
            a(a.IDLE);
            if (this.g.H() == y.b.REMOTE_FIRMWARE_UPDATE) {
                this.c.b(100.0d);
                this.c.k(oTAResult, str);
                if (this.g.l() == BBDeviceController.ConnectionMode.SERIAL && this.c.a(BBDeviceOTAController.c.WisePOS_TOUCH)) {
                    this.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.b$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.i();
                        }
                    }, 1000L);
                    return;
                } else {
                    if (this.g.l() == BBDeviceController.ConnectionMode.SERIAL && this.c.a(BBDeviceOTAController.c.WisePOS_GO)) {
                        this.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.b$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.j();
                            }
                        }, 1000L);
                        return;
                    }
                    return;
                }
            }
            if (this.g.H() == y.b.REMOTE_CONFIG_UPDATE) {
                this.c.b(100.0d);
                this.c.j(oTAResult, str);
                if (this.g.l() == BBDeviceController.ConnectionMode.SERIAL) {
                    if (this.c.a(BBDeviceOTAController.c.WisePOS_TOUCH) || this.c.a(BBDeviceOTAController.c.WisePOS_GO)) {
                        this.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.b$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.k();
                            }
                        }, 2000L);
                        return;
                    }
                    return;
                }
                return;
            }
            if (this.g.H() == y.b.REMOTE_KEY_INJECTION) {
                this.c.b(100.0d);
                this.c.l(oTAResult, str);
                return;
            } else if (this.g.H() == y.b.LOCAL_FIRMWARE_UPDATE) {
                this.c.b(100.0d);
                this.c.i(oTAResult, str);
                return;
            } else {
                if (this.g.H() == y.b.LOCAL_CONFIG_UPDATE) {
                    this.c.b(100.0d);
                    this.c.h(oTAResult, str);
                    return;
                }
                return;
            }
        }
        if (oTAResult == BBDeviceOTAController.OTAResult.FAILED || oTAResult == BBDeviceOTAController.OTAResult.STOPPED || oTAResult == BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR || oTAResult == BBDeviceOTAController.OTAResult.BATTERY_LOW_ERROR || oTAResult == BBDeviceOTAController.OTAResult.SETUP_ERROR || oTAResult == BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR || oTAResult == BBDeviceOTAController.OTAResult.NO_UPDATE_REQUIRED || oTAResult == BBDeviceOTAController.OTAResult.INCOMPATIBLE_FIRMWARE_HEX || oTAResult == BBDeviceOTAController.OTAResult.INCOMPATIBLE_CONFIG_HEX) {
            a(a.IDLE);
            if (this.g.H() == y.b.REMOTE_FIRMWARE_UPDATE) {
                this.c.k(oTAResult, str);
                return;
            }
            if (this.g.H() == y.b.REMOTE_CONFIG_UPDATE) {
                this.c.j(oTAResult, str);
                return;
            }
            if (this.g.H() == y.b.REMOTE_KEY_INJECTION) {
                this.c.l(oTAResult, str);
                return;
            }
            if (this.g.H() == y.b.LOCAL_FIRMWARE_UPDATE) {
                this.c.i(oTAResult, str);
                return;
            }
            if (this.g.H() == y.b.LOCAL_CONFIG_UPDATE) {
                this.c.h(oTAResult, str);
                return;
            }
            if (this.g.H() == y.b.GET_TARGET_VERSION) {
                Hashtable<String, String> hashtable = new Hashtable<>();
                hashtable.put("errorMessage", str);
                this.c.b(oTAResult, hashtable);
            } else if (this.g.H() == y.b.GET_TARGET_VERSION_LIST) {
                this.c.b(oTAResult, null, str);
            } else if (this.g.H() == y.b.SET_TARGET_VERSION) {
                this.c.m(oTAResult, str);
            } else if (this.g.H() == y.b.GET_FILE_SIGNATURE) {
                this.c.g(oTAResult, str);
            }
        }
    }
}
