package com.stripe.bbpos.bbdevice;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothSocket;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.ccc035zz;
import com.stripe.bbpos.bbdevice001.ioctrl;
import com.sun.jna.platform.win32.WinError;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
class aaa003zz {
    private static final Object aaa013 = new Object();
    static ccc028zz aaa014 = null;
    static aaa008zz aaa015 = null;
    static com.stripe.bbpos.bbdevice.aaa001zz aaa016 = null;
    static aaa007zz aaa017 = null;
    static ccc035zz aaa018 = null;
    static ccc036zz aaa019 = null;
    static ccc037zz aaa020 = null;
    static boolean aaa021 = false;
    final Context aaa000;
    private final aaa001zz aaa001;
    private final com.stripe.bbpos.bbdevice.aaa006zz aaa003;
    private final com.stripe.bbpos.bbdevice.aaa004zz aaa005;
    ccc066zz aaa011;
    aaa016zz aaa006 = aaa016zz.GENERAL;
    private String aaa007 = "";
    private String aaa008 = "";
    BBDeviceController.DisplayPromptOption aaa009 = BBDeviceController.DisplayPromptOption.DISPLAY_ONLY;
    boolean aaa012 = false;
    private final ClassLoader aaa010 = aaa003zz.class.getClassLoader();
    com.stripe.bbpos.bbdevice.aaa011zz aaa002 = new com.stripe.bbpos.bbdevice.aaa011zz(this);
    final ccc027zz aaa004 = new ccc027zz(this);

    interface aaa001zz {
        void aaa000();

        void aaa000(int i);

        void aaa000(BBDeviceController.TransactionResult transactionResult, String str);

        void aaa000(aaa002zz aaa002zzVar, String str);

        void aaa000(aaa004zz aaa004zzVar, String str);

        void aaa000(aaa004zz aaa004zzVar, Hashtable<String, String> hashtable);

        void aaa000(aaa006zz aaa006zzVar, String str);

        void aaa000(aaa009zz aaa009zzVar, Hashtable<String, String> hashtable);

        void aaa000(aaa011zz aaa011zzVar);

        void aaa000(aaa012zz aaa012zzVar, aaa013zz aaa013zzVar, String str);

        void aaa000(aaa012zz aaa012zzVar, String str);

        void aaa000(aaa012zz aaa012zzVar, boolean z);

        void aaa000(aaa015zz aaa015zzVar);

        void aaa000(aaa015zz aaa015zzVar, String str);

        void aaa000(String str);

        void aaa000(String str, String str2);

        void aaa000(String str, String str2, String str3);

        void aaa000(String str, String str2, String str3, String str4);

        void aaa000(ArrayList<String> arrayList, boolean z);

        void aaa000(Hashtable<String, String> hashtable);

        void aaa000(boolean z);

        void aaa000(boolean z, aaa010zz aaa010zzVar);

        void aaa000(boolean z, String str);

        void aaa000(boolean z, String str, String str2);

        void aaa000(boolean z, String str, String str2, int i);

        void aaa000(boolean z, String str, String str2, int i, int i2, String str3);

        void aaa000(boolean z, String str, String str2, int i, String str3);

        void aaa001();

        void aaa001(String str);

        void aaa001(String str, String str2);

        void aaa001(Hashtable<String, String> hashtable);

        void aaa001(boolean z);

        void aaa001(boolean z, String str);

        void aaa002();

        void aaa002(String str);

        void aaa002(Hashtable<String, Object> hashtable);

        void aaa002(boolean z);

        void aaa002(boolean z, String str);

        void aaa003();

        void aaa003(String str);

        void aaa003(Hashtable<String, String> hashtable);

        void aaa003(boolean z);

        void aaa003(boolean z, String str);

        void aaa004();

        void aaa004(String str);

        void aaa004(boolean z);

        void aaa005();

        void aaa005(String str);

        void aaa005(boolean z);

        void aaa006();

        void aaa006(String str);

        void aaa007(String str);

        void aaa008(String str);

        void onBatteryLow(BBDeviceController.BatteryStatus batteryStatus);

        void onDeviceDisplayingPrompt();

        void onDeviceHere(boolean z);

        void onDeviceReset(boolean z, BBDeviceController.DeviceResetReason deviceResetReason);

        void onDeviceResetAlert(int i);

        void onEnterStandbyMode();

        void onHardwareFunctionalTestResult(int i, int i2, String str);

        void onPowerButtonPressed();

        void onPowerConnected(BBDeviceController.PowerSource powerSource, BBDeviceController.BatteryStatus batteryStatus);

        void onPowerDisconnected(BBDeviceController.PowerSource powerSource);

        void onPowerDown();

        void onPrintDataCancelled();

        void onPrintDataEnd();

        void onRequestAmountConfirm(Hashtable<String, String> hashtable);

        void onRequestClearDisplay();

        void onRequestDisplayAsterisk(String str, int i);

        void onRequestDisplayLEDIndicator(BBDeviceController.ContactlessStatus contactlessStatus);

        void onRequestFinalConfirm();

        void onRequestKeypadResponse();

        void onRequestManualPanEntry(BBDeviceController.ManualPanEntryType manualPanEntryType);

        void onRequestOnlineProcess(String str);

        void onRequestOtherAmount(BBDeviceController.AmountInputType amountInputType);

        void onRequestPinEntry(BBDeviceController.PinEntrySource pinEntrySource);

        void onRequestPrintData(int i, boolean z);

        void onRequestProduceAudioTone(BBDeviceController.ContactlessStatusTone contactlessStatusTone);

        void onRequestSelectAccountType();

        void onRequestSetAmount();

        void onRequestStartEmv();

        void onRequestTerminalTime();

        void onRequestVirtuCryptPEDIResponse(boolean z, Hashtable<String, String> hashtable);

        void onRequestVirtuCryptPEDKResponse(boolean z, Hashtable<String, String> hashtable);

        void onReturnAccessiblePINPadTouchEvent(BBDeviceController.PinPadTouchEvent pinPadTouchEvent);

        void onReturnAccountSelectionResult(BBDeviceController.AccountSelectionResult accountSelectionResult, int i);

        void onReturnAmount(BBDeviceController.AmountInputResult amountInputResult, Hashtable<String, String> hashtable);

        void onReturnAmountConfirmResult(boolean z);

        void onReturnApduResult(boolean z, Hashtable<String, String> hashtable);

        void onReturnBatchData(String str);

        void onReturnCAPKDetail(CAPK capk);

        void onReturnCAPKList(List<CAPK> list);

        void onReturnCAPKLocation(String str);

        void onReturnCancelCheckCardResult(boolean z);

        void onReturnControlLEDResult(boolean z, String str);

        void onReturnDeviceInfo(Hashtable<String, String> hashtable);

        void onReturnDisableAccountSelectionResult(boolean z);

        void onReturnDisableBluetoothResult(boolean z);

        void onReturnDisableFactoryModeResult(boolean z, String str);

        void onReturnDisableInputAmountResult(boolean z);

        void onReturnDisplayPromptResult(BBDeviceController.DisplayPromptResult displayPromptResult);

        void onReturnEmvCardDataResult(boolean z, String str);

        void onReturnEmvCardNumber(boolean z, String str);

        void onReturnEmvReport(String str);

        void onReturnEmvReportList(Hashtable<String, String> hashtable);

        void onReturnEnableAccountSelectionResult(boolean z);

        void onReturnEnableBluetoothResult(boolean z);

        void onReturnEnableInputAmountResult(boolean z);

        void onReturnEncryptDataResult(boolean z, Hashtable<String, String> hashtable);

        void onReturnFunctionKey(BBDeviceController.FunctionKey functionKey);

        void onReturnNfcDataExchangeResult(boolean z, Hashtable<String, String> hashtable);

        void onReturnNfcDetectCardResult(BBDeviceController.NfcDetectCardResult nfcDetectCardResult, Hashtable<String, Object> hashtable);

        void onReturnPowerOffIccResult(boolean z);

        void onReturnReadAIDResult(Hashtable<String, Object> hashtable);

        void onReturnReadDisplayStringResult(boolean z, Hashtable<String, String> hashtable);

        void onReturnReversalData(String str);

        void onReturnSetPinPadButtonsResult(boolean z);

        void onReturnSetPinPadOrientationResult(boolean z);

        void onReturnTransactionResult(BBDeviceController.TransactionResult transactionResult);

        void onReturnUpdateAIDResult(Hashtable<String, Object> hashtable);

        void onReturnUpdateCAPKResult(boolean z);

        void onReturnUpdateDisplayStringResult(boolean z, String str);

        void onReturnUpdateTerminalSettingsResult(Hashtable<String, aaa015zz> hashtable);

        void onReturnVasResult(BBDeviceController.VASResult vASResult, Hashtable<String, Object> hashtable);

        void onReturnVirtuCryptPEDICommandResult(boolean z, Hashtable<String, String> hashtable);

        void onReturnVirtuCryptPEDKCommandResult(boolean z, Hashtable<String, String> hashtable);

        void onReturnWatchdogTimerReset();

        void onSerialConnected();

        void onSerialDisconnected();

        void onSessionError(BBDeviceController.SessionError sessionError, String str);

        void onSessionInitialized();

        void onTestChannelConnected();

        void onTestChannelDisconnected();

        void onUsbConnected();

        void onUsbDisconnected();

        void onWaitingForCard(BBDeviceController.CheckCardMode checkCardMode);

        void onWaitingReprintOrPrintNext();
    }

    enum aaa002zz {
        CMD_NOT_AVAILABLE,
        CMD_NOT_SUPPORT,
        COMM_ERROR,
        COMM_LINK_UNINITIALIZED,
        DEVICE_BUSY,
        FIRMWARE_NOT_SUPPORTED,
        INPUT_INVALID,
        CASHBACK_NOT_SUPPORTED,
        UNKNOWN,
        VOLUME_WARNING_NOT_ACCEPTED,
        WAITING_FOR_DEVICE,
        INVALID_FUNCTION_IN_CURRENT_MODE,
        ILLEGAL_STATE,
        FAIL_TO_START_BTV2,
        FAIL_TO_START_BTV4,
        FAIL_TO_START_AUDIO,
        BTV4_NOT_SUPPORTED,
        FAIL_TO_START_SERIAL,
        FAIL_TO_START_USB,
        USB_DEVICE_NOT_FOUND,
        USB_DEVICE_PERMISSION_DENIED,
        USB_NOT_SUPPORTED,
        CHANNEL_BUFFER_FULL,
        BLUETOOTH_PERMISSION_DENIED,
        HARDWARE_NOT_SUPPORTED,
        TAMPER,
        PCI_ERROR,
        PAIRING_ERROR,
        PAIRING_ERROR_INCORRECT_PASSKEY,
        PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE,
        BLE_SECURE_CONNECTION_NOT_SUPPORTED,
        CONTACTLESS_ERROR,
        NOT_COMPATIBLE_ERROR,
        INTEGRITY_CHECK_ERROR,
        FAIL_TO_START_TEST_CHANNEL
    }

    /* JADX INFO: renamed from: com.stripe.bbpos.bbdevice.aaa003zz$aaa003zz, reason: collision with other inner class name */
    enum EnumC0044aaa003zz {
        UNKNOWN,
        BROADCOM,
        TI,
        TSB501,
        TSB503,
        TSB551,
        YI_CHIP_1021
    }

    enum aaa004zz {
        NO_CARD,
        INSERTED_CARD,
        NOT_ICC,
        BAD_SWIPE,
        MCR,
        MAG_HEAD_FAIL,
        TAP_CARD_DETECTED,
        USE_ICC_CARD,
        KEY_ERROR,
        MANUAL_PAN_ENTRY,
        CARD_NOT_SUPPORTED
    }

    enum aaa005zz {
        NONE(0),
        BLUETOOTH_2(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION),
        BLUETOOTH_4(WinError.ERROR_SYSTEM_TRACE),
        SERIAL(256),
        USB(58),
        TEST_CHANNEL(256);

        private final int aaa000;

        aaa005zz(int i) {
            this.aaa000 = i;
        }

        int aaa000() {
            if (Build.MODEL.equalsIgnoreCase("MI PAD") && this == BLUETOOTH_4) {
                return 40;
            }
            return this.aaa000;
        }
    }

    enum aaa006zz {
        AMOUNT,
        AMOUNT_OK_OR_NOT,
        APPROVED,
        CALL_YOUR_BANK,
        CANCEL_OR_ENTER,
        CARD_ERROR,
        DECLINED,
        ENTER_AMOUNT,
        ENTER_PIN,
        INCORRECT_PIN,
        INSERT_CARD,
        NOT_ACCEPTED,
        PIN_OK,
        PLEASE_WAIT,
        PROCESSING_ERROR,
        REMOVE_CARD,
        USE_CHIP_READER,
        USE_MAG_STRIPE,
        TRY_AGAIN,
        WELCOME,
        INSERT_OR_TAP_CARD,
        PROCESSING,
        INSERT_OR_SWIPE_CARD,
        PRESENT_ONLY_ONE_CARD,
        APPROVED_PLEASE_SIGN,
        AUTHORISING,
        INSERT_SWIPE_OR_TRY_ANOTHER_CARD,
        REFER_TO_YOUR_PAYMENT_DEVICE,
        TAP_CARD_AGAIN,
        LAST_PIN_TRY,
        TRANSACTION_TERMINATED,
        SELECT_ACCOUNT,
        TRY_ANOTHER_INTERFACE,
        ONLINE_REQUIRED,
        CAPK_LOADING_FAILED,
        MULTIPLE_CARDS_DETECTED,
        TIMEOUT,
        APPLICATION_EXPIRED,
        FINAL_CONFIRM,
        SHOW_THANK_YOU,
        PIN_TRY_LIMIT_EXCEEDED,
        NOT_ICC_CARD,
        CARD_INSERTED,
        CARD_REMOVED,
        NO_EMV_APPS,
        CTL_NO_EMV_APPS,
        CTL_APP_NOT_SUPPORTED,
        CTL_TRANSACTION_LIMIT_EXCEEDED,
        INVALID_INPUT,
        TOO_MANY_TAPS,
        INCORRECT_CARD_DATA,
        ERROR_STATUS_WORD,
        CARD_IS_STILL_INSERTED,
        DPAS_CDCVM,
        CARD_NOT_ADMITTED,
        INVALID_TRANSACTION,
        INVALID_CARD_NUMBER,
        SYSTEM_MALFUNCTION,
        EXPIRED_CARD,
        TRANSACTION_NOT_PERMITTED,
        INVALID_FUNCTION,
        INVALID_CARD,
        WRONG_CARD,
        TERMINAL_NOT_PERMITTED,
        ORIGINAL_AMOUNT_INCORRECT,
        CARD_NOT_READABLE,
        AUTHENTICATION_REQUIRED,
        DECLINED_WITH_RESPONSE_CODE_05,
        NOT_ACCEPTED_TRY_AGAIN,
        CARD_ERROR_PLEASE_ENTER_PIN_AGAIN,
        CARD_ERROR_PLEASE_REMOVE_CARD,
        NOT_ACCEPTED_PLEASE_REMOVE_CARD,
        PROCESSING_ERROR_PLEASE_REMOVE_CARD
    }

    private class aaa007zz implements com.stripe.bbpos.bbdevice.aaa002zz {
        private aaa007zz() {
        }

        @Override // com.stripe.bbpos.bbdevice.aaa002zz
        public void aaa000() {
        }

        @Override // com.stripe.bbpos.bbdevice.aaa002zz
        public void aaa001() {
        }
    }

    private class aaa008zz implements ccc029zz {
        private aaa008zz() {
        }

        @Override // com.stripe.bbpos.bbdevice.ccc029zz
        public void aaa000() {
        }

        @Override // com.stripe.bbpos.bbdevice.ccc029zz
        public void aaa001() {
        }

        @Override // com.stripe.bbpos.bbdevice.ccc029zz
        public void onReturnBarcode(String str) {
        }
    }

    enum aaa009zz {
        ENTERED,
        BYPASS,
        CANCEL,
        TIMEOUT,
        KEY_ERROR,
        WRONG_PIN_LENGTH,
        INCORRECT_PIN,
        ICC_REMOVED
    }

    static class aaa010zz {
        final String aaa000;
        final int aaa001;
        final String aaa002;

        aaa010zz(String str, int i, String str2) {
            this.aaa000 = str;
            this.aaa001 = i;
            this.aaa002 = str2;
        }
    }

    enum aaa011zz {
        SUCCESS,
        NO_PAPER_OR_COVER_OPENED,
        WRONG_PRINTER_COMMAND,
        OVERHEAT,
        PRINTER_ERROR
    }

    enum aaa012zz {
        TEST_UID,
        TEST_BUZZER,
        TEST_KEYPAD,
        TEST_LCD,
        TEST_ICC,
        TEST_MAGHEAD,
        TEST_LED,
        TEST_EXTFLASH,
        TEST_NFC,
        TEST_BLUETOOTH,
        TEST_TAMPER,
        TEST_SAMCARD,
        TEST_GPIO,
        TEST_NFC_CARRIER
    }

    enum aaa013zz {
        SUCCESS,
        FAIL,
        CANCEL,
        TIMEOUT,
        NOT_DEFINE,
        INVESTIGATE
    }

    enum aaa014zz {
        OK,
        POS_LIB_ERROR,
        POS_LIB_NOT_FOUND,
        SERIAL_PORT_LIB_ERROR,
        SERIAL_PORT_LIB_NOT_FOUND
    }

    enum aaa015zz {
        SUCCESS(BBDeviceController.TerminalSettingStatus.SUCCESS),
        TAG_NOT_FOUND(BBDeviceController.TerminalSettingStatus.TAG_NOT_FOUND),
        INVALID_LENGTH(BBDeviceController.TerminalSettingStatus.LENGTH_INCORRECT),
        INVALID_TLV_FORMAT(BBDeviceController.TerminalSettingStatus.TLV_INCORRECT),
        BOOTLOADER_NOT_SUPPORTED(BBDeviceController.TerminalSettingStatus.BOOTLOADER_NOT_SUPPORT),
        TAG_NOT_ALLOWED_TO_ACCESS(BBDeviceController.TerminalSettingStatus.TAG_NOT_ALLOWED_TO_ACCESS),
        USER_DEFINED_DATA_NOT_ENALBLED(BBDeviceController.TerminalSettingStatus.USER_DEFINED_DATA_NOT_ENALBLED),
        TAG_NOT_WRITTEN_CORRECTLY(BBDeviceController.TerminalSettingStatus.TAG_NOT_WRITTEN_CORRECTLY),
        INVALID_VALUE(BBDeviceController.TerminalSettingStatus.INVALID_VALUE),
        TAG_NOT_UPDATED(BBDeviceController.TerminalSettingStatus.TAG_NOT_UPDATED),
        UNKNOWN(BBDeviceController.TerminalSettingStatus.UNKNOWN);

        final BBDeviceController.TerminalSettingStatus aaa000;

        aaa015zz(BBDeviceController.TerminalSettingStatus terminalSettingStatus) {
            this.aaa000 = terminalSettingStatus;
        }

        BBDeviceController.TerminalSettingStatus aaa000() {
            return this.aaa000;
        }
    }

    enum aaa016zz {
        GENERAL,
        AID
    }

    aaa003zz(Context context, aaa001zz aaa001zzVar, ccc066zz ccc066zzVar) {
        this.aaa000 = context.getApplicationContext();
        this.aaa001 = aaa001zzVar;
        this.aaa011 = ccc066zzVar;
        this.aaa003 = new com.stripe.bbpos.bbdevice.aaa006zz(context, this);
        this.aaa005 = new com.stripe.bbpos.bbdevice.aaa004zz(context, this);
        aaa078();
        aaa021 = aaa006("com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController");
    }

    static boolean aaa006(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    private void aaa008(String str) {
    }

    private void aaa013() {
        try {
            if (aaa026() == aaa005zz.SERIAL) {
                this.aaa000.sendBroadcast(new Intent("com.stripe.bbpos.powerkey.disable"), "android.permission.BBPOS");
            }
        } catch (Exception unused) {
        }
    }

    private void aaa018() {
        try {
            if (aaa026() == aaa005zz.SERIAL) {
                this.aaa000.sendBroadcast(new Intent("com.stripe.bbpos.powerkey.enable"), "android.permission.BBPOS");
                ccc028zz ccc028zzVar = aaa014;
                if (ccc028zzVar != null) {
                    ccc028zzVar.aaa001(0);
                }
            }
        } catch (Exception unused) {
        }
    }

    private void aaa073() {
        com.stripe.bbpos.bbdevice.aaa001zz aaa001zzVar;
        aaa008("[powerOffK21]");
        ccc028zz ccc028zzVar = aaa014;
        if (ccc028zzVar != null) {
            ccc028zzVar.aaa002();
        }
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS2 || BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS1_1 || BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOSPlus || BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SEVEN || BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_TOUCH || BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SML || BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_GO || (aaa001zzVar = aaa016) == null) {
            return;
        }
        aaa001zzVar.aaa012();
        aaa016.aaa003();
    }

    private void aaa074() {
        ccc028zz ccc028zzVar;
        ccc028zz ccc028zzVar2;
        aaa008("[powerOnAndResetK21]");
        ccc028zz ccc028zzVar3 = aaa014;
        if (ccc028zzVar3 != null) {
            ccc028zzVar3.aaa003();
        }
        if (BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS2 && BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS1_1) {
            if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOSPlus) {
                try {
                    new ioctrl().P1000PowerOnOff(1);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS_SEVEN && BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS_TOUCH && BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS_SML && BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS_GO) {
                com.stripe.bbpos.bbdevice.aaa001zz aaa001zzVar = aaa016;
                if (aaa001zzVar != null) {
                    aaa001zzVar.aaa010();
                    aaa016.aaa002();
                    aaa016.aaa000();
                    aaa016.aaa004();
                    aaa016.aaa005();
                }
                ccc071zz.aaa002(1000);
            }
        }
        if (this.aaa011.aaa014().aaa000() == 1 && (ccc028zzVar2 = aaa014) != null) {
            ccc028zzVar2.aaa006();
            aaa014.aaa006();
            aaa014.aaa006();
            aaa014.aaa006();
            aaa014.aaa006();
            aaa014.aaa006();
        }
        if (this.aaa011.aaa014().aaa000() == 1 && (ccc028zzVar = aaa014) != null) {
            ccc028zzVar.aaa000();
        }
        aaa008("[powerOnAndResetK21] End");
    }

    private void aaa086() {
        synchronized (aaa013) {
            if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SEVEN) {
                if (aaa018 == null) {
                    aaa018 = new ccc035zz(this.aaa000);
                }
                aaa018.aaa000(ccc035zz.aaa001zz.UART_FOR_MCU);
                ccc071zz.aaa002(500);
            }
        }
    }

    void aaa000(boolean z) {
        ioctrl ioctrlVar = new ioctrl();
        if (z) {
            try {
                ioctrlVar.P1000BootOnOff(1);
                return;
            } catch (Exception e) {
                ccc061zz.aaa001("Set WSC5X bootloader/wakeup pin exception during enter bootloader. (check code - 9069)(" + e + ")");
                return;
            }
        }
        try {
            ioctrlVar.P1000BootOnOff(0);
        } catch (Exception e2) {
            ccc061zz.aaa001("Set WSC5X bootloader/wakeup pin exception during enter bootloader. (check code - 9070)(" + e2 + ")");
        }
    }

    void aaa001(boolean z, String str) {
        this.aaa001.onReturnControlLEDResult(z, str);
    }

    void aaa002(boolean z, Hashtable<String, String> hashtable) {
        this.aaa001.onReturnApduResult(z, hashtable);
    }

    void aaa003(boolean z) {
        this.aaa001.onReturnAmountConfirmResult(z);
    }

    void aaa004(boolean z, String str) {
        this.aaa001.onReturnEmvCardNumber(z, str);
    }

    void aaa005(boolean z) {
        aaa018();
        this.aaa001.onReturnCancelCheckCardResult(z);
    }

    void aaa007(boolean z) {
        this.aaa001.onReturnDisableAccountSelectionResult(z);
    }

    void aaa008(boolean z, String str) {
        this.aaa001.aaa001(z, str);
    }

    void aaa009(Hashtable<String, String> hashtable) {
        this.aaa001.onRequestAmountConfirm(hashtable);
    }

    void aaa010(String str) {
        this.aaa001.aaa003(str);
    }

    void aaa011(Hashtable<String, String> hashtable) {
        aaa018();
        this.aaa001.onReturnDeviceInfo(hashtable);
    }

    void aaa012(String str) {
        this.aaa001.onRequestOnlineProcess(str);
    }

    void aaa014(String str) {
        this.aaa001.onReturnCAPKLocation(str);
    }

    void aaa015(Hashtable<String, Object> hashtable) {
        this.aaa001.onReturnReadAIDResult(hashtable);
    }

    void aaa016(String str) {
        this.aaa001.aaa008(str);
    }

    void aaa017(String str) {
        this.aaa001.onReturnEmvReport(str);
    }

    void aaa019(boolean z) {
        this.aaa001.onReturnSetPinPadOrientationResult(z);
    }

    void aaa020(boolean z) {
        this.aaa001.onReturnUpdateCAPKResult(z);
    }

    void aaa021(boolean z) {
        ioctrl ioctrlVar = new ioctrl();
        if (!z) {
            try {
                ioctrlVar.P1000PowerOnOff(0);
                return;
            } catch (Exception e) {
                ccc061zz.aaa001("Set WSC5X power pin exception. (check code - 9068)(" + e + ")");
                return;
            }
        }
        try {
            ioctrlVar.P1000PowerOnOff(0);
        } catch (Exception e2) {
            ccc061zz.aaa001("Set WSC5X power pin exception. (check code - 9066)(" + e2 + ")");
        }
        ccc071zz.aaa002(500);
        try {
            ioctrlVar.P1000PowerOnOff(1);
        } catch (Exception e3) {
            ccc061zz.aaa001("Set WSC5X power pin exception. (check code - 9067)(" + e3 + ")");
        }
        ccc071zz.aaa002(500);
    }

    void aaa022(String str) {
        this.aaa001.onReturnReversalData(str);
    }

    synchronized void aaa023(boolean z) {
        this.aaa002.aaa002(z);
    }

    void aaa024() {
        aaa021(false);
        aaa000(true);
        ccc071zz.aaa002(2000);
        aaa021(true);
        ccc071zz.aaa002(WinError.ERROR_ENCRYPTION_FAILED);
        aaa000(false);
    }

    synchronized void aaa025() {
        this.aaa002.aaa021();
    }

    synchronized void aaa026(String str) {
        this.aaa006 = aaa016zz.GENERAL;
        this.aaa002.aaa008(str);
    }

    synchronized void aaa027() {
        this.aaa002.aaa023();
    }

    synchronized void aaa028(Hashtable<String, Object> hashtable) {
        aaa013();
        this.aaa002.aaa016(hashtable);
    }

    synchronized void aaa029(String str) {
        this.aaa002.aaa012(str);
    }

    synchronized void aaa030() {
        this.aaa002.aaa026();
    }

    synchronized void aaa031() {
        this.aaa002.aaa027();
    }

    synchronized void aaa032() {
        this.aaa002.aaa028();
    }

    synchronized void aaa033(String str) {
        this.aaa007 = str;
    }

    ccc066zz aaa034() {
        return this.aaa011;
    }

    synchronized String aaa035() {
        return this.aaa008;
    }

    synchronized String aaa036() {
        return this.aaa007;
    }

    synchronized void aaa037() {
        this.aaa002.aaa029();
    }

    synchronized void aaa038() {
        this.aaa002.aaa030();
    }

    boolean aaa039() {
        return aaa026() == aaa005zz.BLUETOOTH_2 || aaa026() == aaa005zz.BLUETOOTH_4 || aaa026() == aaa005zz.SERIAL || aaa026() == aaa005zz.USB || aaa026() == aaa005zz.TEST_CHANNEL;
    }

    synchronized boolean aaa040() {
        String str = this.aaa008;
        if (str != null) {
            if (!str.equalsIgnoreCase("")) {
                return true;
            }
        }
        return false;
    }

    synchronized void aaa041() {
        this.aaa002.aaa033();
    }

    void aaa042() {
        this.aaa002.aaa007 = false;
        aaa078();
        this.aaa001.aaa000();
    }

    void aaa043() {
        if (aaa021) {
            try {
                aaa010(true, "Bluetooth 2.0 Disconnected");
            } catch (Throwable unused) {
            }
        }
        aaa078();
        this.aaa001.aaa006();
    }

    void aaa044() {
        this.aaa002.aaa007 = false;
        aaa078();
        this.aaa001.aaa005();
    }

    void aaa045() {
        if (aaa021) {
            try {
                aaa010(true, "Bluetooth Low Energy disconnected");
            } catch (Throwable unused) {
            }
        }
        aaa078();
        this.aaa001.aaa003();
    }

    void aaa046() {
        this.aaa001.onDeviceDisplayingPrompt();
    }

    void aaa047() {
        this.aaa001.onEnterStandbyMode();
    }

    void aaa048() {
        this.aaa001.onPowerButtonPressed();
    }

    void aaa049() {
        this.aaa001.onPowerDown();
    }

    void aaa050() {
        this.aaa001.onPrintDataCancelled();
    }

    void aaa051() {
        this.aaa001.onPrintDataEnd();
    }

    void aaa052() {
        this.aaa001.onRequestClearDisplay();
    }

    void aaa053() {
        this.aaa001.aaa002();
    }

    void aaa054() {
        this.aaa001.onRequestFinalConfirm();
    }

    void aaa055() {
        this.aaa001.onRequestKeypadResponse();
    }

    void aaa056() {
        this.aaa001.aaa001();
    }

    void aaa057() {
        this.aaa001.onRequestSelectAccountType();
    }

    void aaa058() {
        this.aaa001.onRequestSetAmount();
    }

    void aaa059() {
        this.aaa001.onRequestStartEmv();
    }

    void aaa060() {
        this.aaa001.onRequestTerminalTime();
    }

    void aaa061() {
        this.aaa001.aaa004();
    }

    void aaa062() {
        this.aaa001.onReturnWatchdogTimerReset();
    }

    void aaa063() {
        aaa078();
        com.stripe.bbpos.bbdevice.aaa011zz aaa011zzVar = this.aaa002;
        aaa011zzVar.aaa012 = false;
        aaa011zzVar.aaa013 = false;
        this.aaa001.onSerialConnected();
    }

    void aaa064() {
        aaa018();
        aaa078();
        com.stripe.bbpos.bbdevice.aaa011zz aaa011zzVar = this.aaa002;
        aaa011zzVar.aaa012 = false;
        aaa011zzVar.aaa013 = false;
        this.aaa001.onSerialDisconnected();
    }

    void aaa065() {
        this.aaa001.onSessionInitialized();
    }

    void aaa066() {
        aaa078();
        this.aaa002.aaa012 = false;
        this.aaa001.onTestChannelConnected();
    }

    void aaa067() {
        aaa078();
        this.aaa001.onTestChannelDisconnected();
    }

    void aaa068() {
        aaa078();
        this.aaa011.aaa000(com.stripe.bbpos.bbdevice.aaa004zz.aaa027);
        this.aaa011.aaa001(com.stripe.bbpos.bbdevice.aaa004zz.aaa026);
        this.aaa001.onUsbConnected();
    }

    void aaa069() {
        aaa078();
        this.aaa001.onUsbDisconnected();
    }

    void aaa070() {
        this.aaa001.onWaitingReprintOrPrintNext();
    }

    synchronized void aaa071() {
        this.aaa002.aaa034();
    }

    synchronized void aaa072() {
        this.aaa002.aaa035();
    }

    synchronized void aaa075() {
        this.aaa002.aaa036();
    }

    synchronized void aaa076() {
        aaa078();
    }

    void aaa077() {
        synchronized (aaa013) {
            this.aaa008 = "";
            com.stripe.bbpos.bbdevice.aaa009zz.aaa043 = false;
            com.stripe.bbpos.bbdevice.aaa009zz.aaa044 = new byte[0];
        }
    }

    synchronized void aaa078() {
        this.aaa007 = "";
        aaa077();
    }

    synchronized void aaa079() {
        this.aaa002.aaa037();
    }

    void aaa080() {
        synchronized (aaa013) {
            if (aaa033() != aaa014zz.OK) {
                aaa000(aaa002zz.FAIL_TO_START_SERIAL, "Serial (error code - 3100)");
                return;
            }
            if (this.aaa002.aaa022() == aaa005zz.NONE) {
                try {
                    if (aaa014 == null) {
                        aaa015 = new aaa008zz();
                        aaa014 = new ccc028zz(aaa015);
                    }
                    if (BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS2 && BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS1_1 && BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOSPlus) {
                        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SEVEN) {
                            aaa086();
                        } else if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_TOUCH) {
                            if (aaa020 == null) {
                                aaa020 = new ccc037zz(this.aaa000);
                            }
                        } else if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SML) {
                            if (aaa020 == null) {
                                aaa020 = new ccc037zz(this.aaa000);
                            }
                        } else if (BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS_GO && aaa016 == null) {
                            aaa017 = new aaa007zz();
                            aaa016 = new com.stripe.bbpos.bbdevice.aaa001zz(aaa017);
                        }
                    }
                    if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS1 || aaa014.aaa008.equalsIgnoreCase("v1.1")) {
                        this.aaa011.aaa014().aaa000(1);
                    }
                    int iAaa002 = this.aaa004.aaa002();
                    if (iAaa002 == 1) {
                        aaa000(aaa002zz.FAIL_TO_START_SERIAL, "Open serial port failed. SecurityException (error code - 3108)");
                        return;
                    }
                    if (iAaa002 == 2) {
                        aaa000(aaa002zz.FAIL_TO_START_SERIAL, "Open serial port failed. IOException (error code - 3109)");
                    } else if (iAaa002 > 2) {
                        aaa000(aaa002zz.FAIL_TO_START_SERIAL, "Open serial port failed (error code - 3101)");
                    } else {
                        aaa074();
                        this.aaa004.aaa000(false, 0);
                    }
                } catch (Exception e) {
                    aaa000(aaa002zz.FAIL_TO_START_SERIAL, e.toString() + ". Serial (error code - 3102)");
                }
            } else {
                aaa000(aaa002zz.INVALID_FUNCTION_IN_CURRENT_MODE, "");
            }
        }
    }

    synchronized void aaa081() {
        aaa087();
    }

    synchronized void aaa082() {
        this.aaa002.aaa039();
    }

    synchronized void aaa083() {
        if (aaa033() == aaa014zz.OK) {
            this.aaa004.aaa000(false);
            if (this.aaa011.aaa014().aaa003() != 1 || this.aaa011.aaa014().aaa000() != 1) {
                aaa073();
            }
        }
        this.aaa002.aaa000(aaa005zz.SERIAL);
    }

    synchronized void aaa084() {
        this.aaa002.aaa000(aaa005zz.TEST_CHANNEL);
        aaa067();
    }

    synchronized void aaa085() {
        if (!this.aaa000.getPackageManager().hasSystemFeature("android.hardware.usb.host")) {
            aaa000(aaa002zz.USB_NOT_SUPPORTED, "");
        } else {
            this.aaa005.aaa005();
            this.aaa002.aaa000(aaa005zz.USB);
        }
    }

    void aaa087() {
        this.aaa002.aaa000(aaa005zz.TEST_CHANNEL, null, null, null, null, null, null, null, null, null, null);
    }

    void aaa088() {
        this.aaa002.aaa000(aaa005zz.USB, null, null, null, null, null, null, null, null, null, this.aaa005);
    }

    synchronized void aaa089() {
        this.aaa002.aaa040();
    }

    void aaa001(String str, String str2, String str3) {
        this.aaa001.aaa000(str, str2, str3);
    }

    void aaa002(boolean z) {
        this.aaa002.aaa006 = false;
        this.aaa001.onDeviceHere(z);
    }

    void aaa003(boolean z, String str) {
        this.aaa001.onReturnEmvCardDataResult(z, str);
    }

    void aaa004(boolean z, Hashtable<String, String> hashtable) {
        this.aaa001.onReturnNfcDataExchangeResult(z, hashtable);
    }

    void aaa006(boolean z) {
        this.aaa001.aaa002(z);
    }

    void aaa007(boolean z, String str) {
        this.aaa001.aaa003(z, str);
    }

    void aaa008(boolean z) {
        this.aaa001.onReturnDisableBluetoothResult(z);
    }

    void aaa009(boolean z) {
        this.aaa001.onReturnDisableInputAmountResult(z);
    }

    void aaa010(boolean z) {
        this.aaa001.onReturnEnableAccountSelectionResult(z);
    }

    void aaa012(Hashtable<String, String> hashtable) {
        this.aaa001.aaa001(hashtable);
    }

    void aaa014(Hashtable<String, String> hashtable) {
        this.aaa001.aaa003(hashtable);
    }

    void aaa015(String str) {
        this.aaa001.aaa002(str);
    }

    void aaa016(boolean z) {
        this.aaa001.aaa005(z);
    }

    void aaa017(boolean z) {
        this.aaa001.onReturnPowerOffIccResult(z);
    }

    void aaa019(String str) {
        this.aaa001.aaa000(str);
    }

    void aaa020(String str) {
        this.aaa001.aaa004(str);
    }

    synchronized void aaa022() {
        this.aaa002.aaa019();
    }

    synchronized void aaa023(String str) {
        this.aaa002.aaa005(str);
    }

    synchronized void aaa025(Hashtable<String, Rect> hashtable) {
        ccc028zz ccc028zzVar;
        if (aaa026() == aaa005zz.SERIAL && (ccc028zzVar = aaa014) != null) {
            ccc028zzVar.aaa001(1);
        }
        this.aaa002.aaa013(hashtable);
    }

    synchronized void aaa027(String str) {
        this.aaa006 = aaa016zz.GENERAL;
        this.aaa002.aaa009(str);
    }

    synchronized void aaa029(Hashtable<String, Object> hashtable) {
        this.aaa002.aaa017(hashtable);
    }

    synchronized void aaa030(String str) {
        this.aaa002.aaa013(str);
    }

    synchronized void aaa031(String str) {
        this.aaa002.aaa014(str);
    }

    synchronized void aaa032(String str) {
        synchronized (aaa013) {
            this.aaa008 = str;
            com.stripe.bbpos.bbdevice.aaa009zz.aaa043 = true;
            com.stripe.bbpos.bbdevice.aaa009zz.aaa044 = ccc071zz.aaa005(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0022 A[Catch: all -> 0x00e9, TryCatch #3 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x000c, B:9:0x0012, B:10:0x0014, B:15:0x001a, B:17:0x0022, B:18:0x0032, B:42:0x0085, B:44:0x008b, B:46:0x0093, B:48:0x009b, B:50:0x00a3, B:52:0x00ab, B:54:0x00b3, B:57:0x00bc, B:59:0x00c1, B:61:0x00c7, B:63:0x00cb, B:66:0x00d3, B:67:0x00d5, B:70:0x00d9, B:71:0x00db, B:73:0x00dd, B:74:0x00df, B:76:0x00e1, B:77:0x00e3, B:79:0x00e5, B:80:0x00e7, B:21:0x003b, B:24:0x0044, B:27:0x004d, B:30:0x0056, B:33:0x005f, B:36:0x0068, B:39:0x0071, B:41:0x0075, B:12:0x0016, B:13:0x0018), top: B:90:0x0003, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00c1 A[Catch: UnsatisfiedLinkError -> 0x00e5, all -> 0x00e9, TryCatch #2 {UnsatisfiedLinkError -> 0x00e5, blocks: (B:42:0x0085, B:44:0x008b, B:46:0x0093, B:48:0x009b, B:50:0x00a3, B:52:0x00ab, B:54:0x00b3, B:57:0x00bc, B:59:0x00c1, B:61:0x00c7, B:63:0x00cb, B:66:0x00d3, B:70:0x00d9, B:73:0x00dd, B:76:0x00e1), top: B:89:0x0085, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00cb A[Catch: UnsatisfiedLinkError -> 0x00e5, all -> 0x00e9, TryCatch #2 {UnsatisfiedLinkError -> 0x00e5, blocks: (B:42:0x0085, B:44:0x008b, B:46:0x0093, B:48:0x009b, B:50:0x00a3, B:52:0x00ab, B:54:0x00b3, B:57:0x00bc, B:59:0x00c1, B:61:0x00c7, B:63:0x00cb, B:66:0x00d3, B:70:0x00d9, B:73:0x00dd, B:76:0x00e1), top: B:89:0x0085, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00d9 A[Catch: UnsatisfiedLinkError -> 0x00e5, all -> 0x00e9, TRY_ENTER, TRY_LEAVE, TryCatch #2 {UnsatisfiedLinkError -> 0x00e5, blocks: (B:42:0x0085, B:44:0x008b, B:46:0x0093, B:48:0x009b, B:50:0x00a3, B:52:0x00ab, B:54:0x00b3, B:57:0x00bc, B:59:0x00c1, B:61:0x00c7, B:63:0x00cb, B:66:0x00d3, B:70:0x00d9, B:73:0x00dd, B:76:0x00e1), top: B:89:0x0085, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00dd A[Catch: UnsatisfiedLinkError -> 0x00e5, all -> 0x00e9, TRY_ENTER, TRY_LEAVE, TryCatch #2 {UnsatisfiedLinkError -> 0x00e5, blocks: (B:42:0x0085, B:44:0x008b, B:46:0x0093, B:48:0x009b, B:50:0x00a3, B:52:0x00ab, B:54:0x00b3, B:57:0x00bc, B:59:0x00c1, B:61:0x00c7, B:63:0x00cb, B:66:0x00d3, B:70:0x00d9, B:73:0x00dd, B:76:0x00e1), top: B:89:0x0085, outer: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    com.stripe.bbpos.bbdevice.aaa003zz.aaa014zz aaa033() {
        /*
            Method dump skipped, instruction units count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.aaa003zz.aaa033():com.stripe.bbpos.bbdevice.aaa003zz$aaa014zz");
    }

    synchronized void aaa034(String str) {
        if (!this.aaa000.getPackageManager().hasSystemFeature("android.hardware.usb.host")) {
            aaa000(aaa002zz.USB_NOT_SUPPORTED, "");
            return;
        }
        if (this.aaa002.aaa022() != aaa005zz.NONE) {
            aaa000(aaa002zz.INVALID_FUNCTION_IN_CURRENT_MODE, "");
        } else if (!this.aaa005.aaa000(str)) {
            aaa000(aaa002zz.USB_DEVICE_NOT_FOUND, "");
        }
    }

    synchronized void aaa035(String str) {
        this.aaa006 = aaa016zz.GENERAL;
        this.aaa002.aaa016(str);
    }

    synchronized void aaa036(String str) {
        this.aaa006 = aaa016zz.GENERAL;
        this.aaa002.aaa015(str);
    }

    void aaa001(boolean z, Hashtable<String, String> hashtable) {
        this.aaa001.onRequestVirtuCryptPEDKResponse(z, hashtable);
    }

    void aaa003(boolean z, Hashtable<String, String> hashtable) {
        this.aaa001.onReturnEncryptDataResult(z, hashtable);
    }

    void aaa004(boolean z) {
        this.aaa001.aaa003(z);
    }

    void aaa005(boolean z, Hashtable<String, String> hashtable) {
        this.aaa001.onReturnReadDisplayStringResult(z, hashtable);
    }

    void aaa006(boolean z, String str) {
        this.aaa001.aaa002(z, str);
    }

    void aaa007(boolean z, Hashtable<String, String> hashtable) {
        this.aaa001.onReturnVirtuCryptPEDKCommandResult(z, hashtable);
    }

    synchronized void aaa008(Hashtable<String, Object> hashtable) {
        this.aaa002.aaa007(hashtable);
    }

    void aaa009(boolean z, String str) {
        this.aaa001.onReturnUpdateDisplayStringResult(z, str);
    }

    void aaa010(Hashtable<String, String> hashtable) {
        this.aaa001.aaa000(hashtable);
    }

    void aaa011(boolean z) {
        this.aaa001.onReturnEnableBluetoothResult(z);
    }

    void aaa012(boolean z) {
        this.aaa001.aaa004(z);
    }

    void aaa014(boolean z) {
        this.aaa001.aaa000(z);
    }

    void aaa015(boolean z) {
        this.aaa001.aaa001(z);
    }

    void aaa016(Hashtable<String, Object> hashtable) {
        this.aaa001.aaa002(hashtable);
    }

    void aaa017(Hashtable<String, Object> hashtable) {
        this.aaa001.onReturnUpdateAIDResult(hashtable);
    }

    synchronized void aaa019() {
        this.aaa002.aaa016();
    }

    synchronized void aaa020(Hashtable<String, Object> hashtable) {
        this.aaa002.aaa008(hashtable);
    }

    synchronized void aaa022(Hashtable<String, Object> hashtable) {
        this.aaa002.aaa010(hashtable);
    }

    synchronized void aaa023(Hashtable<String, String> hashtable) {
        this.aaa002.aaa011(hashtable);
    }

    synchronized void aaa026(Hashtable<String, Object> hashtable) {
        aaa013();
        this.aaa002.aaa014(hashtable);
    }

    synchronized void aaa028(String str) {
        this.aaa002.aaa011(str);
    }

    synchronized void aaa029() {
        this.aaa002.aaa025();
    }

    synchronized void aaa030(Hashtable<String, Object> hashtable) {
        this.aaa002.aaa018(hashtable);
    }

    synchronized void aaa031(Hashtable<String, String> hashtable) {
        this.aaa006 = aaa016zz.AID;
        this.aaa002.aaa019(hashtable);
    }

    synchronized void aaa001() {
        this.aaa002.aaa001();
    }

    void aaa002(int i) {
        this.aaa001.onDeviceResetAlert(i);
    }

    void aaa003(int i) {
        this.aaa001.aaa000(i);
    }

    void aaa004(String str, String str2) {
        this.aaa001.aaa000(str, str2);
    }

    void aaa005(boolean z, String str) {
        this.aaa001.aaa000(z, str);
    }

    void aaa006(boolean z, Hashtable<String, String> hashtable) {
        this.aaa001.onReturnVirtuCryptPEDICommandResult(z, hashtable);
    }

    synchronized void aaa007(Hashtable<String, String> hashtable) {
        this.aaa002.aaa006(hashtable);
    }

    synchronized void aaa008() {
        if (aaa026() == aaa005zz.BLUETOOTH_2 || aaa026() == aaa005zz.BLUETOOTH_4 || aaa026() == aaa005zz.USB || aaa026() == aaa005zz.SERIAL || aaa026() == aaa005zz.TEST_CHANNEL) {
            this.aaa002.aaa000(aaa026());
        }
    }

    void aaa009(String str) {
        this.aaa001.aaa007(str);
    }

    synchronized void aaa010() {
        this.aaa002.aaa011();
    }

    void aaa011(String str) {
        this.aaa001.aaa006(str);
    }

    synchronized void aaa012() {
        this.aaa002.aaa013();
    }

    synchronized void aaa014() {
        this.aaa002.aaa008();
        this.aaa003.aaa000();
        this.aaa002.aaa000(aaa005zz.BLUETOOTH_2);
    }

    synchronized void aaa015() {
        this.aaa003.aaa001();
        this.aaa002.aaa000(aaa005zz.BLUETOOTH_4);
    }

    synchronized void aaa016() {
        this.aaa002.aaa014();
    }

    synchronized void aaa017() {
        this.aaa002.aaa015();
    }

    void aaa019(Hashtable<String, String> hashtable) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Class<?> clsLoadClass = this.aaa010.loadClass("com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController");
        for (Method method : clsLoadClass.getDeclaredMethods()) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (method.getName().equalsIgnoreCase("getInstance") && parameterTypes.length == 2) {
                method.setAccessible(true);
                clsLoadClass.getDeclaredMethod("internalFunction2", Hashtable.class).invoke(method.invoke(null, null, null), hashtable);
                return;
            }
        }
    }

    synchronized void aaa020() {
        this.aaa002.aaa017();
    }

    synchronized void aaa022(boolean z) {
        this.aaa002.aaa001(z);
    }

    synchronized void aaa023() {
        this.aaa002.aaa020();
    }

    synchronized void aaa027(Hashtable<String, Object> hashtable) {
        aaa013();
        this.aaa002.aaa015(hashtable);
    }

    synchronized void aaa028() {
        this.aaa002.aaa024();
    }

    static Hashtable<String, String> aaa001(String str) {
        return ccc068zz.aaa002(str);
    }

    void aaa002(boolean z, String str) {
        this.aaa001.onReturnDisableFactoryModeResult(z, str);
    }

    void aaa003(String str, String str2) {
        this.aaa001.aaa001(str, str2);
    }

    synchronized void aaa004() {
        this.aaa002.aaa004();
    }

    synchronized void aaa005() {
        this.aaa002.aaa005();
    }

    synchronized void aaa006() {
        this.aaa002.aaa006();
    }

    synchronized void aaa007(int i) {
        this.aaa002.aaa005(i);
    }

    synchronized void aaa009() {
        this.aaa002.aaa010();
    }

    void aaa010(final boolean z, final String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        if (z) {
            com.stripe.bbpos.bbdevice.aaa011zz.aaa018 = false;
        }
        BBDeviceController.aaa028.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.aaa003zz$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(z, str);
            }
        });
    }

    synchronized void aaa011(boolean z, String str) {
        this.aaa002.aaa000(z, str);
    }

    void aaa013(String str) {
        this.aaa001.onReturnBatchData(str);
    }

    aaa005zz aaa026() {
        return this.aaa002.aaa022();
    }

    synchronized void aaa001(int i) {
        this.aaa002.aaa001(i);
    }

    synchronized void aaa002(Hashtable<String, Object> hashtable) {
        this.aaa002.aaa002(hashtable);
    }

    synchronized void aaa003() {
        this.aaa002.aaa003();
    }

    synchronized void aaa004(Hashtable<String, Object> hashtable) {
        this.aaa002.aaa004(hashtable);
    }

    synchronized void aaa006(Hashtable<String, Object> hashtable) {
        this.aaa002.aaa005(hashtable);
    }

    synchronized void aaa007() {
        this.aaa002.aaa007();
    }

    synchronized void aaa011() {
        this.aaa002.aaa012();
    }

    void aaa013(Hashtable<String, String> hashtable) {
        this.aaa001.onReturnEmvReportList(hashtable);
    }

    static String aaa005(Hashtable<String, String> hashtable) {
        Object[] array = hashtable.keySet().toArray();
        Arrays.sort(array);
        String str = "";
        for (Object obj : array) {
            String str2 = (String) obj;
            if (ccc071zz.aaa006(str2)) {
                String str3 = hashtable.get(str2);
                if (ccc071zz.aaa006(str3) && str3 != null) {
                    str = str + str2 + ccc034zz.aaa001(str3.length() / 2) + str3;
                }
            }
        }
        return str.toUpperCase(Locale.ENGLISH);
    }

    synchronized void aaa001(int i, String str) {
        this.aaa002.aaa001(i, str);
    }

    synchronized void aaa002() {
        this.aaa002.aaa002();
    }

    synchronized void aaa003(Hashtable<String, Object> hashtable) {
        this.aaa002.aaa003(hashtable);
    }

    synchronized void aaa004(String str) {
        this.aaa002.aaa002(str);
    }

    synchronized void aaa006(int i) {
        this.aaa002.aaa003(i);
    }

    synchronized void aaa007(String str) {
        this.aaa002.aaa004(str);
    }

    void aaa013(boolean z) {
        this.aaa001.onReturnEnableInputAmountResult(z);
    }

    synchronized void aaa024(String str) {
        this.aaa006 = aaa016zz.AID;
        this.aaa002.aaa006(str);
    }

    synchronized void aaa032(Hashtable<String, String> hashtable) {
        this.aaa002.aaa020(hashtable);
    }

    synchronized void aaa001(CAPK capk) {
        this.aaa002.aaa000(capk);
    }

    synchronized void aaa002(String str) {
        this.aaa002.aaa000(str);
    }

    synchronized void aaa003(String str) {
        this.aaa002.aaa001(str);
    }

    synchronized void aaa004(int i) {
        this.aaa004.aaa000(true);
        this.aaa004.aaa000(true, i);
        this.aaa002.aaa000(this.aaa004);
    }

    synchronized void aaa006(String str, String str2) {
        this.aaa002.aaa004(str, str2);
    }

    synchronized void aaa025(String str) {
        this.aaa002.aaa007(str);
    }

    synchronized void aaa001(Hashtable<String, Object> hashtable) {
        this.aaa002.aaa001(hashtable);
    }

    synchronized void aaa002(int i, String str) {
        this.aaa002.aaa002(i, str);
    }

    synchronized void aaa003(int i, String str) {
        this.aaa002.aaa003(i, str);
    }

    synchronized boolean aaa024(Hashtable<String, Object> hashtable) {
        return this.aaa002.aaa012(hashtable);
    }

    synchronized void aaa001(boolean z) {
        this.aaa002.aaa000(z);
    }

    synchronized void aaa002(String str, String str2) {
        this.aaa002.aaa002(str, str2);
    }

    void aaa018(boolean z) {
        this.aaa001.onReturnSetPinPadButtonsResult(z);
    }

    synchronized void aaa001(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, PipedInputStream pipedInputStream, Object obj, Object obj2, BluetoothGattCharacteristic bluetoothGattCharacteristic2) {
        if (this.aaa002.aaa022() == aaa005zz.NONE) {
            this.aaa003.aaa000(bluetoothGatt, bluetoothGattCharacteristic, pipedInputStream, obj, obj2, bluetoothGattCharacteristic2);
        } else {
            aaa000(aaa002zz.INVALID_FUNCTION_IN_CURRENT_MODE, "");
        }
    }

    void aaa018(Hashtable<String, aaa015zz> hashtable) {
        this.aaa001.onReturnUpdateTerminalSettingsResult(hashtable);
    }

    void aaa018(String str) {
        this.aaa001.aaa005(str);
    }

    void aaa000(InputStream inputStream, OutputStream outputStream) {
        this.aaa002.aaa000(aaa005zz.SERIAL, null, null, null, null, null, inputStream, outputStream, null, null, null);
    }

    void aaa000(BluetoothSocket bluetoothSocket) {
        this.aaa002.aaa000(aaa005zz.BLUETOOTH_2, bluetoothSocket, null, null, null, null, null, null, null, null, null);
    }

    void aaa000(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, PipedInputStream pipedInputStream, Object obj, Object obj2, BluetoothGattCharacteristic bluetoothGattCharacteristic2) {
        this.aaa002.aaa000(aaa005zz.BLUETOOTH_4, null, bluetoothGatt, bluetoothGattCharacteristic, pipedInputStream, obj, null, null, obj2, bluetoothGattCharacteristic2, null);
    }

    synchronized void aaa001(String str, String str2) {
        this.aaa002.aaa001(str, str2);
    }

    void aaa000(BBDeviceController.CheckCardMode checkCardMode) {
        this.aaa001.onWaitingForCard(checkCardMode);
    }

    void aaa000(aaa006zz aaa006zzVar, String str) {
        this.aaa001.aaa000(aaa006zzVar, str);
    }

    void aaa000(String str, int i) {
        this.aaa001.onRequestDisplayAsterisk(str, i);
    }

    void aaa000(BBDeviceController.ContactlessStatus contactlessStatus) {
        this.aaa001.onRequestDisplayLEDIndicator(contactlessStatus);
    }

    void aaa000(BBDeviceController.ContactlessStatusTone contactlessStatusTone) {
        this.aaa001.onRequestProduceAudioTone(contactlessStatusTone);
    }

    void aaa021(String str) {
        this.aaa001.aaa001(str);
    }

    void aaa000(BBDeviceController.PinEntrySource pinEntrySource) {
        this.aaa001.onRequestPinEntry(pinEntrySource);
    }

    synchronized void aaa021(Hashtable<String, Object> hashtable) {
        this.aaa002.aaa009(hashtable);
    }

    void aaa000(BBDeviceController.ManualPanEntryType manualPanEntryType) {
        this.aaa001.onRequestManualPanEntry(manualPanEntryType);
    }

    synchronized void aaa021() {
        this.aaa002.aaa018();
    }

    void aaa000(BBDeviceController.PinPadTouchEvent pinPadTouchEvent) {
        this.aaa001.onReturnAccessiblePINPadTouchEvent(pinPadTouchEvent);
    }

    void aaa000(boolean z, String str, String str2, int i, int i2, String str3) {
        this.aaa001.aaa000(z, str, str2, i, i2, str3);
    }

    void aaa000(int i, boolean z) {
        this.aaa001.onRequestPrintData(i, z);
    }

    synchronized void aaa005(int i) {
        this.aaa002.aaa002(i);
    }

    void aaa000(ArrayList<String> arrayList, boolean z) {
        this.aaa001.aaa000(arrayList, z);
    }

    synchronized void aaa005(String str) {
        this.aaa002.aaa010(str);
    }

    void aaa000(BBDeviceController.AmountInputType amountInputType) {
        this.aaa001.onRequestOtherAmount(amountInputType);
    }

    synchronized void aaa005(String str, String str2) {
        this.aaa002.aaa003(str, str2);
    }

    void aaa000(BBDeviceController.AmountInputResult amountInputResult, Hashtable<String, String> hashtable) {
        this.aaa001.onReturnAmount(amountInputResult, hashtable);
    }

    void aaa000(CAPK capk) {
        this.aaa001.onReturnCAPKDetail(capk);
    }

    void aaa000(List<CAPK> list) {
        this.aaa001.onReturnCAPKList(list);
    }

    void aaa000(aaa004zz aaa004zzVar, Hashtable<String, String> hashtable) {
        aaa018();
        this.aaa001.aaa000(aaa004zzVar, hashtable);
    }

    void aaa000(BBDeviceController.DisplayPromptResult displayPromptResult) {
        this.aaa001.onReturnDisplayPromptResult(displayPromptResult);
    }

    void aaa000(BBDeviceController.FunctionKey functionKey) {
        this.aaa001.onReturnFunctionKey(functionKey);
    }

    void aaa000(BBDeviceController.AccountSelectionResult accountSelectionResult, int i) {
        this.aaa001.onReturnAccountSelectionResult(accountSelectionResult, i);
    }

    void aaa000(boolean z, String str, String str2, int i) {
        this.aaa001.aaa000(z, str, str2, i);
    }

    void aaa000(aaa004zz aaa004zzVar, String str) {
        this.aaa001.aaa000(aaa004zzVar, str);
    }

    void aaa000(BBDeviceController.NfcDetectCardResult nfcDetectCardResult, Hashtable<String, Object> hashtable) {
        if (nfcDetectCardResult == BBDeviceController.NfcDetectCardResult.CARD_REMOVED || nfcDetectCardResult == BBDeviceController.NfcDetectCardResult.TIMEOUT || nfcDetectCardResult == BBDeviceController.NfcDetectCardResult.CARD_NOT_SUPPORTED) {
            aaa018();
        }
        this.aaa001.onReturnNfcDetectCardResult(nfcDetectCardResult, hashtable);
    }

    void aaa000(aaa009zz aaa009zzVar, Hashtable<String, String> hashtable) {
        aaa018();
        this.aaa001.aaa000(aaa009zzVar, hashtable);
    }

    void aaa000(boolean z, aaa010zz aaa010zzVar) {
        this.aaa001.aaa000(z, aaa010zzVar);
    }

    void aaa000(aaa011zz aaa011zzVar) {
        this.aaa001.aaa000(aaa011zzVar);
    }

    void aaa000(aaa015zz aaa015zzVar, String str) {
        this.aaa001.aaa000(aaa015zzVar, str);
    }

    void aaa000(BBDeviceController.TransactionResult transactionResult) {
        aaa018();
        this.aaa001.onReturnTransactionResult(transactionResult);
    }

    void aaa000(BBDeviceController.TransactionResult transactionResult, String str) {
        aaa018();
        this.aaa001.aaa000(transactionResult, str);
    }

    void aaa000(aaa015zz aaa015zzVar) {
        this.aaa001.aaa000(aaa015zzVar);
    }

    void aaa000(boolean z, String str, String str2, int i, String str3) {
        this.aaa001.aaa000(z, str, str2, i, str3);
    }

    void aaa000(BBDeviceController.BatteryStatus batteryStatus) {
        this.aaa001.onBatteryLow(batteryStatus);
    }

    void aaa000(BBDeviceController.SessionError sessionError, String str) {
        aaa018();
        this.aaa001.onSessionError(sessionError, str);
    }

    void aaa000(aaa002zz aaa002zzVar, String str) {
        aaa018();
        if (aaa021) {
            if (aaa002zzVar == aaa002zz.COMM_ERROR || aaa002zzVar == aaa002zz.DEVICE_BUSY || aaa002zzVar == aaa002zz.INPUT_INVALID || aaa002zzVar == aaa002zz.WAITING_FOR_DEVICE || aaa002zzVar == aaa002zz.UNKNOWN) {
                try {
                    aaa010(true, "Device error");
                } catch (Throwable unused) {
                }
            }
            if (aaa002zzVar == aaa002zz.CMD_NOT_AVAILABLE || aaa002zzVar == aaa002zz.CMD_NOT_SUPPORT || aaa002zzVar == aaa002zz.FIRMWARE_NOT_SUPPORTED) {
                try {
                    aaa010(true, "Device cannot support OTA");
                } catch (Throwable unused2) {
                }
            }
        }
        com.stripe.bbpos.bbdevice.aaa011zz aaa011zzVar = this.aaa002;
        aaa011zzVar.aaa006 = false;
        aaa011zzVar.aaa012 = false;
        aaa011zzVar.aaa013 = false;
        this.aaa001.aaa000(aaa002zzVar, str);
    }

    void aaa000(BBDeviceController.PowerSource powerSource, BBDeviceController.BatteryStatus batteryStatus) {
        this.aaa001.onPowerConnected(powerSource, batteryStatus);
    }

    void aaa000(BBDeviceController.PowerSource powerSource) {
        this.aaa001.onPowerDisconnected(powerSource);
    }

    void aaa000(boolean z, BBDeviceController.DeviceResetReason deviceResetReason) {
        this.aaa001.onDeviceReset(z, deviceResetReason);
    }

    void aaa000(BBDeviceController.VASResult vASResult, Hashtable<String, Object> hashtable) {
        aaa018();
        this.aaa001.onReturnVasResult(vASResult, hashtable);
    }

    void aaa000(int i, int i2, String str) {
        this.aaa001.onHardwareFunctionalTestResult(i, i2, str);
    }

    void aaa000(aaa012zz aaa012zzVar, String str) {
        this.aaa001.aaa000(aaa012zzVar, str);
    }

    void aaa000(aaa012zz aaa012zzVar, aaa013zz aaa013zzVar, String str) {
        this.aaa001.aaa000(aaa012zzVar, aaa013zzVar, str);
    }

    void aaa000(aaa012zz aaa012zzVar, boolean z) {
        this.aaa001.aaa000(aaa012zzVar, z);
    }

    void aaa000(boolean z, String str, String str2) {
        this.aaa001.aaa000(z, str, str2);
    }

    void aaa000(String str, String str2, String str3, String str4) {
        this.aaa001.aaa000(str, str2, str3, str4);
    }

    void aaa000(boolean z, Hashtable<String, String> hashtable) {
        this.aaa001.onRequestVirtuCryptPEDIResponse(z, hashtable);
    }

    synchronized void aaa000() {
        this.aaa002.aaa000();
    }

    synchronized void aaa000(Hashtable<String, Object> hashtable) {
        aaa013();
        this.aaa002.aaa000(hashtable);
    }

    static Hashtable<String, String> aaa000(String str) {
        return ccc068zz.aaa001(str);
    }

    synchronized void aaa000(ArrayList<String> arrayList) {
        this.aaa002.aaa000(arrayList);
    }

    synchronized void aaa000(int i, String str) {
        this.aaa002.aaa000(i, str);
    }

    synchronized void aaa000(int i) {
        this.aaa002.aaa000(i);
    }

    synchronized void aaa000(String str, int i, int i2, String str2, String str3) {
        this.aaa002.aaa000(str, i, i2, str2, str3);
    }

    synchronized void aaa000(Hashtable<String, Rect> hashtable, Hashtable<String, Rect> hashtable2) {
        this.aaa002.aaa000(hashtable, hashtable2);
    }

    synchronized void aaa000(BBDeviceController.PinEntryOrientation pinEntryOrientation) {
        this.aaa002.aaa000(pinEntryOrientation);
    }

    synchronized void aaa000(String str, int i, int i2, String str2) {
        this.aaa002.aaa000(str, i, i2, str2);
    }

    synchronized void aaa000(byte[] bArr) {
        this.aaa002.aaa001(bArr);
    }

    synchronized void aaa000(BluetoothDevice bluetoothDevice, BluetoothSocket bluetoothSocket) {
        if (this.aaa002.aaa022() == aaa005zz.NONE && bluetoothSocket != null && bluetoothDevice != null) {
            this.aaa003.aaa000(bluetoothDevice, bluetoothSocket);
        } else {
            aaa000(aaa002zz.INVALID_FUNCTION_IN_CURRENT_MODE, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(boolean z, String str) {
        try {
            Class<?> clsLoadClass = this.aaa010.loadClass("com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController");
            for (Method method : clsLoadClass.getDeclaredMethods()) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (method.getName().equalsIgnoreCase("getInstance") && parameterTypes.length == 2) {
                    method.setAccessible(true);
                    clsLoadClass.getDeclaredMethod("internalFunction1", Boolean.TYPE, String.class).invoke(method.invoke(null, null, null), Boolean.valueOf(z), str);
                    return;
                }
            }
        } catch (ClassNotFoundException | Exception unused) {
        }
    }

    synchronized void aaa000(String str, String str2) {
        this.aaa002.aaa000(str, str2);
    }

    synchronized void aaa000(String str, String str2, String str3) {
        this.aaa002.aaa000(str, str2, str3);
    }
}
