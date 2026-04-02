package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;

/* JADX INFO: loaded from: classes3.dex */
class ccc038zz {
    private aaa000zz aaa000 = aaa000zz.NONE;
    private BBDeviceController.DisplayText aaa001 = BBDeviceController.DisplayText.PLEASE_WAIT;
    private BBDeviceController.TransactionResult aaa002 = BBDeviceController.TransactionResult.TIMEOUT;
    private BBDeviceController.Error aaa003 = BBDeviceController.Error.UNKNOWN;
    private BBDeviceController.BatteryStatus aaa004 = BBDeviceController.BatteryStatus.LOW;

    enum aaa000zz {
        NONE,
        ON_WAITING_FOR_CARD,
        ON_WAITING_REPRINT_OR_PRINT_NEXT,
        ON_BT_RETURN_SCAN_RESULTS,
        ON_BT_SCAN_TIMEOUT,
        ON_BT_SCAN_STOPPED,
        ON_BT_CONNECTED,
        ON_BT_DISCONNECTED,
        ON_BT_REQUEST_PAIRING,
        ON_USB_CONNECTED,
        ON_USB_DISCONNECTED,
        ON_SERIAL_CONNECTED,
        ON_SERIAL_DISCONNECTED,
        ON_TEST_CHANNEL_CONNECTED,
        ON_TEST_CHANNEL_DISCONNECTED,
        ON_RETURN_CHECK_CARD_RESULT,
        ON_RETURN_CANCEL_CHECK_CARD_RESULT,
        ON_RETURN_DEVICE_INFO,
        ON_RETURN_TRANSACTION_RESULT,
        ON_RETURN_BATCH_DATA,
        ON_RETURN_REVERSAL_DATA,
        ON_RETURN_AMOUNT_CONFIRM_RESULT,
        ON_RETURN_PIN_ENTRY_RESULT,
        ON_RETURN_PRINT_RESULT,
        ON_RETURN_ACCOUNT_SELECTION_RESULT,
        ON_RETURN_AMOUNT,
        ON_RETURN_UPDATE_AID_RESULT,
        ON_RETURN_UPDATE_GPRS_SETTINGS_RESULT,
        ON_RETURN_UPDATE_TERMINAL_SETTING_RESULT,
        ON_RETURN_UPDATE_TERMINAL_SETTINGS_RESULT,
        ON_RETURN_UPDATE_WIFI_SETTINGS_RESULT,
        ON_RETURN_UPDATE_DISPLAY_STRING_RESULT,
        ON_RETURN_READ_DISPLAY_STRING_RESULT,
        ON_RETURN_READ_DISPLAY_SETTINGS_RESULT,
        ON_RETURN_READ_AID_RESULT,
        ON_RETURN_READ_GPRS_SETTINGS_RESULT,
        ON_RETURN_READ_TERMINAL_SETTING_RESULT,
        ON_RETURN_READ_WIFI_SETTINGS_RESULT,
        ON_RETURN_ENABLE_ACCOUNT_SELECTION_RESULT,
        ON_RETURN_ENABLE_INPUT_AMOUNT_RESULT,
        ON_RETURN_CAPK_LIST,
        ON_RETURN_CAPK_DETAIL,
        ON_RETURN_CAPK_LOCATION,
        ON_RETURN_UPDATE_CAPK_RESULT,
        ON_RETURN_REMOVE_CAPK_RESULT,
        ON_RETURN_EMV_REPORT_LIST,
        ON_RETURN_EMV_REPORT,
        ON_RETURN_DISABLE_ACCOUNT_SELECTION_RESULT,
        ON_RETURN_DISABLE_INPUT_AMOUNT_RESULT,
        ON_RETURN_EMV_CARD_DATA_RESULT,
        ON_RETURN_EMV_CARD_NUMBER,
        ON_RETURN_ENCRYPT_DATA_RESULT,
        ON_RETURN_POWER_ON_ICC_RESULT,
        ON_RETURN_POWER_OFF_ICC_RESULT,
        ON_RETURN_APDU_RESULT,
        ON_REQUEST_SELECT_APPLICATION,
        ON_REQUEST_SELECT_ACCOUNT_TYPE,
        ON_REQUEST_SET_AMOUNT,
        ON_REQUEST_OTHER_AMOUNT,
        ON_REQUEST_PIN_ENTRY,
        ON_REQUEST_MANUAL_PAN_ENTRY,
        ON_RETURN_SET_PIN_PAD_BUTTONS_RESULT,
        ON_RETURN_SET_PIN_PAD_ORIENTATION_RESULT,
        ON_RETURN_ACCESSIBLE_PIN_PAD_TOUCH_EVENT,
        ON_RETURN_UPDATE_DISPLAY_SETTINGS_PROGRESS,
        ON_RETURN_UPDATE_DISPLAY_SETTINGS_RESULT,
        ON_REQUEST_ONLINE_PROCESS,
        ON_REQUEST_TERMINAL_TIME,
        ON_REQUEST_DISPLAY_TEXT,
        ON_REQUEST_DISPLAY_ASTERISK,
        ON_REQUEST_DISPLAY_LED_INDICATOR,
        ON_REQUEST_PRODUCE_AUDIO_TONE,
        ON_REQUEST_CLEAR_DISPLAY,
        ON_REQUEST_FINAL_CONFIRM,
        ON_REQUEST_AMOUNT_CONFIRM,
        ON_REQUEST_DISPLAY_APPLICATION_LABEL,
        ON_REQUEST_PRINT_DATA,
        ON_PRINT_DATA_CANCELLED,
        ON_PRINT_DATA_END,
        ON_BATTERY_LOW,
        ON_AUDIO_DEVICE_PLUGGED,
        ON_AUDIO_DEVICE_UNPLUGGED,
        ON_ERROR,
        ON_SESSION_INITIALIZED,
        ON_SESSION_ERROR,
        ON_RETURN_DEBUGLOG,
        ON_AUDIO_AUTO_CONFIG_PROGRESS_UPDATE,
        ON_AUDIO_AUTO_CONFIG_COMPLETED,
        ON_AUDIO_AUTO_CONFIG_ERROR,
        ON_NO_AUDIO_DEVICE_DETECTED,
        ON_DEVICE_HERE,
        ON_POWER_DOWN,
        ON_POWER_BUTTON_PRESSED,
        ON_POWER_CONNECTED,
        ON_POWER_DISCONNECTED,
        ON_DEVICE_RESET,
        ON_DEVICE_RESET_ALERT,
        ON_ENTER_STANDBY_MODE,
        ON_RETURN_NFC_DATA_EXCHANGE_RESULT,
        ON_RETURN_NFC_DETECT_CARD_RESULT,
        ON_RETURN_CONTROL_LED_RESULT,
        ON_RETURN_VAS_RESULT,
        ON_REQUEST_START_EMV,
        ON_DEVICE_DISPLAYING_PROMPT,
        ON_REQUEST_KEYPAD_RESPONSE,
        ON_RETURN_DISPLAY_PROMPT_RESULT,
        ON_RETURN_FUNCTION_KEY,
        ON_HARDWARE_FUNCTIONAL_TEST_RESULT,
        ON_REQUEST_VIRTU_CRYPT_PEDI_RESPONSE,
        ON_RETURN_VIRTU_CRYPT_PEDI_COMMAND_RESULT,
        ON_REQUEST_VIRTU_CRYPT_PEDK_RESPONSE,
        ON_RETURN_VIRTU_CRYPT_PEDK_COMMAND_RESULT,
        ON_BARCODE_READER_CONNECTED,
        ON_BARCODE_READER_DISCONNECTED,
        ON_RETURN_BARCODE,
        ON_RETURN_KEY_EXCHANGE_RESULT,
        ON_RETURN_INJECT_MASTER_KEY_RESULT,
        ON_RETURN_INTEGRITY_CHECK_RESULT,
        ON_RETURN_ENABLE_BLUETOOTH_RESULT,
        ON_RETURN_DISABLE_BLUETOOTH_RESULT,
        ON_RETURN_WATCHDOG_TIMER_RESET,
        ON_RETURN_DISABLE_FACTORY_MODE_RESULT
    }

    ccc038zz() {
        aaa000();
    }

    private void aaa000(String str) {
    }

    void aaa000() {
        aaa000("[reset]");
        this.aaa000 = aaa000zz.NONE;
        this.aaa001 = BBDeviceController.DisplayText.PLEASE_WAIT;
        this.aaa002 = BBDeviceController.TransactionResult.TIMEOUT;
        this.aaa003 = BBDeviceController.Error.UNKNOWN;
        this.aaa004 = BBDeviceController.BatteryStatus.LOW;
    }

    void aaa001(aaa000zz aaa000zzVar) {
        aaa000();
        this.aaa000 = aaa000zzVar;
    }

    void aaa001(aaa000zz aaa000zzVar, BBDeviceController.DisplayText displayText) {
        aaa000();
        this.aaa000 = aaa000zzVar;
        this.aaa001 = displayText;
    }

    void aaa001(aaa000zz aaa000zzVar, BBDeviceController.TransactionResult transactionResult) {
        aaa000();
        this.aaa000 = aaa000zzVar;
        this.aaa002 = transactionResult;
    }

    boolean aaa000(aaa000zz aaa000zzVar) {
        aaa000zz aaa000zzVar2;
        aaa000zz aaa000zzVar3 = aaa000zz.NONE;
        return (aaa000zzVar == aaa000zzVar3 || (aaa000zzVar2 = this.aaa000) == aaa000zzVar3 || aaa000zzVar != aaa000zzVar2) ? false : true;
    }

    boolean aaa000(aaa000zz aaa000zzVar, BBDeviceController.DisplayText displayText) {
        aaa000zz aaa000zzVar2;
        aaa000zz aaa000zzVar3 = aaa000zz.NONE;
        return aaa000zzVar != aaa000zzVar3 && (aaa000zzVar2 = this.aaa000) != aaa000zzVar3 && aaa000zzVar == aaa000zzVar2 && displayText == this.aaa001;
    }

    void aaa001(aaa000zz aaa000zzVar, BBDeviceController.Error error) {
        aaa000();
        this.aaa000 = aaa000zzVar;
        this.aaa003 = error;
    }

    boolean aaa000(aaa000zz aaa000zzVar, BBDeviceController.TransactionResult transactionResult) {
        aaa000zz aaa000zzVar2;
        aaa000zz aaa000zzVar3 = aaa000zz.NONE;
        return aaa000zzVar != aaa000zzVar3 && (aaa000zzVar2 = this.aaa000) != aaa000zzVar3 && aaa000zzVar == aaa000zzVar2 && transactionResult == this.aaa002;
    }

    void aaa001(aaa000zz aaa000zzVar, BBDeviceController.BatteryStatus batteryStatus) {
        aaa000();
        this.aaa000 = aaa000zzVar;
        this.aaa004 = batteryStatus;
    }

    boolean aaa000(aaa000zz aaa000zzVar, BBDeviceController.Error error) {
        aaa000zz aaa000zzVar2;
        aaa000zz aaa000zzVar3 = aaa000zz.NONE;
        return aaa000zzVar != aaa000zzVar3 && (aaa000zzVar2 = this.aaa000) != aaa000zzVar3 && aaa000zzVar == aaa000zzVar2 && error == this.aaa003;
    }

    boolean aaa000(aaa000zz aaa000zzVar, BBDeviceController.BatteryStatus batteryStatus) {
        aaa000zz aaa000zzVar2;
        aaa000zz aaa000zzVar3 = aaa000zz.NONE;
        return aaa000zzVar != aaa000zzVar3 && (aaa000zzVar2 = this.aaa000) != aaa000zzVar3 && aaa000zzVar == aaa000zzVar2 && batteryStatus == this.aaa004;
    }
}
