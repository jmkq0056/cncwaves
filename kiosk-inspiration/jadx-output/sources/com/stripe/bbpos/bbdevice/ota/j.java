package com.stripe.bbpos.bbdevice.ota;

import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.bbpos.bbdevice.ota.b;
import com.stripe.bbpos.bbdevice.ota.y;
import com.stripe.hardware.emv.TlvMap;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
final class j {
    private b a;

    j(b bVar) {
        this.a = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        this.a.m();
    }

    private void c(String str) {
    }

    void a() {
        c("[enterAcquirerMode]");
        r.c("[CubeFlowFwDataCenter] [enterAcquirerMode]");
        this.a.c(("" + f0.d("DF2F", "8C50")) + f0.d("DF73", TlvMap.SET_BUZZER_DISABLED_VALUE));
    }

    void b() {
        c("[exitAcquirerMode]");
        r.c("[CubeFlowFwDataCenter] [exitAcquirerMode]");
        this.a.c(("" + f0.d("DF2F", "8C50")) + f0.d("DF73", TlvMap.SET_BUZZER_ENABLED_VALUE));
    }

    void d() {
        y yVarE = this.a.e();
        int iY = yVarE.y();
        byte[] bArrR = yVarE.r();
        int length = bArrR.length;
        c("[sendNextSegment] firmwareIndex : " + iY + ", encryptedResourceLength : " + length);
        r.c("[CubeFlowFwDataCenter] [sendNextSegment] firmwareIndex : " + iY + ", encryptedResourceLength : " + length);
        if (iY >= length) {
            if (yVarE.x0()) {
                this.a.a(b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_STOP);
                this.a.b().b();
                return;
            } else {
                this.a.a(90);
                this.a.a(b.a.REQUEST_CHALLENGE_R1_FROM_FW);
                e(TlvMap.ENTRY_MODE_CONTACT);
                return;
            }
        }
        if (yVarE.x0()) {
            this.a.a(b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_STOP);
            this.a.b().b();
            return;
        }
        this.a.a(20);
        String str = "" + f0.d("DF2F", "8C84");
        String strS = yVarE.S();
        while (strS.length() < 4) {
            strS = TlbConst.TYPELIB_MINOR_VERSION_SHELL + strS;
        }
        String str2 = str + f0.d("DF6B", strS);
        String hexString = Integer.toHexString(iY);
        while (hexString.length() < 8) {
            hexString = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString;
        }
        String str3 = str2 + f0.d("DF69", hexString.toUpperCase(Locale.ROOT));
        int iMin = Math.min(512, length - iY);
        byte[] bArr = new byte[iMin];
        System.arraycopy(bArrR, iY, bArr, 0, iMin);
        String str4 = str3 + f0.d("DF6C", f0.a(bArr));
        if (iY == 0) {
            str4 = yVarE.b0().equalsIgnoreCase("") ? str4 + f0.d("DF8728", TlvMap.SET_BUZZER_ENABLED_VALUE) : str4 + f0.d("DF8728", yVarE.b0());
        }
        yVarE.a(iY + iMin);
        this.a.c(str4);
    }

    void e(String str) {
        c("[requestChallengeFromCube]");
        r.c("[CubeFlowFwDataCenter] [requestChallengeFromCube]");
        this.a.c((("" + f0.d("DF2F", "8E00")) + f0.d("DF74", str)) + f0.d("DF8675", "AB"));
    }

    void a(String str, String str2, String str3, String str4, String str5) {
        c("[sendEncryptedFWSignature]");
        r.c("[CubeFlowFwDataCenter] [sendEncryptedFWSignature]");
        String str6 = ((("" + f0.d("DF2F", "8CE4")) + f0.d("DF6A", str3)) + f0.d("DF6E", str2)) + f0.d("DF72", str);
        if (str4 != null && !str4.equalsIgnoreCase("")) {
            str6 = str6 + f0.d("DF8629", str4);
        }
        if (str5 != null && !str5.equalsIgnoreCase("")) {
            str6 = str6 + f0.d("DF863E", str5);
        }
        this.a.c(str6);
    }

    void b(String str) {
        c("[eraseMemory]");
        r.c("[CubeFlowFwDataCenter] [eraseMemory]");
        String str2 = "" + f0.d("DF2F", "8C82");
        while (str.length() < 4) {
            str = TlbConst.TYPELIB_MINOR_VERSION_SHELL + str;
        }
        this.a.c(str2 + f0.d("DF6B", str));
    }

    void b(String str, String str2, String str3) {
        c("[sendRKEKToCube]");
        r.c("[CubeFlowFwDataCenter] [sendRKEKToCube]");
        this.a.c((((("" + f0.d("DF2F", "8E02")) + f0.d("DF74", str3)) + f0.d("DF7D", str2)) + f0.d("DF6F", str)) + f0.d("DF8675", "AB"));
    }

    void a(String str, String str2) {
        c("[completeOTA]");
        r.c("[CubeFlowFwDataCenter] [completeOTA]");
        this.a.c((("" + f0.d("DF2F", "8CF2")) + f0.d("DF6A", str2)) + f0.d("DF6E", str));
    }

    void b(String str, String str2, String str3, String str4, String str5) {
        c("[sendRKEKToCubeV2]");
        r.c("[CubeFlowFwDataCenter] [sendRKEKToCubeV2]");
        this.a.c((((((("" + f0.d("DF2F", "8E02")) + f0.d("DF74", str3)) + f0.d("DF7D", str2)) + f0.d("DF6F", str)) + f0.d("DF8770", str5)) + f0.d("DF876F", str4)) + f0.d("DF8675", "AB"));
    }

    void a(String str, String str2, String str3) {
        c("[injectKeyTR31]");
        r.c("[CubeFlowFwDataCenter] [injectKeyTR31]");
        this.a.c((((("" + f0.d("DF2F", "8CD8")) + f0.d("DF74", str2)) + f0.d("DF864A", str)) + f0.d("DF8725", str3)) + f0.d("DF8675", "AB"));
    }

    void a(String str) {
        if (this.a.d() == b.a.IDLE) {
            return;
        }
        try {
            List<b0> listA = c0.a(str);
            String str2 = c0.a(listA, "DF30").c;
            if (str2 == null) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "Device response invalid data");
                return;
            }
            y yVarE = this.a.e();
            if (yVarE.x0()) {
                b.a aVarD = this.a.d();
                b.a aVar = b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_STOP;
                if (aVarD != aVar) {
                    this.a.a(aVar);
                    this.a.b().b();
                    return;
                }
            }
            if (str2.equalsIgnoreCase("0C51")) {
                b.a aVarD2 = this.a.d();
                b.a aVar2 = b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_MODE_RESET;
                if (aVarD2 != aVar2 && this.a.d() != b.a.REQUEST_FW_ENTER_ACQUIRE_MODE && this.a.d() != b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_AFTER_KEY_INJECTION && this.a.d() != b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_COMPLETED && this.a.d() != b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_STOP && this.a.d() != b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_ERROR) {
                    this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                    return;
                }
                String str3 = c0.a(listA, "DF73").c;
                if (str3 == null) {
                    this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "Failed to change to acquirer mode");
                    return;
                }
                if (str3.equalsIgnoreCase(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    if (this.a.d() == aVar2) {
                        this.a.a(b.a.RECEIVED_EXIT_ACQUIRE_MODE_FOR_MODE_RESET);
                        this.a.a(7);
                        this.a.a(b.a.REQUEST_FW_ENTER_ACQUIRE_MODE);
                        a();
                        return;
                    }
                    if (this.a.d() == b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_AFTER_KEY_INJECTION) {
                        this.a.c(BBDeviceOTAController.OTAResult.SUCCESS, "");
                        return;
                    }
                    if (this.a.d() == b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_COMPLETED) {
                        if (yVarE.H() != y.b.LOCAL_FIRMWARE_UPDATE && yVarE.H() != y.b.LOCAL_CONFIG_UPDATE) {
                            if (yVarE.H() == y.b.GET_FILE_SIGNATURE) {
                                this.a.a(100);
                                this.a.a(BBDeviceOTAController.OTAResult.SUCCESS, yVarE.w());
                                return;
                            } else {
                                this.a.a(b.a.SEND_WEB_SERVICE_NOTIFY_COMPLETED_TO_TMS);
                                this.a.f().a(yVarE.K(), yVarE, "COMPLETED");
                                return;
                            }
                        }
                        this.a.a(99);
                        this.a.a(b.a.RECEIVED_WEB_SERVICE_NOTIFY_COMPLETED_FROM_TMS);
                        this.a.c(BBDeviceOTAController.OTAResult.SUCCESS, "");
                        return;
                    }
                    if (this.a.d() == b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_STOP) {
                        if (yVarE.v0()) {
                            this.a.f().a(yVarE.K(), yVarE, "FAILED");
                            return;
                        } else {
                            this.a.c(BBDeviceOTAController.OTAResult.STOPPED, "OTA process aborted");
                            return;
                        }
                    }
                    if (this.a.d() == b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_ERROR) {
                        this.a.c(BBDeviceOTAController.OTAResult.FAILED, "");
                        return;
                    }
                    return;
                }
                if (str3.equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE)) {
                    if (this.a.d() == b.a.REQUEST_FW_ENTER_ACQUIRE_MODE) {
                        this.a.a(b.a.RECEIVED_ENTERED_ACQUIRE_MODE);
                        this.a.a(8);
                        if (yVarE.H() != y.b.REMOTE_FIRMWARE_UPDATE && yVarE.H() != y.b.REMOTE_CONFIG_UPDATE) {
                            if (yVarE.H() == y.b.REMOTE_KEY_INJECTION) {
                                this.a.a(b.a.SEND_WEB_SERVICE_NOTIFY_KEY_INJECTION_START_TO_TMS);
                                this.a.f().a(yVarE.K(), yVarE, "STARTED");
                                return;
                            }
                            if (yVarE.H() != y.b.LOCAL_FIRMWARE_UPDATE && yVarE.H() != y.b.LOCAL_CONFIG_UPDATE) {
                                this.a.b(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1001)");
                                return;
                            }
                            this.a.a(b.a.REQUEST_FW_ERASE_MEMORY);
                            b(yVarE.S());
                            return;
                        }
                        this.a.a(b.a.REQUEST_FW_ERASE_MEMORY);
                        b(yVarE.S());
                        return;
                    }
                    this.a.b(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1002)");
                    return;
                }
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "Failed to change to acquirer mode");
                return;
            }
            if (str2.equalsIgnoreCase("0C83")) {
                if (this.a.d() != b.a.REQUEST_FW_ERASE_MEMORY) {
                    this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                    return;
                }
                this.a.a(b.a.RECEIVED_ERASED_MEMORY);
                this.a.a(15);
                if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    if (yVarE.H() != y.b.LOCAL_FIRMWARE_UPDATE && yVarE.H() != y.b.LOCAL_CONFIG_UPDATE) {
                        this.a.a(b.a.SEND_WEB_SERVICE_NOTIFY_START_TO_TMS);
                        this.a.f().a(yVarE.K(), yVarE, "STARTED");
                        return;
                    }
                    this.a.a(b.a.SENDING_ENCRYPTED_HEX_BLOCK_DATA_TO_FW);
                    yVarE.a(0);
                    this.a.b().d();
                    return;
                }
                this.a.b(BBDeviceOTAController.OTAResult.FAILED, "Failed to erase memory");
                return;
            }
            if (str2.equalsIgnoreCase("0C85")) {
                if (this.a.d() != b.a.SENDING_ENCRYPTED_HEX_BLOCK_DATA_TO_FW) {
                    this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                    return;
                } else if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    d();
                    return;
                } else {
                    this.a.b(BBDeviceOTAController.OTAResult.FAILED, f0.l(c0.a(listA, "DF8322").c));
                    return;
                }
            }
            if (str2.equalsIgnoreCase("0E01")) {
                if (this.a.d() != b.a.REQUEST_CHALLENGE_R1_FROM_FW) {
                    this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                    return;
                }
                this.a.a(b.a.RECEIVED_CHALLENGE_TMK_X_ENCRYPTED_R1_FROM_FW);
                this.a.a(91);
                if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    String str4 = c0.a(listA, "DF7C").c;
                    yVarE.d(str4);
                    yVarE.p(str);
                    if (yVarE.H() != y.b.LOCAL_FIRMWARE_UPDATE && yVarE.H() != y.b.LOCAL_CONFIG_UPDATE) {
                        this.a.a(b.a.SEND_CHALLENGE_TMK_X_ENCRYPTED_R1_TO_TMS);
                        this.a.f().g(yVarE.K(), yVarE);
                        return;
                    }
                    this.a.a(b.a.RECEIVED_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_FROM_TMS);
                    byte[] bArrA = i.a(i.a(f0.i(str4), f0.i(yVarE.f0())), f0.i(yVarE.e0()), new byte[16]);
                    yVarE.C(f0.a(i.b(f0.i(yVarE.e0()), f0.i(yVarE.f0()))));
                    yVarE.b(f0.a(bArrA));
                    yVarE.K("");
                    this.a.a(b.a.SEND_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_TO_FW);
                    this.a.b().b(yVarE.c0(), yVarE.h(), yVarE.c());
                    return;
                }
                this.a.b(BBDeviceOTAController.OTAResult.FAILED, f0.c(str2, c0.a(listA, "DF8666").c));
                return;
            }
            if (str2.equalsIgnoreCase("0E03")) {
                if (this.a.d() != b.a.SEND_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_TO_FW) {
                    this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                    return;
                }
                this.a.a(b.a.RECEIVED_KCV_OF_KEK_FROM_FW);
                this.a.a(92);
                if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    yVarE.m(f0.c(c0.a(listA, "DF71").c));
                    yVarE.q(str);
                    if (yVarE.H() != y.b.LOCAL_FIRMWARE_UPDATE && yVarE.H() != y.b.LOCAL_CONFIG_UPDATE) {
                        this.a.a(b.a.SEND_KCV_OF_KEK_TO_TMS);
                        this.a.f().h(yVarE.K(), yVarE);
                        return;
                    }
                    this.a.a(b.a.RECEIVED_SEND_KCV_OF_KEK_FROM_TMS);
                    this.a.a(b.a.REQUEST_RESOURCE_AUTH_DATA_FROM_TMS);
                    this.a.a(b.a.RECEIVED_RESOURCE_AUTH_DATA_FROM_TMS);
                    this.a.a(94);
                    yVarE.z(yVarE.O());
                    yVarE.G(yVarE.u());
                    yVarE.F(yVarE.t());
                    this.a.a(b.a.SEND_TR31_FLK_TO_FW);
                    this.a.b().b(f0.a(yVarE.h0()), "040100");
                    return;
                }
                this.a.b(BBDeviceOTAController.OTAResult.FAILED, f0.c(str2, c0.a(listA, "DF8666").c));
                return;
            }
            if (str2.equalsIgnoreCase("0CE3")) {
                b.a aVarD3 = this.a.d();
                b.a aVar3 = b.a.SEND_TR31_FLK_TO_FW;
                if (aVarD3 != aVar3 && this.a.d() != b.a.SEND_TR31_FAK_TO_FW) {
                    this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                    return;
                }
                if (this.a.d() == aVar3) {
                    this.a.a(b.a.RECEIVED_SEND_TR31_FLK_TO_FW);
                    this.a.a(95);
                } else if (yVarE.H() == y.b.GET_FILE_SIGNATURE) {
                    this.a.a(b.a.SEND_ENCRYPTED_SIGN_CODE_TO_FW);
                    a(yVarE.Z(), "00000000", "FA", "", "");
                    return;
                } else {
                    this.a.a(b.a.RECEIVED_SEND_TR31_FAK_TO_FW);
                    this.a.a(96);
                }
                if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    if (this.a.d() == b.a.RECEIVED_SEND_TR31_FLK_TO_FW) {
                        this.a.a(b.a.SEND_TR31_FAK_TO_FW);
                        b(f0.a(yVarE.g0()), "040200");
                        return;
                    } else {
                        if (this.a.d() == b.a.RECEIVED_SEND_TR31_FAK_TO_FW) {
                            this.a.a(b.a.SEND_ENCRYPTED_SIGN_CODE_TO_FW);
                            String hexString = Integer.toHexString(yVarE.r().length);
                            while (hexString.length() < 8) {
                                hexString = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString;
                            }
                            a(yVarE.Z(), hexString, yVarE.S().substring(yVarE.S().length() - 2), yVarE.a0(), yVarE.C());
                            return;
                        }
                        this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                        return;
                    }
                }
                this.a.b(BBDeviceOTAController.OTAResult.FAILED, f0.c(str2, c0.a(listA, "DF8666").c));
                return;
            }
            if (str2.equalsIgnoreCase("0CD9")) {
                if (this.a.d() != b.a.SEND_TR31_WK_TO_FW) {
                    this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                    return;
                }
                this.a.a(b.a.RECEIVED_SEND_TR31_WK_TO_FW);
                this.a.a(96);
                if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    yVarE.h(0);
                    yVarE.B0();
                    if (yVarE.G() > 0) {
                        this.a.a(b.a.REQUEST_CHALLENGE_R1_FROM_FW);
                        this.a.b().e(yVarE.c());
                        return;
                    } else {
                        this.a.a(b.a.SEND_WEB_SERVICE_NOTIFY_KEY_INJECTION_DONE_TO_TMS);
                        this.a.f().a(yVarE.K(), yVarE, "COMPLETED");
                        return;
                    }
                }
                this.a.b(BBDeviceOTAController.OTAResult.FAILED, f0.c(str2, c0.a(listA, "DF8666").c));
                return;
            }
            if (str2.equalsIgnoreCase("0CE5")) {
                if (this.a.d() != b.a.SEND_ENCRYPTED_SIGN_CODE_TO_FW) {
                    this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                    return;
                }
                this.a.a(b.a.RECEIVED_SEND_ENCRYPTED_SIGN_CODE_FROM_FW);
                this.a.a(97);
                if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    if (yVarE.H() == y.b.GET_FILE_SIGNATURE) {
                        yVarE.l(c0.a(listA, "DF856F").c);
                        this.a.a(b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_COMPLETED);
                        this.a.b().b();
                        return;
                    } else {
                        this.a.a(b.a.SEND_OTA_COMPLETE_TO_FW);
                        String hexString2 = Integer.toHexString(yVarE.r().length);
                        while (hexString2.length() < 8) {
                            hexString2 = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString2;
                        }
                        a(hexString2, yVarE.S().substring(yVarE.S().length() - 2));
                        return;
                    }
                }
                this.a.b(BBDeviceOTAController.OTAResult.FAILED, f0.c(str2, c0.a(listA, "DF8666").c));
                return;
            }
            if (str2.equalsIgnoreCase("0CF3")) {
                if (this.a.d() != b.a.SEND_OTA_COMPLETE_TO_FW) {
                    this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                    return;
                }
                this.a.a(b.a.RECEIVED_SEND_OTA_COMPLETED_FROM_FW);
                this.a.a(98);
                if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    this.a.a(b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_COMPLETED);
                    this.a.b().b();
                    return;
                } else {
                    this.a.b(BBDeviceOTAController.OTAResult.FAILED, f0.c(str2, c0.a(listA, "DF8666").c));
                    return;
                }
            }
            if (str2.equalsIgnoreCase("4CE9")) {
                this.a.c(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                return;
            }
            if (str2.equalsIgnoreCase("4CEB")) {
                this.a.c(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                return;
            }
            if (str2.equalsIgnoreCase("4CF7")) {
                this.a.c(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                return;
            }
            if (str2.equalsIgnoreCase("4CED")) {
                this.a.c(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                return;
            }
            if (str2.equalsIgnoreCase("4409")) {
                if (this.a.d() != b.a.SEND_SERIAL_INIT_COMMAND_AGAIN) {
                    this.a.c(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.d() + ", " + str2 + ")");
                    return;
                } else {
                    this.a.a(b.a.POLLING_DEVICE_INFO);
                    this.a.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.j$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.c();
                        }
                    }, 10000L);
                    return;
                }
            }
            if (str2.equalsIgnoreCase("440B")) {
                return;
            }
            str2.equalsIgnoreCase("440D");
        } catch (Exception e) {
            if (this.a.e().H() != y.b.LOCAL_FIRMWARE_UPDATE && this.a.e().H() != y.b.LOCAL_CONFIG_UPDATE) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, e.toString());
            } else {
                this.a.c(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, e.toString());
            }
        }
    }

    void b(String str, String str2) {
        c("[setTempKey]");
        r.c("[CubeFlowFwDataCenter] [setTempKey]");
        this.a.c((("" + f0.d("DF2F", "8CE2")) + f0.d("DF74", str2)) + f0.d("DF864A", str));
    }

    void d(String str) {
        c("[powerPinReset]");
        r.c("[CubeFlowFwDataCenter] [powerPinReset]");
        this.a.d(("" + f0.d("DF2F", "D408")) + f0.d("DF6C", str));
    }
}
