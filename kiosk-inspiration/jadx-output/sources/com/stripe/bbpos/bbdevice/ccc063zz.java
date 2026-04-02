package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.bbpos.bbdevice.ccc039zz;
import com.stripe.bbpos.bbdevice.ccc066zz;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class ccc063zz implements aaa003zz.aaa001zz {
    BBDeviceController aaa000;

    static /* synthetic */ class aaa000zz {
        static final /* synthetic */ int[] aaa000;
        static final /* synthetic */ int[] aaa001;
        static final /* synthetic */ int[] aaa002;
        static final /* synthetic */ int[] aaa003;
        static final /* synthetic */ int[] aaa004;

        static {
            int[] iArr = new int[aaa003zz.aaa002zz.values().length];
            aaa004 = iArr;
            try {
                iArr[aaa003zz.aaa002zz.CMD_NOT_AVAILABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.CMD_NOT_SUPPORT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.COMM_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.COMM_LINK_UNINITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.DEVICE_BUSY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.FAIL_TO_START_BTV2.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.FIRMWARE_NOT_SUPPORTED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.ILLEGAL_STATE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.INPUT_INVALID.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.CASHBACK_NOT_SUPPORTED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.INVALID_FUNCTION_IN_CURRENT_MODE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.UNKNOWN.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.VOLUME_WARNING_NOT_ACCEPTED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.WAITING_FOR_DEVICE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.FAIL_TO_START_SERIAL.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.FAIL_TO_START_USB.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.USB_DEVICE_NOT_FOUND.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.USB_DEVICE_PERMISSION_DENIED.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.USB_NOT_SUPPORTED.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.CHANNEL_BUFFER_FULL.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.BLUETOOTH_PERMISSION_DENIED.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.HARDWARE_NOT_SUPPORTED.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.TAMPER.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.PCI_ERROR.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.PAIRING_ERROR.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.PAIRING_ERROR_INCORRECT_PASSKEY.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.BLE_SECURE_CONNECTION_NOT_SUPPORTED.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.CONTACTLESS_ERROR.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.NOT_COMPATIBLE_ERROR.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.INTEGRITY_CHECK_ERROR.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                aaa004[aaa003zz.aaa002zz.FAIL_TO_START_TEST_CHANNEL.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            int[] iArr2 = new int[aaa003zz.aaa011zz.values().length];
            aaa003 = iArr2;
            try {
                iArr2[aaa003zz.aaa011zz.NO_PAPER_OR_COVER_OPENED.ordinal()] = 1;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                aaa003[aaa003zz.aaa011zz.OVERHEAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                aaa003[aaa003zz.aaa011zz.SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                aaa003[aaa003zz.aaa011zz.WRONG_PRINTER_COMMAND.ordinal()] = 4;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                aaa003[aaa003zz.aaa011zz.PRINTER_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused37) {
            }
            int[] iArr3 = new int[aaa003zz.aaa009zz.values().length];
            aaa002 = iArr3;
            try {
                iArr3[aaa003zz.aaa009zz.BYPASS.ordinal()] = 1;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                aaa002[aaa003zz.aaa009zz.CANCEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                aaa002[aaa003zz.aaa009zz.ENTERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                aaa002[aaa003zz.aaa009zz.INCORRECT_PIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                aaa002[aaa003zz.aaa009zz.KEY_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                aaa002[aaa003zz.aaa009zz.TIMEOUT.ordinal()] = 6;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                aaa002[aaa003zz.aaa009zz.WRONG_PIN_LENGTH.ordinal()] = 7;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                aaa002[aaa003zz.aaa009zz.ICC_REMOVED.ordinal()] = 8;
            } catch (NoSuchFieldError unused45) {
            }
            int[] iArr4 = new int[aaa003zz.aaa004zz.values().length];
            aaa001 = iArr4;
            try {
                iArr4[aaa003zz.aaa004zz.BAD_SWIPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                aaa001[aaa003zz.aaa004zz.INSERTED_CARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                aaa001[aaa003zz.aaa004zz.MAG_HEAD_FAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                aaa001[aaa003zz.aaa004zz.MCR.ordinal()] = 4;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                aaa001[aaa003zz.aaa004zz.NOT_ICC.ordinal()] = 5;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                aaa001[aaa003zz.aaa004zz.NO_CARD.ordinal()] = 6;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                aaa001[aaa003zz.aaa004zz.TAP_CARD_DETECTED.ordinal()] = 7;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                aaa001[aaa003zz.aaa004zz.USE_ICC_CARD.ordinal()] = 8;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                aaa001[aaa003zz.aaa004zz.KEY_ERROR.ordinal()] = 9;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                aaa001[aaa003zz.aaa004zz.MANUAL_PAN_ENTRY.ordinal()] = 10;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                aaa001[aaa003zz.aaa004zz.CARD_NOT_SUPPORTED.ordinal()] = 11;
            } catch (NoSuchFieldError unused56) {
            }
            int[] iArr5 = new int[aaa003zz.aaa006zz.values().length];
            aaa000 = iArr5;
            try {
                iArr5[aaa003zz.aaa006zz.AMOUNT.ordinal()] = 1;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.AMOUNT_OK_OR_NOT.ordinal()] = 2;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.APPROVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CALL_YOUR_BANK.ordinal()] = 4;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CANCEL_OR_ENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CAPK_LOADING_FAILED.ordinal()] = 6;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CARD_ERROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.DECLINED.ordinal()] = 8;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.ENTER_AMOUNT.ordinal()] = 9;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.ENTER_PIN.ordinal()] = 10;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.INCORRECT_PIN.ordinal()] = 11;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.INSERT_CARD.ordinal()] = 12;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.LAST_PIN_TRY.ordinal()] = 13;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.NOT_ACCEPTED.ordinal()] = 14;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.ONLINE_REQUIRED.ordinal()] = 15;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.PIN_OK.ordinal()] = 16;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.PLEASE_WAIT.ordinal()] = 17;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.PRESENT_ONLY_ONE_CARD.ordinal()] = 18;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.PROCESSING.ordinal()] = 19;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.PROCESSING_ERROR.ordinal()] = 20;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.REFER_TO_YOUR_PAYMENT_DEVICE.ordinal()] = 21;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.REMOVE_CARD.ordinal()] = 22;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.TRANSACTION_TERMINATED.ordinal()] = 23;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.TRY_AGAIN.ordinal()] = 24;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.TRY_ANOTHER_INTERFACE.ordinal()] = 25;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.USE_CHIP_READER.ordinal()] = 26;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.USE_MAG_STRIPE.ordinal()] = 27;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.WELCOME.ordinal()] = 28;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.INSERT_OR_TAP_CARD.ordinal()] = 29;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.SELECT_ACCOUNT.ordinal()] = 30;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.APPROVED_PLEASE_SIGN.ordinal()] = 31;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.TAP_CARD_AGAIN.ordinal()] = 32;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.AUTHORISING.ordinal()] = 33;
            } catch (NoSuchFieldError unused89) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.INSERT_SWIPE_OR_TRY_ANOTHER_CARD.ordinal()] = 34;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.INSERT_OR_SWIPE_CARD.ordinal()] = 35;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.MULTIPLE_CARDS_DETECTED.ordinal()] = 36;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.TIMEOUT.ordinal()] = 37;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.APPLICATION_EXPIRED.ordinal()] = 38;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.FINAL_CONFIRM.ordinal()] = 39;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.SHOW_THANK_YOU.ordinal()] = 40;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.PIN_TRY_LIMIT_EXCEEDED.ordinal()] = 41;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.NOT_ICC_CARD.ordinal()] = 42;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CARD_INSERTED.ordinal()] = 43;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CARD_REMOVED.ordinal()] = 44;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.NO_EMV_APPS.ordinal()] = 45;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CTL_NO_EMV_APPS.ordinal()] = 46;
            } catch (NoSuchFieldError unused102) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CTL_APP_NOT_SUPPORTED.ordinal()] = 47;
            } catch (NoSuchFieldError unused103) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CTL_TRANSACTION_LIMIT_EXCEEDED.ordinal()] = 48;
            } catch (NoSuchFieldError unused104) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.INVALID_INPUT.ordinal()] = 49;
            } catch (NoSuchFieldError unused105) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.TOO_MANY_TAPS.ordinal()] = 50;
            } catch (NoSuchFieldError unused106) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.INCORRECT_CARD_DATA.ordinal()] = 51;
            } catch (NoSuchFieldError unused107) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.ERROR_STATUS_WORD.ordinal()] = 52;
            } catch (NoSuchFieldError unused108) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CARD_IS_STILL_INSERTED.ordinal()] = 53;
            } catch (NoSuchFieldError unused109) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.DPAS_CDCVM.ordinal()] = 54;
            } catch (NoSuchFieldError unused110) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CARD_NOT_ADMITTED.ordinal()] = 55;
            } catch (NoSuchFieldError unused111) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.INVALID_TRANSACTION.ordinal()] = 56;
            } catch (NoSuchFieldError unused112) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.INVALID_CARD_NUMBER.ordinal()] = 57;
            } catch (NoSuchFieldError unused113) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.SYSTEM_MALFUNCTION.ordinal()] = 58;
            } catch (NoSuchFieldError unused114) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.EXPIRED_CARD.ordinal()] = 59;
            } catch (NoSuchFieldError unused115) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.TRANSACTION_NOT_PERMITTED.ordinal()] = 60;
            } catch (NoSuchFieldError unused116) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.INVALID_FUNCTION.ordinal()] = 61;
            } catch (NoSuchFieldError unused117) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.INVALID_CARD.ordinal()] = 62;
            } catch (NoSuchFieldError unused118) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.WRONG_CARD.ordinal()] = 63;
            } catch (NoSuchFieldError unused119) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.TERMINAL_NOT_PERMITTED.ordinal()] = 64;
            } catch (NoSuchFieldError unused120) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.ORIGINAL_AMOUNT_INCORRECT.ordinal()] = 65;
            } catch (NoSuchFieldError unused121) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CARD_NOT_READABLE.ordinal()] = 66;
            } catch (NoSuchFieldError unused122) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.AUTHENTICATION_REQUIRED.ordinal()] = 67;
            } catch (NoSuchFieldError unused123) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.DECLINED_WITH_RESPONSE_CODE_05.ordinal()] = 68;
            } catch (NoSuchFieldError unused124) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.NOT_ACCEPTED_TRY_AGAIN.ordinal()] = 69;
            } catch (NoSuchFieldError unused125) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CARD_ERROR_PLEASE_ENTER_PIN_AGAIN.ordinal()] = 70;
            } catch (NoSuchFieldError unused126) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.CARD_ERROR_PLEASE_REMOVE_CARD.ordinal()] = 71;
            } catch (NoSuchFieldError unused127) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.NOT_ACCEPTED_PLEASE_REMOVE_CARD.ordinal()] = 72;
            } catch (NoSuchFieldError unused128) {
            }
            try {
                aaa000[aaa003zz.aaa006zz.PROCESSING_ERROR_PLEASE_REMOVE_CARD.ordinal()] = 73;
            } catch (NoSuchFieldError unused129) {
            }
        }
    }

    ccc063zz(BBDeviceController bBDeviceController) {
        this.aaa000 = bBDeviceController;
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000() {
        this.aaa000.aaa004(ccc055zz.aaa067);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(aaa003zz.aaa012zz aaa012zzVar, aaa003zz.aaa013zz aaa013zzVar, String str) {
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(aaa003zz.aaa012zz aaa012zzVar, String str) {
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(aaa003zz.aaa012zz aaa012zzVar, boolean z) {
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(Hashtable<String, String> hashtable) {
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa001(boolean z) {
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa001(boolean z, String str) {
        this.aaa000.aaa015(z, str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa002(String str) {
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa002(boolean z) {
        this.aaa000.aaa020(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa003() {
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa003(String str) {
        this.aaa000.aaa014(str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa003(Hashtable<String, String> hashtable) {
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa003(boolean z) {
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa004(boolean z) {
        this.aaa000.aaa026(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa005() {
        this.aaa000.aaa006(ccc055zz.aaa067);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa006() {
        this.aaa000.aaa077();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa007(String str) {
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa008(String str) {
        this.aaa000.aaa020(str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onBatteryLow(BBDeviceController.BatteryStatus batteryStatus) {
        this.aaa000.aaa001(batteryStatus);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onDeviceDisplayingPrompt() {
        this.aaa000.aaa086();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onDeviceHere(boolean z) {
        this.aaa000.aaa017(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onDeviceReset(boolean z, BBDeviceController.DeviceResetReason deviceResetReason) {
        this.aaa000.aaa001(z, deviceResetReason);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onDeviceResetAlert(int i) {
        this.aaa000.aaa002(i);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onEnterStandbyMode() {
        this.aaa000.aaa087();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onHardwareFunctionalTestResult(int i, int i2, String str) {
        this.aaa000.aaa001(i, i2, str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onPowerButtonPressed() {
        this.aaa000.aaa088();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onPowerConnected(BBDeviceController.PowerSource powerSource, BBDeviceController.BatteryStatus batteryStatus) {
        this.aaa000.aaa001(powerSource, batteryStatus);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onPowerDisconnected(BBDeviceController.PowerSource powerSource) {
        this.aaa000.aaa001(powerSource);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onPowerDown() {
        this.aaa000.aaa089();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onPrintDataCancelled() {
        this.aaa000.aaa090();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onPrintDataEnd() {
        this.aaa000.aaa091();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestAmountConfirm(Hashtable<String, String> hashtable) {
        this.aaa000.aaa009(hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestClearDisplay() {
        this.aaa000.aaa092();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestDisplayAsterisk(String str, int i) {
        this.aaa000.aaa001(str, i);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestDisplayLEDIndicator(BBDeviceController.ContactlessStatus contactlessStatus) {
        this.aaa000.aaa001(contactlessStatus);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestFinalConfirm() {
        this.aaa000.aaa094();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestKeypadResponse() {
        this.aaa000.aaa095();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestManualPanEntry(BBDeviceController.ManualPanEntryType manualPanEntryType) {
        this.aaa000.aaa001(manualPanEntryType);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestOnlineProcess(String str) {
        this.aaa000.aaa016(str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestOtherAmount(BBDeviceController.AmountInputType amountInputType) {
        this.aaa000.aaa001(amountInputType);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestPinEntry(BBDeviceController.PinEntrySource pinEntrySource) {
        this.aaa000.aaa001(pinEntrySource);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestPrintData(int i, boolean z) {
        this.aaa000.aaa001(i, z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestProduceAudioTone(BBDeviceController.ContactlessStatusTone contactlessStatusTone) {
        this.aaa000.aaa001(contactlessStatusTone);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestSelectAccountType() {
        this.aaa000.aaa097();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestSetAmount() {
        this.aaa000.aaa098();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestStartEmv() {
        this.aaa000.aaa099();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestTerminalTime() {
        this.aaa000.aaa100();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestVirtuCryptPEDIResponse(boolean z, Hashtable<String, String> hashtable) {
        this.aaa000.aaa010(z, hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onRequestVirtuCryptPEDKResponse(boolean z, Hashtable<String, String> hashtable) {
        this.aaa000.aaa011(z, hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnAccessiblePINPadTouchEvent(BBDeviceController.PinPadTouchEvent pinPadTouchEvent) {
        this.aaa000.aaa001(pinPadTouchEvent);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnAccountSelectionResult(BBDeviceController.AccountSelectionResult accountSelectionResult, int i) {
        this.aaa000.aaa001(accountSelectionResult, i);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnAmount(BBDeviceController.AmountInputResult amountInputResult, Hashtable<String, String> hashtable) {
        this.aaa000.aaa001(amountInputResult, hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnAmountConfirmResult(boolean z) {
        this.aaa000.aaa018(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnApduResult(boolean z, Hashtable<String, String> hashtable) {
        int length;
        boolean z2;
        if (hashtable == null) {
            this.aaa000.aaa012(z, new Hashtable<>());
            return;
        }
        String str = hashtable.get("apdu");
        if (str == null) {
            str = "";
        }
        try {
            length = Integer.parseInt(hashtable.get("apduLength"));
            z2 = true;
        } catch (Exception unused) {
            length = str.length();
            z2 = false;
        }
        Hashtable<String, Object> hashtable2 = new Hashtable<>();
        hashtable2.put("apdu", str);
        if (z2) {
            hashtable2.put("apduLength", Integer.valueOf(length));
        }
        this.aaa000.aaa012(z, hashtable2);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnBatchData(String str) {
        this.aaa000.aaa018(str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnCAPKDetail(CAPK capk) {
        this.aaa000.aaa001(capk);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnCAPKList(List<CAPK> list) {
        this.aaa000.aaa005(list);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnCAPKLocation(String str) {
        this.aaa000.aaa019(str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnCancelCheckCardResult(boolean z) {
        this.aaa000.aaa019(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnControlLEDResult(boolean z, String str) {
        this.aaa000.aaa008(z, str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnDeviceInfo(Hashtable<String, String> hashtable) {
        this.aaa000.aaa011(hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnDisableAccountSelectionResult(boolean z) {
        this.aaa000.aaa021(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnDisableBluetoothResult(boolean z) {
        this.aaa000.aaa022(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnDisableFactoryModeResult(boolean z, String str) {
        this.aaa000.aaa020.aaa037().aaa000(true, z, "", str, BBDeviceController.Error.UNKNOWN);
        this.aaa000.aaa020.aaa000(ccc066zz.aaa004zz.DISABLE_FACTORY_MODE_FUNCTION_3_EXIT_BOOTLOADER);
        this.aaa000.aaa020.aaa002().aaa000(ccc039zz.aaa001zz.EXIT_BOOTLOADER, 0);
        aaa003zz aaa003zzVar = this.aaa000.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa023();
        }
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnDisableInputAmountResult(boolean z) {
        this.aaa000.aaa023(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnDisplayPromptResult(BBDeviceController.DisplayPromptResult displayPromptResult) {
        this.aaa000.aaa001(displayPromptResult);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnEmvCardDataResult(boolean z, String str) {
        this.aaa000.aaa010(z, str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnEmvCardNumber(boolean z, String str) {
        this.aaa000.aaa011(z, str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnEmvReport(String str) {
        this.aaa000.aaa021(str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnEmvReportList(Hashtable<String, String> hashtable) {
        this.aaa000.aaa013(hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnEnableAccountSelectionResult(boolean z) {
        this.aaa000.aaa024(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnEnableBluetoothResult(boolean z) {
        this.aaa000.aaa025(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnEnableInputAmountResult(boolean z) {
        this.aaa000.aaa027(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnEncryptDataResult(boolean z, Hashtable<String, String> hashtable) {
        this.aaa000.aaa013(z, hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnFunctionKey(BBDeviceController.FunctionKey functionKey) {
        this.aaa000.aaa001(functionKey);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnNfcDataExchangeResult(boolean z, Hashtable<String, String> hashtable) {
        this.aaa000.aaa014(z, hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnNfcDetectCardResult(BBDeviceController.NfcDetectCardResult nfcDetectCardResult, Hashtable<String, Object> hashtable) {
        this.aaa000.aaa001(nfcDetectCardResult, hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnPowerOffIccResult(boolean z) {
        this.aaa000.aaa030(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnReadAIDResult(Hashtable<String, Object> hashtable) {
        this.aaa000.aaa014(ccc071zz.aaa001(hashtable));
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnReadDisplayStringResult(boolean z, Hashtable<String, String> hashtable) {
        this.aaa000.aaa015(z, hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnReversalData(String str) {
        this.aaa000.aaa027(str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnSetPinPadButtonsResult(boolean z) {
        this.aaa000.aaa032(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnSetPinPadOrientationResult(boolean z) {
        this.aaa000.aaa033(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnTransactionResult(BBDeviceController.TransactionResult transactionResult) {
        this.aaa000.aaa000(transactionResult, new Hashtable<>());
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnUpdateAIDResult(Hashtable<String, Object> hashtable) {
        this.aaa000.aaa016(ccc071zz.aaa002(hashtable));
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnUpdateCAPKResult(boolean z) {
        this.aaa000.aaa034(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnUpdateDisplayStringResult(boolean z, String str) {
        this.aaa000.aaa016(z, str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnUpdateTerminalSettingsResult(Hashtable<String, aaa003zz.aaa015zz> hashtable) {
        this.aaa000.aaa017(ccc071zz.aaa000(hashtable));
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnVasResult(BBDeviceController.VASResult vASResult, Hashtable<String, Object> hashtable) {
        this.aaa000.aaa001(vASResult, hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnVirtuCryptPEDICommandResult(boolean z, Hashtable<String, String> hashtable) {
        this.aaa000.aaa016(z, hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnVirtuCryptPEDKCommandResult(boolean z, Hashtable<String, String> hashtable) {
        this.aaa000.aaa017(z, hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onReturnWatchdogTimerReset() {
        this.aaa000.bbb001();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onSerialConnected() {
        this.aaa000.bbb002();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onSerialDisconnected() {
        this.aaa000.bbb004();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onSessionError(BBDeviceController.SessionError sessionError, String str) {
        this.aaa000.aaa001(sessionError, str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onSessionInitialized() {
        this.aaa000.bbb005();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onTestChannelConnected() {
        this.aaa000.bbb006();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onTestChannelDisconnected() {
        this.aaa000.bbb007();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onUsbConnected() {
        this.aaa000.bbb008();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onUsbDisconnected() {
        BBDeviceController bBDeviceController = this.aaa000;
        bBDeviceController.aaa014 = false;
        bBDeviceController.aaa013 = null;
        bBDeviceController.aaa006();
        if (this.aaa000.aaa013() != BBDeviceController.aaa002zz.CONNECTING) {
            this.aaa000.bbb009();
        } else if (!this.aaa000.aaa020.aaa054()) {
            this.aaa000.aaa003(BBDeviceController.Error.FAIL_TO_START_USB, "USB failed (error code - 6001)");
        } else {
            BBDeviceController bBDeviceController2 = this.aaa000;
            bBDeviceController2.aaa003(BBDeviceController.Error.FAIL_TO_START_USB, bBDeviceController2.aaa020.aaa024());
        }
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onWaitingForCard(BBDeviceController.CheckCardMode checkCardMode) {
        this.aaa000.aaa001(checkCardMode);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void onWaitingReprintOrPrintNext() {
        this.aaa000.bbb010();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(aaa003zz.aaa006zz aaa006zzVar, String str) {
        switch (aaa000zz.aaa000[aaa006zzVar.ordinal()]) {
            case 3:
                this.aaa000.aaa001(BBDeviceController.DisplayText.APPROVED, str);
                break;
            case 4:
                this.aaa000.aaa001(BBDeviceController.DisplayText.CALL_YOUR_BANK, str);
                break;
            case 7:
                this.aaa000.aaa001(BBDeviceController.DisplayText.CARD_ERROR, str);
                break;
            case 8:
                this.aaa000.aaa001(BBDeviceController.DisplayText.DECLINED, str);
                break;
            case 9:
                this.aaa000.aaa001(BBDeviceController.DisplayText.ENTER_AMOUNT, str);
                break;
            case 10:
                this.aaa000.aaa001(BBDeviceController.DisplayText.ENTER_PIN, str);
                break;
            case 11:
                this.aaa000.aaa001(BBDeviceController.DisplayText.INCORRECT_PIN, str);
                break;
            case 12:
                this.aaa000.aaa001(BBDeviceController.DisplayText.INSERT_CARD, str);
                break;
            case 13:
                this.aaa000.aaa001(BBDeviceController.DisplayText.LAST_PIN_TRY, str);
                break;
            case 14:
                this.aaa000.aaa001(BBDeviceController.DisplayText.NOT_ACCEPTED, str);
                break;
            case 16:
                this.aaa000.aaa001(BBDeviceController.DisplayText.PIN_OK, str);
                break;
            case 17:
                this.aaa000.aaa001(BBDeviceController.DisplayText.PLEASE_WAIT, str);
                break;
            case 19:
                this.aaa000.aaa001(BBDeviceController.DisplayText.PROCESSING, str);
                break;
            case 21:
                this.aaa000.aaa001(BBDeviceController.DisplayText.REFER_TO_YOUR_PAYMENT_DEVICE, str);
                break;
            case 22:
                this.aaa000.aaa001(BBDeviceController.DisplayText.REMOVE_CARD, str);
                break;
            case 23:
                this.aaa000.aaa001(BBDeviceController.DisplayText.TRANSACTION_TERMINATED, str);
                break;
            case 24:
                this.aaa000.aaa001(BBDeviceController.DisplayText.TRY_AGAIN, str);
                break;
            case 27:
                this.aaa000.aaa001(BBDeviceController.DisplayText.USE_MAG_STRIPE, str);
                break;
            case 29:
                this.aaa000.aaa001(BBDeviceController.DisplayText.PRESENT_CARD, str);
                break;
            case 30:
                this.aaa000.aaa001(BBDeviceController.DisplayText.SELECT_ACCOUNT, str);
                break;
            case 31:
                this.aaa000.aaa001(BBDeviceController.DisplayText.APPROVED_PLEASE_SIGN, str);
                break;
            case 32:
                this.aaa000.aaa001(BBDeviceController.DisplayText.PRESENT_CARD_AGAIN, str);
                break;
            case 33:
                this.aaa000.aaa001(BBDeviceController.DisplayText.AUTHORISING, str);
                break;
            case 34:
                this.aaa000.aaa001(BBDeviceController.DisplayText.INSERT_SWIPE_OR_TRY_ANOTHER_CARD, str);
                break;
            case 35:
                this.aaa000.aaa001(BBDeviceController.DisplayText.INSERT_OR_SWIPE_CARD, str);
                break;
            case 36:
                this.aaa000.aaa001(BBDeviceController.DisplayText.MULTIPLE_CARDS_DETECTED, str);
                break;
            case 37:
                this.aaa000.aaa001(BBDeviceController.DisplayText.TIMEOUT, str);
                break;
            case 38:
                this.aaa000.aaa001(BBDeviceController.DisplayText.APPLICATION_EXPIRED, str);
                break;
            case 39:
                this.aaa000.aaa001(BBDeviceController.DisplayText.FINAL_CONFIRM, str);
                break;
            case 40:
                this.aaa000.aaa001(BBDeviceController.DisplayText.SHOW_THANK_YOU, str);
                break;
            case 41:
                this.aaa000.aaa001(BBDeviceController.DisplayText.PIN_TRY_LIMIT_EXCEEDED, str);
                break;
            case 42:
                this.aaa000.aaa001(BBDeviceController.DisplayText.NOT_ICC_CARD, str);
                break;
            case 43:
                this.aaa000.aaa001(BBDeviceController.DisplayText.CARD_INSERTED, str);
                break;
            case 44:
                this.aaa000.aaa001(BBDeviceController.DisplayText.CARD_REMOVED, str);
                break;
            case 45:
                this.aaa000.aaa001(BBDeviceController.DisplayText.NO_EMV_APPS, str);
                break;
            case 46:
                this.aaa000.aaa001(BBDeviceController.DisplayText.CTL_NO_EMV_APPS, str);
                break;
            case 47:
                this.aaa000.aaa001(BBDeviceController.DisplayText.CTL_APP_NOT_SUPPORTED, str);
                break;
            case 48:
                this.aaa000.aaa001(BBDeviceController.DisplayText.CTL_TRANSACTION_LIMIT_EXCEEDED, str);
                break;
            case 49:
                this.aaa000.aaa001(BBDeviceController.DisplayText.INVALID_INPUT, str);
                break;
            case 50:
                this.aaa000.aaa001(BBDeviceController.DisplayText.TOO_MANY_TAPS, str);
                break;
            case 53:
                this.aaa000.aaa001(BBDeviceController.DisplayText.CARD_IS_STILL_INSERTED, str);
                break;
            case 54:
                this.aaa000.aaa001(BBDeviceController.DisplayText.DPAS_CDCVM, str);
                break;
            case 55:
                this.aaa000.aaa001(BBDeviceController.DisplayText.CARD_NOT_ADMITTED, str);
                break;
            case 56:
                this.aaa000.aaa001(BBDeviceController.DisplayText.INVALID_TRANSACTION, str);
                break;
            case 57:
                this.aaa000.aaa001(BBDeviceController.DisplayText.INVALID_CARD_NUMBER, str);
                break;
            case 58:
                this.aaa000.aaa001(BBDeviceController.DisplayText.SYSTEM_MALFUNCTION, str);
                break;
            case 59:
                this.aaa000.aaa001(BBDeviceController.DisplayText.EXPIRED_CARD, str);
                break;
            case 60:
                this.aaa000.aaa001(BBDeviceController.DisplayText.TRANSACTION_NOT_PERMITTED, str);
                break;
            case 61:
                this.aaa000.aaa001(BBDeviceController.DisplayText.INVALID_FUNCTION, str);
                break;
            case 62:
                this.aaa000.aaa001(BBDeviceController.DisplayText.INVALID_CARD, str);
                break;
            case 63:
                this.aaa000.aaa001(BBDeviceController.DisplayText.WRONG_CARD, str);
                break;
            case 64:
                this.aaa000.aaa001(BBDeviceController.DisplayText.TERMINAL_NOT_PERMITTED, str);
                break;
            case 65:
                this.aaa000.aaa001(BBDeviceController.DisplayText.ORIGINAL_AMOUNT_INCORRECT, str);
                break;
            case 66:
                this.aaa000.aaa001(BBDeviceController.DisplayText.CARD_NOT_READABLE, str);
                break;
            case 67:
                this.aaa000.aaa001(BBDeviceController.DisplayText.AUTHENTICATION_REQUIRED, str);
                break;
            case 68:
                this.aaa000.aaa001(BBDeviceController.DisplayText.DECLINED_WITH_RESPONSE_CODE_05, str);
                break;
            case 69:
                this.aaa000.aaa001(BBDeviceController.DisplayText.NOT_ACCEPTED_TRY_AGAIN, str);
                break;
            case 70:
                this.aaa000.aaa001(BBDeviceController.DisplayText.CARD_ERROR_PLEASE_ENTER_PIN_AGAIN, str);
                break;
            case 71:
                this.aaa000.aaa001(BBDeviceController.DisplayText.CARD_ERROR_PLEASE_REMOVE_CARD, str);
                break;
            case 72:
                this.aaa000.aaa001(BBDeviceController.DisplayText.NOT_ACCEPTED_PLEASE_REMOVE_CARD, str);
                break;
            case 73:
                this.aaa000.aaa001(BBDeviceController.DisplayText.PROCESSING_ERROR_PLEASE_REMOVE_CARD, str);
                break;
        }
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa001(String str) {
        this.aaa000.aaa026(str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa002(Hashtable<String, Object> hashtable) {
        this.aaa000.aaa015(ccc071zz.aaa001(hashtable));
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa003(boolean z, String str) {
        this.aaa000.aaa014(z, str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa004(String str) {
        this.aaa000.aaa024(str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa005(boolean z) {
        this.aaa000.aaa029(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa006(String str) {
        this.aaa000.aaa015(str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa001(Hashtable<String, String> hashtable) {
        this.aaa000.aaa012(hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa002(boolean z, String str) {
        this.aaa000.aaa013(z, str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa004() {
        this.aaa000.bbb000();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa005(String str) {
        this.aaa000.aaa022(str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa001() {
        this.aaa000.aaa096();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa002() {
        this.aaa000.aaa093();
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa001(String str, String str2) {
        this.aaa000.aaa003(str, str2);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(boolean z, String str, String str2, int i, int i2, String str3) {
        this.aaa000.aaa000(z, str, str2, i, i2, str3);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(ArrayList<String> arrayList, boolean z) {
        this.aaa000.aaa001(arrayList);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(aaa003zz.aaa004zz aaa004zzVar, Hashtable<String, String> hashtable) {
        BBDeviceController.CheckCardResult checkCardResult;
        switch (aaa000zz.aaa001[aaa004zzVar.ordinal()]) {
            case 1:
                checkCardResult = BBDeviceController.CheckCardResult.BAD_SWIPE;
                break;
            case 2:
                checkCardResult = BBDeviceController.CheckCardResult.INSERTED_CARD;
                break;
            case 3:
                checkCardResult = BBDeviceController.CheckCardResult.MAG_HEAD_FAIL;
                break;
            case 4:
                checkCardResult = BBDeviceController.CheckCardResult.MSR;
                break;
            case 5:
                checkCardResult = BBDeviceController.CheckCardResult.NOT_ICC;
                break;
            case 6:
                checkCardResult = BBDeviceController.CheckCardResult.NO_CARD;
                break;
            case 7:
                checkCardResult = BBDeviceController.CheckCardResult.TAP_CARD_DETECTED;
                break;
            case 8:
                checkCardResult = BBDeviceController.CheckCardResult.USE_ICC_CARD;
                break;
            case 9:
                this.aaa000.aaa003(BBDeviceController.Error.INPUT_INVALID, "");
                return;
            case 10:
                checkCardResult = BBDeviceController.CheckCardResult.MANUAL_PAN_ENTRY;
                break;
            case 11:
                checkCardResult = BBDeviceController.CheckCardResult.CARD_NOT_SUPPORTED;
                break;
            default:
                return;
        }
        this.aaa000.aaa001(checkCardResult, hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(boolean z, String str, String str2, int i) {
        this.aaa000.aaa001(z, str, str2, i);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(aaa003zz.aaa004zz aaa004zzVar, String str) {
        BBDeviceController.CheckCardResult checkCardResult;
        int i = aaa000zz.aaa001[aaa004zzVar.ordinal()];
        if (i == 10) {
            checkCardResult = BBDeviceController.CheckCardResult.MANUAL_PAN_ENTRY;
        } else if (i == 11) {
            checkCardResult = BBDeviceController.CheckCardResult.CARD_NOT_SUPPORTED;
        } else {
            switch (i) {
                case 1:
                    checkCardResult = BBDeviceController.CheckCardResult.BAD_SWIPE;
                    break;
                case 2:
                    checkCardResult = BBDeviceController.CheckCardResult.INSERTED_CARD;
                    break;
                case 3:
                    checkCardResult = BBDeviceController.CheckCardResult.MAG_HEAD_FAIL;
                    break;
                case 4:
                    checkCardResult = BBDeviceController.CheckCardResult.MSR;
                    break;
                case 5:
                    checkCardResult = BBDeviceController.CheckCardResult.NOT_ICC;
                    break;
                case 6:
                    checkCardResult = BBDeviceController.CheckCardResult.NO_CARD;
                    break;
                default:
                    return;
            }
        }
        this.aaa000.aaa000(checkCardResult, str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(aaa003zz.aaa009zz aaa009zzVar, Hashtable<String, String> hashtable) {
        BBDeviceController.PinEntryResult pinEntryResult;
        switch (aaa000zz.aaa002[aaa009zzVar.ordinal()]) {
            case 1:
                pinEntryResult = BBDeviceController.PinEntryResult.BYPASS;
                break;
            case 2:
                pinEntryResult = BBDeviceController.PinEntryResult.CANCEL;
                break;
            case 3:
                pinEntryResult = BBDeviceController.PinEntryResult.ENTERED;
                break;
            case 4:
                pinEntryResult = BBDeviceController.PinEntryResult.INCORRECT_PIN;
                break;
            case 5:
                this.aaa000.aaa003(BBDeviceController.Error.INPUT_INVALID, "");
                return;
            case 6:
                pinEntryResult = BBDeviceController.PinEntryResult.TIMEOUT;
                break;
            case 7:
                pinEntryResult = BBDeviceController.PinEntryResult.WRONG_PIN_LENGTH;
                break;
            case 8:
                pinEntryResult = BBDeviceController.PinEntryResult.ICC_REMOVED;
                break;
            default:
                return;
        }
        this.aaa000.aaa001(pinEntryResult, hashtable);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(boolean z, aaa003zz.aaa010zz aaa010zzVar) {
        this.aaa000.aaa002(z, aaa010zzVar.aaa002, aaa010zzVar.aaa000, aaa010zzVar.aaa001);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(aaa003zz.aaa011zz aaa011zzVar) {
        int i = aaa000zz.aaa003[aaa011zzVar.ordinal()];
        if (i == 1) {
            this.aaa000.aaa001(BBDeviceController.PrintResult.NO_PAPER_OR_COVER_OPENED);
            return;
        }
        if (i == 2) {
            this.aaa000.aaa001(BBDeviceController.PrintResult.OVERHEAT);
            return;
        }
        if (i == 3) {
            this.aaa000.aaa001(BBDeviceController.PrintResult.SUCCESS);
        } else if (i == 4) {
            this.aaa000.aaa001(BBDeviceController.PrintResult.WRONG_PRINTER_COMMAND);
        } else {
            if (i != 5) {
                return;
            }
            this.aaa000.aaa001(BBDeviceController.PrintResult.PRINTER_ERROR);
        }
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(aaa003zz.aaa015zz aaa015zzVar, String str) {
        this.aaa000.aaa000(aaa015zzVar.aaa000(), str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(BBDeviceController.TransactionResult transactionResult, String str) {
        this.aaa000.aaa000(transactionResult, str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(aaa003zz.aaa015zz aaa015zzVar) {
        this.aaa000.aaa001(aaa015zzVar.aaa000());
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(aaa003zz.aaa002zz aaa002zzVar, String str) {
        switch (aaa000zz.aaa004[aaa002zzVar.ordinal()]) {
            case 1:
                this.aaa000.aaa003(BBDeviceController.Error.CMD_NOT_AVAILABLE, str);
                break;
            case 2:
                this.aaa000.aaa003(BBDeviceController.Error.CMD_NOT_AVAILABLE, str);
                break;
            case 3:
                this.aaa000.aaa003(BBDeviceController.Error.COMM_ERROR, str);
                break;
            case 4:
                this.aaa000.aaa003(BBDeviceController.Error.COMM_LINK_UNINITIALIZED, str);
                break;
            case 5:
                this.aaa000.aaa003(BBDeviceController.Error.DEVICE_BUSY, str);
                break;
            case 6:
                this.aaa000.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, str);
                break;
            case 8:
                this.aaa000.aaa003(BBDeviceController.Error.FAIL_TO_START_BT, str);
                break;
            case 9:
                this.aaa000.aaa003(BBDeviceController.Error.INPUT_INVALID, str);
                break;
            case 10:
                this.aaa000.aaa003(BBDeviceController.Error.CASHBACK_NOT_SUPPORTED, str);
                break;
            case 11:
                this.aaa000.aaa003(BBDeviceController.Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, str);
                break;
            case 12:
                this.aaa000.aaa003(BBDeviceController.Error.UNKNOWN, str);
                break;
            case 13:
                this.aaa000.aaa003(BBDeviceController.Error.VOLUME_WARNING_NOT_ACCEPTED, str);
                break;
            case 14:
                this.aaa000.aaa003(BBDeviceController.Error.DEVICE_BUSY, str);
                break;
            case 15:
                BBDeviceController bBDeviceController = this.aaa000;
                bBDeviceController.aaa014 = false;
                bBDeviceController.aaa013 = null;
                bBDeviceController.aaa003(BBDeviceController.Error.FAIL_TO_START_SERIAL, str);
                break;
            case 16:
                BBDeviceController bBDeviceController2 = this.aaa000;
                bBDeviceController2.aaa014 = false;
                bBDeviceController2.aaa013 = null;
                if (str.equalsIgnoreCase(ccc034zz.aaa003("78"))) {
                    this.aaa000.aaa020.aaa008(true);
                    this.aaa000.aaa020.aaa013(str);
                    this.aaa000.aaa006();
                } else {
                    this.aaa000.aaa006();
                    this.aaa000.aaa003(BBDeviceController.Error.FAIL_TO_START_USB, str);
                }
                break;
            case 17:
                BBDeviceController bBDeviceController3 = this.aaa000;
                bBDeviceController3.aaa014 = false;
                bBDeviceController3.aaa013 = null;
                bBDeviceController3.aaa006();
                this.aaa000.aaa003(BBDeviceController.Error.USB_DEVICE_NOT_FOUND, str);
                break;
            case 18:
                BBDeviceController bBDeviceController4 = this.aaa000;
                bBDeviceController4.aaa014 = false;
                bBDeviceController4.aaa013 = null;
                bBDeviceController4.aaa006();
                this.aaa000.aaa003(BBDeviceController.Error.USB_DEVICE_PERMISSION_DENIED, str);
                break;
            case 19:
                BBDeviceController bBDeviceController5 = this.aaa000;
                bBDeviceController5.aaa014 = false;
                bBDeviceController5.aaa013 = null;
                bBDeviceController5.aaa006();
                this.aaa000.aaa003(BBDeviceController.Error.USB_NOT_SUPPORTED, str);
                break;
            case 20:
                this.aaa000.aaa003(BBDeviceController.Error.CHANNEL_BUFFER_FULL, str);
                break;
            case 21:
                this.aaa000.aaa003(BBDeviceController.Error.BLUETOOTH_PERMISSION_DENIED, str);
                break;
            case 22:
                this.aaa000.aaa003(BBDeviceController.Error.HARDWARE_NOT_SUPPORTED, str);
                break;
            case 23:
                this.aaa000.aaa003(BBDeviceController.Error.TAMPER, str);
                break;
            case 24:
                this.aaa000.aaa003(BBDeviceController.Error.PCI_ERROR, str);
                break;
            case 25:
                this.aaa000.aaa003(BBDeviceController.Error.PAIRING_ERROR, str);
                break;
            case 26:
                this.aaa000.aaa003(BBDeviceController.Error.PAIRING_ERROR_INCORRECT_PASSKEY, str);
                break;
            case 27:
                this.aaa000.aaa003(BBDeviceController.Error.PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE, str);
                break;
            case 28:
                this.aaa000.aaa003(BBDeviceController.Error.BLE_SECURE_CONNECTION_NOT_SUPPORTED, str);
                break;
            case 29:
                this.aaa000.aaa003(BBDeviceController.Error.CONTACTLESS_ERROR, str);
                break;
            case 30:
                this.aaa000.aaa003(BBDeviceController.Error.NOT_COMPATIBLE_ERROR, str);
                break;
            case 31:
                this.aaa000.aaa003(BBDeviceController.Error.INTEGRITY_CHECK_ERROR, str);
                break;
            case 32:
                BBDeviceController bBDeviceController6 = this.aaa000;
                bBDeviceController6.aaa014 = false;
                bBDeviceController6.aaa013 = null;
                bBDeviceController6.aaa003(BBDeviceController.Error.FAIL_TO_START_TEST_CHANNEL, str);
                break;
        }
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(boolean z, String str, String str2, int i, String str3) {
        this.aaa000.aaa000(z, str, str2, i, str3);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(int i) {
        this.aaa000.aaa003(i);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(String str, String str2) {
        this.aaa000.aaa004(str, str2);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(boolean z, String str) {
        this.aaa000.aaa012(z, str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(boolean z, String str, String str2) {
        this.aaa000.aaa000(z, str, str2);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(boolean z) {
        this.aaa000.aaa028(z);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(String str) {
        this.aaa000.aaa023(str);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(String str, String str2, String str3) {
        this.aaa000.aaa001(str, str2, str3);
    }

    @Override // com.stripe.bbpos.bbdevice.aaa003zz.aaa001zz
    public void aaa000(String str, String str2, String str3, String str4) {
        this.aaa000.aaa000(str, str2, str3, str4);
    }
}
