package com.stripe.bbpos.bbdevice.ota;

import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.bbpos.bbdevice.ota.c;
import com.stripe.bbpos.bbdevice.ota.y;
import com.stripe.hardware.emv.TlvMap;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import java.io.ByteArrayOutputStream;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class s {
    private c a;
    private u b;

    s(c cVar) {
        this.a = cVar;
        this.b = new u(cVar);
    }

    private void c(String str) {
    }

    void a() {
        c("[enterAcquirerMode]");
        r.c("[P1000FlowFwDataCenter] [enterAcquirerMode]");
        this.a.c(f0.a(new g(f0.i("8F00"), (byte) 0, (byte) 0, null).b()));
    }

    void b() {
        c("[exitAcquirerMode]");
        r.c("[P1000FlowFwDataCenter] [exitAcquirerMode]");
        this.a.c(f0.a(new g(f0.i("8C20"), (byte) 0, (byte) 0, null).b()));
    }

    void c() {
        c("[getDeviceInfoInBootloaderMode]");
        r.c("[P1000FlowFwDataCenter] [getDeviceInfoInBootloaderMode]");
        this.a.c(f0.a(new g(f0.i("8C02"), (byte) 0, (byte) 0, null).b()));
    }

    void d() {
        c("[sendNextSegment]");
        y yVarD = this.a.d();
        int iY = yVarD.y();
        byte[] bArrR = yVarD.r();
        int length = bArrR.length;
        c("[sendNextSegment] firmwareIndex : " + iY + ", encryptedResourceLength : " + length);
        r.c("[P1000FlowFwDataCenter] [sendNextSegment] firmwareIndex : " + iY + ", encryptedResourceLength : " + length);
        if (iY >= length) {
            if (yVarD.x0()) {
                if (yVarD.v0()) {
                    this.a.e().a(yVarD.K(), yVarD, "FAILED");
                    return;
                } else {
                    this.a.c(BBDeviceOTAController.OTAResult.STOPPED, "OTA process aborted");
                    return;
                }
            }
            this.a.a(90);
            this.a.b(c.a.SEND_ENCRYPTED_SIGN_CODE_TO_FW);
            String hexString = Integer.toHexString(yVarD.r().length);
            while (hexString.length() < 8) {
                hexString = TlbConst.TYPELIB_MINOR_VERSION_SHELL + hexString;
            }
            a(yVarD.Z(), hexString, yVarD.S().substring(yVarD.S().length() - 2), yVarD.a0(), yVarD.C());
            return;
        }
        if (yVarD.x0()) {
            if (yVarD.v0()) {
                this.a.e().a(yVarD.K(), yVarD, "FAILED");
                return;
            } else {
                this.a.c(BBDeviceOTAController.OTAResult.STOPPED, "OTA process aborted");
                return;
            }
        }
        this.a.a(20);
        String str = ("" + f0.a((Object) yVarD.S(), "DF6A")) + f0.a(Integer.valueOf(iY), "DF69");
        int iMin = Math.min(512, length - iY);
        byte[] bArr = new byte[iMin];
        System.arraycopy(bArrR, iY, bArr, 0, iMin);
        String str2 = str + f0.a((Object) f0.a(bArr), "DF6C");
        if (iY == 0) {
            str2 = yVarD.b0().equalsIgnoreCase("") ? str2 + f0.d("DF8728", TlvMap.SET_BUZZER_ENABLED_VALUE) : str2 + f0.d("DF8728", yVarD.b0());
        }
        yVarD.a(iY + iMin);
        this.a.c(f0.a(new g(f0.i("8C16"), (byte) 0, (byte) 0, f0.i(str2)).b()));
    }

    void e(String str) {
        c("[requestChallengeFromCube]");
        r.c("[P1000FlowFwDataCenter] [requestChallengeFromCube]");
        this.a.c(f0.a(new g(f0.i("8E00"), (byte) 0, (byte) 0, f0.i(f0.a((Object) str, "DF74"))).b()));
    }

    void f(String str) {
        c("[sendPassThroughData]");
        r.c("[P1000FlowFwDataCenter] [sendPassThroughData]");
        this.a.d(("" + f0.d("DF2F", "D40C")) + f0.d("DF6C", str));
    }

    void g(String str) {
        c("[setPassThroughMode]");
        r.c("[P1000FlowFwDataCenter] [setPassThroughMode]");
        this.a.d(("" + f0.d("DF2F", "D40A")) + f0.d("DF73", str));
    }

    void a(String str, String str2, String str3) {
        c("[setRKEKToCube]");
        r.c("[P1000FlowFwDataCenter] [sendRKEKToCube]");
        this.a.c(f0.a(new g(f0.i("8E02"), (byte) 0, (byte) 0, f0.i((f0.a((Object) str3, "DF74") + f0.a((Object) str, "DF6F")) + f0.a((Object) str2, "DF7D"))).b()));
    }

    void b(String str) {
        c("[eraseMemory]");
        r.c("[P1000FlowFwDataCenter] [eraseMemory]");
        this.a.c(f0.a(new g(f0.i("8C14"), (byte) 0, (byte) 0, f0.i(f0.a((Object) str, "DF6A"))).b()));
    }

    void b(String str, String str2, String str3, String str4, String str5) {
        c("[setRKEKToCubeV2]");
        r.c("[P1000FlowFwDataCenter] [sendRKEKToCubeV2]");
        this.a.c(f0.a(new g(f0.i("8E02"), (byte) 0, (byte) 0, f0.i((((f0.a((Object) str3, "DF74") + f0.a((Object) str, "DF6F")) + f0.a((Object) str2, "DF7D")) + f0.a((Object) str5, "DF8770")) + f0.a((Object) str4, "DF876F"))).b()));
    }

    void a(String str, String str2) {
        c("[setTempKey]");
        r.c("[P1000FlowFwDataCenter] [setTempKey]");
        this.a.c(f0.a(new g(f0.i("8CE2"), (byte) 0, (byte) 0, f0.i(f0.a((Object) str2, "DF74") + f0.a((Object) str, "DF864A"))).b()));
    }

    void a(String str, String str2, String str3, String str4, String str5) {
        c("[sendEncryptedFWSignature]");
        r.c("[P1000FlowFwDataCenter] [sendEncryptedFWSignature]");
        this.a.c(f0.a(new g(f0.i("8CE4"), (byte) 0, (byte) 0, f0.i((f0.a((Object) str3, "DF6A") + f0.a((Object) str2, "DF6E")) + f0.a((Object) str, "DF72"))).b()));
    }

    void a(String str) {
        List<b0> listA;
        String str2;
        if (this.a.a(c.a.IDLE)) {
            return;
        }
        try {
            listA = c0.a(str);
            str2 = c0.a(listA, "DF30").c;
        } catch (Exception e) {
            this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, e.toString());
        }
        if (str2 == null) {
            this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "Device response invalid data");
            return;
        }
        y yVarD = this.a.d();
        if (yVarD.x0()) {
            if (!this.a.a(c.a.REQUEST_CHALLENGE_R1_FROM_FW) && !this.a.a(c.a.RECEIVED_CHALLENGE_TMK_X_ENCRYPTED_R1_FROM_FW) && !this.a.a(c.a.SEND_CHALLENGE_TMK_X_ENCRYPTED_R1_TO_TMS) && !this.a.a(c.a.RECEIVED_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_FROM_TMS) && !this.a.a(c.a.SEND_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_TO_FW) && !this.a.a(c.a.RECEIVED_KCV_OF_KEK_FROM_FW) && !this.a.a(c.a.SEND_KCV_OF_KEK_TO_TMS) && !this.a.a(c.a.RECEIVED_SEND_KCV_OF_KEK_FROM_TMS) && !this.a.a(c.a.REQUEST_RESOURCE_AUTH_DATA_FROM_TMS) && !this.a.a(c.a.RECEIVED_RESOURCE_AUTH_DATA_FROM_TMS) && !this.a.a(c.a.SEND_TR31_FLK_TO_FW) && !this.a.a(c.a.RECEIVED_SEND_TR31_FLK_TO_FW) && !this.a.a(c.a.SEND_TR31_FAK_TO_FW) && !this.a.a(c.a.RECEIVED_SEND_TR31_FAK_TO_FW) && !this.a.a(c.a.SEND_WEB_SERVICE_NOTIFY_START_TO_TMS) && !this.a.a(c.a.RECEIVED_WEB_SERVICE_NOTIFY_START_FROM_TMS)) {
                if (yVarD.v0()) {
                    this.a.e().a(yVarD.K(), yVarD, "FAILED");
                    return;
                } else {
                    this.a.c(BBDeviceOTAController.OTAResult.STOPPED, "OTA process aborted");
                    return;
                }
            }
            yVarD.a(true, BBDeviceOTAController.OTAResult.STOPPED, "OTA process aborted");
            this.a.b(c.a.REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_STOP);
            this.a.b().b();
            return;
        }
        if (str2.equalsIgnoreCase("0F01")) {
            c.a aVarC = this.a.c();
            c.a aVar = c.a.REQUEST_FW_ENTER_BOOTLOADER_MODE;
            if (aVarC != aVar) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.c() + ", " + str2 + ")");
                return;
            }
            if (this.a.c() == aVar) {
                this.a.b(c.a.RECEIVED_FW_ENTERED_BOOTLOADER_MODE);
                this.a.a(6);
                if (yVarD.H() != y.b.REMOTE_FIRMWARE_UPDATE && yVarD.H() != y.b.REMOTE_CONFIG_UPDATE && yVarD.H() != y.b.GET_FILE_SIGNATURE) {
                    this.a.b(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1001)");
                    return;
                }
                this.a.b(c.a.REQUEST_CHALLENGE_R1_FROM_FW);
                try {
                    Thread.sleep(3000L);
                    this.a.a(7);
                    Thread.sleep(3000L);
                    this.a.a(8);
                    Thread.sleep(3000L);
                    this.a.a(9);
                    Thread.sleep(3000L);
                    this.a.a(10);
                } catch (Exception unused) {
                }
                e(TlvMap.ENTRY_MODE_CONTACT);
                return;
            }
            this.a.b(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1002)");
            return;
        }
        if (str2.equalsIgnoreCase("0C21")) {
            c.a aVarC2 = this.a.c();
            c.a aVar2 = c.a.REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_COMPLETE;
            if (aVarC2 != aVar2 && this.a.c() != c.a.REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_STOP && this.a.c() != c.a.REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_ERROR) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.c() + ", " + str2 + ")");
                return;
            }
            if (this.a.c() == aVar2) {
                if (yVarD.H() != y.b.REMOTE_FIRMWARE_UPDATE && yVarD.H() != y.b.REMOTE_CONFIG_UPDATE) {
                    if (yVarD.H() == y.b.GET_FILE_SIGNATURE) {
                        this.a.a(100);
                        this.a.a(BBDeviceOTAController.OTAResult.SUCCESS, yVarD.w());
                        return;
                    } else {
                        this.a.a(100);
                        this.a.b(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1010)");
                        return;
                    }
                }
                if (yVarD.q0()) {
                    this.a.a(100);
                    this.a.c(BBDeviceOTAController.OTAResult.SUCCESS, "Auth only.");
                    return;
                } else {
                    this.a.a(99);
                    this.a.b(c.a.SEND_WEB_SERVICE_NOTIFY_COMPLETED_TO_TMS);
                    this.a.e().a(yVarD.K(), yVarD, "COMPLETED");
                    return;
                }
            }
            if (this.a.c() == c.a.REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_STOP) {
                this.a.b(yVarD.j(), yVarD.k());
                return;
            } else if (this.a.c() == c.a.REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_ERROR) {
                this.a.b(yVarD.j(), yVarD.k());
                return;
            } else {
                this.a.b(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1009)");
                return;
            }
        }
        String str3 = "";
        if (str2.equalsIgnoreCase("0C03")) {
            if (this.a.c() != c.a.REQUEST_BOOTLOADER_MODE_DEVICE_INFO_FROM_FW) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.c() + ", " + str2 + ")");
                return;
            }
            this.a.b(c.a.RECEIVED_BOOTLOADER_MODE_DEVICE_INFO_FROM_FW);
            this.a.a(1);
            String str4 = c0.a(listA, "D6").c;
            String str5 = c0.a(listA, "DF8664").c;
            String str6 = c0.a(listA, "DF834F").c;
            String str7 = c0.a(listA, "DF8665").c;
            String str8 = c0.a(listA, "D8").c;
            if (!f0.k(str4)) {
                str4 = "";
            }
            if (!f0.k(str5)) {
                str5 = "";
            }
            if (!f0.k(str6)) {
                str6 = "";
            }
            f0.k(str7);
            if (f0.k(str8)) {
                str3 = str8;
            }
            if (!str5.equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE)) {
                this.a.b(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (2002)");
                return;
            }
            Hashtable<String, String> hashtable = new Hashtable<>();
            hashtable.put("bootloaderVersion", f0.g(str4));
            hashtable.put("bID", f0.g(str6));
            hashtable.put("uid", str3);
            yVarD.a(hashtable);
            if (yVarD.x0()) {
                this.a.c(BBDeviceOTAController.OTAResult.STOPPED, "OTA process aborted");
                return;
            } else {
                this.a.b(c.a.REQUEST_WEB_SERVICE_LOGIN_TO_TMS);
                this.a.e().a(yVarD.K(), yVarD, new Date());
                return;
            }
        }
        if (str2.equalsIgnoreCase("0C15")) {
            if (this.a.c() != c.a.REQUEST_FW_ERASE_MEMORY) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.c() + ", " + str2 + ")");
                return;
            }
            this.a.b(c.a.RECEIVED_ERASED_MEMORY);
            this.a.a(19);
            this.a.b(c.a.SENDING_ENCRYPTED_HEX_BLOCK_DATA_TO_FW);
            yVarD.a(0);
            this.a.b().d();
            return;
        }
        if (str2.equalsIgnoreCase("0C17")) {
            if (this.a.c() != c.a.SENDING_ENCRYPTED_HEX_BLOCK_DATA_TO_FW) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.c() + ", " + str2 + ")");
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
            if (this.a.c() != c.a.REQUEST_CHALLENGE_R1_FROM_FW) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.c() + ", " + str2 + ")");
                return;
            }
            this.a.b(c.a.RECEIVED_CHALLENGE_TMK_X_ENCRYPTED_R1_FROM_FW);
            this.a.a(13);
            if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                yVarD.d(c0.a(listA, "DF7C").c);
                yVarD.p(str);
                this.a.b(c.a.SEND_CHALLENGE_TMK_X_ENCRYPTED_R1_TO_TMS);
                this.a.e().c(yVarD.K(), yVarD);
                return;
            }
            this.a.b(BBDeviceOTAController.OTAResult.FAILED, f0.c(str2, c0.a(listA, "DF8666").c));
            return;
        }
        if (str2.equalsIgnoreCase("0E03")) {
            if (this.a.c() != c.a.SEND_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_TO_FW) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.c() + ", " + str2 + ")");
                return;
            }
            this.a.b(c.a.RECEIVED_KCV_OF_KEK_FROM_FW);
            this.a.a(14);
            if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                yVarD.m(f0.c(c0.a(listA, "DF71").c));
                yVarD.q(str);
                this.a.b(c.a.SEND_KCV_OF_KEK_TO_TMS);
                this.a.e().d(yVarD.K(), yVarD);
                return;
            }
            this.a.b(BBDeviceOTAController.OTAResult.FAILED, f0.c(str2, c0.a(listA, "DF8666").c));
            return;
        }
        if (str2.equalsIgnoreCase("0CE3")) {
            c.a aVarC3 = this.a.c();
            c.a aVar3 = c.a.SEND_TR31_FLK_TO_FW;
            if (aVarC3 != aVar3 && this.a.c() != c.a.SEND_TR31_FAK_TO_FW) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.c() + ", " + str2 + ")");
                return;
            }
            if (this.a.c() == aVar3) {
                this.a.b(c.a.RECEIVED_SEND_TR31_FLK_TO_FW);
                this.a.a(17);
            } else {
                this.a.b(c.a.RECEIVED_SEND_TR31_FAK_TO_FW);
                this.a.a(18);
            }
            if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                if (this.a.c() == c.a.RECEIVED_SEND_TR31_FLK_TO_FW) {
                    this.a.b(c.a.SEND_TR31_FAK_TO_FW);
                    a(f0.a(yVarD.g0()), "040200");
                    return;
                } else {
                    if (this.a.c() == c.a.RECEIVED_SEND_TR31_FAK_TO_FW) {
                        if (yVarD.H() == y.b.GET_FILE_SIGNATURE) {
                            this.a.b(c.a.SEND_ENCRYPTED_SIGN_CODE_TO_FW);
                            a(yVarD.Z(), "00000000", "FA", "", "");
                            return;
                        } else {
                            this.a.b(c.a.SEND_WEB_SERVICE_NOTIFY_START_TO_TMS);
                            this.a.e().a(yVarD.K(), yVarD, "STARTED");
                            return;
                        }
                    }
                    this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.c() + ", " + str2 + ")");
                    return;
                }
            }
            this.a.b(BBDeviceOTAController.OTAResult.FAILED, f0.c(str2, c0.a(listA, "DF8666").c));
            return;
        }
        if (str2.equalsIgnoreCase("0CE5")) {
            if (this.a.c() != c.a.SEND_ENCRYPTED_SIGN_CODE_TO_FW) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.c() + ", " + str2 + ")");
                return;
            }
            this.a.b(c.a.RECEIVED_SEND_ENCRYPTED_SIGN_CODE_FROM_FW);
            this.a.a(95);
            if (c0.a(listA, "DE").c.equals(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                if (yVarD.H() == y.b.GET_FILE_SIGNATURE) {
                    yVarD.l(c0.a(listA, "DF856F").c);
                    this.a.b(c.a.REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_COMPLETE);
                    this.a.b().b();
                    return;
                } else {
                    this.a.b(c.a.REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_COMPLETE);
                    this.a.b().b();
                    return;
                }
            }
            this.a.b(BBDeviceOTAController.OTAResult.FAILED, f0.c(str2, c0.a(listA, "DF8666").c));
            return;
        }
        if (str2.equalsIgnoreCase("4409")) {
            c.a aVarC4 = this.a.c();
            c.a aVar4 = c.a.REQUEST_ENTER_FORCED_BOOTLOADER_MODE;
            if (aVarC4 != aVar4 && this.a.c() != c.a.REQUEST_UPDATE_BOOTLOADER_REBOOT_TO_MAXIAM_BOOTLOADER && this.a.c() != c.a.REQUEST_REBOOT_AFTER_BOOTLOADER_UPDATED_TO_FW) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.c() + ", " + str2 + ")");
                return;
            }
            if (this.a.c() == aVar4) {
                this.a.b(c.a.RECEIVED_ENTER_FORCED_BOOTLOADER_MODE);
                this.a.b(c.a.REQUEST_BOOTLOADER_MODE_DEVICE_INFO_FROM_FW);
                this.a.b().c();
                return;
            }
            if (this.a.c() == c.a.REQUEST_UPDATE_BOOTLOADER_REBOOT_TO_MAXIAM_BOOTLOADER) {
                this.a.b(c.a.RECEIVED_UPDATE_BOOTLOADER_REBOOT_FROM_MAXIAM_BOOTLOADER);
                this.a.a(4);
                this.a.b(c.a.REQUEST_START_PASS_THROUGH_MODE_TO_BBDEVICE_SDK);
                this.a.b().g("02");
                return;
            }
            if (this.a.c() == c.a.REQUEST_REBOOT_AFTER_BOOTLOADER_UPDATED_TO_FW) {
                this.a.b(c.a.RECEIVED_REBOOT_AFTER_BOOTLOADER_UPDATED_TO_FW);
                this.a.a(11);
                Thread.sleep(2000L);
                this.a.a(12);
                Thread.sleep(2000L);
                if (yVarD.t0()) {
                    this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "");
                    return;
                } else if (yVarD.z() == y.a.RECOVERY) {
                    this.a.b(c.a.REQUEST_BOOTLOADER_MODE_DEVICE_INFO_FROM_FW);
                    c();
                    return;
                } else {
                    this.a.b(c.a.REQUEST_CHALLENGE_R1_FROM_FW);
                    this.a.b().e(TlvMap.ENTRY_MODE_CONTACT);
                    return;
                }
            }
            return;
        }
        if (str2.equalsIgnoreCase("440B")) {
            c.a aVarC5 = this.a.c();
            c.a aVar5 = c.a.REQUEST_START_PASS_THROUGH_MODE_TO_BBDEVICE_SDK;
            if (aVarC5 != aVar5 && this.a.c() != c.a.REQUEST_STOP_PASS_THROUGH_MODE_TO_BBDEVICE_SDK) {
                this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "OTA Flow invalid state (" + this.a.c() + ", " + str2 + ")");
                return;
            }
            if (this.a.c() == aVar5) {
                try {
                    this.a.b(c.a.RECEIVED_START_PASS_THROUGH_MODE_FROM_BBDEVICE_SDK);
                    yVarD.i(0);
                    this.a.b(c.a.PROCESSING_UPDATE_BOOTLOADER);
                    String str9 = c0.a(c0.a(yVarD.j0().get(yVarD.k0()).c), "DF856D").c;
                    yVarD.p0();
                    this.a.b().f(str9);
                    this.b.a(str9);
                    this.a.k.postDelayed(this.b, 200L);
                    return;
                } catch (Exception e2) {
                    yVarD.d(true);
                    yVarD.e(true);
                    yVarD.a(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR);
                    yVarD.e("Bootloader update error. " + e2.toString());
                    this.a.b(c.a.REQUEST_STOP_PASS_THROUGH_MODE_TO_BBDEVICE_SDK);
                    this.a.b().g(TlvMap.SET_BUZZER_ENABLED_VALUE);
                    return;
                }
            }
            if (this.a.c() == c.a.REQUEST_STOP_PASS_THROUGH_MODE_TO_BBDEVICE_SDK) {
                this.a.b(c.a.RECEIVED_STOP_PASS_THROUGH_MODE_FROM_BBDEVICE_SDK);
                this.a.b(c.a.REQUEST_REBOOT_AFTER_BOOTLOADER_UPDATED_TO_FW);
                this.a.b().d("01070800");
                return;
            }
            return;
        }
        if (str2.equalsIgnoreCase("440D")) {
            try {
                String str10 = c0.a(listA, "DF6C").c;
                c("[dataReceived] CommandList.RECEIVE_RESPONSE_COMPLETE_PASS_THROUGH_MODE_DATA_COMMAND. passThroughData : " + str10);
                a(f0.i(str10));
                return;
            } catch (Exception e3) {
                yVarD.d(true);
                yVarD.e(true);
                yVarD.a(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR);
                yVarD.e("Bootloader update error. " + e3.toString());
                this.a.b(c.a.REQUEST_STOP_PASS_THROUGH_MODE_TO_BBDEVICE_SDK);
                this.a.b().g(TlvMap.SET_BUZZER_ENABLED_VALUE);
                return;
            }
        }
        return;
        this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, e.toString());
    }

    void d(String str) {
        c("[powerPinReset]");
        r.c("[P1000FlowFwDataCenter] [powerPinReset]");
        this.a.d(("" + f0.d("DF2F", "D408")) + f0.d("DF6C", str));
    }

    void a(byte[] bArr) {
        char c;
        y yVarD = this.a.d();
        ByteArrayOutputStream byteArrayOutputStreamL0 = yVarD.l0();
        byteArrayOutputStreamL0.write(bArr, 0, bArr.length);
        byte[] byteArray = byteArrayOutputStreamL0.toByteArray();
        if (byteArray.length < 3) {
            return;
        }
        boolean z = true;
        if (byteArray[0] == -66 && byteArray[1] == -17 && byteArray[2] == -19) {
            byte[] bArrI = f0.i(c0.a(c0.a(yVarD.j0().get(yVarD.k0()).c), "DF856D").c);
            if (byteArray.length < bArrI.length) {
                return;
            }
            int length = bArrI.length;
            if (yVarD.k0() == 5) {
                length = 10;
            }
            if (f0.a(bArrI, byteArray, length)) {
                byteArrayOutputStreamL0.reset();
                byteArrayOutputStreamL0.write(byteArray, bArrI.length, byteArray.length - bArrI.length);
                yVarD.p0();
                if (yVarD.k0() != 1) {
                    this.a.k.removeCallbacks(this.b);
                }
                if (yVarD.k0() == 2) {
                    this.a.a(5);
                } else if (yVarD.k0() == 30) {
                    this.a.a(6);
                } else if (yVarD.k0() == 60) {
                    this.a.a(7);
                } else if (yVarD.k0() == 90) {
                    this.a.a(8);
                } else if (yVarD.k0() == 120) {
                    this.a.a(9);
                }
                int i = 0;
                while (yVarD.k0() < yVarD.j0().size()) {
                    List<b0> listA = c0.a(yVarD.j0().get(yVarD.k0()).c);
                    String str = c0.a(listA, "DF856C").c;
                    String str2 = c0.a(listA, "DF856D").c;
                    boolean z2 = z;
                    if (!str.substring(0, 2).equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE)) {
                        if (i > 0) {
                            try {
                                Thread.sleep(80L);
                            } catch (Exception unused) {
                            }
                        }
                        yVarD.p0();
                        this.a.b().f(str2);
                        if (yVarD.k0() == 30) {
                            this.a.a(6);
                        } else if (yVarD.k0() == 60) {
                            this.a.a(7);
                        } else if (yVarD.k0() == 90) {
                            this.a.a(8);
                        } else {
                            if (yVarD.k0() == 120) {
                                c = '\t';
                                this.a.a(9);
                            }
                            i++;
                            z = z2;
                        }
                        c = '\t';
                        i++;
                        z = z2;
                    }
                }
                yVarD.a(z);
                this.a.a(10);
                try {
                    Thread.sleep(1000L);
                } catch (Exception unused2) {
                }
                this.a.b(c.a.REQUEST_STOP_PASS_THROUGH_MODE_TO_BBDEVICE_SDK);
                this.a.b().g(TlvMap.SET_BUZZER_ENABLED_VALUE);
                return;
            }
            this.a.b(BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR, "Invalid data (6001)");
            return;
        }
        byteArrayOutputStreamL0.reset();
        byteArrayOutputStreamL0.write(byteArray, 1, byteArray.length - 1);
        if (byteArrayOutputStreamL0.size() > 0) {
            a(new byte[0]);
        }
    }
}
