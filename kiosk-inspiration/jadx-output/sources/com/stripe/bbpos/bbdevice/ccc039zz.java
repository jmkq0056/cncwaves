package com.stripe.bbpos.bbdevice;

import java.util.ArrayList;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
final class ccc039zz {
    private aaa001zz aaa000 = aaa001zz.NONE;
    private int aaa001 = 0;
    String aaa002 = "";
    String aaa003 = "";
    String aaa004 = "";
    Hashtable<String, Object> aaa005 = new Hashtable<>();
    Hashtable<String, String> aaa006 = new Hashtable<>();
    ArrayList<String> aaa007 = new ArrayList<>();

    static /* synthetic */ class aaa000zz {
        static final /* synthetic */ int[] aaa000;

        static {
            int[] iArr = new int[aaa001zz.values().length];
            aaa000 = iArr;
            try {
                iArr[aaa001zz.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                aaa000[aaa001zz.IS_DEVICE_HERE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                aaa000[aaa001zz.START_AUDIO_AUTO_CONFIG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                aaa000[aaa001zz.CANCEL_AUDIO_AUTO_CONFIG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                aaa000[aaa001zz.INIT_SESSION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                aaa000[aaa001zz.GET_DEVICE_INFO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                aaa000[aaa001zz.ENTER_STANDBY_MODE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                aaa000[aaa001zz.POWER_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                aaa000[aaa001zz.RESET_DEVICE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                aaa000[aaa001zz.CONTROL_LED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                aaa000[aaa001zz.START_EMV.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                aaa000[aaa001zz.SEND_TERMINAL_TIME.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                aaa000[aaa001zz.SET_AMOUNT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                aaa000[aaa001zz.CANCEL_SET_AMOUNT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                aaa000[aaa001zz.CANCEL_CHECK_CARD.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                aaa000[aaa001zz.SELECT_APPLICATION.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                aaa000[aaa001zz.CANCEL_SELECT_APPLICATION.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                aaa000[aaa001zz.SEND_FINAL_CONFIRM_RESULT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                aaa000[aaa001zz.SEND_ONLINE_PROCESS_RESULT.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                aaa000[aaa001zz.ENABLE_INPUT_AMOUNT.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                aaa000[aaa001zz.DISABLE_INPUT_AMOUNT.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                aaa000[aaa001zz.ENABLE_ACCOUNT_SELECTION.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                aaa000[aaa001zz.DISABLE_ACCOUNT_SELECTION.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                aaa000[aaa001zz.START_PIN_ENTRY.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                aaa000[aaa001zz.CANCEL_PIN_ENTRY.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                aaa000[aaa001zz.BYPASS_PIN_ENTRY.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                aaa000[aaa001zz.CHECK_CARD.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                aaa000[aaa001zz.GET_EMV_CARD_DATA.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                aaa000[aaa001zz.GET_EMV_CARD_NUMBER.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                aaa000[aaa001zz.ENCRYPT_PIN.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                aaa000[aaa001zz.ENCRYPT_DATA_WITH_SETTINGS.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                aaa000[aaa001zz.POWER_ON_ICC.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                aaa000[aaa001zz.POWER_OFF_ICC.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                aaa000[aaa001zz.SEND_APDU.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                aaa000[aaa001zz.START_NFC_DETECTION.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                aaa000[aaa001zz.STOP_NFC_DETECTION.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                aaa000[aaa001zz.NFC_DATA_EXCHANGE.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                aaa000[aaa001zz.READ_TERMINAL_SETTING.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                aaa000[aaa001zz.UPDATE_TERMINAL_SETTING.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                aaa000[aaa001zz.UPDATE_TERMINAL_SETTINGS.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                aaa000[aaa001zz.GET_CAPK_LIST.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                aaa000[aaa001zz.GET_CAPK_DETAIL.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                aaa000[aaa001zz.UPDATE_CAPK.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                aaa000[aaa001zz.FIND_CAPK_LOCATION.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                aaa000[aaa001zz.REMOVE_CAPK.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                aaa000[aaa001zz.GET_EMV_REPORT_LIST.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                aaa000[aaa001zz.GET_EMV_REPORT.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                aaa000[aaa001zz.READ_AID.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                aaa000[aaa001zz.UPDATE_AID.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                aaa000[aaa001zz.READ_WIFI_SETTINGS.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                aaa000[aaa001zz.UPDATE_WIFI_SETTINGS.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                aaa000[aaa001zz.READ_GPRS_SETTINGS.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                aaa000[aaa001zz.UPDATE_GPRS_SETTINGS.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                aaa000[aaa001zz.START_PRINT.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                aaa000[aaa001zz.SEND_PRINT_DATA.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                aaa000[aaa001zz.START_BARCODE_READER.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                aaa000[aaa001zz.STOP_BARCODE_READER.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                aaa000[aaa001zz.GET_BARCODE.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                aaa000[aaa001zz.SEND_OTA_COMMAND.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                aaa000[aaa001zz.SEND_COMMAND_SPOC_DIRECTLY.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                aaa000[aaa001zz.VERIFY_7MD_KEY_STATUS.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                aaa000[aaa001zz.ECHO_DATA.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                aaa000[aaa001zz.ENABLE_ENABLEMENT_TOKEN.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                aaa000[aaa001zz.SET_PINPAD_BUTTONS.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                aaa000[aaa001zz.SET_PINPAD_ORIENTATION.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                aaa000[aaa001zz.UPDATE_DISPLAY_SETTINGS.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                aaa000[aaa001zz.READ_DISPLAY_SETTINGS.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                aaa000[aaa001zz.GET_FIRMWARE_DEBUG_LOG.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                aaa000[aaa001zz.CLEAR_FIRMWARE_DEBUG_LOG.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                aaa000[aaa001zz.SELECT_ACCOUNT_TYPE.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                aaa000[aaa001zz.CANCEL_SELECT_ACCOUNT_TYPE.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                aaa000[aaa001zz.GET_DEVICE_INFO_WITH_KEYS.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                aaa000[aaa001zz.GET_DEVICE_INFO_IN_BOOTLOADER.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                aaa000[aaa001zz.ENCRYPT_DECRYPT_OP_KEY.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                aaa000[aaa001zz.UPDATE_DISPLAY_STRING.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                aaa000[aaa001zz.READ_DISPLAY_STRING.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                aaa000[aaa001zz.SET_AMOUNT_CONFIRM_RESULT.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                aaa000[aaa001zz.START_HARDWARE_FUNCTIONAL_TEST.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                aaa000[aaa001zz.STOP_HARDWARE_FUNCTIONAL_TEST.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                aaa000[aaa001zz.ENABLE_BLUETOOTH.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                aaa000[aaa001zz.DISABLE_BLUETOOTH.ordinal()] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                aaa000[aaa001zz.RESET_WATCHDOG_TIMER.ordinal()] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                aaa000[aaa001zz.GET_RANDOM.ordinal()] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                aaa000[aaa001zz.VIRTU_CRYPT_PEDI_REQUEST.ordinal()] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                aaa000[aaa001zz.SEND_VIRTU_CRYPT_PEDI_RESPONSE.ordinal()] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                aaa000[aaa001zz.VIRTU_CRYPT_PEDK_REQUEST.ordinal()] = 86;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                aaa000[aaa001zz.SEND_VIRTU_CRYPT_PEDK_RESPONSE.ordinal()] = 87;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                aaa000[aaa001zz.KEY_INJECTION_INJECT_RSA.ordinal()] = 88;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                aaa000[aaa001zz.KEY_INJECTION_GET_KEK.ordinal()] = 89;
            } catch (NoSuchFieldError unused89) {
            }
            try {
                aaa000[aaa001zz.KEY_INJECTION_SEND_KEK_KCV.ordinal()] = 90;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                aaa000[aaa001zz.KEY_INJECTION_INJECT_TMK0.ordinal()] = 91;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                aaa000[aaa001zz.KEY_INJECTION_SET_INTERNAL_KEY_ENCRYPTION_KEY.ordinal()] = 92;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                aaa000[aaa001zz.GET_DEBUG_LOG_FOR_L2_TEST_VISA_PAYWAVE.ordinal()] = 93;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                aaa000[aaa001zz.RESET_DEBUG_LOG_FOR_L2_TEST_VISA_PAYWAVE.ordinal()] = 94;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                aaa000[aaa001zz.READ_AID_DIRECTLY.ordinal()] = 95;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                aaa000[aaa001zz.UPDATE_AID_DIRECTLY.ordinal()] = 96;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                aaa000[aaa001zz.GET_DEBUG_LOG_FOR_L2_TEST_MASTER_PAYPASS.ordinal()] = 97;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                aaa000[aaa001zz.SEND_DET_FOR_L2_TEST_MASTER_PAYPASS.ordinal()] = 98;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                aaa000[aaa001zz.CLEAN_FOR_L2_TEST_MASTER_PAYPASS.ordinal()] = 99;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                aaa000[aaa001zz.ENTER_BOOTLOADER.ordinal()] = 100;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                aaa000[aaa001zz.EXIT_BOOTLOADER.ordinal()] = 101;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                aaa000[aaa001zz.DISABLE_FACTORY_MODE.ordinal()] = 102;
            } catch (NoSuchFieldError unused102) {
            }
        }
    }

    enum aaa001zz {
        NONE,
        IS_DEVICE_HERE,
        START_AUDIO_AUTO_CONFIG,
        CANCEL_AUDIO_AUTO_CONFIG,
        INIT_SESSION,
        GET_DEVICE_INFO,
        ENTER_STANDBY_MODE,
        POWER_DOWN,
        RESET_DEVICE,
        CONTROL_LED,
        START_EMV,
        SEND_TERMINAL_TIME,
        SET_AMOUNT,
        CANCEL_SET_AMOUNT,
        CANCEL_CHECK_CARD,
        SELECT_APPLICATION,
        CANCEL_SELECT_APPLICATION,
        SEND_FINAL_CONFIRM_RESULT,
        SEND_ONLINE_PROCESS_RESULT,
        ENABLE_INPUT_AMOUNT,
        DISABLE_INPUT_AMOUNT,
        ENABLE_ACCOUNT_SELECTION,
        DISABLE_ACCOUNT_SELECTION,
        START_PIN_ENTRY,
        CANCEL_PIN_ENTRY,
        BYPASS_PIN_ENTRY,
        CHECK_CARD,
        GET_EMV_CARD_DATA,
        GET_EMV_CARD_NUMBER,
        ENCRYPT_PIN,
        ENCRYPT_DATA_WITH_SETTINGS,
        POWER_ON_ICC,
        POWER_OFF_ICC,
        SEND_APDU,
        START_NFC_DETECTION,
        STOP_NFC_DETECTION,
        NFC_DATA_EXCHANGE,
        READ_TERMINAL_SETTING,
        UPDATE_TERMINAL_SETTING,
        UPDATE_TERMINAL_SETTINGS,
        GET_CAPK_LIST,
        GET_CAPK_DETAIL,
        UPDATE_CAPK,
        FIND_CAPK_LOCATION,
        REMOVE_CAPK,
        GET_EMV_REPORT_LIST,
        GET_EMV_REPORT,
        READ_AID,
        UPDATE_AID,
        READ_WIFI_SETTINGS,
        UPDATE_WIFI_SETTINGS,
        READ_GPRS_SETTINGS,
        UPDATE_GPRS_SETTINGS,
        START_PRINT,
        SEND_PRINT_DATA,
        START_BARCODE_READER,
        STOP_BARCODE_READER,
        GET_BARCODE,
        SEND_OTA_COMMAND,
        SEND_COMMAND_SPOC_DIRECTLY,
        VERIFY_7MD_KEY_STATUS,
        ECHO_DATA,
        ENABLE_ENABLEMENT_TOKEN,
        SET_PINPAD_BUTTONS,
        SET_PINPAD_ORIENTATION,
        UPDATE_DISPLAY_SETTINGS,
        READ_DISPLAY_SETTINGS,
        GET_FIRMWARE_DEBUG_LOG,
        CLEAR_FIRMWARE_DEBUG_LOG,
        SELECT_ACCOUNT_TYPE,
        CANCEL_SELECT_ACCOUNT_TYPE,
        GET_DEVICE_INFO_WITH_KEYS,
        GET_DEVICE_INFO_IN_BOOTLOADER,
        ENCRYPT_DECRYPT_OP_KEY,
        UPDATE_DISPLAY_STRING,
        READ_DISPLAY_STRING,
        SET_AMOUNT_CONFIRM_RESULT,
        START_HARDWARE_FUNCTIONAL_TEST,
        STOP_HARDWARE_FUNCTIONAL_TEST,
        ENABLE_BLUETOOTH,
        DISABLE_BLUETOOTH,
        RESET_WATCHDOG_TIMER,
        GET_RANDOM,
        VIRTU_CRYPT_PEDI_REQUEST,
        SEND_VIRTU_CRYPT_PEDI_RESPONSE,
        VIRTU_CRYPT_PEDK_REQUEST,
        SEND_VIRTU_CRYPT_PEDK_RESPONSE,
        KEY_INJECTION_INJECT_RSA,
        KEY_INJECTION_GET_KEK,
        KEY_INJECTION_SEND_KEK_KCV,
        KEY_INJECTION_INJECT_TMK0,
        KEY_INJECTION_SET_INTERNAL_KEY_ENCRYPTION_KEY,
        GET_DEBUG_LOG_FOR_L2_TEST_VISA_PAYWAVE,
        RESET_DEBUG_LOG_FOR_L2_TEST_VISA_PAYWAVE,
        READ_AID_DIRECTLY,
        UPDATE_AID_DIRECTLY,
        GET_DEBUG_LOG_FOR_L2_TEST_MASTER_PAYPASS,
        SEND_DET_FOR_L2_TEST_MASTER_PAYPASS,
        CLEAN_FOR_L2_TEST_MASTER_PAYPASS,
        ENTER_BOOTLOADER,
        EXIT_BOOTLOADER,
        DISABLE_FACTORY_MODE
    }

    ccc039zz() {
        aaa010();
    }

    private void aaa000(String str) {
    }

    void aaa000(aaa001zz aaa001zzVar) {
        aaa000("[setProcessingCommand] input : " + aaa001zzVar);
        this.aaa000 = aaa001zzVar;
    }

    void aaa001(aaa001zz aaa001zzVar, int i, Hashtable<String, String> hashtable) {
        aaa000("[setProcessingCommand] input : " + aaa001zzVar + ", inputAdditionalState : " + i + ", inputHashtableStrStr : " + hashtable);
        this.aaa000 = aaa001zzVar;
        this.aaa001 = i;
        this.aaa006 = hashtable;
    }

    Hashtable<String, Object> aaa002() {
        return this.aaa005;
    }

    Hashtable<String, String> aaa003() {
        return this.aaa006;
    }

    String aaa004() {
        return this.aaa002;
    }

    String aaa005() {
        return this.aaa003;
    }

    String aaa006() {
        return this.aaa004;
    }

    aaa001zz aaa007() {
        return this.aaa000;
    }

    boolean aaa009() {
        return this.aaa000 != aaa001zz.NONE;
    }

    void aaa010() {
        aaa000("[reset]");
        this.aaa000 = aaa001zz.NONE;
        this.aaa001 = 0;
        this.aaa002 = "";
        this.aaa003 = "";
        this.aaa004 = "";
        this.aaa005 = new Hashtable<>();
        this.aaa006 = new Hashtable<>();
        this.aaa007 = new ArrayList<>();
    }

    String aaa008() {
        switch (aaa000zz.aaa000[this.aaa000.ordinal()]) {
        }
        return "getDeviceInfo";
    }

    void aaa000(aaa001zz aaa001zzVar, int i) {
        aaa000("[setProcessingCommand] input : " + aaa001zzVar + ", inputAdditionalState : " + i);
        this.aaa000 = aaa001zzVar;
        this.aaa001 = i;
    }

    ArrayList<String> aaa001() {
        return this.aaa007;
    }

    void aaa000(aaa001zz aaa001zzVar, int i, String str) {
        aaa000("[setProcessingCommand] input : " + aaa001zzVar + ", inputAdditionalState : " + i + ", inputString1 : " + str);
        this.aaa000 = aaa001zzVar;
        this.aaa001 = i;
        this.aaa002 = str;
    }

    void aaa000(aaa001zz aaa001zzVar, int i, String str, String str2) {
        aaa000("[setProcessingCommand] input : " + aaa001zzVar + ", inputAdditionalState : " + i + ", inputString1 : " + str + ", inputString2 : " + str2);
        this.aaa000 = aaa001zzVar;
        this.aaa001 = i;
        this.aaa002 = str;
        this.aaa003 = str2;
    }

    void aaa000(aaa001zz aaa001zzVar, int i, Hashtable<String, Object> hashtable) {
        aaa000("[setProcessingCommand] input : " + aaa001zzVar + ", inputAdditionalState : " + i + ", inputHashtableStrObj : " + hashtable);
        this.aaa000 = aaa001zzVar;
        this.aaa001 = i;
        this.aaa005 = hashtable;
    }

    void aaa000(aaa001zz aaa001zzVar, int i, ArrayList<String> arrayList) {
        aaa000("[setProcessingCommand] input : " + aaa001zzVar + ", inputAdditionalState : " + i + ", inputArrayListStr : " + arrayList);
        this.aaa000 = aaa001zzVar;
        this.aaa001 = i;
        this.aaa007 = arrayList;
    }

    int aaa000() {
        return this.aaa001;
    }

    void aaa000(int i) {
        this.aaa001 = i;
    }

    static int aaa000(String str, int i) {
        if (!ccc071zz.aaa006(str)) {
            return 0;
        }
        int length = str.length() / 2;
        int i2 = length / i;
        return length % i != 0 ? i2 + 1 : i2;
    }

    static String aaa000(String str, int i, int i2) {
        if (ccc071zz.aaa006(str)) {
            int iAaa000 = aaa000(str, i2) - 1;
            if (i < iAaa000) {
                return str.substring(i * i2 * 2, (i + 1) * i2 * 2);
            }
            if (i == iAaa000) {
                return str.substring(i * i2 * 2);
            }
        }
        return "";
    }
}
