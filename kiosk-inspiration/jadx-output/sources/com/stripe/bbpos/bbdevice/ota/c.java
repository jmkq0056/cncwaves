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
import java.net.Proxy;
import java.util.Date;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class c {
    BBDeviceController b;
    private BBDeviceOTAController c;
    private Context d;
    private a e;
    private y g;
    private t h;
    private s i;
    HandlerThread j;
    Handler k;
    private final Object a = new Object();
    String f = "https://api.emms.bbpos.com/tms2/deviceasset/";

    enum a {
        IDLE,
        REQUEST_FIRMWARE_OPERATING_MODE_FIRST_TIME_FROM_FW,
        RECEIVED_FIRMWARE_OPERATING_MODE_FIRST_TIME_FROM_FW,
        REQUEST_DEVICE_INFO_FROM_FW,
        RECEIVED_DEVICE_INFO_FROM_FW,
        REQUEST_WEB_SERVICE_LOGIN_TO_TMS,
        RECEIVED_WEB_SERVICE_LOGIN_FROM_TMS,
        REQUEST_WEB_SERVICE_GET_RESOURCE_TO_TMS,
        RECEIVED_WEB_SERVICE_GET_RESOURCE_FROM_TMS,
        REQUEST_UPDATE_BOOTLOADER_REBOOT_TO_MAXIAM_BOOTLOADER,
        RECEIVED_UPDATE_BOOTLOADER_REBOOT_FROM_MAXIAM_BOOTLOADER,
        REQUEST_START_PASS_THROUGH_MODE_TO_BBDEVICE_SDK,
        RECEIVED_START_PASS_THROUGH_MODE_FROM_BBDEVICE_SDK,
        PROCESSING_UPDATE_BOOTLOADER,
        REQUEST_STOP_PASS_THROUGH_MODE_TO_BBDEVICE_SDK,
        RECEIVED_STOP_PASS_THROUGH_MODE_FROM_BBDEVICE_SDK,
        REQUEST_REBOOT_AFTER_BOOTLOADER_UPDATED_TO_FW,
        RECEIVED_REBOOT_AFTER_BOOTLOADER_UPDATED_TO_FW,
        REQUEST_FW_ENTER_BOOTLOADER_MODE,
        RECEIVED_FW_ENTERED_BOOTLOADER_MODE,
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
        SEND_WEB_SERVICE_NOTIFY_START_TO_TMS,
        RECEIVED_WEB_SERVICE_NOTIFY_START_FROM_TMS,
        REQUEST_FW_ERASE_MEMORY,
        RECEIVED_ERASED_MEMORY,
        SENDING_ENCRYPTED_HEX_BLOCK_DATA_TO_FW,
        SEND_ENCRYPTED_SIGN_CODE_TO_FW,
        RECEIVED_SEND_ENCRYPTED_SIGN_CODE_FROM_FW,
        REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_COMPLETE,
        RECEIVED_FW_EXIT_BOOTLOADER_MODE_FOR_COMPLETE,
        SEND_WEB_SERVICE_NOTIFY_COMPLETED_TO_TMS,
        RECEIVED_WEB_SERVICE_NOTIFY_COMPLETED_FROM_TMS,
        REQUEST_ENTER_FORCED_BOOTLOADER_MODE,
        RECEIVED_ENTER_FORCED_BOOTLOADER_MODE,
        REQUEST_BOOTLOADER_MODE_DEVICE_INFO_FROM_FW,
        RECEIVED_BOOTLOADER_MODE_DEVICE_INFO_FROM_FW,
        REQUEST_WEB_SERVICE_GET_FILE_SIGNATURE_TO_TMS,
        RECEIVED_WEB_SERVICE_GET_FILE_SIGNATURE_FROM_TMS,
        REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_STOP,
        RECEIVED_FW_EXIT_BOOTLOADER_MODE_FOR_STOP,
        REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_ERROR,
        RECEIVED_FW_EXIT_BOOTLOADER_MODE_FOR_ERROR
    }

    c(Context context, BBDeviceOTAController bBDeviceOTAController) {
        this.d = context;
        this.c = bBDeviceOTAController;
        HandlerThread handlerThread = new HandlerThread("OTA-P1000-Flow-General-Thread-1");
        this.j = handlerThread;
        handlerThread.start();
        this.k = new Handler(this.j.getLooper());
        b(a.IDLE);
        this.i = new s(this);
        this.h = new t(this);
    }

    private void b(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        this.b.stopSerial();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        this.b.stopSerial();
    }

    boolean a(a aVar) {
        synchronized (this.a) {
            return this.e == aVar;
        }
    }

    void b(a aVar) {
        synchronized (this.a) {
            this.e = aVar;
        }
    }

    a c() {
        a aVar;
        synchronized (this.a) {
            aVar = this.e;
        }
        return aVar;
    }

    y d() {
        return this.g;
    }

    void e(String str) throws IllegalArgumentException {
        if (str == null || str.equals("")) {
            r.a("", "[BBDeviceOTAController] [setOTAServerURL] throw IllegalArgumentException \"Not a valid url\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalArgumentException("Not a valid url");
        }
        this.f = str;
    }

    synchronized void f(String str) {
        y yVar;
        if (c() != a.IDLE && (yVar = this.g) != null) {
            if ((yVar.H() == y.b.REMOTE_FIRMWARE_UPDATE || this.g.H() == y.b.REMOTE_CONFIG_UPDATE || this.g.H() == y.b.REMOTE_KEY_INJECTION) && this.g.v0()) {
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

    void i() throws IllegalStateException {
        if (c() == a.IDLE) {
            return;
        }
        r.a("", "[BBDeviceOTAController] [startRemoteFirmwareUpdate] throw IllegalStateException \"BBDeviceOTAController is in not idle state\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
        throw new IllegalStateException("BBDeviceOTAController is in not idle state");
    }

    void j() {
        if (c() == a.IDLE) {
            r.a("", "[BBDeviceOTAController] [stop] throw IllegalStateException \"BBDeviceOTAController is in idle state\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalStateException("BBDeviceOTAController is in idle state");
        }
        if (c() == a.REQUEST_UPDATE_BOOTLOADER_REBOOT_TO_MAXIAM_BOOTLOADER || c() == a.RECEIVED_UPDATE_BOOTLOADER_REBOOT_FROM_MAXIAM_BOOTLOADER || c() == a.REQUEST_START_PASS_THROUGH_MODE_TO_BBDEVICE_SDK || c() == a.RECEIVED_START_PASS_THROUGH_MODE_FROM_BBDEVICE_SDK || c() == a.PROCESSING_UPDATE_BOOTLOADER || c() == a.REQUEST_STOP_PASS_THROUGH_MODE_TO_BBDEVICE_SDK || c() == a.RECEIVED_STOP_PASS_THROUGH_MODE_FROM_BBDEVICE_SDK || c() == a.REQUEST_REBOOT_AFTER_BOOTLOADER_UPDATED_TO_FW || c() == a.RECEIVED_REBOOT_AFTER_BOOTLOADER_UPDATED_TO_FW || this.g.r0() || c() == a.REQUEST_FW_ERASE_MEMORY || c() == a.RECEIVED_ERASED_MEMORY || c() == a.SENDING_ENCRYPTED_HEX_BLOCK_DATA_TO_FW || c() == a.SEND_ENCRYPTED_SIGN_CODE_TO_FW || c() == a.RECEIVED_SEND_ENCRYPTED_SIGN_CODE_FROM_FW || c() == a.SEND_WEB_SERVICE_NOTIFY_COMPLETED_TO_TMS || c() == a.RECEIVED_WEB_SERVICE_NOTIFY_COMPLETED_FROM_TMS || c() == a.REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_COMPLETE || c() == a.RECEIVED_FW_EXIT_BOOTLOADER_MODE_FOR_COMPLETE || c() == a.REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_STOP || c() == a.RECEIVED_FW_EXIT_BOOTLOADER_MODE_FOR_STOP || c() == a.REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_ERROR || c() == a.RECEIVED_FW_EXIT_BOOTLOADER_MODE_FOR_ERROR) {
            r.a("", "[BBDeviceOTAController] [stop] throw IllegalStateException \"Cannot stop OTA process at this state. Please wait until finish\"", BBDeviceOTAController.DebugLogType.EXTRA_DEBUG_MESSAGE);
            throw new IllegalStateException("Cannot stop OTA process at this state. Please wait until finish");
        }
        y yVar = this.g;
        if (yVar != null) {
            yVar.k("otaResult : " + BBDeviceOTAController.OTAResult.STOPPED + ", message : OTA process aborted, percentage : " + this.g.N() + "%");
            this.g.g(true);
        }
    }

    void d(String str) {
        b("[sendVirtualOTACommand] command : " + str);
        r.c("[BBDeviceOTAP1000FlowController] [sendVirtualOTACommand] command : " + str);
        this.b.internalFunction3(str);
    }

    s b() {
        return this.i;
    }

    void c(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        b("[startRemoteFirmwareUpdateCube]");
        i();
        y.b bVar = y.b.REMOTE_FIRMWARE_UPDATE;
        a(bVar, hashtable.get("networkChecking"));
        a(hashtable, bVar);
    }

    void b(Hashtable<String, Object> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        b("[startRemoteConfigUpdateCube]");
        i();
        y.b bVar = y.b.REMOTE_CONFIG_UPDATE;
        a(bVar, hashtable.get("networkChecking"));
        a(hashtable, bVar);
    }

    BBDeviceOTAController.BBDeviceOTAControllerState a() {
        if (c() == a.IDLE) {
            return BBDeviceOTAController.BBDeviceOTAControllerState.IDLE;
        }
        return BBDeviceOTAController.BBDeviceOTAControllerState.DEVICE_BUSY;
    }

    void c(String str) {
        b("[sendOTACommand] command : " + str);
        r.c("[BBDeviceOTAP1000FlowController] [sendOTACommand] command : " + str);
        this.b.internalFunction6(str);
    }

    t e() {
        return this.h;
    }

    void b(BBDeviceOTAController.OTAResult oTAResult, String str) {
        b("[returnFailedOTAResultWithNotify] otaResult : " + oTAResult + ", message : " + str);
        this.g.a(true, oTAResult, str);
        this.g.k("otaResult : " + this.g.j() + ", message : " + this.g.k() + ", percentage : " + this.g.N() + "%");
        if (!a(a.REQUEST_CHALLENGE_R1_FROM_FW) && !a(a.RECEIVED_CHALLENGE_TMK_X_ENCRYPTED_R1_FROM_FW) && !a(a.SEND_CHALLENGE_TMK_X_ENCRYPTED_R1_TO_TMS) && !a(a.RECEIVED_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_FROM_TMS) && !a(a.SEND_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_TO_FW) && !a(a.RECEIVED_KCV_OF_KEK_FROM_FW) && !a(a.SEND_KCV_OF_KEK_TO_TMS) && !a(a.RECEIVED_SEND_KCV_OF_KEK_FROM_TMS) && !a(a.REQUEST_RESOURCE_AUTH_DATA_FROM_TMS) && !a(a.RECEIVED_RESOURCE_AUTH_DATA_FROM_TMS) && !a(a.SEND_TR31_FLK_TO_FW) && !a(a.RECEIVED_SEND_TR31_FLK_TO_FW) && !a(a.SEND_TR31_FAK_TO_FW) && !a(a.RECEIVED_SEND_TR31_FAK_TO_FW) && !a(a.SEND_WEB_SERVICE_NOTIFY_START_TO_TMS) && !a(a.RECEIVED_WEB_SERVICE_NOTIFY_START_FROM_TMS)) {
            if (this.g.v0()) {
                if (this.g.j() != null && this.g.j() == BBDeviceOTAController.OTAResult.STOPPED) {
                    e().a(this.g.K(), this.g, "FAILED");
                    return;
                } else {
                    e().a(this.g.K(), this.g, "FAILED");
                    return;
                }
            }
            c(oTAResult, str);
            return;
        }
        b(a.REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_ERROR);
        b().b();
    }

    void a(Proxy proxy) {
        this.h.a(proxy);
    }

    void c(BBDeviceOTAController.OTAResult oTAResult, String str) {
        b("[returnOTAResult] otaResult : " + oTAResult + ", message : " + str);
        r.c("[BBDeviceOTAP1000FlowController] [returnOTAResult] otaResult : " + oTAResult + ", message : " + str);
        if (this.g.u0()) {
            oTAResult = this.g.j();
            str = this.g.k();
        }
        if (oTAResult == BBDeviceOTAController.OTAResult.SUCCESS) {
            b(a.IDLE);
            if (this.g.H() == y.b.REMOTE_FIRMWARE_UPDATE) {
                this.c.k(oTAResult, str);
                this.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.c$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.f();
                    }
                }, 80L);
                return;
            } else if (this.g.H() == y.b.REMOTE_CONFIG_UPDATE) {
                this.c.j(oTAResult, str);
                this.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.c$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.g();
                    }
                }, 80L);
                return;
            } else {
                if (this.g.H() == y.b.REMOTE_KEY_INJECTION) {
                    this.c.l(oTAResult, str);
                    return;
                }
                return;
            }
        }
        BBDeviceOTAController.OTAResult oTAResult2 = BBDeviceOTAController.OTAResult.FAILED;
        if (oTAResult == oTAResult2 || oTAResult == BBDeviceOTAController.OTAResult.STOPPED || oTAResult == BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR || oTAResult == BBDeviceOTAController.OTAResult.BATTERY_LOW_ERROR || oTAResult == BBDeviceOTAController.OTAResult.SETUP_ERROR || oTAResult == BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR || oTAResult == BBDeviceOTAController.OTAResult.NO_UPDATE_REQUIRED || oTAResult == BBDeviceOTAController.OTAResult.INCOMPATIBLE_FIRMWARE_HEX || oTAResult == BBDeviceOTAController.OTAResult.INCOMPATIBLE_CONFIG_HEX) {
            b(a.IDLE);
            if (this.g.H() == y.b.REMOTE_FIRMWARE_UPDATE) {
                this.c.k(oTAResult, str);
            } else if (this.g.H() == y.b.REMOTE_CONFIG_UPDATE) {
                this.c.j(oTAResult, str);
            } else if (this.g.H() == y.b.REMOTE_KEY_INJECTION) {
                this.c.l(oTAResult, str);
            } else if (this.g.H() == y.b.LOCAL_FIRMWARE_UPDATE) {
                this.c.i(oTAResult, str);
            } else if (this.g.H() == y.b.LOCAL_CONFIG_UPDATE) {
                this.c.h(oTAResult, str);
            } else if (this.g.H() == y.b.GET_TARGET_VERSION) {
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
            if (oTAResult == oTAResult2 || oTAResult == BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR) {
                this.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.c$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.h();
                    }
                }, 80L);
            }
        }
    }

    void a(Object obj) throws BBDeviceControllerNotSupportOTAException, IllegalArgumentException {
        b("[setBBDeviceController] controller : " + obj);
        if (obj instanceof BBDeviceController) {
            this.b = (BBDeviceController) obj;
            return;
        }
        throw new IllegalArgumentException("Not a valid controller");
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        this.b.stopSerial();
    }

    void a(Hashtable<String, Object> hashtable, y.b bVar) {
        y yVar = new y(hashtable, bVar);
        this.g = yVar;
        yVar.a((Hashtable<String, String>) null);
        this.g.a(this.b.getConnectionMode());
        this.g.t(this.f);
        b(a.REQUEST_FIRMWARE_OPERATING_MODE_FIRST_TIME_FROM_FW);
        this.g.b(this.b.internalFunction7());
        b(a.RECEIVED_FIRMWARE_OPERATING_MODE_FIRST_TIME_FROM_FW);
        if (this.g.z() == y.a.APPLICATION) {
            b(a.REQUEST_DEVICE_INFO_FROM_FW);
            this.b.internalFunction4();
        } else if (this.g.z() == y.a.BOOTLOADER) {
            b(a.REQUEST_ENTER_FORCED_BOOTLOADER_MODE);
            this.i.d("01070800");
        } else if (this.g.z() == y.a.RECOVERY) {
            b(a.REQUEST_BOOTLOADER_MODE_DEVICE_INFO_FROM_FW);
            this.i.a("DF30020C03D600D800DF862900DF86640101DF834F00DF866500");
        } else {
            c(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (2001)");
        }
    }

    void a(Hashtable<String, String> hashtable) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        b("[deviceInfoReceived]");
        r.c("[BBDeviceOTAP1000FlowController] [deviceInfoReceived] data : " + hashtable);
        if (c() != a.REQUEST_DEVICE_INFO_FROM_FW) {
            r.c("[BBDeviceOTAP1000FlowController] [deviceInfoReceived] deviceInfoReceived is received in incorrect state");
            return;
        }
        if ((this.b.getConnectionMode() == BBDeviceController.ConnectionMode.SERIAL && this.c.a(BBDeviceOTAController.c.WisePOSPlus)) || (hashtable.containsKey("supportCubeSecurityMode") && hashtable.get("supportCubeSecurityMode").equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE))) {
            y.b bVarH = this.g.H();
            y.b bVar = y.b.REMOTE_KEY_INJECTION;
            if (bVarH != bVar && this.g.H() != y.b.GET_TARGET_VERSION && this.g.H() != y.b.GET_TARGET_VERSION_LIST && this.g.H() != y.b.SET_TARGET_VERSION) {
                y.b bVarH2 = this.g.H();
                y.b bVar2 = y.b.LOCAL_FIRMWARE_UPDATE;
                if (bVarH2 != bVar2) {
                    y.b bVarH3 = this.g.H();
                    y.b bVar3 = y.b.LOCAL_CONFIG_UPDATE;
                    if (bVarH3 != bVar3) {
                        if (this.g.n() != null) {
                            r.c("[BBDeviceOTAP1000FlowController] [deviceInfoReceived] Duplicated device info is received");
                            return;
                        }
                        b(a.RECEIVED_DEVICE_INFO_FROM_FW);
                        this.g.a(hashtable);
                        if (this.g.x0()) {
                            c(BBDeviceOTAController.OTAResult.STOPPED, "OTA process aborted");
                            return;
                        }
                        String str = this.g.n().c().isEmpty() ? "" : "" + f0.g(this.g.n().h()) + "-" + this.g.n().c();
                        if (!str.isEmpty()) {
                            c(BBDeviceOTAController.OTAResult.FAILED, "Device Tampered. " + str);
                            return;
                        }
                        if (this.g.H() == y.b.REMOTE_FIRMWARE_UPDATE || this.g.H() == y.b.REMOTE_CONFIG_UPDATE || this.g.H() == bVar || this.g.H() == bVar2 || this.g.H() == bVar3) {
                            if (this.g.n().a() < 50) {
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
                        b(a.REQUEST_WEB_SERVICE_LOGIN_TO_TMS);
                        this.h.a(this.g.K(), this.g, new Date());
                        return;
                    }
                }
            }
            c(BBDeviceOTAController.OTAResult.FAILED, "Command not supported");
            return;
        }
        b(a.IDLE);
        if (this.g.H() == y.b.REMOTE_FIRMWARE_UPDATE) {
            this.c.a(BBDeviceOTAController.a.OTAFlow_OLD);
            this.c.g(this.g.x());
        } else if (this.g.H() == y.b.REMOTE_CONFIG_UPDATE) {
            this.c.a(BBDeviceOTAController.a.OTAFlow_OLD);
            this.c.f(this.g.x());
        } else if (this.g.H() == y.b.GET_FILE_SIGNATURE) {
            c(BBDeviceOTAController.OTAResult.FAILED, "Command not supported");
        } else {
            this.c.a(BBDeviceOTAController.a.OTAFlow_OLD);
        }
    }

    void a(String str) {
        this.i.a(str);
    }

    void a(int i) {
        b("[updateOTAProgress] progress : " + i);
        r.c("[BBDeviceOTA] [updateOTAProgress] progress : " + i);
        if (i == 20) {
            a((((((double) this.g.y()) / 512.0d) / Math.ceil(((double) this.g.r().length) / 512.0d)) * 70.0d) + 20.0d);
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

    void a(BBDeviceOTAController.OTAResult oTAResult, String str) {
        b(a.IDLE);
        this.c.g(oTAResult, str);
    }
}
