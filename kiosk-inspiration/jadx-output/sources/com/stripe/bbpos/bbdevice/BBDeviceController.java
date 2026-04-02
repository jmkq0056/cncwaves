package com.stripe.bbpos.bbdevice;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.core.content.ContextCompat;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.google.common.base.Ascii;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.bbpos.bbdevice.ccc038zz;
import com.stripe.bbpos.bbdevice.ccc039zz;
import com.stripe.bbpos.bbdevice.ccc054zz;
import com.stripe.bbpos.bbdevice.ccc055zz;
import com.stripe.bbpos.bbdevice.ccc066zz;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.hardware.emv.TlvMap;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import java.io.ByteArrayOutputStream;
import java.io.PipedInputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class BBDeviceController {
    static final Object aaa024 = new Object();
    private static final Handler aaa025;
    static Handler aaa026;
    private static final ClassLoader aaa027;
    static final Handler aaa028;
    private static final HandlerThread aaa029;
    private static BBDeviceController aaa030;
    private static boolean aaa031;
    private static boolean aaa032;
    private static boolean aaa033;
    static boolean aaa034;
    private static final String aaa035;
    private final Context aaa000;
    final Handler aaa001;
    private final HandlerThread aaa002;
    private final Handler aaa003;
    private final HandlerThread aaa004;
    private final ccc052zz aaa005;
    private final ccc073zz aaa006;
    private BBDeviceControllerListener aaa007;
    private final ccc055zz aaa008;
    private final ccc040zz aaa009;
    private final com.stripe.bbpos.bbdevice.aaa005zz aaa011;
    private final ccc064zz aaa012;
    private aaa001zz aaa015;
    private aaa002zz aaa016;
    private boolean aaa017;
    private String aaa018;
    ccc039zz aaa019;
    final ccc066zz aaa020;
    private final ccc050zz aaa021;
    final ccc054zz aaa022;
    private final ccc041zz aaa023;
    com.stripe.bbpos.bbdevice.aaa003zz aaa010 = null;
    byte[] aaa013 = null;
    boolean aaa014 = false;

    public enum AccountSelectionResult {
        SUCCESS(0),
        CANCEL(1),
        TIMEOUT(2),
        INVALID_SELECTION(3);

        private final int aaa000;

        AccountSelectionResult(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum AmountInputResult {
        SUCCESS(0),
        CANCEL(1),
        TIMEOUT(2),
        INVALID_AMOUNT(3);

        private final int aaa000;

        AmountInputResult(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum AmountInputType {
        AMOUNT_ONLY(0),
        AMOUNT_AND_CASHBACK(1),
        CASHBACK_ONLY(2),
        TIPS_ONLY(3),
        AMOUNT_AND_TIPS(4),
        AMOUNT_AND_TIPS_IN_PERCENTAGE(5);

        private final int aaa000;

        AmountInputType(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public interface BBDeviceControllerListener {
        void onBTConnected(BluetoothDevice bluetoothDevice);

        void onBTDisconnected();

        void onBTRequestPairing();

        void onBTReturnScanResults(List<BluetoothDevice> list);

        void onBTScanStopped();

        void onBTScanTimeout();

        void onBarcodeReaderConnected();

        void onBarcodeReaderDisconnected();

        void onBatteryLow(BatteryStatus batteryStatus);

        void onDeviceDisplayingPrompt();

        void onDeviceHere(boolean z);

        void onDeviceReset(boolean z, DeviceResetReason deviceResetReason);

        void onDeviceResetAlert(int i);

        void onEnterStandbyMode();

        void onError(Error error, String str);

        void onHardwareFunctionalTestResult(int i, int i2, String str);

        void onPowerButtonPressed();

        void onPowerConnected(PowerSource powerSource, BatteryStatus batteryStatus);

        void onPowerDisconnected(PowerSource powerSource);

        void onPowerDown();

        void onPrintDataCancelled();

        void onPrintDataEnd();

        void onRequestAmountConfirm(Hashtable<String, String> hashtable);

        void onRequestClearDisplay();

        void onRequestDisplayAsterisk(String str, int i);

        void onRequestDisplayLEDIndicator(ContactlessStatus contactlessStatus);

        void onRequestDisplayText(DisplayText displayText, String str);

        void onRequestFinalConfirm();

        void onRequestKeypadResponse();

        void onRequestManualPanEntry(ManualPanEntryType manualPanEntryType);

        void onRequestOnlineProcess(String str);

        void onRequestOtherAmount(AmountInputType amountInputType);

        void onRequestPinEntry(PinEntrySource pinEntrySource);

        void onRequestPrintData(int i, boolean z);

        void onRequestProduceAudioTone(ContactlessStatusTone contactlessStatusTone);

        void onRequestSelectAccountType();

        void onRequestSelectApplication(ArrayList<String> arrayList);

        void onRequestSetAmount();

        void onRequestStartEmv();

        void onRequestTerminalTime();

        void onRequestVirtuCryptPEDIResponse(boolean z, Hashtable<String, String> hashtable);

        void onRequestVirtuCryptPEDKResponse(boolean z, Hashtable<String, String> hashtable);

        void onReturnAccessiblePINPadTouchEvent(PinPadTouchEvent pinPadTouchEvent);

        void onReturnAccountSelectionResult(AccountSelectionResult accountSelectionResult, int i);

        void onReturnAmount(AmountInputResult amountInputResult, Hashtable<String, String> hashtable);

        void onReturnAmountConfirmResult(boolean z);

        void onReturnApduResult(boolean z, Hashtable<String, Object> hashtable);

        void onReturnBarcode(String str);

        void onReturnBatchData(String str);

        void onReturnCAPKDetail(CAPK capk);

        void onReturnCAPKList(List<CAPK> list);

        void onReturnCAPKLocation(String str);

        void onReturnCancelCheckCardResult(boolean z);

        void onReturnCheckCardResult(CheckCardResult checkCardResult, Hashtable<String, String> hashtable);

        void onReturnControlLEDResult(boolean z, String str);

        void onReturnDebugLog(Hashtable<String, Object> hashtable);

        void onReturnDeviceInfo(Hashtable<String, String> hashtable);

        void onReturnDisableAccountSelectionResult(boolean z);

        void onReturnDisableBluetoothResult(boolean z);

        void onReturnDisableFactoryModeResult(boolean z, String str);

        void onReturnDisableInputAmountResult(boolean z);

        void onReturnDisplayPromptResult(DisplayPromptResult displayPromptResult);

        void onReturnEmvCardDataResult(boolean z, String str);

        void onReturnEmvCardNumber(boolean z, String str);

        void onReturnEmvReport(String str);

        void onReturnEmvReportList(Hashtable<String, String> hashtable);

        void onReturnEnableAccountSelectionResult(boolean z);

        void onReturnEnableBluetoothResult(boolean z);

        void onReturnEnableInputAmountResult(boolean z);

        void onReturnEncryptDataResult(boolean z, Hashtable<String, String> hashtable);

        void onReturnFunctionKey(FunctionKey functionKey);

        void onReturnNfcDataExchangeResult(boolean z, Hashtable<String, String> hashtable);

        void onReturnNfcDetectCardResult(NfcDetectCardResult nfcDetectCardResult, Hashtable<String, Object> hashtable);

        void onReturnPinEntryResult(PinEntryResult pinEntryResult, Hashtable<String, String> hashtable);

        void onReturnPowerOffIccResult(boolean z);

        void onReturnPowerOnIccResult(boolean z, String str, String str2, int i);

        void onReturnPrintResult(PrintResult printResult);

        void onReturnReadAIDResult(Hashtable<String, Object> hashtable);

        void onReturnReadDisplaySettingsResult(boolean z, Hashtable<String, Object> hashtable);

        void onReturnReadDisplayStringResult(boolean z, Hashtable<String, String> hashtable);

        void onReturnReadTerminalSettingResult(Hashtable<String, Object> hashtable);

        void onReturnRemoveCAPKResult(boolean z);

        void onReturnReversalData(String str);

        void onReturnSetPinPadButtonsResult(boolean z);

        void onReturnSetPinPadOrientationResult(boolean z);

        void onReturnTransactionResult(TransactionResult transactionResult);

        void onReturnUpdateAIDResult(Hashtable<String, Object> hashtable);

        void onReturnUpdateCAPKResult(boolean z);

        void onReturnUpdateDisplaySettingsProgress(double d);

        void onReturnUpdateDisplaySettingsResult(boolean z, String str);

        void onReturnUpdateDisplayStringResult(boolean z, String str);

        void onReturnUpdateTerminalSettingResult(TerminalSettingStatus terminalSettingStatus);

        void onReturnUpdateTerminalSettingsResult(Hashtable<String, TerminalSettingStatus> hashtable);

        void onReturnVasResult(VASResult vASResult, Hashtable<String, Object> hashtable);

        void onReturnVirtuCryptPEDICommandResult(boolean z, Hashtable<String, String> hashtable);

        void onReturnVirtuCryptPEDKCommandResult(boolean z, Hashtable<String, String> hashtable);

        void onReturnWatchdogTimerReset();

        void onSerialConnected();

        void onSerialDisconnected();

        void onSessionError(SessionError sessionError, String str);

        void onSessionInitialized();

        void onTestChannelConnected();

        void onTestChannelDisconnected();

        void onUsbConnected();

        void onUsbDisconnected();

        void onWaitingForCard(CheckCardMode checkCardMode);

        void onWaitingReprintOrPrintNext();
    }

    public enum BatteryStatus {
        LOW(0),
        CRITICALLY_LOW(1),
        IS_CHARGING(2),
        NOT_CHARGING(3);

        private final int aaa000;

        BatteryStatus(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum CardScheme {
        VISA(0),
        MASTER(1),
        UNIONPAY(2);

        private final int aaa000;

        CardScheme(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum CheckCardMode {
        SWIPE(0),
        INSERT(1),
        TAP(2),
        SWIPE_OR_INSERT(3),
        SWIPE_OR_TAP(4),
        SWIPE_OR_INSERT_OR_TAP(5),
        INSERT_OR_TAP(6),
        MANUAL_PAN_ENTRY(7),
        QR_CODE(8);

        private final int aaa000;

        CheckCardMode(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum CheckCardResult {
        NO_CARD(0),
        INSERTED_CARD(1),
        NOT_ICC(2),
        BAD_SWIPE(3),
        MSR(4),
        MAG_HEAD_FAIL(5),
        USE_ICC_CARD(6),
        TAP_CARD_DETECTED(7),
        MANUAL_PAN_ENTRY(8),
        CARD_NOT_SUPPORTED(9);

        private final int aaa000;

        CheckCardResult(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum ConnectionMode {
        NONE(0),
        AUDIO(1),
        BLUETOOTH(2),
        USB(3),
        SERIAL(4),
        TEST_CHANNEL(5);

        private final int aaa000;

        ConnectionMode(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum ContactlessStatus {
        NOT_READY(0),
        IDLE(1),
        READY_TO_READ(2),
        PROCESSING(3),
        CARD_READ_SUCCESS(4),
        PROCESSING_ERROR_OR_CARD_NOT_REMOVED(5);

        private final int aaa000;

        ContactlessStatus(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum ContactlessStatusTone {
        SUCCESS(0),
        ALERT(1);

        private final int aaa000;

        ContactlessStatusTone(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum CurrencyCharacter {
        A(0),
        B(1),
        C(2),
        D(3),
        E(4),
        F(5),
        G(6),
        H(7),
        I(8),
        J(9),
        K(10),
        L(11),
        M(12),
        N(13),
        O(14),
        P(15),
        Q(16),
        R(17),
        S(18),
        T(19),
        U(20),
        V(21),
        W(22),
        X(23),
        Y(24),
        Z(25),
        SPACE(26),
        DIRHAM(27),
        DOLLAR(28),
        EURO(29),
        RUPEE(30),
        POUND(31),
        RIYAL(32),
        RIYAL_2(33),
        WON(34),
        YEN(35),
        SLASH_AND_DOT(36),
        DOT(37),
        YUAN(38),
        NEW_SHEKEL(39),
        DONG(40),
        RUPIAH(41),
        SOL(42),
        PESO(43),
        FORINT(44),
        KRONA(45),
        KRONE(46),
        LEI(47),
        REAL(48),
        ZLOTY(49);

        private final int aaa000;

        CurrencyCharacter(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum DebugLogType {
        FUNCTION(0),
        CALLBACK(1),
        EXTRA_DEBUG_MESSAGE(2);

        private final int aaa000;

        DebugLogType(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum DeviceResetReason {
        UNKNOWN(0),
        APP_RESET_DEVICE(1),
        FIRMWARE_SELF_TEST(2),
        RECOVERY_ATTEMPT(3),
        WATCHDOG_TIMEOUT(4);

        private final int aaa000;

        DeviceResetReason(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum DisplayPromptIcon {
        CHECK_MARK(0),
        CROSS_MARK(1),
        EXCLAMATION_MARK(2);

        private final int aaa000;

        DisplayPromptIcon(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum DisplayPromptOption {
        DISPLAY_ONLY(0),
        DISPLAY_WITH_CONFIRM_BUTTONS(1),
        DISPLAY_ONLY_WITHOUT_TIMEOUT(2);

        private final int aaa000;

        DisplayPromptOption(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum DisplayPromptResult {
        CONFIRM_BUTTON_PRESSED(0),
        CANCEL_BUTTON_PRESSED(1),
        CANCELLED_BY_COMMAND(2),
        BUTTON_CONFIRMATION_TIMEOUT(3),
        DISPLAY_END(4);

        private final int aaa000;

        DisplayPromptResult(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum DisplayPromptTone {
        SUCCESS_TONE(0),
        ALERT_TONE(1);

        private final int aaa000;

        DisplayPromptTone(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum DisplayText {
        APPROVED(0),
        CALL_YOUR_BANK(1),
        DECLINED(2),
        ENTER_AMOUNT(3),
        ENTER_PIN(4),
        INCORRECT_PIN(5),
        INSERT_CARD(6),
        NOT_ACCEPTED(7),
        PIN_OK(8),
        PLEASE_WAIT(9),
        REMOVE_CARD(10),
        USE_MAG_STRIPE(11),
        TRY_AGAIN(12),
        REFER_TO_YOUR_PAYMENT_DEVICE(13),
        TRANSACTION_TERMINATED(14),
        PROCESSING(15),
        LAST_PIN_TRY(16),
        SELECT_ACCOUNT(17),
        PRESENT_CARD(18),
        APPROVED_PLEASE_SIGN(19),
        PRESENT_CARD_AGAIN(20),
        AUTHORISING(21),
        INSERT_SWIPE_OR_TRY_ANOTHER_CARD(22),
        INSERT_OR_SWIPE_CARD(23),
        MULTIPLE_CARDS_DETECTED(24),
        TIMEOUT(25),
        APPLICATION_EXPIRED(26),
        FINAL_CONFIRM(27),
        SHOW_THANK_YOU(28),
        PIN_TRY_LIMIT_EXCEEDED(29),
        NOT_ICC_CARD(30),
        CARD_INSERTED(31),
        CARD_REMOVED(32),
        NO_EMV_APPS(33),
        CTL_NO_EMV_APPS(34),
        CTL_APP_NOT_SUPPORTED(35),
        CTL_TRANSACTION_LIMIT_EXCEEDED(36),
        INVALID_INPUT(37),
        CARD_ERROR(38),
        TOO_MANY_TAPS(39),
        CARD_IS_STILL_INSERTED(40),
        DPAS_CDCVM(41),
        CARD_NOT_ADMITTED(42),
        INVALID_TRANSACTION(43),
        INVALID_CARD_NUMBER(44),
        SYSTEM_MALFUNCTION(45),
        EXPIRED_CARD(46),
        TRANSACTION_NOT_PERMITTED(47),
        INVALID_FUNCTION(48),
        INVALID_CARD(49),
        WRONG_CARD(50),
        TERMINAL_NOT_PERMITTED(51),
        ORIGINAL_AMOUNT_INCORRECT(52),
        CARD_NOT_READABLE(53),
        AUTHENTICATION_REQUIRED(54),
        DECLINED_WITH_RESPONSE_CODE_05(55),
        NOT_ACCEPTED_TRY_AGAIN(56),
        CARD_ERROR_PLEASE_ENTER_PIN_AGAIN(57),
        CARD_ERROR_PLEASE_REMOVE_CARD(58),
        NOT_ACCEPTED_PLEASE_REMOVE_CARD(59),
        PROCESSING_ERROR_PLEASE_REMOVE_CARD(60);

        private final int aaa000;

        DisplayText(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum EmvOption {
        START(0),
        START_WITH_FORCE_ONLINE(1);

        private final int aaa000;

        EmvOption(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum EncryptionKeySource {
        BY_DEVICE_16_BYTES_RANDOM_NUMBER(0),
        BY_DEVICE_8_BYTES_RANDOM_NUMBER(1),
        BOTH(2),
        BY_SERVER_16_BYTES_WORKING_KEY(3),
        BY_SERVER_8_BYTES_WORKING_KEY(4),
        STORED_IN_DEVICE_16_BYTES_KEY(5);

        private final int aaa000;

        EncryptionKeySource(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum EncryptionKeyUsage {
        TEK(0),
        TAK(1),
        TPK(2);

        private final int aaa000;

        EncryptionKeyUsage(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum EncryptionMethod {
        TDES_ECB(0),
        TDES_CBC(1),
        AES_ECB(2),
        AES_CBC(3),
        AES_CMAC(8),
        MAC_ANSI_X9_9(4),
        MAC_ANSI_X9_19(5),
        MAC_METHOD_1(6),
        MAC_METHOD_2(7);

        private final int aaa000;

        EncryptionMethod(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum EncryptionPaddingMethod {
        ZERO_PADDING(0),
        PKCS7(1);

        private final int aaa000;

        EncryptionPaddingMethod(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum Error {
        UNKNOWN,
        CMD_NOT_AVAILABLE,
        DEVICE_BUSY,
        INPUT_OUT_OF_RANGE,
        INPUT_INVALID_FORMAT,
        INPUT_INVALID,
        CASHBACK_NOT_SUPPORTED,
        COMM_ERROR,
        FAIL_TO_START_BT,
        VOLUME_WARNING_NOT_ACCEPTED,
        FAIL_TO_START_AUDIO,
        INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE,
        COMM_LINK_UNINITIALIZED,
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
        AUDIO_PERMISSION_DENIED,
        BLUETOOTH_LOCATION_PERMISSION_DENIED,
        SERIAL_PERMISSION_DENIED,
        PAIRING_ERROR,
        PAIRING_ERROR_INCORRECT_PASSKEY,
        PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE,
        BLE_SECURE_CONNECTION_NOT_SUPPORTED,
        NFC_NOT_SUPPORTED,
        NFC_PERMISSION_DENIED,
        NFC_DISABLED,
        CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE,
        CONTACTLESS_ERROR,
        NOT_COMPATIBLE_ERROR,
        INTEGRITY_CHECK_ERROR,
        FAIL_TO_START_TEST_CHANNEL
    }

    public enum FunctionKey {
        F1(0),
        F2(1),
        F3(2),
        F4(3);

        private final int aaa000;

        FunctionKey(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum LEDMode {
        DEFAULT(0),
        ON(1),
        OFF(2),
        FLASH(3);

        private final int aaa000;

        LEDMode(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum ManualPanEntryType {
        PAN(0),
        EXPIRY_DATE(1),
        CVV(2);

        private final int aaa000;

        ManualPanEntryType(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum NfcDetectCardResult {
        WAITING_FOR_CARD(0),
        WAITING_CARD_REMOVAL(1),
        CARD_DETECTED(2),
        CARD_REMOVED(3),
        TIMEOUT(4),
        CARD_NOT_SUPPORTED(5),
        MULTIPLE_CARD_DETECTED(6);

        private final int aaa000;

        NfcDetectCardResult(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum OtherAmountOption {
        CURRENCY(0),
        PERCENTAGE(1);

        private final int aaa000;

        OtherAmountOption(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum PinEntryOrientation {
        ROTATION_0(0),
        ROTATION_90(1),
        ROTATION_180(2),
        ROTATION_270(3);

        private final int aaa000;

        PinEntryOrientation(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum PinEntryResult {
        ENTERED(0),
        CANCEL(1),
        TIMEOUT(2),
        BYPASS(3),
        WRONG_PIN_LENGTH(4),
        INCORRECT_PIN(5),
        ICC_REMOVED(6);

        private final int aaa000;

        PinEntryResult(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum PinEntrySource {
        PHONE(0),
        KEYPAD(1),
        SMARTPOS(2);

        private final int aaa000;

        PinEntrySource(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum PinPadTouchEvent {
        OUT_OF_PIN_PAD(0),
        NEW_KEY_DETECTED(1),
        BACKSPACE_KEY_DETECTED(2),
        CLEAR_KEY_DETECTED(3),
        CANCEL_KEY_DETECTED(4),
        ENTER_KEY_DETECTED(5),
        ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH(6);

        private final int aaa000;

        PinPadTouchEvent(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum PowerSource {
        USB(0),
        WIRELESS(1);

        private final int aaa000;

        PowerSource(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum PrintResult {
        SUCCESS(0),
        NO_PAPER_OR_COVER_OPENED(1),
        WRONG_PRINTER_COMMAND(2),
        OVERHEAT(3),
        PRINTER_ERROR(4);

        private final int aaa000;

        PrintResult(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum ReadNdefRecord {
        READ_1ST(0),
        READ_NEXT(1);

        private final int aaa000;

        ReadNdefRecord(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum SessionError {
        FIRMWARE_NOT_SUPPORTED(0),
        SESSION_NOT_INITIALIZED(1),
        INVALID_VENDOR_TOKEN(2),
        INVALID_SESSION(3);

        private final int aaa000;

        SessionError(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum TerminalSettingStatus {
        SUCCESS(0),
        TLV_INCORRECT(1),
        TAG_NOT_FOUND(2),
        LENGTH_INCORRECT(3),
        BOOTLOADER_NOT_SUPPORT(4),
        TAG_NOT_ALLOWED_TO_ACCESS(5),
        TAG_NOT_WRITTEN_CORRECTLY(6),
        INVALID_VALUE(7),
        USER_DEFINED_DATA_NOT_ENALBLED(1001),
        TAG_NOT_UPDATED(8),
        UNKNOWN(9);

        private final int aaa000;

        TerminalSettingStatus(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum TransactionResult {
        APPROVED(0),
        TERMINATED(1),
        DECLINED(2),
        CANCELED_OR_TIMEOUT(3),
        CAPK_FAIL(4),
        NOT_ICC(5),
        CARD_BLOCKED(6),
        DEVICE_ERROR(7),
        SELECT_APP_FAIL(8),
        CARD_NOT_SUPPORTED(9),
        MISSING_MANDATORY_DATA(10),
        NO_EMV_APPS(11),
        INVALID_ICC_DATA(12),
        CONDITION_NOT_SATISFIED(13),
        APPLICATION_BLOCKED(14),
        ICC_CARD_REMOVED(15),
        CARD_SCHEME_NOT_MATCHED(16),
        CANCELED(17),
        TIMEOUT(18);

        private final int aaa000;

        TransactionResult(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum TransactionType {
        GOODS(0),
        SERVICES(1),
        CASHBACK(2),
        INQUIRY(3),
        TRANSFER(4),
        PAYMENT(5),
        REFUND(6),
        VOID(7),
        REVERSAL(8),
        CASH(9);

        private final int aaa000;

        TransactionType(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum VASProtocolMode {
        URL(0),
        FULL(1);

        private final int aaa000;

        VASProtocolMode(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum VASResult {
        SUCCESS(0),
        VAS_DATA_NOT_FOUND(1),
        VAS_DATA_NOT_ACTIVATED(2),
        USER_INTERVENTION_REQUIRED(3),
        INCORRECT_COMMAND_DATA(4),
        UNSUPPORTED_APP_VERSION(5),
        NON_VAS_CARD_DETECTED(6);

        private final int aaa000;

        VASResult(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    public enum VASTerminalMode {
        VAS(0),
        DUAL(1),
        SINGLE(2),
        PAYMENT(3);

        private final int aaa000;

        VASTerminalMode(int i) {
            this.aaa000 = i;
        }

        public int getValue() {
            return this.aaa000;
        }
    }

    enum aaa000zz {
        NA,
        IDLE,
        DEVICE_BUSY
    }

    enum aaa001zz {
        NONE,
        BLUETOOTH_2,
        BLUETOOTH_4,
        USB,
        SERIAL,
        TEST_CHANNEL
    }

    enum aaa002zz {
        IDLE,
        CONNECTING,
        DISCONNECTING,
        CONNECTED
    }

    enum aaa003zz {
        FUNCTION_AND_CALLBACK_PARAMETER(0),
        FUNCTION_PARAMETER_ONLY(1),
        CALLBACK_PARAMETER_ONLY(2),
        NO_PARAMETER(3);

        private final int aaa000;

        aaa003zz(int i) {
            this.aaa000 = i;
        }
    }

    enum aaa004zz {
        SHOW_ALL_VALUES,
        MASK_ALL_VALUES,
        MASK_ACCORDING_MAPPING
    }

    enum aaa005zz {
        NotifyOnBTv2Disconnected,
        NotifyOnError,
        NotifyOnErrorCancelledByUser,
        NotifySkip
    }

    enum aaa006zz {
        WisePOS1,
        WisePOS2,
        WisePOS1_1,
        WisePOSPlus,
        WisePOS_SEVEN,
        WisePOS_TOUCH,
        WisePOS_GO,
        WisePOS_SML
    }

    static {
        Handler handler = new Handler(Looper.getMainLooper());
        aaa025 = handler;
        aaa026 = handler;
        aaa031 = false;
        aaa033 = false;
        aaa035 = BBDeviceController.class.getName();
        aaa034 = aaa002("com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController");
        aaa027 = BBDeviceController.class.getClassLoader();
        HandlerThread handlerThread = new HandlerThread("OTA-Communication-Thread");
        aaa029 = handlerThread;
        handlerThread.start();
        aaa028 = new Handler(handlerThread.getLooper());
    }

    BBDeviceController(Context context, BBDeviceControllerListener bBDeviceControllerListener) {
        aaa001zz aaa001zzVar = aaa001zz.NONE;
        this.aaa015 = aaa001zzVar;
        this.aaa016 = aaa002zz.IDLE;
        this.aaa017 = false;
        this.aaa018 = "";
        ccc061zz.aaa000(this);
        ccc061zz.aaa000("[BBDeviceController] [BBDeviceController]", "", DebugLogType.FUNCTION, false);
        this.aaa000 = context;
        this.aaa007 = bBDeviceControllerListener;
        ccc061zz.aaa000();
        ccc058zz.aaa000 = this;
        bbb013();
        HandlerThread handlerThread = new HandlerThread("Other-Communication-Thread");
        this.aaa002 = handlerThread;
        handlerThread.start();
        this.aaa001 = new Handler(handlerThread.getLooper());
        this.aaa006 = new ccc073zz(this);
        this.aaa008 = new ccc055zz(context, this);
        this.aaa009 = new ccc040zz(context);
        ccc064zz ccc064zzVar = new ccc064zz(this);
        this.aaa012 = ccc064zzVar;
        this.aaa011 = new com.stripe.bbpos.bbdevice.aaa005zz(ccc064zzVar);
        aaa001(aaa001zzVar);
        this.aaa019 = new ccc039zz();
        this.aaa022 = new ccc054zz();
        ccc066zz ccc066zzVar = new ccc066zz(this, this.aaa019);
        this.aaa020 = ccc066zzVar;
        this.aaa023 = new ccc041zz();
        this.aaa021 = new ccc050zz(this);
        HandlerThread handlerThread2 = new HandlerThread("BBDevice-Watchdog-Thread");
        this.aaa004 = handlerThread2;
        handlerThread2.start();
        Handler handler = new Handler(handlerThread2.getLooper());
        this.aaa003 = handler;
        ccc052zz ccc052zzVar = new ccc052zz(this, handler);
        this.aaa005 = ccc052zzVar;
        handler.post(ccc052zzVar);
        ccc066zzVar.aaa000(ccc052zzVar);
    }

    static boolean aaa002(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa008(String str) {
        this.aaa007.onReturnBatchData(str);
    }

    private void aaa012(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa016(boolean z) {
        this.aaa007.onReturnUpdateCAPKResult(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa024() {
        this.aaa010 = new com.stripe.bbpos.bbdevice.aaa003zz(this.aaa000, new ccc063zz(this), this.aaa020);
        this.aaa008.aaa034();
        this.aaa010.aaa000(ccc055zz.aaa067, ccc055zz.aaa066);
        this.aaa014 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa025() {
        ccc055zz ccc055zzVar;
        BluetoothGatt bluetoothGatt;
        BluetoothGattCharacteristic bluetoothGattCharacteristic;
        BluetoothGattCharacteristic bluetoothGattCharacteristic2;
        this.aaa010 = new com.stripe.bbpos.bbdevice.aaa003zz(this.aaa000, new ccc063zz(this), this.aaa020);
        PipedInputStream pipedInputStreamAaa018 = this.aaa008.aaa018();
        if (pipedInputStreamAaa018 == null || (bluetoothGatt = (ccc055zzVar = this.aaa008).aaa008) == null || (bluetoothGattCharacteristic = ccc055zzVar.aaa009) == null || (bluetoothGattCharacteristic2 = ccc055zzVar.aaa010) == null) {
            return;
        }
        this.aaa010.aaa001(bluetoothGatt, bluetoothGattCharacteristic, pipedInputStreamAaa018, ccc055zzVar.aaa002, ccc055zz.aaa055, bluetoothGattCharacteristic2);
        this.aaa014 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa026() {
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = new com.stripe.bbpos.bbdevice.aaa003zz(this.aaa000, new ccc063zz(this), this.aaa020);
        this.aaa010 = aaa003zzVar;
        aaa003zzVar.aaa080();
        this.aaa014 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa027() {
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = new com.stripe.bbpos.bbdevice.aaa003zz(this.aaa000, new ccc063zz(this), this.aaa020);
        this.aaa010 = aaa003zzVar;
        this.aaa014 = true;
        aaa003zzVar.aaa034(this.aaa020.aaa042());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa028() {
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = new com.stripe.bbpos.bbdevice.aaa003zz(this.aaa000, new ccc063zz(this), this.aaa020);
        this.aaa010 = aaa003zzVar;
        aaa003zzVar.aaa081();
        this.aaa014 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa030() {
        if (this.aaa008.aaa019() == ccc055zz.aaa013zz.STATE_NONE && aaa012() == aaa001zz.NONE) {
            aaa003(Error.COMM_LINK_UNINITIALIZED, "Bluetooth disconnected during connecting (error code - 3037)");
        } else {
            aaa015();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa031() {
        this.aaa007.onBTScanStopped();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa032() {
        this.aaa007.onBTScanTimeout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa033() {
        if (this.aaa008.aaa019() == ccc055zz.aaa013zz.STATE_NONE) {
            aaa003(Error.COMM_LINK_UNINITIALIZED, "Bluetooth disconnected during connecting (error code - 3039)");
        } else {
            aaa015();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa034() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa035() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa036() {
        this.aaa007.onBarcodeReaderConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa037() {
        this.aaa007.onBarcodeReaderDisconnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa038() {
        this.aaa007.onDeviceDisplayingPrompt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa039() {
        this.aaa007.onEnterStandbyMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa041() {
        this.aaa007.onPowerButtonPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa042() {
        this.aaa007.onPowerDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa043() {
        this.aaa007.onPrintDataCancelled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa044() {
        this.aaa007.onPrintDataEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa045() {
        this.aaa007.onRequestClearDisplay();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa047() {
        if (aaa012() == aaa001zz.BLUETOOTH_2) {
            aaa040();
            return;
        }
        if (aaa012() == aaa001zz.BLUETOOTH_4) {
            aaa040();
        } else if (aaa012() == aaa001zz.USB) {
            bbb020();
        } else if (aaa012() == aaa001zz.TEST_CHANNEL) {
            bbb019();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa048() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa049() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa050() {
        this.aaa007.onRequestFinalConfirm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa051() {
        this.aaa007.onRequestKeypadResponse();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa052() {
        this.aaa007.onRequestSelectAccountType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa053() {
        this.aaa007.onRequestSetAmount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa054() {
        this.aaa007.onRequestStartEmv();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa055() {
        this.aaa007.onRequestTerminalTime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa056() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa057() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa058() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa059() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa060() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa061() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa062() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa063() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void aaa064() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa065() {
        this.aaa007.onReturnWatchdogTimerReset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa066() {
        this.aaa007.onSerialConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa067() {
        aaa035(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa068() {
        this.aaa007.onSerialDisconnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa069() {
        this.aaa007.onSessionInitialized();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa070() {
        this.aaa007.onTestChannelConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa071() {
        ccc061zz.aaa000("[BBDeviceController] [onTestChannelDisconnected]", "", DebugLogType.CALLBACK, false);
        this.aaa007.onTestChannelDisconnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa072() {
        this.aaa007.onUsbConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa073() {
        ccc061zz.aaa000("[BBDeviceController] [onUsbDisconnected]", "", DebugLogType.CALLBACK, false);
        this.aaa007.onUsbDisconnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa074() {
        this.aaa007.onWaitingReprintOrPrintNext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa075() {
        this.aaa014 = false;
        aaa006();
    }

    private void bbb015() {
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar;
        aaa001zz aaa001zzVar = this.aaa015;
        if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
            if (this.aaa014 && (aaa003zzVar = this.aaa010) != null) {
                aaa003zzVar.aaa037();
                this.aaa010.aaa014();
            }
            this.aaa008.aaa000(aaa005zz.NotifyOnBTv2Disconnected);
            aaa001(aaa001zz.NONE);
            return;
        }
        if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop BTv2 because blutooth 2.0 is not connected. Current connection mode is bluetooth low energy");
            return;
        }
        if (aaa001zzVar == aaa001zz.SERIAL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop BTv2 because blutooth 2.0 is not connected. Current connection mode is serial");
            return;
        }
        if (aaa001zzVar == aaa001zz.USB) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop BTv2 because blutooth 2.0 is not connected. Current connection mode is USB");
        } else if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop BTv2 because blutooth 2.0 is not connected. Current connection mode is test channel");
        } else {
            aaa003(Error.COMM_LINK_UNINITIALIZED, "Cannot stop BTv2 because blutooth 2.0 is not connected.");
        }
    }

    private void bbb016() {
        this.aaa008.aaa036();
        aaa078();
    }

    @Deprecated
    private void bbb017() {
        if (!this.aaa000.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            aaa003(Error.BTV4_NOT_SUPPORTED, "");
        } else {
            this.aaa008.aaa037();
            aaa082();
        }
    }

    public static synchronized Hashtable<String, String> decodeTlv(String str) {
        ccc061zz.aaa000("[BBDeviceController] [decodeTlv]", "", DebugLogType.FUNCTION, false);
        return ccc068zz.aaa001(str);
    }

    public static synchronized String encodeTlv(Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [encodeTlv]", "", DebugLogType.FUNCTION, false);
        return com.stripe.bbpos.bbdevice.aaa003zz.aaa005(hashtable);
    }

    public static synchronized String getApiVersion() {
        String strAaa011;
        strAaa011 = aaa011();
        ccc061zz.aaa002("[BBDeviceController] [getApiVersion] versionStr " + strAaa011);
        return strAaa011;
    }

    public static synchronized byte[] getBarcodeCommand(Hashtable<String, String> hashtable) {
        int i = 0;
        ccc061zz.aaa000("[BBDeviceController] [getBarcodeCommand]", " barcodeData : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        String str = hashtable.get("barcodeDataString");
        String str2 = hashtable.get("barcodeHeight");
        String str3 = hashtable.get("barcodeType");
        if (str != null && str2 != null && str3 != null) {
            if (str.equals("")) {
                return null;
            }
            try {
                int i2 = Integer.parseInt(str2);
                if (str3.equals(PrinterTextParser.ATTR_BARCODE_TYPE_39)) {
                    String str4 = "1001011011010";
                    while (i < str.length()) {
                        Integer num = ccc053zz.aaa000.get(Character.valueOf(str.charAt(i)));
                        if (num == null) {
                            return null;
                        }
                        str4 = str4 + ccc053zz.aaa002[num.intValue()] + TlbConst.TYPELIB_MINOR_VERSION_SHELL;
                        i++;
                    }
                    String str5 = str4 + "100101101101";
                    if (str5.length() > 384) {
                        return null;
                    }
                    return ccc071zz.aaa000(str5, i2);
                }
                if (!str3.equals(PrinterTextParser.ATTR_BARCODE_TYPE_128)) {
                    return null;
                }
                String str6 = "11010010000";
                int iIntValue = 104;
                while (i < str.length()) {
                    Integer num2 = ccc053zz.aaa001.get(Character.valueOf(str.charAt(i)));
                    if (num2 == null) {
                        return null;
                    }
                    str6 = str6 + ccc053zz.aaa003[num2.intValue()];
                    i++;
                    iIntValue += num2.intValue() * i;
                }
                String str7 = (str6 + ccc053zz.aaa003[iIntValue % 103]) + "1100011101011";
                if (str7.length() > 384) {
                    return null;
                }
                return ccc071zz.aaa000(str7, i2);
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static synchronized byte[] getImageCommand(Bitmap bitmap, int i) {
        int i2;
        int i3 = 0;
        ccc061zz.aaa000("[BBDeviceController] [getImageCommand]", " bitmap : " + bitmap + ", threshold : " + i, DebugLogType.FUNCTION, false);
        if (bitmap.getWidth() > 384) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[bitmap.getWidth() * bitmap.getHeight()];
        int i4 = 0;
        int i5 = 0;
        while (i4 < bitmap.getHeight()) {
            byte[] bArrAaa005 = ccc071zz.aaa005("1B2A43");
            byteArrayOutputStream.write(bArrAaa005, i3, bArrAaa005.length);
            byteArrayOutputStream.write((byte) bitmap.getWidth());
            byteArrayOutputStream.write((byte) (bitmap.getWidth() >> 8));
            int i6 = i3;
            int i7 = i6;
            while (i6 < bitmap.getWidth()) {
                int pixel = bitmap.getPixel(i6, i4);
                int i8 = (pixel >> 24) & 255;
                int i9 = (pixel >> 16) & 255;
                int i10 = (pixel >> 8) & 255;
                int i11 = pixel & 255;
                if (i8 < 50 || ((i9 + i10) + i11) / 3 >= i) {
                    bArr[(bitmap.getWidth() * i4) + i6] = 0;
                    if (i7 == 0) {
                        i2 = i5 + 1;
                        if (i2 > 255) {
                            byteArrayOutputStream.write(-1);
                            byteArrayOutputStream.write(0);
                            i5 -= 254;
                        }
                        i5 = i2;
                    } else {
                        byteArrayOutputStream.write((byte) i5);
                        i5 = 1;
                        i7 = 0;
                    }
                } else {
                    bArr[(bitmap.getWidth() * i4) + i6] = 1;
                    if (i7 == 1) {
                        i2 = i5 + 1;
                        if (i2 > 255) {
                            byteArrayOutputStream.write(-1);
                            byteArrayOutputStream.write(0);
                            i5 -= 254;
                        }
                        i5 = i2;
                    } else {
                        byteArrayOutputStream.write((byte) i5);
                        i5 = 1;
                        i7 = 1;
                    }
                }
                i6++;
            }
            if (i5 > 0) {
                byteArrayOutputStream.write((byte) i5);
                i5 = 0;
            }
            byteArrayOutputStream.write(10);
            i4++;
            i3 = 0;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int width = bitmap.getWidth() * ((int) Math.ceil(((double) bitmap.getHeight()) / 8.0d));
        byte[] bArr2 = new byte[width];
        for (int i12 = 0; i12 < bitmap.getWidth(); i12++) {
            for (int i13 = 0; i13 < ((int) Math.ceil(((double) bitmap.getHeight()) / 8.0d)); i13++) {
                for (int i14 = 0; i14 < 8; i14++) {
                    int i15 = (i13 * 8) + i14;
                    if (i15 < bitmap.getHeight()) {
                        int width2 = (bitmap.getWidth() * i13) + i12;
                        bArr2[width2] = (byte) ((bArr[(i15 * bitmap.getWidth()) + i12] << (7 - i14)) | bArr2[width2]);
                    }
                }
            }
        }
        byteArrayOutputStream.reset();
        for (int i16 = 0; i16 < width / bitmap.getWidth(); i16++) {
            byte[] bArrAaa0052 = ccc071zz.aaa005("1B2A00");
            byteArrayOutputStream.write(bArrAaa0052, 0, bArrAaa0052.length);
            byteArrayOutputStream.write((byte) bitmap.getWidth());
            byteArrayOutputStream.write((byte) (bitmap.getWidth() >> 8));
            int width3 = bitmap.getWidth();
            byte[] bArr3 = new byte[width3];
            System.arraycopy(bArr2, bitmap.getWidth() * i16, bArr3, 0, width3);
            byteArrayOutputStream.write(bArr3, 0, width3);
            byteArrayOutputStream.write(10);
        }
        byte[] byteArray2 = byteArrayOutputStream.toByteArray();
        if (byteArray.length >= byteArray2.length) {
            byteArray = byteArray2;
        }
        return byteArray;
    }

    public static BBDeviceController getInstance(Context context, BBDeviceControllerListener bBDeviceControllerListener, Handler handler) {
        if (handler == null) {
            aaa026 = aaa025;
        } else {
            aaa026 = handler;
        }
        return getInstance(context, bBDeviceControllerListener);
    }

    public static synchronized byte[] getUnicodeCommand(String str) {
        ccc061zz.aaa000("[BBDeviceController] [getUnicodeCommand]", " s : " + str, DebugLogType.FUNCTION, false);
        if (str == null) {
            return new byte[0];
        }
        String strAaa000 = com.stripe.bbpos.bbdevice.aaa000zz.aaa000(str);
        int length = strAaa000.length() * 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < strAaa000.length(); i++) {
            char cCharAt = strAaa000.charAt(i);
            int i2 = i * 2;
            bArr[i2] = (byte) ((cCharAt >> '\b') & 255);
            bArr[i2 + 1] = (byte) (cCharAt & 255);
        }
        byte[] bArr2 = new byte[length + 4];
        bArr2[0] = Ascii.FS;
        bArr2[1] = 85;
        bArr2[2] = (byte) (length & 255);
        bArr2[3] = (byte) ((length >> 8) & 255);
        System.arraycopy(bArr, 0, bArr2, 4, length);
        return bArr2;
    }

    public static synchronized boolean isDebugLogEnabled() {
        boolean zAaa001;
        zAaa001 = ccc061zz.aaa001();
        ccc061zz.aaa000("[BBDeviceController] [isDebugLogEnabled]", " result : " + zAaa001, DebugLogType.FUNCTION, false);
        return zAaa001;
    }

    public static synchronized void setDebugLogEnabled(boolean z) {
        ccc061zz.aaa002("[BBDeviceController] [setDebugLogEnabled] isEnabled : " + z);
        ccc061zz.aaa000(z, aaa030);
    }

    void aaa000(aaa002zz aaa002zzVar) {
        this.aaa016 = aaa002zzVar;
    }

    void aaa001(aaa001zz aaa001zzVar) {
        this.aaa015 = aaa001zzVar;
    }

    void aaa003(final List<BluetoothDevice> list) {
        if (list != null) {
            Collections.sort(list, this.aaa023);
        }
        ccc061zz.aaa000("[BBDeviceController] [onBTReturnScanResults] (2)", " foundDevices : " + ccc071zz.aaa000(list), DebugLogType.CALLBACK, false);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_BT_RETURN_SCAN_RESULTS);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda82
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(list);
            }
        });
    }

    synchronized void aaa004(BluetoothDevice bluetoothDevice) {
        if (this.aaa014 && (this.aaa020.aaa014().aaa006() > 0 || this.aaa020.aaa014().aaa008())) {
            this.aaa020.aaa001(ccc066zz.aaa003zz.NORMAL_DEVICE_INFO);
        }
        if (this.aaa020.aaa017() == ccc066zz.aaa003zz.NORMAL_DEVICE_INFO) {
            this.aaa020.aaa000(bluetoothDevice);
            aaa026.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda93
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa030();
                }
            }, 500L);
        } else if (bluetoothDevice == null) {
            aaa003(Error.COMM_LINK_UNINITIALIZED, "Bluetooth disconnected during connecting (error code - 3038)");
        } else {
            aaa005(bluetoothDevice);
        }
    }

    synchronized void aaa005(final BluetoothDevice bluetoothDevice) {
        ccc061zz.aaa000("[BBDeviceController] [onBTConnected] (2)", " bluetoothDevice : " + bluetoothDevice, DebugLogType.CALLBACK, false);
        aaa001("Bluetooth connected");
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_BT_CONNECTED);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda121
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa002(bluetoothDevice);
            }
        });
    }

    void aaa006() {
        synchronized (aaa024) {
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                if (aaa003zzVar.aaa026() == aaa003zz.aaa005zz.USB) {
                    this.aaa010.aaa085();
                } else if (this.aaa010.aaa026() == aaa003zz.aaa005zz.BLUETOOTH_2) {
                    this.aaa010.aaa014();
                } else if (this.aaa010.aaa026() == aaa003zz.aaa005zz.BLUETOOTH_4) {
                    this.aaa010.aaa015();
                } else if (this.aaa010.aaa026() == aaa003zz.aaa005zz.SERIAL) {
                    this.aaa010.aaa083();
                } else if (this.aaa010.aaa026() == aaa003zz.aaa005zz.TEST_CHANNEL) {
                    this.aaa010.aaa084();
                }
                this.aaa010.aaa008();
            }
        }
    }

    synchronized void aaa007(final BluetoothDevice bluetoothDevice) {
        ccc061zz.aaa000("[BBDeviceController] [onBTConnected] (4)", " bluetoothDevice : " + bluetoothDevice, DebugLogType.CALLBACK, false);
        aaa001("Bluetooth connected");
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_BT_CONNECTED);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda100
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa003(bluetoothDevice);
            }
        });
    }

    void aaa009(final boolean z, final String str) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnDisableFactoryModeResult]", " isSuccess : " + z + ", errorMessage : " + str, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_DISABLE_FACTORY_MODE_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa001(z, str);
            }
        });
    }

    void aaa010(final boolean z, final String str) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnEmvCardDataResult]", " isSuccess : " + z + ", tlv : ***", DebugLogType.CALLBACK, false);
        if (aaa032) {
            this.aaa019.aaa010();
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_EMV_CARD_NUMBER);
            aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa003(z, str);
                }
            });
        } else {
            this.aaa019.aaa010();
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_EMV_CARD_DATA_RESULT);
            aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda142
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa002(z, str);
                }
            });
        }
    }

    void aaa011(final Hashtable<String, String> hashtable) {
        final List listEmptyList;
        String strAaa011 = aaa011();
        try {
            if (aaa034) {
                strAaa011 = strAaa011 + ", " + bbb011();
            }
        } catch (Exception unused) {
        }
        hashtable.put(RemoteConfigConstants.RequestFieldKey.SDK_VERSION, strAaa011);
        final boolean z = this.aaa019.aaa007() == ccc039zz.aaa001zz.GET_DEVICE_INFO;
        if (this.aaa019.aaa007() != ccc039zz.aaa001zz.GET_DEVICE_INFO_WITH_KEYS || this.aaa019.aaa001() == null || this.aaa019.aaa001().size() <= 0) {
            listEmptyList = Collections.emptyList();
        } else {
            listEmptyList = new ArrayList(this.aaa019.aaa001());
            aaa012("[onReturnDeviceInfo] deviceFilterKeyList : " + listEmptyList);
        }
        aaa006zz aaa006zzVarAaa022 = aaa022();
        aaa006zz aaa006zzVar = aaa006zz.WisePOS_SEVEN;
        if (aaa006zzVarAaa022 != aaa006zzVar) {
            this.aaa019.aaa010();
        }
        if (hashtable.containsKey("bID")) {
            this.aaa020.aaa025(hashtable.get("bID"));
        }
        if (hashtable.containsKey("serialNumber")) {
            this.aaa020.aaa021(hashtable.get("serialNumber"));
        }
        this.aaa020.aaa000(hashtable);
        if (aaa022() == aaa006zzVar && aaa012() == aaa001zz.SERIAL) {
            aaa014();
            return;
        }
        if (this.aaa020.aaa000(ccc066zz.aaa003zz.NORMAL_DEVICE_INFO)) {
            this.aaa020.aaa001(ccc066zz.aaa003zz.NA);
            BluetoothDevice bluetoothDeviceAaa007 = this.aaa020.aaa007();
            if (bluetoothDeviceAaa007 != null) {
                if (aaa012() == aaa001zz.BLUETOOTH_2) {
                    aaa005(bluetoothDeviceAaa007);
                    return;
                } else {
                    aaa007(bluetoothDeviceAaa007);
                    return;
                }
            }
            return;
        }
        if (!aaa033) {
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_DEVICE_INFO);
            aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa000(hashtable, z, listEmptyList);
                }
            });
        } else {
            try {
                hashtable.put("isNewProtocol", "" + this.aaa014);
                aaa018(hashtable);
            } catch (Throwable unused2) {
                aaa003(Error.UNKNOWN, "");
            }
        }
    }

    void aaa012(final Hashtable<String, String> hashtable) {
        final List listEmptyList;
        String strAaa011 = aaa011();
        try {
            if (aaa034) {
                strAaa011 = strAaa011 + ", " + bbb011();
            }
        } catch (Exception unused) {
        }
        hashtable.put(RemoteConfigConstants.RequestFieldKey.SDK_VERSION, strAaa011);
        aaa012("[onReturnDeviceInfoFlow1] deviceInfoTable : " + hashtable);
        if (this.aaa019.aaa007() != ccc039zz.aaa001zz.GET_DEVICE_INFO_WITH_KEYS || this.aaa019.aaa001() == null) {
            listEmptyList = Collections.emptyList();
        } else {
            listEmptyList = new ArrayList(this.aaa019.aaa001());
            aaa012("[onReturnDeviceInfo] deviceFilterKeyList : " + listEmptyList);
        }
        this.aaa019.aaa010();
        if (this.aaa020.aaa017() != ccc066zz.aaa003zz.SP_DEVICE_INFO) {
            if (this.aaa020.aaa017() == ccc066zz.aaa003zz.NORMAL_DEVICE_INFO) {
                this.aaa020.aaa001(ccc066zz.aaa003zz.NA);
                aaa000(hashtable);
                bbb003();
                return;
            }
            final Hashtable<String, String> hashtable2 = new Hashtable<>(aaa000(hashtable));
            if (!aaa033) {
                this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_DEVICE_INFO);
                aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda38
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa000(hashtable, hashtable2, listEmptyList);
                    }
                });
                return;
            } else {
                try {
                    hashtable2.put("isNewProtocol", "" + this.aaa014);
                    aaa018(hashtable2);
                    return;
                } catch (Throwable unused2) {
                    aaa003(Error.UNKNOWN, "");
                    return;
                }
            }
        }
        String str = hashtable.get("spWCConnectionHealthCheck");
        if (str == null || !(str.equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE) || str.equalsIgnoreCase(TlvMap.ENTRY_MODE_CONTACT))) {
            this.aaa020.aaa001(ccc066zz.aaa003zz.NORMAL_DEVICE_INFO);
            aaa015();
            return;
        }
        this.aaa020.aaa001(ccc066zz.aaa003zz.NA);
        this.aaa020.aaa006(true);
        if (str.equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE)) {
            this.aaa020.aaa011("WSP7X connection health check failed. Comm Err");
        } else if (str.equalsIgnoreCase(TlvMap.ENTRY_MODE_CONTACT)) {
            this.aaa020.aaa011("WSP7X connection health check failed. In OTA");
        }
        aaa000(aaa002zz.CONNECTED);
        aaa046();
    }

    aaa002zz aaa013() {
        return this.aaa016;
    }

    void aaa013(String str) {
    }

    void aaa014(final Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnReadAIDResult]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
        hashtable.put("appIndex", this.aaa019.aaa002);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_READ_AID_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda94
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa004(hashtable);
            }
        });
    }

    void aaa015(final boolean z, final Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnReadDisplayStringResult]", " isSuccess : " + z + ", data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_READ_DISPLAY_STRING_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda117
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa007(z, hashtable);
            }
        });
    }

    aaa001zz aaa017() {
        return this.aaa015;
    }

    aaa000zz aaa018() {
        if (aaa034) {
            try {
                Class<?> clsLoadClass = aaa027.loadClass("com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController");
                for (Method method : clsLoadClass.getDeclaredMethods()) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (method.getName().equalsIgnoreCase("getInstance") && parameterTypes.length == 2) {
                        method.setAccessible(true);
                        Object objInvoke = clsLoadClass.getDeclaredMethod("getBBDeviceOTAControllerState", new Class[0]).invoke(method.invoke(null, null, null), new Object[0]);
                        Class<?> cls = objInvoke.getClass();
                        if (cls.isEnum()) {
                            for (Object obj : cls.getEnumConstants()) {
                                if (obj.equals(objInvoke)) {
                                    if (obj.toString().equalsIgnoreCase("IDLE")) {
                                        return aaa000zz.IDLE;
                                    }
                                    if (obj.toString().equalsIgnoreCase("DEVICE_BUSY")) {
                                        return aaa000zz.DEVICE_BUSY;
                                    }
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return aaa000zz.NA;
    }

    ccc066zz aaa019() {
        return this.aaa020;
    }

    String aaa020() {
        return this.aaa018;
    }

    String aaa021() {
        return "";
    }

    void aaa022(final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnDisableBluetoothResult]", " isSuccess : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_DISABLE_BLUETOOTH_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda130
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa007(z);
            }
        });
    }

    void aaa023() {
        synchronized (aaa024) {
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa008();
                this.aaa010 = null;
            }
            if (aaa012() == aaa001zz.BLUETOOTH_2) {
                this.aaa008.aaa022 = false;
                aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda39
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa024();
                    }
                });
            } else if (aaa012() == aaa001zz.BLUETOOTH_4) {
                aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda40
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa025();
                    }
                });
            } else if (aaa012() == aaa001zz.SERIAL) {
                this.aaa001.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda41
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa026();
                    }
                });
            } else if (aaa012() == aaa001zz.USB) {
                aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda42
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa027();
                    }
                });
            } else if (aaa000(aaa001zz.TEST_CHANNEL)) {
                this.aaa001.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda43
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa028();
                    }
                });
            }
        }
    }

    void aaa029(String str) {
        this.aaa018 = str;
        ccc057zz.aaa004 = true;
        ccc057zz.aaa005 = ccc071zz.aaa005(str);
    }

    void aaa034(final boolean z) {
        if (this.aaa019.aaa007() == ccc039zz.aaa001zz.REMOVE_CAPK) {
            aaa031(z);
            return;
        }
        ccc061zz.aaa000("[BBDeviceController] [onReturnUpdateCAPKResult]", " isSuccess : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_UPDATE_CAPK_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa016(z);
            }
        });
    }

    synchronized void aaa035(boolean z) {
        aaa012("[startSerialInternal]");
        if (!aaa000()) {
            aaa003(Error.SERIAL_PERMISSION_DENIED, "android.permission.BBPOS is required");
            return;
        }
        aaa001zz aaa001zzVar = this.aaa015;
        if (aaa001zzVar == aaa001zz.NONE) {
            aaa001(aaa001zz.SERIAL);
            aaa000(aaa002zz.CONNECTING);
            this.aaa020.aaa062();
            this.aaa020.aaa003(z);
            if (aaa000(aaa006zz.WisePOS_SEVEN)) {
                this.aaa020.aaa001(ccc066zz.aaa003zz.SP_DEVICE_INFO);
            }
            aaa023();
        } else if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start serial while bluetooth 2.0 is connected");
        } else if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start serial while bluetooth low energy is connected");
        } else if (aaa001zzVar == aaa001zz.USB) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start serial while USB is connected");
        } else if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start serial while test channel is connected");
        } else if (aaa001zzVar == aaa001zz.SERIAL) {
            if (aaa013() == aaa002zz.CONNECTING) {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start serial because serial is connecting.");
            } else {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start serial again while serial is connected");
            }
        }
    }

    void aaa076() {
        ccc061zz.aaa000("[BBDeviceController] [onBTRequestPairing]", "", DebugLogType.CALLBACK, false);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_BT_REQUEST_PAIRING);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa029();
            }
        });
    }

    synchronized void aaa077() {
        final String strAaa004 = this.aaa020.aaa004();
        aaa005();
        if (this.aaa020.aaa051()) {
            String strAaa021 = this.aaa020.aaa021();
            this.aaa020.aaa062();
            aaa000(Error.FAIL_TO_START_BT, strAaa021, false);
        } else {
            aaa000(true, "Bluetooth disconnected", aaa026);
            this.aaa020.aaa062();
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_BT_DISCONNECTED);
            aaa026.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda70
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa004(strAaa004);
                }
            }, 400L);
        }
    }

    void aaa078() {
        ccc061zz.aaa000("[BBDeviceController] [onBTScanStopped] (2)", "", DebugLogType.CALLBACK, false);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_BT_SCAN_STOPPED);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda73
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa031();
            }
        });
    }

    void aaa079() {
        ccc061zz.aaa000("[BBDeviceController] [onBTScanTimeout] (2)", "", DebugLogType.CALLBACK, false);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_BT_SCAN_TIMEOUT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda87
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa032();
            }
        });
    }

    synchronized void aaa080() {
        final String strAaa004 = this.aaa020.aaa004();
        aaa005();
        if (this.aaa020.aaa051()) {
            String strAaa021 = this.aaa020.aaa021();
            this.aaa020.aaa062();
            aaa000(Error.FAIL_TO_START_BT, strAaa021, false);
        } else {
            aaa000(true, "Bluetooth disconnected", aaa026);
            this.aaa020.aaa062();
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_BT_DISCONNECTED);
            aaa026.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda125
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa005(strAaa004);
                }
            }, 400L);
        }
    }

    synchronized void aaa081() {
        aaa005();
        ccc054zz ccc054zzVar = this.aaa022;
        ccc054zz.aaa000zz aaa000zzVar = ccc054zzVar.aaa000;
        if (aaa000zzVar == ccc054zz.aaa000zz.PASSKEY_INCORRECT) {
            aaa003(Error.PAIRING_ERROR_INCORRECT_PASSKEY, ccc054zzVar.aaa000());
        } else if (aaa000zzVar == ccc054zz.aaa000zz.MOBILE_NOT_SUPPORT_LE_SECURE_CONNECTION) {
            aaa003(Error.BLE_SECURE_CONNECTION_NOT_SUPPORTED, ccc054zzVar.aaa000());
        } else if (aaa000zzVar == ccc054zz.aaa000zz.CRC || aaa000zzVar == ccc054zz.aaa000zz.INCORRECT_LENGTH) {
            aaa003(Error.FAIL_TO_START_BT, ccc054zzVar.aaa000());
        } else if (aaa000zzVar == ccc054zz.aaa000zz.DEVICE_BEING_LINKED_TO_ANOTHER_MOBILE_ALREADY) {
            aaa003(Error.PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE, ccc054zzVar.aaa000());
        } else if (aaa000zzVar == ccc054zz.aaa000zz.UNKNOWN) {
            aaa003(Error.FAIL_TO_START_BT, ccc054zzVar.aaa000());
        } else if (aaa000zzVar == ccc054zz.aaa000zz.PASSKEY_TIMEOUT || aaa000zzVar == ccc054zz.aaa000zz.OTHER_ERROR_FROM_FW) {
            aaa003(Error.PAIRING_ERROR, ccc054zzVar.aaa000());
        } else if (aaa000zzVar == ccc054zz.aaa000zz.THE_READER_IS_ALREADY_CONNECTED_TO_ANOTHER_DEVICE_VIA_USB) {
            aaa003(Error.FAIL_TO_START_BT, ccc054zzVar.aaa000());
        } else if (aaa000zzVar == ccc054zz.aaa000zz.THE_READER_IS_ALREADY_CONNECTED_TO_ANOTHER_DEVICE_VIA_BLUETOOTH) {
            aaa003(Error.FAIL_TO_START_USB, ccc054zzVar.aaa000());
        }
        this.aaa022.aaa001();
    }

    void aaa082() {
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceController.aaa034();
            }
        });
    }

    void aaa083() {
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda101
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceController.aaa035();
            }
        });
    }

    void aaa084() {
        ccc061zz.aaa000("[BBDeviceController] [onBarcodeReaderConnected]", "", DebugLogType.CALLBACK, false);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_BARCODE_READER_CONNECTED);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa036();
            }
        });
    }

    void aaa085() {
        ccc061zz.aaa000("[BBDeviceController] [onBarcodeReaderDisconnected]", "", DebugLogType.CALLBACK, false);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_BARCODE_READER_DISCONNECTED);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda55
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa037();
            }
        });
    }

    void aaa086() {
        ccc061zz.aaa000("[BBDeviceController] [onDeviceDisplayingPrompt]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_DEVICE_DISPLAYING_PROMPT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda68
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa038();
            }
        });
    }

    void aaa087() {
        ccc061zz.aaa000("[BBDeviceController] [onEnterStandbyMode]", "", DebugLogType.CALLBACK, false);
        if (this.aaa019.aaa007() == ccc039zz.aaa001zz.ENTER_STANDBY_MODE) {
            this.aaa019.aaa010();
        }
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_ENTER_STANDBY_MODE);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda127
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa039();
            }
        });
    }

    void aaa088() {
        ccc061zz.aaa000("[BBDeviceController] [onPowerButtonPressed]", "", DebugLogType.CALLBACK, false);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_POWER_BUTTON_PRESSED);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda114
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa041();
            }
        });
    }

    void aaa089() {
        ccc061zz.aaa000("[BBDeviceController] [onPowerDown]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_POWER_DOWN);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda141
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa042();
            }
        });
    }

    void aaa090() {
        ccc061zz.aaa000("[BBDeviceController] [onPrintDataCancelled]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_PRINT_DATA_CANCELLED);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda81
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa043();
            }
        });
    }

    void aaa091() {
        ccc061zz.aaa000("[BBDeviceController] [onPrintDataEnd]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_PRINT_DATA_END);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda128
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa044();
            }
        });
    }

    void aaa092() {
        ccc061zz.aaa000("[BBDeviceController] [onRequestClearDisplay]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_CLEAR_DISPLAY);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa045();
            }
        });
    }

    void aaa093() {
        this.aaa019.aaa010();
        if (aaa012() == aaa001zz.SERIAL) {
            aaa026.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda71
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa046();
                }
            }, 8000L);
        } else {
            aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda72
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa047();
                }
            });
        }
    }

    void aaa094() {
        ccc061zz.aaa000("[BBDeviceController] [onRequestFinalConfirm]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_FINAL_CONFIRM);
        this.aaa020.aaa001(ccc066zz.aaa000zz.REQUEST_FINAL_CONFIRM);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa050();
            }
        });
    }

    void aaa095() {
        ccc061zz.aaa000("[BBDeviceController] [onRequestKeypadResponse]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_KEYPAD_RESPONSE);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa051();
            }
        });
    }

    void aaa096() {
        ccc061zz.aaa000("[BBDeviceController] [onRequestPanConfirm]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
    }

    void aaa097() {
        ccc061zz.aaa000("[BBDeviceController] [onRequestSelectAccountType]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001(ccc066zz.aaa000zz.REQUEST_SELECT_ACCOUNT_TYPE);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_SELECT_ACCOUNT_TYPE);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa052();
            }
        });
    }

    void aaa098() {
        ccc061zz.aaa000("[BBDeviceController] [onRequestSetAmount]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001(ccc066zz.aaa000zz.REQUEST_SET_AMOUNT);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_SET_AMOUNT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda113
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa053();
            }
        });
    }

    void aaa099() {
        ccc061zz.aaa000("[BBDeviceController] [onRequestStartEmv]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_START_EMV);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa054();
            }
        });
    }

    void aaa100() {
        ccc061zz.aaa000("[BBDeviceController] [onRequestTerminalTime]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001(ccc066zz.aaa000zz.REQUEST_TERMINAL_TIME);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_TERMINAL_TIME);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda89
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa055();
            }
        });
    }

    void bbb000() {
        ccc061zz.aaa000("[BBDeviceController] [onReturnSendDetForL2TestMasterPayPassResult]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceController.aaa064();
            }
        });
    }

    void bbb001() {
        ccc061zz.aaa000("[BBDeviceController] [onReturnWatchdogTimerReset]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_WATCHDOG_TIMER_RESET);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa065();
            }
        });
    }

    synchronized void bbb002() {
        if (this.aaa020.aaa017() == ccc066zz.aaa003zz.SP_DEVICE_INFO) {
            aaa014();
        } else {
            bbb003();
        }
    }

    synchronized void bbb003() {
        aaa001("Serial connected");
        if (aaa012() == aaa001zz.SERIAL && aaa022() == aaa006zz.WisePOS_SEVEN) {
            ccc051zz.aaa001(this.aaa000);
        }
        aaa012("[onSerialConnected_Step2] checkpoint 2");
        if (!this.aaa020.aaa049()) {
            ccc061zz.aaa000("[BBDeviceController] [onSerialConnected]", "", DebugLogType.CALLBACK, false);
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_SERIAL_CONNECTED);
            aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda110
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa066();
                }
            });
            return;
        }
        this.aaa020.aaa003(false);
        ccc061zz.aaa001("Internal reconnect serial. (check code - 9064)");
        if (this.aaa020.aaa036() == ccc066zz.aaa004zz.DISABLE_FACTORY_MODE_FUNCTION_1_ENTER_BOOTLOADER) {
            if (this.aaa010 != null) {
                this.aaa020.aaa000(ccc066zz.aaa004zz.DISABLE_FACTORY_MODE_FUNCTION_2_DISABLE_FACTORY_MODE);
                this.aaa019.aaa000(ccc039zz.aaa001zz.DISABLE_FACTORY_MODE, 0);
                this.aaa010.aaa011();
            }
        } else if (this.aaa020.aaa036() == ccc066zz.aaa004zz.DISABLE_FACTORY_MODE_FUNCTION_3_EXIT_BOOTLOADER) {
            this.aaa020.aaa000(ccc066zz.aaa004zz.NOT);
            if (this.aaa020.aaa037().aaa002()) {
                aaa009(this.aaa020.aaa037().aaa001(), this.aaa020.aaa037().aaa000());
            } else {
                aaa009(false, "Disable factory mode failed. (error code - 8024)");
            }
            this.aaa020.aaa037().aaa000(false, false, "", "", Error.UNKNOWN);
        }
    }

    synchronized void bbb004() {
        if (!this.aaa020.aaa052() && !this.aaa020.aaa049()) {
            ccc061zz.aaa000("[BBDeviceController] [onSerialDisconnected]", "", DebugLogType.CALLBACK, false);
        }
        boolean z = aaa012() == aaa001zz.SERIAL && aaa022() == aaa006zz.WisePOS_SEVEN;
        if (this.aaa020.aaa049()) {
            aaa005();
            this.aaa020.aaa062();
            this.aaa003.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa067();
                }
            });
        } else {
            aaa005();
            if (this.aaa020.aaa052()) {
                String strAaa022 = this.aaa020.aaa022();
                this.aaa020.aaa062();
                aaa000(Error.FAIL_TO_START_SERIAL, strAaa022, false);
            } else {
                aaa000(true, "Serial disconnected", aaa026);
                this.aaa020.aaa062();
                if (z) {
                    ccc051zz.aaa001(this.aaa000);
                }
                this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_SERIAL_DISCONNECTED);
                aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda16
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa068();
                    }
                });
            }
        }
    }

    void bbb005() {
        ccc061zz.aaa000("[BBDeviceController] [onSessionInitialized]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_SESSION_INITIALIZED);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda109
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa069();
            }
        });
    }

    synchronized void bbb006() {
        ccc061zz.aaa000("[BBDeviceController] [onTestChannelConnected]", "", DebugLogType.CALLBACK, false);
        aaa001("Test Channel connected");
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_TEST_CHANNEL_CONNECTED);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa070();
            }
        });
    }

    synchronized void bbb007() {
        if (this.aaa020.aaa053()) {
            aaa005();
            String strAaa023 = this.aaa020.aaa023();
            this.aaa020.aaa062();
            aaa000(Error.FAIL_TO_START_TEST_CHANNEL, strAaa023, false);
        } else {
            aaa005();
            aaa000(true, "Test Channel disconnected", aaa026);
            this.aaa020.aaa062();
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_TEST_CHANNEL_DISCONNECTED);
            aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda86
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa071();
                }
            });
        }
    }

    synchronized void bbb008() {
        if (!this.aaa014 || this.aaa020.aaa016() != ccc066zz.aaa001zz.BOOTLOADER || (!ccc071zz.aaa003(this.aaa020.aaa014().aaa005()).startsWith("SMH1") && (this.aaa020.aaa008() != 22353 || this.aaa020.aaa009() != 11369))) {
            ccc061zz.aaa000("[BBDeviceController] [onUsbConnected]", "", DebugLogType.CALLBACK, false);
            aaa001("USB connected");
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_USB_CONNECTED);
            aaa026.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa072();
                }
            }, 50L);
            return;
        }
        aaa001("USB connected");
        this.aaa020.aaa008(true);
        this.aaa020.aaa013("In bootloader mode. Try reconnect again.");
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa041();
        }
    }

    synchronized void bbb009() {
        if (this.aaa020.aaa054()) {
            aaa005();
            String strAaa024 = this.aaa020.aaa024();
            this.aaa020.aaa062();
            aaa000(Error.FAIL_TO_START_USB, strAaa024, false);
        } else {
            aaa005();
            aaa000(true, "USB disconnected", aaa026);
            int iAaa038 = this.aaa020.aaa038();
            this.aaa020.aaa062();
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_USB_DISCONNECTED);
            aaa026.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa073();
                }
            }, iAaa038);
        }
    }

    void bbb010() {
        ccc061zz.aaa000("[BBDeviceController] [onWaitingReprintOrPrintNext]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_WAITING_REPRINT_OR_PRINT_NEXT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa074();
            }
        });
    }

    String bbb011() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Class<?> clsLoadClass = aaa027.loadClass("com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController");
        for (Method method : clsLoadClass.getDeclaredMethods()) {
            if (method.getName().equalsIgnoreCase("getApiVersion")) {
                method.setAccessible(true);
                return (String) clsLoadClass.getDeclaredMethod("getApiVersion", new Class[0]).invoke(method.invoke(null, new Object[0]), new Object[0]);
            }
        }
        return "";
    }

    void bbb012() {
        this.aaa018 = "";
        ccc057zz.aaa004 = false;
        ccc057zz.aaa005 = new byte[0];
    }

    void bbb013() {
        bbb012();
    }

    synchronized void bbb014() {
        aaa012("[startTestChannelInternal]");
        if (aaa000(aaa001zz.NONE)) {
            aaa001(aaa001zz.TEST_CHANNEL);
            aaa000(aaa002zz.CONNECTING);
            this.aaa020.aaa062();
            aaa023();
        } else if (aaa000(aaa001zz.BLUETOOTH_2)) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start test channel while bluetooth 2.0 is connected");
        } else if (aaa000(aaa001zz.BLUETOOTH_4)) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start test channel while bluetooth low energy is connected");
        } else if (aaa000(aaa001zz.USB)) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start test channel while USB is connected");
        } else if (aaa000(aaa001zz.SERIAL)) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start test channel while serial is connected");
        } else if (aaa000(aaa001zz.TEST_CHANNEL)) {
            if (aaa013() == aaa002zz.CONNECTING) {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start test channel because test channel is connecting.");
            } else {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start test channel again while test channel is connected");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: bbb018, reason: merged with bridge method [inline-methods] */
    public synchronized void aaa046() {
        if (!aaa000()) {
            aaa003(Error.SERIAL_PERMISSION_DENIED, "android.permission.BBPOS is required");
            return;
        }
        aaa001zz aaa001zzVar = this.aaa015;
        if (aaa001zzVar == aaa001zz.SERIAL) {
            if (aaa013() == aaa002zz.CONNECTING) {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop serial because serial is connecting.");
            } else {
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa083();
                }
                aaa001(aaa001zz.NONE);
            }
        } else if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop serial because serial is not connected. Current connection mode is bluetooth 2.0");
        } else if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop serial because serial is not connected. Current connection mode is bluetooth low energy");
        } else if (aaa001zzVar == aaa001zz.USB) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop serial because serial is not connected. Current connection mode is USB");
        } else if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop serial because serial is not connected. Current connection mode is test channel");
        } else if (aaa001zzVar == aaa001zz.NONE) {
            aaa003(Error.COMM_LINK_UNINITIALIZED, "Cannot stop serial because serial is not connected.");
        }
    }

    synchronized void bbb019() {
        if (aaa000(aaa001zz.TEST_CHANNEL)) {
            if (aaa013() == aaa002zz.CONNECTING) {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop test channel because test channel is connecting.");
            } else {
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa084();
                }
                aaa001(aaa001zz.NONE);
            }
        } else if (aaa000(aaa001zz.SERIAL)) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop test channel because test channel is not connected. Current connection mode is serial");
        } else if (aaa000(aaa001zz.BLUETOOTH_2)) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop test channel because test channel is not connected. Current connection mode is bluetooth 2.0");
        } else if (aaa000(aaa001zz.BLUETOOTH_4)) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop test channel because test channel is not connected. Current connection mode is bluetooth low energy");
        } else if (aaa000(aaa001zz.USB)) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop test channel because test channel is not connected. Current connection mode is USB");
        } else if (aaa000(aaa001zz.NONE)) {
            aaa003(Error.COMM_LINK_UNINITIALIZED, "Cannot stop test channel because test channel is not connected.");
        }
    }

    void bbb020() {
        synchronized (aaa024) {
            aaa012("[stopUsbInternal]");
            if (!this.aaa000.getPackageManager().hasSystemFeature("android.hardware.usb.host")) {
                aaa003(Error.USB_NOT_SUPPORTED, "");
                return;
            }
            if (aaa012() != aaa001zz.USB) {
                aaa001zz aaa001zzVar = this.aaa015;
                if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
                    aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop USB because USB is not connected. Current connection mode is bluetooth 2.0");
                } else if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
                    aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop USB because USB is not connected. Current connection mode is bluetooth low energy");
                } else if (aaa001zzVar == aaa001zz.SERIAL) {
                    aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop USB because USB is not connected. Current connection mode is serial");
                } else if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
                    aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop USB because USB is not connected. Current connection mode is test channel");
                } else if (aaa001zzVar == aaa001zz.NONE) {
                    aaa003(Error.COMM_LINK_UNINITIALIZED, "Cannot stop USB because USB is not connected.");
                }
            } else if (aaa013() == aaa002zz.CONNECTING) {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop USB because USB is connecting.");
            } else {
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa037();
                }
                aaa025.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda104
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa075();
                    }
                }, 60L);
            }
        }
    }

    synchronized void bbb021() {
        aaa012("[verifyWiseCubeKeyPublicKeysAndStatus]");
        if (aaa012() != aaa001zz.SERIAL || aaa022() != aaa006zz.WisePOS_SEVEN) {
            aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command ");
            return;
        }
        if (this.aaa019.aaa009()) {
            aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            return;
        }
        this.aaa019.aaa000(ccc039zz.aaa001zz.VERIFY_7MD_KEY_STATUS, 0);
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa019();
        }
    }

    synchronized void bbb022() {
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa089();
        }
    }

    public synchronized void bypassPinEntry() {
        ccc061zz.aaa000("[BBDeviceController] [bypassPinEntry]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command bypassPinEntry");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa000();
            }
        }
    }

    public synchronized void cancelCheckCard() {
        ccc061zz.aaa000("[BBDeviceController] [cancelCheckCard]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command cancelCheckCard");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa001();
            }
        }
    }

    public synchronized void cancelDisplayPrompt() {
        ccc061zz.aaa000("[BBDeviceController] [cancelDisplayPrompt]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command cancelDisplayPrompt");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa002();
            }
        }
    }

    public synchronized void cancelPinEntry() {
        ccc061zz.aaa000("[BBDeviceController] [cancelPinEntry]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command cancelPinEntry");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa003();
            }
        }
    }

    public synchronized void cancelSelectAccountType() {
        ccc061zz.aaa000("[BBDeviceController] [cancelSelectAccountType]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command cancelSelectAccountType");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa004();
            }
        }
    }

    public synchronized void cancelSelectApplication() {
        ccc061zz.aaa000("[BBDeviceController] [cancelSelectApplication]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command cancelSelectApplication");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa005();
            }
        }
    }

    public void cancelSetAmount() {
        synchronized (aaa024) {
            ccc061zz.aaa000("[BBDeviceController] [cancelSetAmount]", "", DebugLogType.FUNCTION, false);
            if (aaa000(true)) {
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command cancelSetAmount");
                    return;
                }
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa006();
                }
            }
        }
    }

    public synchronized void checkCard(Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [checkCard]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            hashtable = new Hashtable<>();
        }
        if (aaa000(true)) {
            if (aaa000("checkCard function is disabled remotely")) {
                if (this.aaa019.aaa009()) {
                    aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                    return;
                }
                this.aaa019.aaa000(ccc039zz.aaa001zz.CHECK_CARD, 0);
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command checkCard");
                    return;
                }
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa000(hashtable);
                }
            }
        }
    }

    public synchronized void connectBT(BluetoothDevice bluetoothDevice) {
        ccc061zz.aaa000("[BBDeviceController] [connectBT]", " bluetoothDevice : " + ccc071zz.aaa000(bluetoothDevice) + "(" + Build.MANUFACTURER + "-" + Build.MODEL + "-" + Build.VERSION.RELEASE + ", API version : " + aaa011() + ", " + ccc071zz.aaa001(this.aaa000) + ")", DebugLogType.FUNCTION, false);
        aaa000(bluetoothDevice);
    }

    public synchronized void controlLED(Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [controlLED]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "Input is null");
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command controlLED");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa001(hashtable);
            }
        }
    }

    public synchronized void disableAccountSelection() {
        ccc061zz.aaa000("[BBDeviceController] [disableAccountSelection]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command disableAccountSelection");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa009();
            }
        }
    }

    public void disableBluetooth() {
        synchronized (aaa024) {
            ccc061zz.aaa000("[BBDeviceController] [disableBluetooth]", "", DebugLogType.FUNCTION, false);
            if (aaa000(true)) {
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command disableBluetooth");
                    return;
                }
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa010();
                }
            }
        }
    }

    public synchronized void disableFacoryMode() {
        ccc061zz.aaa000("[BBDeviceController] [disableFactoryMode]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            if (this.aaa014 && aaa000(aaa001zz.SERIAL) && aaa000(aaa006zz.WisePOSPlus) && this.aaa020.aaa036() == ccc066zz.aaa004zz.NOT) {
                this.aaa019.aaa000(ccc039zz.aaa001zz.ENTER_BOOTLOADER, 0);
                if (this.aaa010 != null) {
                    this.aaa020.aaa000(ccc066zz.aaa004zz.DISABLE_FACTORY_MODE_FUNCTION_1_ENTER_BOOTLOADER);
                    this.aaa010.aaa020();
                }
            } else {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command virtuCryptPEDKRequest");
            }
        }
    }

    public void disableInputAmount() {
        synchronized (aaa024) {
            ccc061zz.aaa000("[BBDeviceController] [disableInputAmount]", "", DebugLogType.FUNCTION, false);
            if (aaa000(true)) {
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command disableInputAmount");
                    return;
                }
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa012();
                }
            }
        }
    }

    public synchronized void disconnectBT() {
        ccc061zz.aaa000("[BBDeviceController] [disconnectBT]", "", DebugLogType.FUNCTION, false);
        aaa040();
    }

    public synchronized void displayPrompt(Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [displayPrompt]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "");
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command displayPrompt");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa002(hashtable);
            }
        }
    }

    public synchronized void enableAccountSelection(Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [enableAccountSelection]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "");
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command enableAccountSelection");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa003(hashtable);
            }
        }
    }

    public void enableBluetooth() {
        synchronized (aaa024) {
            ccc061zz.aaa000("[BBDeviceController] [enableBluetooth]", "", DebugLogType.FUNCTION, false);
            if (aaa000(true)) {
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command enableBluetooth");
                    return;
                }
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa016();
                }
            }
        }
    }

    public void enableInputAmount(Hashtable<String, Object> hashtable) {
        synchronized (aaa024) {
            ccc061zz.aaa000("[BBDeviceController] [enableInputAmount]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
            if (hashtable == null) {
                aaa003(Error.INPUT_INVALID, "");
                return;
            }
            if (aaa000(true)) {
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command enableInputAmount");
                    return;
                }
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa004(hashtable);
                }
            }
        }
    }

    public void encryptDataWithSettings(Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [encryptDataWithSettings]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.MASK_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "invalid input");
            return;
        }
        synchronized (aaa024) {
            if (aaa000(true)) {
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command encryptDataWithSettings");
                    return;
                }
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa006(hashtable);
                }
            }
        }
    }

    public synchronized void enterStandbyMode() {
        ccc061zz.aaa000("[BBDeviceController] [enterStandbyMode]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (aaa000(aaa001zz.SERIAL)) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command enterStandbyMode");
                return;
            }
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command enterStandbyMode");
                return;
            }
            this.aaa019.aaa000(ccc039zz.aaa001zz.ENTER_STANDBY_MODE);
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa021();
            }
        }
    }

    public synchronized void findCAPKLocation(Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [findCAPKLocation]", " data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "invalid input");
            return;
        }
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            } else {
                this.aaa019.aaa000(ccc039zz.aaa001zz.FIND_CAPK_LOCATION);
                aaa001(hashtable);
            }
        }
    }

    public synchronized boolean getBarcode() {
        ccc061zz.aaa000("[BBDeviceController] [getBarcode]", "", DebugLogType.FUNCTION, false);
        if (aaa022() == aaa006zz.WisePOS_SEVEN) {
            aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command getBarcode");
            return false;
        }
        com.stripe.bbpos.bbdevice.aaa005zz aaa005zzVar = this.aaa011;
        if (aaa005zzVar == null) {
            return false;
        }
        return aaa005zzVar.aaa000();
    }

    public synchronized void getCAPKDetail(String str) {
        ccc061zz.aaa000("[BBDeviceController] [getCAPKDetail]", " location : " + str, DebugLogType.FUNCTION, false);
        if (str == null) {
            aaa003(Error.INPUT_INVALID, "invalid input");
            return;
        }
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            this.aaa019.aaa000(ccc039zz.aaa001zz.GET_CAPK_DETAIL);
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command getCAPKDetail");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa002(str);
            }
        }
    }

    public synchronized void getCAPKList() {
        ccc061zz.aaa000("[BBDeviceController] [getCAPKList]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            this.aaa019.aaa000(ccc039zz.aaa001zz.GET_CAPK_LIST);
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command getCAPKList");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa025();
            }
        }
    }

    public synchronized BluetoothDevice getConnectedBTDevice() {
        BluetoothDevice bluetoothDevice;
        if ((aaa012() == aaa001zz.BLUETOOTH_2 || aaa012() == aaa001zz.BLUETOOTH_4) && aaa013() == aaa002zz.CONNECTED) {
            try {
                bluetoothDevice = ccc055zz.aaa067;
            } catch (Exception unused) {
                bluetoothDevice = null;
            }
            ccc061zz.aaa000("[BBDeviceController] [getConnectedBTDevice]", " BluetoothDevice : " + bluetoothDevice, DebugLogType.FUNCTION, false);
        } else {
            bluetoothDevice = null;
            ccc061zz.aaa000("[BBDeviceController] [getConnectedBTDevice]", " BluetoothDevice : " + bluetoothDevice, DebugLogType.FUNCTION, false);
        }
        return bluetoothDevice;
    }

    public synchronized ConnectionMode getConnectionMode() {
        ConnectionMode connectionMode;
        connectionMode = (aaa000(aaa001zz.BLUETOOTH_2) || aaa000(aaa001zz.BLUETOOTH_4)) ? ConnectionMode.BLUETOOTH : aaa000(aaa001zz.NONE) ? ConnectionMode.NONE : aaa000(aaa001zz.SERIAL) ? ConnectionMode.SERIAL : aaa000(aaa001zz.USB) ? ConnectionMode.USB : aaa000(aaa001zz.TEST_CHANNEL) ? ConnectionMode.TEST_CHANNEL : ConnectionMode.NONE;
        ccc061zz.aaa002("[BBDeviceController] [getConnectionMode] result : " + connectionMode);
        return connectionMode;
    }

    public synchronized void getDeviceInfo() {
        ccc061zz.aaa000("[BBDeviceController] [getDeviceInfo]", "", DebugLogType.FUNCTION, false);
        if ((aaa013() != aaa002zz.CONNECTED || this.aaa020.aaa016() != ccc066zz.aaa001zz.BOOTLOADER) && !aaa000(true)) {
            return;
        }
        this.aaa019.aaa000(ccc039zz.aaa001zz.GET_DEVICE_INFO);
        aaa016();
    }

    public void getEmvCardData() {
        synchronized (aaa024) {
            ccc061zz.aaa000("[BBDeviceController] [getEmvCardData]", "", DebugLogType.FUNCTION, false);
            if (aaa000(true)) {
                aaa032 = false;
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command getEmvCardData");
                    return;
                }
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa030();
                }
            }
        }
    }

    public void getEmvCardNumber() {
        synchronized (aaa024) {
            ccc061zz.aaa000("[BBDeviceController] [getEmvCardNumber]", "", DebugLogType.FUNCTION, false);
            if (aaa000(true)) {
                aaa032 = true;
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command getEmvCardNumber");
                    return;
                }
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa031();
                }
            }
        }
    }

    public synchronized void getEmvReport(String str) {
        ccc061zz.aaa000("[BBDeviceController] [getEmvReport]", " applicationIndex : " + str, DebugLogType.FUNCTION, false);
        if (str == null) {
            aaa003(Error.INPUT_INVALID, "invalid input");
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command getEmvReport");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa003(str);
            }
        }
    }

    public void getEmvReportList() {
        synchronized (aaa024) {
            ccc061zz.aaa000("[BBDeviceController] [getEmvReportList]", "", DebugLogType.FUNCTION, false);
            if (aaa000(true)) {
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command getEmvReportList");
                    return;
                }
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa032();
                }
            }
        }
    }

    public synchronized String[] getUsbDeviceNames() {
        ccc061zz.aaa000("[BBDeviceController] [getUsbDeviceNames]", "", DebugLogType.FUNCTION, false);
        return (String[]) this.aaa009.aaa000().toArray(new String[0]);
    }

    public synchronized void initSession(String str) {
        ccc061zz.aaa000("[BBDeviceController] [initSession]", " vendorToken : ----------------", DebugLogType.FUNCTION, false);
        if (str == null) {
            aaa003(Error.INPUT_INVALID, "Vendor Token is null");
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command initSession");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa004(str);
            }
        }
    }

    public synchronized void internalFunction3(String str) {
        ccc061zz.aaa000("[BBDeviceController] [internalFunction3] command : " + str);
        String strAaa001 = ccc071zz.aaa001(str);
        if (!this.aaa014) {
            if (strAaa001.equals("")) {
                aaa003(Error.INPUT_INVALID, "");
                return;
            }
            if (!ccc071zz.aaa006(strAaa001)) {
                aaa003(Error.INPUT_INVALID, "Invalid HEX string");
                return;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(16);
            byte[] bArrAaa005 = ccc071zz.aaa005(strAaa001);
            byteArrayOutputStream.write(bArrAaa005, 0, bArrAaa005.length);
            if (!aaa000((ccc062zz) new ccc057zz((byte) -112, byteArrayOutputStream.toByteArray()))) {
                aaa003(Error.DEVICE_BUSY, "");
            }
            return;
        }
        List<ccc067zz> listAaa000 = ccc068zz.aaa000(strAaa001);
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(listAaa000, "DF2F");
        if (ccc067zzVarAaa000 != null && ccc071zz.aaa008(ccc067zzVarAaa000.aaa001)) {
            if (ccc067zzVarAaa000.aaa001.equalsIgnoreCase("D29A")) {
                aaa002(true);
                return;
            }
            if (ccc067zzVarAaa000.aaa001.equalsIgnoreCase("D29C")) {
                aaa001(true);
                return;
            }
            if (ccc067zzVarAaa000.aaa001.equalsIgnoreCase("DCE8")) {
                aaa000(ccc071zz.aaa000(ccc068zz.aaa000(listAaa000, "DF74")), ccc071zz.aaa000(ccc068zz.aaa000(listAaa000, "DF6F")));
                return;
            }
            if (ccc067zzVarAaa000.aaa001.equalsIgnoreCase("DCEA")) {
                aaa003(ccc071zz.aaa000(ccc068zz.aaa000(listAaa000, "DF74")));
                return;
            }
            if (ccc067zzVarAaa000.aaa001.equalsIgnoreCase("DCF6")) {
                aaa000(ccc071zz.aaa000(ccc068zz.aaa000(listAaa000, "DF74")), ccc071zz.aaa000(ccc068zz.aaa000(listAaa000, "DF71")), ccc071zz.aaa000(ccc068zz.aaa000(listAaa000, "DF875F")));
                return;
            }
            if (ccc067zzVarAaa000.aaa001.equalsIgnoreCase("DCEC")) {
                aaa001(ccc071zz.aaa000(ccc068zz.aaa000(listAaa000, "DF74")), ccc071zz.aaa000(ccc068zz.aaa000(listAaa000, "DF864A")));
                return;
            }
            if (ccc067zzVarAaa000.aaa001.equalsIgnoreCase("DC94")) {
                aaa002(ccc071zz.aaa000(ccc068zz.aaa000(listAaa000, "DF6F")), ccc071zz.aaa000(ccc068zz.aaa000(listAaa000, "DF71")));
                return;
            }
            if (ccc067zzVarAaa000.aaa001.equalsIgnoreCase("D408")) {
                String strAaa000 = ccc071zz.aaa000(ccc068zz.aaa000(listAaa000, "DF6C"));
                if (strAaa000.equalsIgnoreCase("")) {
                    com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                    if (aaa003zzVar != null) {
                        aaa003zzVar.aaa021(true);
                    }
                } else if (strAaa000.substring(0, 2).equalsIgnoreCase("02")) {
                    com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar2 = this.aaa010;
                    if (aaa003zzVar2 != null) {
                        aaa003zzVar2.aaa076();
                        this.aaa010.aaa023("00000008D0000000020100DFC1");
                    }
                } else {
                    int iAaa004 = ccc071zz.aaa004(strAaa000.substring(2));
                    boolean zEqualsIgnoreCase = strAaa000.substring(0, 2).equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE);
                    com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar3 = this.aaa010;
                    if (aaa003zzVar3 != null) {
                        aaa003zzVar3.aaa004(iAaa004);
                        if (zEqualsIgnoreCase) {
                            this.aaa010.aaa024();
                        } else {
                            this.aaa010.aaa021(true);
                        }
                    }
                }
                try {
                    String strAaa0002 = ccc071zz.aaa000((Object) "4409", "DF30");
                    if (strAaa0002 != null) {
                        aaa000(false, strAaa0002, aaa028);
                    }
                } catch (Throwable unused) {
                }
                return;
            }
            if (ccc067zzVarAaa000.aaa001.equalsIgnoreCase("D40A")) {
                String strAaa0003 = ccc071zz.aaa000(ccc068zz.aaa000(listAaa000, "DF73"));
                if (strAaa0003.equalsIgnoreCase("02")) {
                    this.aaa020.aaa000(ccc066zz.aaa002zz.COMPLETE_PASS_THROUGH);
                } else if (strAaa0003.equalsIgnoreCase(TlvMap.SET_BUZZER_ENABLED_VALUE)) {
                    this.aaa020.aaa000(ccc066zz.aaa002zz.NO);
                }
                try {
                    String strAaa0004 = ccc071zz.aaa000((Object) "440B", "DF30");
                    if (strAaa0004 != null) {
                        aaa017(false, strAaa0004);
                    }
                } catch (Throwable unused2) {
                }
                return;
            }
            if (ccc067zzVarAaa000.aaa001.equalsIgnoreCase("D40C")) {
                aaa028(ccc071zz.aaa000(ccc068zz.aaa000(listAaa000, "DF6C")));
                return;
            }
        }
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar4 = this.aaa010;
        if (aaa003zzVar4 != null) {
            aaa003zzVar4.aaa028(strAaa001);
        }
    }

    public void internalFunction4() {
        synchronized (aaa024) {
            ccc061zz.aaa000("[BBDeviceController] [internalFunction4]");
            if ((aaa013() != aaa002zz.CONNECTED || this.aaa020.aaa016() != ccc066zz.aaa001zz.BOOTLOADER) && !aaa000(false)) {
                aaa000(true, "Connection not established", aaa026);
                return;
            }
            if (this.aaa014) {
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa028();
                }
            } else {
                this.aaa006.aaa000();
                aaa033 = true;
                aaa000((ccc062zz) new ccc057zz((byte) 8, new byte[]{16}));
            }
        }
    }

    public synchronized void internalFunction5() {
        ccc061zz.aaa000("[BBDeviceController] [internalFunction5]");
        if (aaa022() != aaa006zz.WisePOS_SEVEN || aaa012() != aaa001zz.SERIAL || !this.aaa014) {
            aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command internalFunction5");
            return;
        }
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa001(true);
        }
    }

    public synchronized void internalFunction6(String str) {
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar;
        ccc061zz.aaa000("[BBDeviceController] [internalFunction6] command : " + str);
        if (str == null) {
            aaa003(Error.INPUT_INVALID, "");
            return;
        }
        if (aaa012() == aaa001zz.SERIAL && aaa022() == aaa006zz.WisePOSPlus && (aaa003zzVar = this.aaa010) != null) {
            aaa003zzVar.aaa005(str);
        }
    }

    public synchronized int internalFunction7() {
        ccc061zz.aaa000("[BBDeviceController] [internalFunction7]");
        if (aaa012() == aaa001zz.SERIAL && aaa022() == aaa006zz.WisePOSPlus) {
            if (this.aaa020.aaa016() == ccc066zz.aaa001zz.APPLICATION) {
                return 0;
            }
            if (this.aaa020.aaa016() == ccc066zz.aaa001zz.BOOTLOADER) {
                return 1;
            }
            if (this.aaa020.aaa016() == ccc066zz.aaa001zz.RECOVERY) {
                return 2;
            }
        }
        return -1;
    }

    public synchronized void isDeviceHere() {
        ccc061zz.aaa000("[BBDeviceController] [isDeviceHere]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            this.aaa019.aaa000(ccc039zz.aaa001zz.IS_DEVICE_HERE);
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command isDeviceHere");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa038();
            }
        }
    }

    public synchronized boolean isSessionInitialized() {
        ccc061zz.aaa000("[BBDeviceController] [isSessionInitialized]", "", DebugLogType.FUNCTION, false);
        if (!this.aaa014) {
            aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command isSessionInitialized");
            return false;
        }
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar == null) {
            return false;
        }
        return aaa003zzVar.aaa040();
    }

    public synchronized void nfcDataExchange(Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [nfcDataExchange]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.MASK_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "");
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command nfcDataExchange");
                return;
            }
            if (this.aaa020.aaa025() != ccc066zz.aaa002zz.SEMI_PASS_THROUGH) {
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa008(hashtable);
                }
                return;
            }
            Object obj = hashtable.get("mifareCardCommandData");
            if (obj == null) {
                obj = hashtable.get("mifareDesFireCardCommandData");
            }
            if (obj == null) {
                aaa003(Error.INPUT_INVALID, "");
            } else {
                if (!(obj instanceof String)) {
                    aaa003(Error.INPUT_INVALID, "");
                    return;
                }
                String str = (String) obj;
                if (!ccc071zz.aaa006(str)) {
                    aaa003(Error.INPUT_INVALID, "");
                } else {
                    com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar2 = this.aaa010;
                    if (aaa003zzVar2 != null) {
                        aaa003zzVar2.aaa005("0001", str);
                    }
                }
            }
        }
    }

    public synchronized void powerDown() {
        ccc061zz.aaa000("[BBDeviceController] [powerDown]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (aaa000(aaa001zz.SERIAL)) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command powerDown");
                return;
            }
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command powerDown");
                return;
            }
            this.aaa019.aaa000(ccc039zz.aaa001zz.POWER_DOWN);
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa071();
            }
        }
    }

    public synchronized void powerOffIcc() {
        ccc061zz.aaa000("[BBDeviceController] [powerOffIcc]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command powerOffIcc");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa072();
            }
        }
    }

    public synchronized void powerOnIcc(Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [powerOnIcc]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            hashtable = new Hashtable<>();
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command powerOnIcc");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa021(hashtable);
            }
        }
    }

    public synchronized void readAID(String str) {
        ccc061zz.aaa000("[BBDeviceController] [readAID]", " appIndex : " + str, DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            if (!ccc071zz.aaa006(str)) {
                aaa003(Error.INPUT_INVALID, "appIndex is not HEX string");
                return;
            }
            this.aaa019.aaa000(ccc039zz.aaa001zz.READ_AID, 0, str);
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command readAID");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa024(str);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x00b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01d9 A[Catch: all -> 0x02b2, TryCatch #2 {, blocks: (B:4:0x0005, B:8:0x0029, B:10:0x0031, B:13:0x0051, B:15:0x0069, B:16:0x0071, B:19:0x007b, B:21:0x0083, B:23:0x008b, B:27:0x00a8, B:29:0x00b0, B:30:0x00b8, B:32:0x00c0, B:33:0x00d3, B:35:0x00db, B:36:0x00ee, B:38:0x00f6, B:40:0x0100, B:42:0x010a, B:44:0x0112, B:46:0x011a, B:51:0x0137, B:48:0x012e, B:54:0x0140, B:56:0x0148, B:57:0x015b, B:59:0x0163, B:60:0x0176, B:62:0x017e, B:63:0x0191, B:65:0x0199, B:66:0x01ac, B:68:0x01b4, B:72:0x01d1, B:74:0x01d9, B:75:0x01ec, B:77:0x01f4, B:78:0x0207, B:80:0x020f, B:81:0x0222, B:83:0x022a, B:84:0x023d, B:86:0x0245, B:87:0x0258, B:89:0x0260, B:90:0x0273, B:92:0x027b, B:93:0x028e, B:95:0x0296, B:96:0x02a9, B:98:0x02ad, B:69:0x01c8, B:24:0x009f), top: B:108:0x0005, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01f4 A[Catch: all -> 0x02b2, TryCatch #2 {, blocks: (B:4:0x0005, B:8:0x0029, B:10:0x0031, B:13:0x0051, B:15:0x0069, B:16:0x0071, B:19:0x007b, B:21:0x0083, B:23:0x008b, B:27:0x00a8, B:29:0x00b0, B:30:0x00b8, B:32:0x00c0, B:33:0x00d3, B:35:0x00db, B:36:0x00ee, B:38:0x00f6, B:40:0x0100, B:42:0x010a, B:44:0x0112, B:46:0x011a, B:51:0x0137, B:48:0x012e, B:54:0x0140, B:56:0x0148, B:57:0x015b, B:59:0x0163, B:60:0x0176, B:62:0x017e, B:63:0x0191, B:65:0x0199, B:66:0x01ac, B:68:0x01b4, B:72:0x01d1, B:74:0x01d9, B:75:0x01ec, B:77:0x01f4, B:78:0x0207, B:80:0x020f, B:81:0x0222, B:83:0x022a, B:84:0x023d, B:86:0x0245, B:87:0x0258, B:89:0x0260, B:90:0x0273, B:92:0x027b, B:93:0x028e, B:95:0x0296, B:96:0x02a9, B:98:0x02ad, B:69:0x01c8, B:24:0x009f), top: B:108:0x0005, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x020f A[Catch: all -> 0x02b2, TryCatch #2 {, blocks: (B:4:0x0005, B:8:0x0029, B:10:0x0031, B:13:0x0051, B:15:0x0069, B:16:0x0071, B:19:0x007b, B:21:0x0083, B:23:0x008b, B:27:0x00a8, B:29:0x00b0, B:30:0x00b8, B:32:0x00c0, B:33:0x00d3, B:35:0x00db, B:36:0x00ee, B:38:0x00f6, B:40:0x0100, B:42:0x010a, B:44:0x0112, B:46:0x011a, B:51:0x0137, B:48:0x012e, B:54:0x0140, B:56:0x0148, B:57:0x015b, B:59:0x0163, B:60:0x0176, B:62:0x017e, B:63:0x0191, B:65:0x0199, B:66:0x01ac, B:68:0x01b4, B:72:0x01d1, B:74:0x01d9, B:75:0x01ec, B:77:0x01f4, B:78:0x0207, B:80:0x020f, B:81:0x0222, B:83:0x022a, B:84:0x023d, B:86:0x0245, B:87:0x0258, B:89:0x0260, B:90:0x0273, B:92:0x027b, B:93:0x028e, B:95:0x0296, B:96:0x02a9, B:98:0x02ad, B:69:0x01c8, B:24:0x009f), top: B:108:0x0005, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x022a A[Catch: all -> 0x02b2, TryCatch #2 {, blocks: (B:4:0x0005, B:8:0x0029, B:10:0x0031, B:13:0x0051, B:15:0x0069, B:16:0x0071, B:19:0x007b, B:21:0x0083, B:23:0x008b, B:27:0x00a8, B:29:0x00b0, B:30:0x00b8, B:32:0x00c0, B:33:0x00d3, B:35:0x00db, B:36:0x00ee, B:38:0x00f6, B:40:0x0100, B:42:0x010a, B:44:0x0112, B:46:0x011a, B:51:0x0137, B:48:0x012e, B:54:0x0140, B:56:0x0148, B:57:0x015b, B:59:0x0163, B:60:0x0176, B:62:0x017e, B:63:0x0191, B:65:0x0199, B:66:0x01ac, B:68:0x01b4, B:72:0x01d1, B:74:0x01d9, B:75:0x01ec, B:77:0x01f4, B:78:0x0207, B:80:0x020f, B:81:0x0222, B:83:0x022a, B:84:0x023d, B:86:0x0245, B:87:0x0258, B:89:0x0260, B:90:0x0273, B:92:0x027b, B:93:0x028e, B:95:0x0296, B:96:0x02a9, B:98:0x02ad, B:69:0x01c8, B:24:0x009f), top: B:108:0x0005, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0245 A[Catch: all -> 0x02b2, TryCatch #2 {, blocks: (B:4:0x0005, B:8:0x0029, B:10:0x0031, B:13:0x0051, B:15:0x0069, B:16:0x0071, B:19:0x007b, B:21:0x0083, B:23:0x008b, B:27:0x00a8, B:29:0x00b0, B:30:0x00b8, B:32:0x00c0, B:33:0x00d3, B:35:0x00db, B:36:0x00ee, B:38:0x00f6, B:40:0x0100, B:42:0x010a, B:44:0x0112, B:46:0x011a, B:51:0x0137, B:48:0x012e, B:54:0x0140, B:56:0x0148, B:57:0x015b, B:59:0x0163, B:60:0x0176, B:62:0x017e, B:63:0x0191, B:65:0x0199, B:66:0x01ac, B:68:0x01b4, B:72:0x01d1, B:74:0x01d9, B:75:0x01ec, B:77:0x01f4, B:78:0x0207, B:80:0x020f, B:81:0x0222, B:83:0x022a, B:84:0x023d, B:86:0x0245, B:87:0x0258, B:89:0x0260, B:90:0x0273, B:92:0x027b, B:93:0x028e, B:95:0x0296, B:96:0x02a9, B:98:0x02ad, B:69:0x01c8, B:24:0x009f), top: B:108:0x0005, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0260 A[Catch: all -> 0x02b2, TryCatch #2 {, blocks: (B:4:0x0005, B:8:0x0029, B:10:0x0031, B:13:0x0051, B:15:0x0069, B:16:0x0071, B:19:0x007b, B:21:0x0083, B:23:0x008b, B:27:0x00a8, B:29:0x00b0, B:30:0x00b8, B:32:0x00c0, B:33:0x00d3, B:35:0x00db, B:36:0x00ee, B:38:0x00f6, B:40:0x0100, B:42:0x010a, B:44:0x0112, B:46:0x011a, B:51:0x0137, B:48:0x012e, B:54:0x0140, B:56:0x0148, B:57:0x015b, B:59:0x0163, B:60:0x0176, B:62:0x017e, B:63:0x0191, B:65:0x0199, B:66:0x01ac, B:68:0x01b4, B:72:0x01d1, B:74:0x01d9, B:75:0x01ec, B:77:0x01f4, B:78:0x0207, B:80:0x020f, B:81:0x0222, B:83:0x022a, B:84:0x023d, B:86:0x0245, B:87:0x0258, B:89:0x0260, B:90:0x0273, B:92:0x027b, B:93:0x028e, B:95:0x0296, B:96:0x02a9, B:98:0x02ad, B:69:0x01c8, B:24:0x009f), top: B:108:0x0005, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x027b A[Catch: all -> 0x02b2, TryCatch #2 {, blocks: (B:4:0x0005, B:8:0x0029, B:10:0x0031, B:13:0x0051, B:15:0x0069, B:16:0x0071, B:19:0x007b, B:21:0x0083, B:23:0x008b, B:27:0x00a8, B:29:0x00b0, B:30:0x00b8, B:32:0x00c0, B:33:0x00d3, B:35:0x00db, B:36:0x00ee, B:38:0x00f6, B:40:0x0100, B:42:0x010a, B:44:0x0112, B:46:0x011a, B:51:0x0137, B:48:0x012e, B:54:0x0140, B:56:0x0148, B:57:0x015b, B:59:0x0163, B:60:0x0176, B:62:0x017e, B:63:0x0191, B:65:0x0199, B:66:0x01ac, B:68:0x01b4, B:72:0x01d1, B:74:0x01d9, B:75:0x01ec, B:77:0x01f4, B:78:0x0207, B:80:0x020f, B:81:0x0222, B:83:0x022a, B:84:0x023d, B:86:0x0245, B:87:0x0258, B:89:0x0260, B:90:0x0273, B:92:0x027b, B:93:0x028e, B:95:0x0296, B:96:0x02a9, B:98:0x02ad, B:69:0x01c8, B:24:0x009f), top: B:108:0x0005, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0296 A[Catch: all -> 0x02b2, TryCatch #2 {, blocks: (B:4:0x0005, B:8:0x0029, B:10:0x0031, B:13:0x0051, B:15:0x0069, B:16:0x0071, B:19:0x007b, B:21:0x0083, B:23:0x008b, B:27:0x00a8, B:29:0x00b0, B:30:0x00b8, B:32:0x00c0, B:33:0x00d3, B:35:0x00db, B:36:0x00ee, B:38:0x00f6, B:40:0x0100, B:42:0x010a, B:44:0x0112, B:46:0x011a, B:51:0x0137, B:48:0x012e, B:54:0x0140, B:56:0x0148, B:57:0x015b, B:59:0x0163, B:60:0x0176, B:62:0x017e, B:63:0x0191, B:65:0x0199, B:66:0x01ac, B:68:0x01b4, B:72:0x01d1, B:74:0x01d9, B:75:0x01ec, B:77:0x01f4, B:78:0x0207, B:80:0x020f, B:81:0x0222, B:83:0x022a, B:84:0x023d, B:86:0x0245, B:87:0x0258, B:89:0x0260, B:90:0x0273, B:92:0x027b, B:93:0x028e, B:95:0x0296, B:96:0x02a9, B:98:0x02ad, B:69:0x01c8, B:24:0x009f), top: B:108:0x0005, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02ad A[Catch: all -> 0x02b2, TRY_LEAVE, TryCatch #2 {, blocks: (B:4:0x0005, B:8:0x0029, B:10:0x0031, B:13:0x0051, B:15:0x0069, B:16:0x0071, B:19:0x007b, B:21:0x0083, B:23:0x008b, B:27:0x00a8, B:29:0x00b0, B:30:0x00b8, B:32:0x00c0, B:33:0x00d3, B:35:0x00db, B:36:0x00ee, B:38:0x00f6, B:40:0x0100, B:42:0x010a, B:44:0x0112, B:46:0x011a, B:51:0x0137, B:48:0x012e, B:54:0x0140, B:56:0x0148, B:57:0x015b, B:59:0x0163, B:60:0x0176, B:62:0x017e, B:63:0x0191, B:65:0x0199, B:66:0x01ac, B:68:0x01b4, B:72:0x01d1, B:74:0x01d9, B:75:0x01ec, B:77:0x01f4, B:78:0x0207, B:80:0x020f, B:81:0x0222, B:83:0x022a, B:84:0x023d, B:86:0x0245, B:87:0x0258, B:89:0x0260, B:90:0x0273, B:92:0x027b, B:93:0x028e, B:95:0x0296, B:96:0x02a9, B:98:0x02ad, B:69:0x01c8, B:24:0x009f), top: B:108:0x0005, inners: #0, #1, #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void readDisplaySettings(java.util.Hashtable<java.lang.String, java.lang.Object> r6) {
        /*
            Method dump skipped, instruction units count: 693
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.BBDeviceController.readDisplaySettings(java.util.Hashtable):void");
    }

    public synchronized void readDisplayString(String str) {
        ccc061zz.aaa000("[BBDeviceController] [readDisplayString]", " dataEnum : " + str, DebugLogType.FUNCTION, false);
        if (str == null) {
            aaa003(Error.INPUT_INVALID, "invalid input");
            return;
        }
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command readDisplayString");
                return;
            }
            this.aaa019.aaa000(ccc039zz.aaa001zz.READ_DISPLAY_STRING);
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa025(str);
            }
        }
    }

    public synchronized void readTerminalSetting(String str) {
        ccc061zz.aaa000("[BBDeviceController] [readTerminalSetting]", " dol : " + str, DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            if (str.equalsIgnoreCase("DF874D")) {
                if (this.aaa014) {
                    aaa002(false);
                    return;
                } else {
                    aaa003(Error.INPUT_INVALID, "Tag " + str + " not allowed to read");
                    return;
                }
            }
            this.aaa019.aaa000(ccc039zz.aaa001zz.READ_TERMINAL_SETTING, 0, str);
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command readTerminalSetting");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa027(str);
            }
        }
    }

    public void releaseBBDeviceController() {
        synchronized (aaa024) {
            ccc061zz.aaa000("[BBDeviceController] [releaseBBDeviceController]", "", DebugLogType.FUNCTION, false);
            if (this.aaa010 != null) {
                aaa006();
            }
            aaa001(aaa001zz.NONE);
        }
    }

    public synchronized void removeCAPK(Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [removeCAPK]", " data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "invalid input");
            return;
        }
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            } else {
                this.aaa019.aaa000(ccc039zz.aaa001zz.REMOVE_CAPK, 0);
                aaa001(hashtable);
            }
        }
    }

    public synchronized void resetDevice() {
        ccc061zz.aaa000("[BBDeviceController] [resetDevice]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (aaa000(aaa001zz.SERIAL) && (aaa000(aaa006zz.WisePOS_SEVEN) || aaa000(aaa006zz.WisePOSPlus) || aaa000(aaa006zz.WisePOS1) || aaa000(aaa006zz.WisePOS1_1) || aaa000(aaa006zz.WisePOS2))) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command resetDevice");
                return;
            }
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command resetDevice");
                return;
            }
            this.aaa019.aaa000(ccc039zz.aaa001zz.RESET_DEVICE);
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa075();
            }
        }
    }

    public synchronized void resetSession() {
        ccc061zz.aaa000("[BBDeviceController] [resetSession]", "", DebugLogType.FUNCTION, false);
        if (aaa018() == aaa000zz.DEVICE_BUSY) {
            aaa004(Error.DEVICE_BUSY, "Device busy with OTA operations.");
        } else {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command resetSession");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa076();
            }
        }
    }

    public synchronized void resetWatchdogTimer() {
        ccc061zz.aaa000("[BBDeviceController] [resetWatchdogTimer]", "", DebugLogType.FUNCTION, false);
        if (aaa000(false)) {
            if (!this.aaa020.aaa014().aaa009()) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version or device setting does not support this command resetWatchdogTimer");
                return;
            }
            if (aaa012() == aaa001zz.BLUETOOTH_2) {
                aaa003(Error.CMD_NOT_AVAILABLE, "This command does not available in Bluetooth channel");
                return;
            }
            if (aaa012() == aaa001zz.BLUETOOTH_4) {
                aaa003(Error.CMD_NOT_AVAILABLE, "This command does not available in Bluetooth channel");
                return;
            }
            if (aaa012() == aaa001zz.SERIAL) {
                aaa003(Error.CMD_NOT_AVAILABLE, "This command does not available in Serial channel");
            } else {
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command resetWatchdogTimer");
                    return;
                }
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa079();
                }
            }
        }
    }

    public synchronized void selectAccountType(int i) {
        ccc061zz.aaa000("[BBDeviceController] [selectAccountType]", " index : " + i, DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command selectAccountType");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa005(i);
            }
        }
    }

    public synchronized void selectApplication(int i) {
        ccc061zz.aaa000("[BBDeviceController] [selectApplication]", " index : " + i, DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command selectApplication");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa006(i);
            }
        }
    }

    public void sendApdu(Hashtable<String, Object> hashtable) {
        String strAaa000;
        ccc067zz ccc067zzVarAaa000;
        String str;
        synchronized (aaa024) {
            ccc061zz.aaa000("[BBDeviceController] [sendApdu]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.MASK_ALL_VALUES), DebugLogType.FUNCTION, false);
            if (hashtable == null) {
                aaa003(Error.INPUT_INVALID, "");
                return;
            }
            if (aaa000(true)) {
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command sendApdu");
                    return;
                }
                if (this.aaa020.aaa025() != ccc066zz.aaa002zz.SEMI_PASS_THROUGH) {
                    com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                    if (aaa003zzVar != null) {
                        aaa003zzVar.aaa022(hashtable);
                    }
                    return;
                }
                if (hashtable.containsKey("apdu") && (hashtable.get("apdu") instanceof String)) {
                    String str2 = (String) hashtable.get("apdu");
                    String str3 = "0001";
                    Object obj = hashtable.get("samCardSlotNumber");
                    if (obj != null && (strAaa000 = ccc034zz.aaa000(obj, "DF8354")) != null && (ccc067zzVarAaa000 = ccc068zz.aaa000(ccc068zz.aaa000(strAaa000), "DF8354")) != null) {
                        if (ccc067zzVarAaa000.aaa001.equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE)) {
                            str = "0005";
                        } else if (ccc067zzVarAaa000.aaa001.equalsIgnoreCase("02")) {
                            str = "0007";
                        } else if (ccc067zzVarAaa000.aaa001.equalsIgnoreCase("03")) {
                            str = "0009";
                        }
                        str3 = str;
                    }
                    com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar2 = this.aaa010;
                    if (aaa003zzVar2 != null) {
                        aaa003zzVar2.aaa005(str3, str2);
                    }
                } else {
                    aaa003(Error.INPUT_INVALID, "");
                }
            }
        }
    }

    public synchronized void sendFinalConfirmResult(boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [sendFinalConfirmResult]", " isConfirmed : " + z, DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command sendFinalConfirmResult");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa022(z);
            }
        }
    }

    public synchronized void sendOnlineProcessResult(String str) {
        ccc061zz.aaa000("[BBDeviceController] [sendOnlineProcessResult]", " tlv : " + str, DebugLogType.FUNCTION, false);
        if (str == null) {
            str = "";
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command sendOnlineProcessResult");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa029(str);
            }
        }
    }

    public synchronized void sendPinEntryResult(String str) {
        ccc061zz.aaa000("[BBDeviceController] [sendPinEntryResult]", " pin : " + str, DebugLogType.FUNCTION, false);
        if (str == null) {
            aaa003(Error.INPUT_INVALID, "");
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa003();
            }
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command sendPinEntryResult");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar2 = this.aaa010;
            if (aaa003zzVar2 != null) {
                aaa003zzVar2.aaa030(str);
            }
        }
    }

    public synchronized void sendPrintData(byte[] bArr) {
        ccc061zz.aaa000("[BBDeviceController] [sendPrintData]", " data : " + ccc071zz.aaa000(bArr), DebugLogType.FUNCTION, false);
        if (bArr == null) {
            aaa003(Error.INPUT_INVALID, "");
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command sendPrintData");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa000(bArr);
            }
        }
    }

    public synchronized void sendTerminalTime(String str) {
        ccc061zz.aaa000("[BBDeviceController] [sendTerminalTime]", " terminalTime : " + str, DebugLogType.FUNCTION, false);
        if (str == null) {
            aaa003(Error.INPUT_INVALID, "");
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command sendTerminalTime");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa031(str);
            }
        }
    }

    public synchronized void sendVirtuCryptPEDIResponse(Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [sendVirtuCryptPEDIResponse]", "data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            String str = hashtable.get("CC");
            String str2 = hashtable.get("CD");
            String strAaa001 = ccc071zz.aaa001(hashtable.get("RD"));
            if (!ccc071zz.aaa006(str)) {
                aaa005(Error.INPUT_INVALID, "CC is not HEX string");
                return;
            }
            if (!ccc071zz.aaa006(str2)) {
                aaa005(Error.INPUT_INVALID, "CD is not HEX string");
                return;
            }
            if (!ccc071zz.aaa006(strAaa001)) {
                aaa005(Error.INPUT_INVALID, "RD is not HEX string");
                return;
            }
            String str3 = hashtable.get("AN");
            if (str3 == null || !str3.toUpperCase(Locale.ROOT).equalsIgnoreCase("Y")) {
                this.aaa019.aaa001(ccc039zz.aaa001zz.SEND_VIRTU_CRYPT_PEDI_RESPONSE, 3, hashtable);
                Hashtable<String, String> hashtable2 = new Hashtable<>();
                hashtable2.put("errorMessage", "Virtu Crypt PEDI response is not \"Y\" (error code - 8020)");
                aaa016(false, hashtable2);
                return;
            }
            if (this.aaa014) {
                this.aaa020.aaa024(strAaa001);
                this.aaa019.aaa001(ccc039zz.aaa001zz.SEND_VIRTU_CRYPT_PEDI_RESPONSE, 0, hashtable);
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa019();
                }
            } else {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command sendVirtuCryptPEDIResponse");
            }
        }
    }

    public synchronized void sendVirtuCryptPEDKResponse(Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [sendVirtuCryptPEDKResponse]", "data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            String str = hashtable.get("KA");
            String str2 = hashtable.get("KB");
            String str3 = hashtable.get("RD");
            if (!ccc071zz.aaa006(str)) {
                aaa005(Error.INPUT_INVALID, "KA is not HEX string");
                return;
            }
            if (!ccc071zz.aaa006(str2)) {
                aaa005(Error.INPUT_INVALID, "KB is not HEX string");
                return;
            }
            if (!ccc071zz.aaa006(str3)) {
                aaa005(Error.INPUT_INVALID, "RD is not HEX string");
                return;
            }
            if (!ccc071zz.aaa007(hashtable.get("KN"))) {
                aaa005(Error.INPUT_INVALID, "KN invalid");
                return;
            }
            if (!ccc071zz.aaa007(hashtable.get("CE"))) {
                aaa005(Error.INPUT_INVALID, "CE invalid");
                return;
            }
            String str4 = hashtable.get("AN");
            if (str4 != null) {
                Locale locale = Locale.ROOT;
                if (str4.toUpperCase(locale).equalsIgnoreCase("Y") || str4.toUpperCase(locale).equalsIgnoreCase("N")) {
                    if (this.aaa014) {
                        this.aaa019.aaa001(ccc039zz.aaa001zz.SEND_VIRTU_CRYPT_PEDK_RESPONSE, 0, hashtable);
                        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                        if (aaa003zzVar != null) {
                            aaa003zzVar.aaa019();
                        }
                    } else {
                        aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command sendVirtuCryptPEDKResponse");
                    }
                    return;
                }
            }
            aaa005(Error.INPUT_INVALID, "AN invalid");
        }
    }

    public boolean setAmount(Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [setAmount]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "");
            return false;
        }
        synchronized (aaa024) {
            if (!aaa000(true)) {
                return false;
            }
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command setAmount");
                return false;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar == null) {
                return false;
            }
            return aaa003zzVar.aaa024(hashtable);
        }
    }

    public synchronized void setAmountConfirmResult(boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [setAmountConfirmResult]", " isConfirmed : " + z, DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command setAmountConfirmResult");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa023(z);
            }
        }
    }

    public synchronized void setPinPadButtons(Hashtable<String, Rect> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [setPinPadButtons]", " pinButton : " + hashtable, DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "input is null");
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command setPinPadButtons");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa025(hashtable);
            }
        }
    }

    public synchronized void setPinPadOrientation(PinEntryOrientation pinEntryOrientation) {
        ccc061zz.aaa000("[BBDeviceController] [setPinPadOrientation]", " pinEntryOrientation : " + pinEntryOrientation, DebugLogType.FUNCTION, false);
        if (pinEntryOrientation == null) {
            aaa003(Error.INPUT_INVALID, "Input is null");
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command setPinPadOrientation");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa000(pinEntryOrientation);
            }
        }
    }

    public void setTestChannelImpl(TestChannelInterface testChannelInterface) {
        this.aaa020.aaa000(testChannelInterface);
    }

    public synchronized void startBTScan(String[] strArr, int i) {
        ccc061zz.aaa000("[BBDeviceController] [startBTScan]", " deviceNamePrefix : " + Arrays.toString(strArr) + ", scanTimeout : " + i, DebugLogType.FUNCTION, false);
        if (!aaa002()) {
            aaa003(Error.BLUETOOTH_PERMISSION_DENIED, "android.permission.BLUETOOTH and android.permission.BLUETOOTH_ADMIN are required");
            return;
        }
        if (!aaa003()) {
            aaa003(Error.BLUETOOTH_LOCATION_PERMISSION_DENIED, "android.permission.ACCESS_COARSE_LOCATION or android.permission.ACCESS_FINE_LOCATION is required");
            return;
        }
        if (!aaa001()) {
            aaa004(Error.FAIL_TO_START_BT, "Bluetooth is disabled. Please turn on Bluetooth");
            return;
        }
        aaa001zz aaa001zzVar = this.aaa015;
        if (aaa001zzVar == aaa001zz.NONE) {
            if (i < 0) {
                i = 0;
            }
            aaa000(strArr, i);
            if (this.aaa000.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
                aaa001(strArr, i);
            }
        } else if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
            if (aaa013() == aaa002zz.CONNECTING) {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start scan while bluetooth 2.0 is connecting");
            } else {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start scan while bluetooth 2.0 is connected");
            }
        } else if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
            if (aaa013() == aaa002zz.CONNECTING) {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start scan while bluetooth low energy is connecting");
            } else {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start scan while bluetooth low energy is connected");
            }
        } else if (aaa001zzVar == aaa001zz.SERIAL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start scan while serial is connected");
        } else if (aaa001zzVar == aaa001zz.USB) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start scan while USB is connected");
        } else if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start scan while test channel is connected");
        }
    }

    public synchronized void startBarcodeReader() {
        ccc061zz.aaa000("[BBDeviceController] [startBarcodeReader]", "", DebugLogType.FUNCTION, false);
        if (aaa022() == aaa006zz.WisePOS_SEVEN) {
            aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command startBarcodeReader");
            return;
        }
        com.stripe.bbpos.bbdevice.aaa005zz aaa005zzVar = this.aaa011;
        if (aaa005zzVar != null) {
            aaa005zzVar.aaa002();
        }
    }

    public synchronized void startEmv(Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [startEmv]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (aaa000("Payment function is disabled remotely")) {
                aaa021(hashtable);
            }
        }
    }

    public synchronized void startHardwareFunctionalTest(int i) {
        ccc061zz.aaa000("[BBDeviceController] [startHardwareFunctionalTest]", " itemIndex : " + i, DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            } else {
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command startHardwareFunctionalTest");
                    return;
                }
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa007(i);
                }
            }
        }
    }

    public synchronized void startNfcDetection(Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [startNfcDetection]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "");
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command startNfcDetection");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa027(hashtable);
            }
        }
    }

    public synchronized void startPinEntry(Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [startPinEntry]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.MASK_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "");
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command startPinEntry");
                return;
            }
            if (hashtable.containsKey(BbposDeviceControllerImpl.IS_ACCESSIBLE_PIN_PAD_PARAM_NAME)) {
                this.aaa020.aaa000(hashtable.get(BbposDeviceControllerImpl.IS_ACCESSIBLE_PIN_PAD_PARAM_NAME));
            } else {
                this.aaa020.aaa000((Object) 0);
            }
            if (hashtable.containsKey("pinPadTouchEventTimeout")) {
                this.aaa020.aaa001(hashtable.get("pinPadTouchEventTimeout"));
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa028(hashtable);
            }
        }
    }

    public synchronized void startPrint(int i, int i2) {
        ccc061zz.aaa000("[BBDeviceController] [startPrint]", " numOfReceipt : " + i + ", reprintOrPrintNextTimeout : " + i2, DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command startPrint");
                return;
            }
            Hashtable<String, Object> hashtable = new Hashtable<>();
            hashtable.put("numOfReceipt", Integer.valueOf(i));
            hashtable.put("reprintTimeout", Integer.valueOf(i2));
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa029(hashtable);
            }
        }
    }

    public synchronized void startSerial() {
        ccc061zz.aaa000("[BBDeviceController] [startSerial] (" + Build.MANUFACTURER + "-" + Build.MODEL + "-" + Build.VERSION.RELEASE + "-" + ccc071zz.aaa001("persist.bbpos.product_id", "") + ", API version : " + aaa011() + ", " + ccc071zz.aaa001(this.aaa000) + ")", "", DebugLogType.FUNCTION, false);
        if (this.aaa020.aaa036() != ccc066zz.aaa004zz.NOT) {
            aaa004(Error.DEVICE_BUSY, "Device busy with command/callback: disableFactoryMode *** (error code - 7018)");
        } else {
            aaa035(false);
        }
    }

    public synchronized void startTestChannel() {
        ccc061zz.aaa000("[BBDeviceController] [startTestChannel] API version : " + aaa011() + ", " + ccc071zz.aaa001(this.aaa000) + ")", "", DebugLogType.FUNCTION, false);
        if (this.aaa020.aaa036() != ccc066zz.aaa004zz.NOT) {
            aaa004(Error.DEVICE_BUSY, "Device busy with command/callback: disableFactoryMode *** (error code - 7018)");
            return;
        }
        if (this.aaa020.aaa040() == null) {
            aaa004(Error.FAIL_TO_START_TEST_CHANNEL, "No TestChannelInterface instance (error code - 3200)");
        } else if (this.aaa020.aaa040().getInputStream() == null) {
            aaa004(Error.FAIL_TO_START_TEST_CHANNEL, "Test channel not connected (error code - 3201)");
        } else {
            bbb014();
        }
    }

    public synchronized void startUsb() {
        ccc061zz.aaa000("[BBDeviceController] [startUsb] (" + Build.MANUFACTURER + "-" + Build.MODEL + "-" + Build.VERSION.RELEASE + ", API version : " + aaa011() + ", " + ccc071zz.aaa001(this.aaa000) + ")", "", DebugLogType.FUNCTION, false);
        aaa030("");
    }

    public synchronized void startUsbWithDeviceName(String str) {
        ccc061zz.aaa000("[BBDeviceController] [startUsb]", " deviceName : " + str + "(" + Build.MANUFACTURER + "-" + Build.MODEL + "-" + Build.VERSION.RELEASE + ", API version : " + aaa011() + ", " + ccc071zz.aaa001(this.aaa000) + ")", DebugLogType.FUNCTION, false);
        if (str == null) {
            str = "";
        }
        aaa030(str);
    }

    public synchronized void stopBTScan() {
        ccc061zz.aaa000("[BBDeviceController] [stopBTScan]", "", DebugLogType.FUNCTION, false);
        if (!aaa002()) {
            aaa003(Error.BLUETOOTH_PERMISSION_DENIED, "android.permission.BLUETOOTH and android.permission.BLUETOOTH_ADMIN are required");
            return;
        }
        if (!aaa003()) {
            aaa003(Error.BLUETOOTH_LOCATION_PERMISSION_DENIED, "android.permission.ACCESS_COARSE_LOCATION or android.permission.ACCESS_FINE_LOCATION is required");
            return;
        }
        if (!aaa001()) {
            aaa004(Error.FAIL_TO_START_BT, "Bluetooth is disabled. Please turn on Bluetooth");
            return;
        }
        aaa001zz aaa001zzVar = this.aaa015;
        if (aaa001zzVar == aaa001zz.NONE) {
            bbb016();
            if (this.aaa000.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
                bbb017();
            }
        } else if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop scan because scan is not started. Current connection mode is bluetooth 2.0");
        } else if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop scan because scan is not started. Current connection mode is bluetooth low energy");
        } else if (aaa001zzVar == aaa001zz.SERIAL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop scan because scan is not started. Current connection mode is serial");
        } else if (aaa001zzVar == aaa001zz.USB) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop scan because scan is not started. Current connection mode is USB");
        } else if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot stop scan because scan is not started. Current connection mode is test channel");
        }
    }

    public synchronized void stopBarcodeReader() {
        ccc061zz.aaa000("[BBDeviceController] [stopBarcodeReader]", "", DebugLogType.FUNCTION, false);
        if (aaa022() == aaa006zz.WisePOS_SEVEN) {
            aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command stopBarcodeReader");
            return;
        }
        com.stripe.bbpos.bbdevice.aaa005zz aaa005zzVar = this.aaa011;
        if (aaa005zzVar != null) {
            aaa005zzVar.aaa003();
        }
    }

    public synchronized void stopHardwareFunctionalTest() {
        ccc061zz.aaa000("[BBDeviceController] [stopHardwareFunctionalTest]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            } else {
                if (!this.aaa014) {
                    aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command stopHardwareFunctionalTest");
                    return;
                }
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa082();
                }
            }
        }
    }

    public synchronized void stopNfcDetection(Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [stopNfcDetection]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "");
            return;
        }
        if (aaa000(true)) {
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command stopNfcDetection");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa030(hashtable);
            }
        }
    }

    public synchronized void stopSerial() {
        ccc061zz.aaa000("[BBDeviceController] [stopSerial]", "", DebugLogType.FUNCTION, false);
        if (this.aaa020.aaa036() != ccc066zz.aaa004zz.NOT) {
            aaa004(Error.DEVICE_BUSY, "Device busy with command/callback: disableFactoryMode *** (error code - 7018)");
        } else {
            aaa046();
        }
    }

    public synchronized void stopTestChannel() {
        ccc061zz.aaa000("[BBDeviceController] [stopTestChannel]", "", DebugLogType.FUNCTION, false);
        if (this.aaa020.aaa036() != ccc066zz.aaa004zz.NOT) {
            aaa004(Error.DEVICE_BUSY, "Device busy with command/callback: disableFactoryMode *** (error code - 7018)");
        } else {
            bbb019();
        }
    }

    public synchronized void stopUsb() {
        ccc061zz.aaa000("[BBDeviceController] [stopUsb]", "", DebugLogType.FUNCTION, false);
        bbb020();
    }

    public synchronized void stopUsbWithSettings(Hashtable<String, String> hashtable) {
        int i;
        ccc061zz.aaa000("[BBDeviceController] [stopUsbWithSettings]", "", DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa005(Error.INPUT_INVALID, "Input is null");
        } else if (hashtable.containsKey("delay")) {
            String str = hashtable.get("delay");
            if (!ccc071zz.aaa007(str) || (i = Integer.parseInt(str)) < 0) {
                aaa005(Error.INPUT_INVALID, "delay invalid");
            } else {
                this.aaa020.aaa003(i);
                bbb020();
            }
        } else {
            aaa005(Error.INPUT_INVALID, "delay is missing");
        }
    }

    public synchronized void updateAID(Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [updateAID]", " data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "");
            return;
        }
        if (aaa000(true)) {
            this.aaa019.aaa001(ccc039zz.aaa001zz.UPDATE_AID, 0, hashtable);
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command updateAID");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa031(hashtable);
            }
        }
    }

    public synchronized void updateCAPK(CAPK capk) {
        ccc061zz.aaa000("[BBDeviceController] [updateCAPK]", " CAPK : " + ccc071zz.aaa000(capk), DebugLogType.FUNCTION, false);
        if (capk == null) {
            aaa003(Error.INPUT_INVALID, "");
            return;
        }
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            } else {
                this.aaa019.aaa000(ccc039zz.aaa001zz.UPDATE_CAPK);
                aaa002(capk);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0391 A[Catch: Exception -> 0x045a, all -> 0x0891, TryCatch #6 {Exception -> 0x045a, blocks: (B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f), top: B:462:0x0339, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03a8 A[Catch: Exception -> 0x045a, all -> 0x0891, TRY_LEAVE, TryCatch #6 {Exception -> 0x045a, blocks: (B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f), top: B:462:0x0339, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x03de A[Catch: Exception -> 0x045a, all -> 0x0891, TryCatch #6 {Exception -> 0x045a, blocks: (B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f), top: B:462:0x0339, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x03f3 A[Catch: Exception -> 0x045a, all -> 0x0891, TRY_LEAVE, TryCatch #6 {Exception -> 0x045a, blocks: (B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f), top: B:462:0x0339, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0429 A[Catch: Exception -> 0x045a, all -> 0x0891, TryCatch #6 {Exception -> 0x045a, blocks: (B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f), top: B:462:0x0339, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0474 A[Catch: all -> 0x0891, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x04f1 A[Catch: all -> 0x0891, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0567 A[Catch: all -> 0x0891, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:314:0x05c1 A[Catch: all -> 0x0891, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:330:0x061c A[Catch: all -> 0x0891, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:349:0x067f A[Catch: all -> 0x0891, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:376:0x06ec A[Catch: all -> 0x0891, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:384:0x071d A[Catch: all -> 0x0891, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:392:0x074e A[Catch: all -> 0x0891, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:400:0x077f A[Catch: all -> 0x0891, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:408:0x07b0 A[Catch: all -> 0x0891, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:416:0x07e1 A[Catch: all -> 0x0891, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:424:0x0812 A[Catch: all -> 0x0891, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0843 A[Catch: all -> 0x0891, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:435:0x084b A[Catch: all -> 0x0891, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0888 A[Catch: all -> 0x0891, TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0009, B:8:0x002d, B:10:0x0035, B:13:0x0055, B:15:0x0061, B:16:0x0069, B:18:0x0071, B:20:0x007b, B:37:0x00cf, B:39:0x00d5, B:41:0x00db, B:45:0x00e6, B:21:0x007e, B:23:0x0082, B:25:0x009a, B:28:0x00b1, B:31:0x00ba, B:33:0x00c2, B:36:0x00cb, B:47:0x0102, B:53:0x0114, B:50:0x010b, B:56:0x011d, B:58:0x012c, B:60:0x0136, B:62:0x013e, B:64:0x0144, B:68:0x014f, B:70:0x0155, B:72:0x016a, B:75:0x0173, B:77:0x0179, B:80:0x0182, B:81:0x019e, B:84:0x01a7, B:86:0x01af, B:88:0x01b9, B:90:0x01c1, B:92:0x01c7, B:96:0x01d2, B:98:0x01d8, B:100:0x01ed, B:103:0x01f6, B:105:0x01fc, B:108:0x0205, B:109:0x022b, B:112:0x0234, B:116:0x0263, B:118:0x026b, B:119:0x0273, B:121:0x027b, B:123:0x0285, B:125:0x028d, B:127:0x0293, B:131:0x029e, B:132:0x02c4, B:135:0x02cd, B:137:0x02d5, B:139:0x02df, B:141:0x02e7, B:143:0x02ed, B:147:0x02f8, B:148:0x031e, B:151:0x0327, B:153:0x032f, B:155:0x0339, B:157:0x0343, B:159:0x034b, B:161:0x0353, B:163:0x035b, B:165:0x0365, B:180:0x0391, B:185:0x03a0, B:187:0x03a8, B:189:0x03b2, B:204:0x03de, B:195:0x03c5, B:197:0x03c9, B:200:0x03d2, B:202:0x03d6, B:205:0x03e2, B:192:0x03bc, B:208:0x03eb, B:210:0x03f3, B:212:0x03fd, B:227:0x0429, B:218:0x0410, B:220:0x0414, B:223:0x041d, B:225:0x0421, B:228:0x042d, B:215:0x0407, B:231:0x0436, B:171:0x0378, B:173:0x037c, B:176:0x0385, B:178:0x0389, B:181:0x0395, B:168:0x036f, B:236:0x0463, B:233:0x045a, B:239:0x046c, B:241:0x0474, B:243:0x047e, B:245:0x0487, B:258:0x04b0, B:261:0x04ba, B:246:0x048a, B:249:0x0498, B:251:0x049c, B:253:0x04a4, B:254:0x04a7, B:255:0x04aa, B:257:0x04ae, B:262:0x04e0, B:248:0x048d, B:265:0x04e9, B:267:0x04f1, B:269:0x04fb, B:278:0x0517, B:283:0x0524, B:287:0x052f, B:289:0x053b, B:290:0x054d, B:274:0x050b, B:276:0x050f, B:293:0x0556, B:271:0x0502, B:296:0x055f, B:298:0x0567, B:300:0x0571, B:302:0x0579, B:304:0x057f, B:308:0x058a, B:309:0x05b0, B:312:0x05b9, B:314:0x05c1, B:316:0x05cb, B:318:0x05d3, B:320:0x05d9, B:324:0x05e4, B:325:0x060b, B:328:0x0614, B:330:0x061c, B:332:0x0626, B:334:0x062e, B:336:0x0634, B:340:0x063f, B:341:0x0665, B:347:0x0677, B:349:0x067f, B:351:0x0689, B:356:0x069c, B:361:0x06a9, B:365:0x06b4, B:367:0x06c0, B:368:0x06d2, B:352:0x0690, B:354:0x0694, B:371:0x06db, B:374:0x06e4, B:376:0x06ec, B:378:0x06fa, B:379:0x070c, B:382:0x0715, B:384:0x071d, B:386:0x072b, B:387:0x073d, B:390:0x0746, B:392:0x074e, B:394:0x075c, B:395:0x076e, B:398:0x0777, B:400:0x077f, B:402:0x078d, B:403:0x079f, B:406:0x07a8, B:408:0x07b0, B:410:0x07be, B:411:0x07d0, B:414:0x07d9, B:416:0x07e1, B:418:0x07ef, B:419:0x0801, B:422:0x080a, B:424:0x0812, B:426:0x0820, B:427:0x0832, B:430:0x083b, B:432:0x0843, B:433:0x0847, B:435:0x084b, B:437:0x085a, B:439:0x085e, B:442:0x087f, B:445:0x0888, B:344:0x066e, B:113:0x025a), top: B:453:0x0009, inners: #2, #3, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:454:0x026b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v146 */
    /* JADX WARN: Type inference failed for: r1v147 */
    /* JADX WARN: Type inference failed for: r1v68, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v69 */
    /* JADX WARN: Type inference failed for: r1v72, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r1v74 */
    /* JADX WARN: Type inference failed for: r1v76, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r1v83, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r1v86, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r1v87, types: [java.lang.Boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void updateDisplaySettings(java.util.Hashtable<java.lang.String, java.lang.Object> r13) {
        /*
            Method dump skipped, instruction units count: 2196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.BBDeviceController.updateDisplaySettings(java.util.Hashtable):void");
    }

    public synchronized void updateDisplayString(Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [updateDisplayString]", " data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "");
            return;
        }
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command updateDisplayString");
                return;
            }
            this.aaa019.aaa000(ccc039zz.aaa001zz.UPDATE_DISPLAY_STRING);
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa032(hashtable);
            }
        }
    }

    public synchronized void updateTerminalSetting(String str) {
        ccc061zz.aaa000("[BBDeviceController] [updateTerminalSetting]", " tlv : " + str, DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (this.aaa014) {
                if (str.equalsIgnoreCase("DF866B0101")) {
                    aaa010();
                    return;
                }
                Hashtable<String, String> hashtableAaa002 = ccc068zz.aaa002(str);
                if (hashtableAaa002.size() == 1 && hashtableAaa002.containsKey("DF874D".toUpperCase(Locale.ROOT))) {
                    aaa001(false);
                    return;
                }
            }
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            this.aaa019.aaa000(ccc039zz.aaa001zz.UPDATE_TERMINAL_SETTING);
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command updateTerminalSetting");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa035(str);
            }
        }
    }

    public synchronized void updateTerminalSettings(String str) {
        ccc061zz.aaa000("[BBDeviceController] [updateTerminalSettings]", " tlv : " + str, DebugLogType.FUNCTION, false);
        if (str == null) {
            aaa003(Error.INPUT_INVALID, "invalid input");
            return;
        }
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            this.aaa019.aaa000(ccc039zz.aaa001zz.UPDATE_TERMINAL_SETTINGS);
            if (!this.aaa014) {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command updateTerminalSettings");
                return;
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa036(str);
            }
        }
    }

    public synchronized void virtuCryptPEDIRequest() {
        ccc061zz.aaa000("[BBDeviceController] [virtuCryptPEDIRequest]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            if (this.aaa014) {
                this.aaa019.aaa000(ccc039zz.aaa001zz.VIRTU_CRYPT_PEDI_REQUEST, 0);
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa019();
                }
            } else {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command virtuCryptPEDIRequest");
            }
        }
    }

    public synchronized void virtuCryptPEDKRequest() {
        ccc061zz.aaa000("[BBDeviceController] [virtuCryptPEDKRequest]", "", DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            if (this.aaa014) {
                this.aaa019.aaa000(ccc039zz.aaa001zz.VIRTU_CRYPT_PEDK_REQUEST, 0);
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa019();
                }
            } else {
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command virtuCryptPEDKRequest");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa002(BluetoothDevice bluetoothDevice) {
        this.aaa007.onBTConnected(bluetoothDevice);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa008(boolean z) {
        this.aaa007.onReturnDisableInputAmountResult(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa013(boolean z) {
        this.aaa007.onReturnRemoveCAPKResult(z);
    }

    boolean aaa000(ccc062zz ccc062zzVar) {
        if (ccc062zzVar instanceof ccc057zz) {
            aaa031 = false;
        }
        aaa001zz aaa001zzVar = this.aaa015;
        if (aaa001zzVar == aaa001zz.BLUETOOTH_2 || aaa001zzVar == aaa001zz.BLUETOOTH_4) {
            return this.aaa008.aaa001(ccc062zzVar);
        }
        aaa003(Error.COMM_LINK_UNINITIALIZED, "");
        return true;
    }

    void aaa001(byte b) {
        aaa000((ccc062zz) new ccc065zz(b, (byte) -14));
    }

    void aaa016(final Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnUpdateAIDResult]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_UPDATE_AID_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda108
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa006(hashtable);
            }
        });
    }

    void aaa017(final Hashtable<String, TerminalSettingStatus> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnUpdateTerminalSettingsResult]", " data : " + hashtable, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_UPDATE_TERMINAL_SETTINGS_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa007(hashtable);
            }
        });
    }

    void aaa019(final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnCancelCheckCardResult]", " isSuccess : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001(ccc066zz.aaa000zz.IDLE);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_CANCEL_CHECK_CARD_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa005(z);
            }
        });
    }

    void aaa020(String str) {
        if (this.aaa019.aaa007() == ccc039zz.aaa001zz.GET_DEBUG_LOG_FOR_L2_TEST_VISA_PAYWAVE) {
            ccc061zz.aaa000("[BBDeviceController] [onReturnGetDebugLogForL2TestVisaPayWave]", " data : " + ccc071zz.aaa003(str), DebugLogType.CALLBACK, false);
            this.aaa019.aaa010();
            aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    BBDeviceController.aaa056();
                }
            });
            return;
        }
        if (this.aaa019.aaa007() == ccc039zz.aaa001zz.GET_DEBUG_LOG_FOR_L2_TEST_MASTER_PAYPASS) {
            ccc061zz.aaa000("[BBDeviceController] [onReturnGetDebugLogForL2TestMasterPayPass]", " data : " + str, DebugLogType.CALLBACK, false);
            this.aaa019.aaa010();
            aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    BBDeviceController.aaa057();
                }
            });
        } else if (this.aaa019.aaa007() == ccc039zz.aaa001zz.RESET_DEBUG_LOG_FOR_L2_TEST_VISA_PAYWAVE) {
            ccc061zz.aaa000("[BBDeviceController] [onReturnResetDebugLogForL2TestVisaPayWave]", "", DebugLogType.CALLBACK, false);
            this.aaa019.aaa010();
            aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    BBDeviceController.aaa058();
                }
            });
        } else {
            ccc061zz.aaa000("[BBDeviceController] [onReturnEchoData]", " data : " + str, DebugLogType.CALLBACK, false);
            this.aaa019.aaa010();
            aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    BBDeviceController.aaa059();
                }
            });
        }
    }

    void aaa021(final String str) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnEmvReport]", " tlv : " + str, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_EMV_REPORT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa010(str);
            }
        });
    }

    void aaa031(final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnRemoveCAPKResult]", " isSuccess : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_REMOVE_CAPK_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa013(z);
            }
        });
    }

    void aaa032(final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnSetPinPadButtonsResult]", " isSuccess : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        if (z && aaa012() == aaa001zz.SERIAL && aaa022() == aaa006zz.WisePOS_SEVEN) {
            ccc051zz.aaa000(this.aaa000);
        }
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_SET_PIN_PAD_BUTTONS_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa014(z);
            }
        });
    }

    private void aaa001(String str) {
        aaa000(true, str, aaa026);
        aaa000(aaa002zz.CONNECTED);
        bbb013();
        this.aaa019.aaa010();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa002(boolean z, String str) {
        this.aaa007.onReturnEmvCardDataResult(z, str);
    }

    void aaa008(final boolean z, final String str) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnControlLEDResult]", " isSuccess : " + z + ", errorMessage : " + str, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_CONTROL_LED_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda118
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(z, str);
            }
        });
    }

    void aaa013(final Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnEmvReportList]", " data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_EMV_REPORT_LIST);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa003(hashtable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa002(List list) {
        this.aaa007.onReturnCAPKList(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa029() {
        this.aaa007.onBTRequestPairing();
    }

    void aaa026(String str) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnRandom]", " data : " + str, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda84
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceController.aaa063();
            }
        });
    }

    void aaa027(final String str) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnReversalData]", " tlv : ***", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_REVERSAL_DATA);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda132
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa011(str);
            }
        });
    }

    void aaa028(boolean z) {
        this.aaa019.aaa010();
        try {
            aaa017(false, ccc071zz.aaa000((Object) "4C95", "DF30") + ccc071zz.aaa000(Boolean.valueOf(z), "DE"));
        } catch (Throwable unused) {
            aaa003(Error.UNKNOWN, "(error code - 8011)");
        }
    }

    private void aaa005() {
        this.aaa014 = false;
        aaa001(aaa001zz.NONE);
        aaa000(aaa002zz.IDLE);
        bbb013();
        this.aaa019.aaa010();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa007(Hashtable hashtable) {
        this.aaa007.onReturnUpdateTerminalSettingsResult(hashtable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa009(String str) {
        this.aaa007.onReturnCAPKLocation(str);
    }

    void aaa002(final boolean z, final String str, final String str2, final int i) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnPowerOnIccResult]", " isSuccess : " + z + ", ksn : ***, atr : ***, atrLength : ***", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_POWER_ON_ICC_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda124
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(z, str, str2, i);
            }
        });
    }

    void aaa015(final Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnReadTerminalSettingResult]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_READ_TERMINAL_SETTING_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda134
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa005(hashtable);
            }
        });
    }

    void aaa022(String str) {
        aaa012("[onReturnGetWiseCubeKeyStatus] keyList : " + str);
        ccc039zz.aaa001zz aaa001zzVarAaa007 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar = ccc039zz.aaa001zz.VERIFY_7MD_KEY_STATUS;
        if (aaa001zzVarAaa007 == aaa001zzVar) {
            if (this.aaa019.aaa000() == 1) {
                this.aaa020.aaa009(str);
                this.aaa019.aaa000(aaa001zzVar, 2);
                aaa001(0, TlvMap.TAG_APPLICATION_LABEL);
                return;
            } else {
                if (this.aaa019.aaa000() == 6) {
                    this.aaa020.aaa008(str);
                    this.aaa019.aaa000(aaa001zzVar, 7);
                    aaa001(1, "55");
                    return;
                }
                this.aaa019.aaa010();
                return;
            }
        }
        this.aaa019.aaa010();
    }

    void aaa024(final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnEnableAccountSelectionResult]", " isSuccess : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_ENABLE_ACCOUNT_SELECTION_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda97
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa009(z);
            }
        });
    }

    void aaa029(boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnPanConfirmResult]", "", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa003(BluetoothDevice bluetoothDevice) {
        this.aaa007.onBTConnected(bluetoothDevice);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa007(boolean z, Hashtable hashtable) {
        this.aaa007.onReturnReadDisplayStringResult(z, hashtable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa009(boolean z) {
        this.aaa007.onReturnEnableAccountSelectionResult(z);
    }

    public static BBDeviceController getInstance(Context context, BBDeviceControllerListener bBDeviceControllerListener) {
        BBDeviceController bBDeviceController;
        ccc061zz.aaa000("[BBDeviceController] [getInstance]", " context : " + context + ", listener : " + bBDeviceControllerListener, DebugLogType.FUNCTION, false);
        if (bBDeviceControllerListener != null) {
            synchronized (aaa024) {
                BBDeviceController bBDeviceController2 = aaa030;
                if (bBDeviceController2 != null) {
                    bBDeviceController2.aaa007 = bBDeviceControllerListener;
                } else if (context != null) {
                    aaa030 = new BBDeviceController(context, bBDeviceControllerListener);
                } else {
                    throw new IllegalArgumentException("Context cannot be null");
                }
                bBDeviceController = aaa030;
            }
            return bBDeviceController;
        }
        throw new IllegalArgumentException("BBDeviceControllerListener cannot be null");
    }

    void aaa014(String str) {
        ccc061zz.aaa000("[BBDeviceController] [onRequestDisplayApplicationLabel ]", " applicationLabel : " + str, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001(ccc066zz.aaa000zz.REQUEST_DISPLAY_APPLICATION_LABEL);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_DISPLAY_APPLICATION_LABEL);
    }

    void aaa016(final boolean z, final String str) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnUpdateDisplayStringResult]", " isSuccess : " + z + ", errorMessage : " + str, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_UPDATE_DISPLAY_STRING_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa006(z, str);
            }
        });
    }

    void aaa017(final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onDeviceHere]", " isHere : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_DEVICE_HERE);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda112
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa003(z);
            }
        });
    }

    void aaa021(final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnDisableAccountSelectionResult]", " isSuccess : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_DISABLE_ACCOUNT_SELECTION_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa006(z);
            }
        });
    }

    void aaa033(final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnSetPinPadOrientationResult]", " isSuccess : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_SET_PIN_PAD_ORIENTATION_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda98
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa015(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa001(List list) {
        this.aaa007.onBTReturnScanResults(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa003(boolean z, String str) {
        if (!z) {
            this.aaa007.onReturnEmvCardNumber(false, "");
            return;
        }
        String str2 = decodeTlv(str).get("maskedPAN");
        if (str2 == null) {
            this.aaa007.onReturnEmvCardNumber(false, "");
            return;
        }
        String strReplaceAll = str2.replaceAll("f", "X").replaceAll("F", "X");
        while (strReplaceAll.endsWith("X")) {
            strReplaceAll = strReplaceAll.substring(0, strReplaceAll.length() - 1);
        }
        this.aaa007.onReturnEmvCardNumber(true, strReplaceAll);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa007(boolean z) {
        this.aaa007.onReturnDisableBluetoothResult(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa008(boolean z, Hashtable hashtable) {
        this.aaa007.onReturnVirtuCryptPEDICommandResult(z, hashtable);
    }

    void aaa009(final Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onRequestAmountConfirm]", " data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_AMOUNT_CONFIRM);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda64
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa002(hashtable);
            }
        });
    }

    void aaa013(final boolean z, final Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnEncryptDataResult]", " isSuccess : " + z + ", data : " + ccc071zz.aaa001(hashtable, aaa004zz.MASK_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_ENCRYPT_DATA_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda61
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa003(z, hashtable);
            }
        });
    }

    void aaa019(final String str) {
        ccc039zz.aaa001zz aaa001zzVarAaa007 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar = ccc039zz.aaa001zz.REMOVE_CAPK;
        if (aaa001zzVarAaa007 == aaa001zzVar) {
            if (str.equalsIgnoreCase("")) {
                aaa031(false);
                return;
            }
            CAPK capk = new CAPK();
            capk.location = str;
            capk.rid = "0000000000";
            capk.index = TlvMap.SET_BUZZER_DISABLED_VALUE;
            capk.exponent = "03";
            capk.size = "0008";
            capk.modulus = TlvMap.SET_BUZZER_ENABLED_VALUE;
            capk.checksum = "9289F9BACC19CAAEB62EBB060E2DF0BA82D2EDE2";
            this.aaa019.aaa000(aaa001zzVar, 1);
            aaa002(capk);
            return;
        }
        ccc061zz.aaa000("[BBDeviceController] [onReturnCAPKLocation]", " location : " + str, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_CAPK_LOCATION);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda139
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa009(str);
            }
        });
    }

    void aaa026(boolean z) {
        aaa012("[onReturnEnableEnablementTokenResult] isSuccess : " + z);
        ccc039zz.aaa001zz aaa001zzVarAaa007 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar = ccc039zz.aaa001zz.ENABLE_ENABLEMENT_TOKEN;
        if (aaa001zzVarAaa007 == aaa001zzVar) {
            if (this.aaa019.aaa000() == 1) {
                this.aaa020.aaa001(z);
                this.aaa019.aaa000(aaa001zzVar, 2);
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa022();
                    return;
                }
                return;
            }
            this.aaa019.aaa010();
            return;
        }
        this.aaa019.aaa010();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa007(String str) {
        this.aaa007.onReturnBarcode(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa008(Hashtable hashtable) {
        this.aaa007.onReturnDebugLog(hashtable);
    }

    void aaa001(final CheckCardResult checkCardResult, final Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnCheckCardResult]", " cardStatus : " + checkCardResult + ", decodeData : " + ccc071zz.aaa001(hashtable, aaa004zz.MASK_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        if ((this.aaa020.aaa000(ccc066zz.aaa000zz.START_EMV) || this.aaa020.aaa000(ccc066zz.aaa000zz.START_EMV_SUCCEED)) && checkCardResult == CheckCardResult.INSERTED_CARD) {
            return;
        }
        this.aaa020.aaa001(ccc066zz.aaa000zz.IDLE);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_CHECK_CARD_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda83
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(checkCardResult, hashtable);
            }
        });
    }

    void aaa025(final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnEnableBluetoothResult]", " isSuccess : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_ENABLE_BLUETOOTH_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa010(z);
            }
        });
    }

    void aaa027(final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnEnableInputAmountResult]", " isSuccess : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_ENABLE_INPUT_AMOUNT_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda122
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa011(z);
            }
        });
    }

    void aaa030(final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnPowerOffIccResult]", " isSuccess : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_POWER_OFF_ICC_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda131
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa012(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa002(boolean z, Hashtable hashtable) {
        this.aaa007.onReturnApduResult(z, hashtable);
    }

    private void aaa008(BluetoothDevice bluetoothDevice) {
        aaa001zz aaa001zzVar = this.aaa015;
        if (aaa001zzVar == aaa001zz.NONE) {
            aaa001(aaa001zz.BLUETOOTH_2);
            aaa000(aaa002zz.CONNECTING);
            this.aaa008.aaa000(bluetoothDevice);
            return;
        }
        if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start BTv2 again while bluetooth is connected");
            return;
        }
        if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start BTv2 while bluetooth low energy is connected");
            return;
        }
        if (aaa001zzVar == aaa001zz.SERIAL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start BTv2 while serial is connected");
        } else if (aaa001zzVar == aaa001zz.USB) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start BTv2 while USB is connected");
        } else if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start BTv2 while test channel is connected");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa015(boolean z) {
        this.aaa007.onReturnSetPinPadOrientationResult(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: aaa007, reason: merged with bridge method [inline-methods] */
    public synchronized void aaa040() {
        if (!aaa002()) {
            aaa003(Error.BLUETOOTH_PERMISSION_DENIED, "android.permission.BLUETOOTH and android.permission.BLUETOOTH_ADMIN are required");
            return;
        }
        if (!aaa001()) {
            aaa004(Error.FAIL_TO_START_BT, "Bluetooth is disabled. Please turn on Bluetooth");
            return;
        }
        aaa001zz aaa001zzVar = this.aaa015;
        if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
            if (aaa013() == aaa002zz.CONNECTING) {
                ccc055zz.aaa013zz aaa013zzVarAaa019 = this.aaa008.aaa019();
                ccc055zz.aaa013zz aaa013zzVar = ccc055zz.aaa013zz.STATE_CONNECTING;
                if (aaa013zzVarAaa019 == aaa013zzVar) {
                    synchronized (ccc055zz.aaa054) {
                        if (this.aaa008.aaa019() == aaa013zzVar) {
                            this.aaa008.aaa001(aaa005zz.NotifyOnErrorCancelledByUser);
                            aaa001(aaa001zz.NONE);
                            return;
                        } else {
                            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot disconnect Bluetooth because Bluetooth is connecting.");
                            return;
                        }
                    }
                }
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot disconnect Bluetooth because Bluetooth is connecting.");
                return;
            }
            this.aaa020.aaa000("Command disconnectBT is called (3052)", false);
            bbb015();
        } else if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
            if (this.aaa000.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
                if (aaa013() == aaa002zz.CONNECTING) {
                    if (this.aaa008.aaa019() == ccc055zz.aaa013zz.STATE_CONNECTING) {
                        this.aaa008.aaa032();
                        aaa001(aaa001zz.NONE);
                        aaa003(Error.FAIL_TO_START_BT, "connectBT is cancelled (4)");
                        return;
                    }
                    aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot disconnect Bluetooth because Bluetooth is connecting.");
                    return;
                }
                this.aaa020.aaa000("Command disconnectBT is called (3152)", false);
                aaa008();
            }
        } else if (aaa001zzVar == aaa001zz.SERIAL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot disconnect bluetooth because bluetooth is not connected. Current connection mode is serial");
        } else if (aaa001zzVar == aaa001zz.USB) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot disconnect bluetooth because bluetooth is not connected. Current connection mode is USB");
        } else if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot disconnect bluetooth because bluetooth is not connected. Current connection mode is test channel");
        } else {
            aaa003(Error.COMM_LINK_UNINITIALIZED, "Cannot disconnect bluetooth because bluetooth is not connected.");
        }
    }

    void aaa024(String str) {
        this.aaa021.aaa000(ccc071zz.aaa005(str));
    }

    public synchronized void getDeviceInfo(ArrayList<String> arrayList) {
        ccc061zz.aaa000("[BBDeviceController] [getDeviceInfo]", " keys : " + arrayList, DebugLogType.FUNCTION, false);
        if (aaa000(true)) {
            if (this.aaa019.aaa009()) {
                aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
                return;
            }
            if (arrayList != null && arrayList.size() != 0) {
                this.aaa019.aaa000(ccc039zz.aaa001zz.GET_DEVICE_INFO_WITH_KEYS, 0, arrayList);
                if (this.aaa014) {
                    com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                    if (aaa003zzVar != null) {
                        aaa003zzVar.aaa000(arrayList);
                    }
                    return;
                }
                aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command getDeviceInfo");
                return;
            }
            this.aaa019.aaa000(ccc039zz.aaa001zz.GET_DEVICE_INFO);
            aaa016();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa002(Hashtable hashtable) {
        this.aaa007.onRequestAmountConfirm(hashtable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa005(String str) {
        if (this.aaa020.aaa001().aaa000(ccc038zz.aaa000zz.ON_ERROR, Error.FAIL_TO_START_BT)) {
            return;
        }
        ccc061zz.aaa000("[BBDeviceController] [onBTDisconnected] (4)", " " + str, DebugLogType.CALLBACK, false);
        this.aaa007.onBTDisconnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa010(String str) {
        this.aaa007.onReturnEmvReport(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa014(boolean z) {
        this.aaa007.onReturnSetPinPadButtonsResult(z);
    }

    private void aaa021(Hashtable<String, Object> hashtable) {
        EmvOption emvOption;
        if (this.aaa014) {
            new Hashtable();
            if (hashtable.get("emvOption") == null) {
                emvOption = EmvOption.START;
            } else if (hashtable.get("emvOption") instanceof EmvOption) {
                emvOption = (EmvOption) hashtable.get("emvOption");
            } else if (hashtable.get("emvOption") instanceof String) {
                if (!hashtable.get("emvOption").equals("") && !hashtable.get("emvOption").equals("START")) {
                    if (hashtable.get("emvOption").equals("START_WITH_FORCE_ONLINE")) {
                        emvOption = EmvOption.START_WITH_FORCE_ONLINE;
                    } else {
                        aaa003(Error.INPUT_INVALID, "");
                        return;
                    }
                } else {
                    emvOption = EmvOption.START;
                }
            } else {
                aaa003(Error.INPUT_INVALID, "");
                return;
            }
            hashtable.put("emvOption", emvOption);
            if (hashtable.containsKey(BbposDeviceControllerImpl.IS_ACCESSIBLE_PIN_PAD_PARAM_NAME)) {
                this.aaa020.aaa000(hashtable.get(BbposDeviceControllerImpl.IS_ACCESSIBLE_PIN_PAD_PARAM_NAME));
            } else {
                this.aaa020.aaa000((Object) 0);
            }
            if (hashtable.containsKey("pinPadTouchEventTimeout")) {
                this.aaa020.aaa001(hashtable.get("pinPadTouchEventTimeout"));
            }
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa026(hashtable);
                return;
            }
            return;
        }
        aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command startEmv");
    }

    void aaa000(byte b) {
        aaa000((ccc062zz) new ccc065zz(b, (byte) 0));
    }

    void aaa015(final boolean z, final String str) {
        if (this.aaa019.aaa007() == ccc039zz.aaa001zz.UPDATE_DISPLAY_SETTINGS) {
            if (this.aaa019.aaa000() < ccc039zz.aaa000(this.aaa019.aaa004(), 512) - 1 && this.aaa019.aaa000() < 99) {
                ccc039zz ccc039zzVar = this.aaa019;
                ccc039zzVar.aaa000(ccc039zzVar.aaa000() + 1);
                final double dFloor = Math.floor((((double) this.aaa019.aaa000()) / ((double) ccc039zz.aaa000(this.aaa019.aaa004(), 512))) * 80.0d);
                ccc061zz.aaa000("[BBDeviceController] [onReturnUpdateDisplaySettingsProgress]", " percentage : " + dFloor, DebugLogType.CALLBACK, false);
                this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_UPDATE_DISPLAY_SETTINGS_PROGRESS);
                aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda102
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa000(dFloor);
                    }
                });
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa000(ccc039zz.aaa000(this.aaa019.aaa004(), this.aaa019.aaa000(), 512), this.aaa019.aaa000(), ccc039zz.aaa000(this.aaa019.aaa004(), 512), this.aaa019.aaa005());
                    return;
                }
                return;
            }
            this.aaa019.aaa010();
            DebugLogType debugLogType = DebugLogType.CALLBACK;
            ccc061zz.aaa000("[BBDeviceController] [onReturnUpdateDisplaySettingsProgress]", " percentage : 100", debugLogType, false);
            ccc061zz.aaa000("[BBDeviceController] [onReturnUpdateDisplaySettingsResult]", " isSuccess : " + z + ", message : " + str, debugLogType, false);
            aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda103
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa005(z, str);
                }
            });
            return;
        }
        this.aaa019.aaa010();
    }

    void aaa016(final String str) {
        ccc038zz ccc038zzVarAaa001 = this.aaa020.aaa001();
        ccc038zz.aaa000zz aaa000zzVar = ccc038zz.aaa000zz.ON_REQUEST_ONLINE_PROCESS;
        ccc038zzVarAaa001.aaa000(aaa000zzVar);
        ccc061zz.aaa000("[BBDeviceController] [onRequestOnlineProcess]", " tlv : ***", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001(ccc066zz.aaa000zz.REQUEST_ONLINE_PROCESS);
        this.aaa020.aaa001().aaa000(aaa000zzVar);
        this.aaa020.aaa001().aaa001(aaa000zzVar);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa006(str);
            }
        });
    }

    void aaa017(final String str) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnBarcode]", " barcode : " + str, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_BARCODE);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa007(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa002(Error error, String str) {
        this.aaa007.onError(error, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa009(boolean z, Hashtable hashtable) {
        this.aaa007.onReturnVirtuCryptPEDKCommandResult(z, hashtable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa010(boolean z) {
        this.aaa007.onReturnEnableBluetoothResult(z);
    }

    void aaa000(ccc065zz ccc065zzVar) {
        if (aaa031) {
            return;
        }
        if (ccc065zzVar.aaa003() != -16 && ccc065zzVar.aaa003() != -14) {
            if (ccc065zzVar.aaa003() == -15) {
                aaa001zz aaa001zzVar = this.aaa015;
                aaa001zz aaa001zzVar2 = aaa001zz.BLUETOOTH_2;
                if ((aaa001zzVar == aaa001zzVar2 || aaa001zzVar == aaa001zz.BLUETOOTH_4) && this.aaa008.aaa020() == ccc065zzVar.aaa002()) {
                    if (ccc065zzVar.aaa002() == 80) {
                        if (aaa012() == aaa001zzVar2) {
                            aaa004(ccc055zz.aaa067);
                        } else if (aaa012() == aaa001zz.BLUETOOTH_4) {
                            aaa006(ccc055zz.aaa067);
                        }
                    } else {
                        aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command " + ccc071zz.aaa000(ccc065zzVar.aaa002()));
                    }
                    this.aaa008.aaa000(ccc065zzVar);
                    return;
                }
                return;
            }
            if (ccc065zzVar.aaa003() == -13) {
                aaa003(Error.COMM_ERROR, "Device no response (error code - 7014)");
                aaa001zz aaa001zzVar3 = this.aaa015;
                if (aaa001zzVar3 == aaa001zz.BLUETOOTH_2 || aaa001zzVar3 == aaa001zz.BLUETOOTH_4) {
                    this.aaa008.aaa000(ccc065zzVar);
                    return;
                }
                return;
            }
            if (ccc065zzVar.aaa003() == -12) {
                return;
            }
            if (ccc065zzVar.aaa003() == -11) {
                aaa001(BatteryStatus.LOW);
                aaa001zz aaa001zzVar4 = this.aaa015;
                if (aaa001zzVar4 == aaa001zz.BLUETOOTH_2 || aaa001zzVar4 == aaa001zz.BLUETOOTH_4) {
                    this.aaa008.aaa000(ccc065zzVar);
                    return;
                }
                return;
            }
            if (ccc065zzVar.aaa003() == -10) {
                aaa001(BatteryStatus.CRITICALLY_LOW);
                aaa001zz aaa001zzVar5 = this.aaa015;
                if (aaa001zzVar5 == aaa001zz.BLUETOOTH_2 || aaa001zzVar5 == aaa001zz.BLUETOOTH_4) {
                    this.aaa008.aaa000(ccc065zzVar);
                    return;
                }
                return;
            }
            if (ccc065zzVar.aaa003() == -9) {
                aaa003(Error.DEVICE_BUSY, "");
                aaa001zz aaa001zzVar6 = this.aaa015;
                if (aaa001zzVar6 == aaa001zz.BLUETOOTH_2 || aaa001zzVar6 == aaa001zz.BLUETOOTH_4) {
                    this.aaa008.aaa000(ccc065zzVar);
                    return;
                }
                return;
            }
            if (ccc065zzVar.aaa003() == -8) {
                aaa001(SessionError.INVALID_SESSION, "");
                aaa001zz aaa001zzVar7 = this.aaa015;
                if (aaa001zzVar7 == aaa001zz.BLUETOOTH_2 || aaa001zzVar7 == aaa001zz.BLUETOOTH_4) {
                    this.aaa008.aaa000(ccc065zzVar);
                    return;
                }
                return;
            }
            if (ccc065zzVar.aaa003() == -7) {
                aaa001(SessionError.INVALID_SESSION, "");
                aaa001zz aaa001zzVar8 = this.aaa015;
                if (aaa001zzVar8 == aaa001zz.BLUETOOTH_2 || aaa001zzVar8 == aaa001zz.BLUETOOTH_4) {
                    this.aaa008.aaa000(ccc065zzVar);
                    return;
                }
                return;
            }
            aaa001zz aaa001zzVar9 = this.aaa015;
            if (aaa001zzVar9 == aaa001zz.BLUETOOTH_2 || aaa001zzVar9 == aaa001zz.BLUETOOTH_4) {
                this.aaa008.aaa000(ccc065zzVar);
                return;
            }
            return;
        }
        aaa001zz aaa001zzVar10 = this.aaa015;
        if (aaa001zzVar10 == aaa001zz.BLUETOOTH_2 || aaa001zzVar10 == aaa001zz.BLUETOOTH_4) {
            this.aaa008.aaa028();
        }
    }

    void aaa013(boolean z, String str) {
        String strAaa000;
        this.aaa019.aaa010();
        try {
            String str2 = ccc071zz.aaa000((Object) "4CED", "DF30") + ccc071zz.aaa000(Boolean.valueOf(z), "DE");
            if (ccc071zz.aaa008(str) && (strAaa000 = ccc071zz.aaa000((Object) str, "DF8666")) != null) {
                str2 = str2 + strAaa000;
            }
            aaa017(false, str2);
        } catch (Throwable unused) {
            aaa003(Error.UNKNOWN, "(error code - 8009)");
        }
    }

    void aaa014(boolean z, String str) {
        String strAaa000;
        this.aaa019.aaa010();
        try {
            String str2 = ccc071zz.aaa000((Object) "4CF7", "DF30") + ccc071zz.aaa000(Boolean.valueOf(z), "DE");
            if (ccc071zz.aaa008(str) && (strAaa000 = ccc071zz.aaa000((Object) str, "DF8666")) != null) {
                str2 = str2 + strAaa000;
            }
            aaa017(false, str2);
        } catch (Throwable unused) {
            aaa003(Error.UNKNOWN, "(error code - 8008)");
        }
    }

    private void aaa030(String str) {
        synchronized (aaa024) {
            if (this.aaa000.getPackageManager().hasSystemFeature("android.hardware.usb.host")) {
                if (aaa012() == aaa001zz.NONE) {
                    aaa001(aaa001zz.USB);
                    aaa000(aaa002zz.CONNECTING);
                    this.aaa020.aaa062();
                    this.aaa020.aaa023(str);
                    this.aaa013 = new byte[0];
                    aaa006();
                    aaa023();
                } else {
                    aaa001zz aaa001zzVar = this.aaa015;
                    if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
                        aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start USB while bluetooth 2.0 is connected");
                    } else if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
                        aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start USB while bluetooth low energy is connected");
                    } else if (aaa001zzVar == aaa001zz.USB) {
                        if (aaa013() == aaa002zz.CONNECTING) {
                            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start USB again while USB is connecting");
                        } else {
                            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start USB again while USB is connected");
                        }
                    } else if (aaa001zzVar == aaa001zz.SERIAL) {
                        aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start USB while serial is connected");
                    } else if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
                        aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot start USB while test channel is connected");
                    }
                }
                return;
            }
            aaa003(Error.USB_NOT_SUPPORTED, "");
        }
    }

    void aaa002(final int i) {
        ccc061zz.aaa000("[BBDeviceController] [onDeviceResetAlert]", " timeBeforeReset : " + i, DebugLogType.CALLBACK, false);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_DEVICE_RESET_ALERT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda105
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa001(i);
            }
        });
    }

    synchronized void aaa009() {
        aaa012("[enableEnablementToken]");
        this.aaa020.aaa001(false);
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa017();
        }
    }

    void aaa010(Hashtable<String, Object> hashtable) {
        aaa012("[onReturnDebugLog] data : " + hashtable);
        ccc061zz.aaa000("[BBDeviceController] [onReturnDebugLog]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.EXTRA_DEBUG_MESSAGE, false);
    }

    void aaa025(String str) {
        Hashtable<String, Object> hashtable = new Hashtable<>();
        hashtable.put("apdu", str);
        hashtable.put("apduLength", "" + (str.length() / 2));
        aaa012(true, hashtable);
    }

    synchronized void aaa028(String str) {
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar;
        if (this.aaa020.aaa025() == ccc066zz.aaa002zz.COMPLETE_PASS_THROUGH && (aaa003zzVar = this.aaa010) != null) {
            aaa003zzVar.aaa023(str);
        }
    }

    public synchronized void sendFinalConfirmResult(boolean z, String str) {
        ccc061zz.aaa000("[BBDeviceController] [sendFinalConfirmResult]", " isConfirmed : " + z + ", tlv : " + str, DebugLogType.FUNCTION, false);
        if (str == null) {
            aaa003(Error.INPUT_INVALID, "invalid input");
            return;
        }
        if (aaa000(true)) {
            if (this.aaa014) {
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa011(z, str);
                }
                return;
            }
            aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command sendFinalConfirmResult");
        }
    }

    public synchronized void powerOffIcc(Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [powerOffIcc]", " data : " + ccc071zz.aaa000(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            hashtable = new Hashtable<>();
        }
        if (aaa000(true)) {
            if (this.aaa014) {
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa020(hashtable);
                }
                return;
            }
            aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command powerOffIcc");
        }
    }

    void aaa010(final boolean z, final Hashtable<String, String> hashtable) {
        aaa012("[onRequestVirtuCryptPEDIResponse] isSuccess : " + z + ", data : " + hashtable);
        ccc039zz.aaa001zz aaa001zzVarAaa007 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar = ccc039zz.aaa001zz.VIRTU_CRYPT_PEDI_REQUEST;
        if (aaa001zzVarAaa007 == aaa001zzVar) {
            if (this.aaa019.aaa000() == 1) {
                this.aaa020.aaa011(z);
                this.aaa020.aaa001(hashtable);
                this.aaa019.aaa000(aaa001zzVar, 2);
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa022();
                    return;
                }
                return;
            }
            if (this.aaa019.aaa000() == 2) {
                ccc061zz.aaa000("[BBDeviceController] [onRequestVirtuCryptPEDIResponse]", " isSuccess : " + z + ", data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
                this.aaa019.aaa010();
                this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_VIRTU_CRYPT_PEDI_RESPONSE);
                aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda67
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa000(z, hashtable);
                    }
                });
                return;
            }
            this.aaa019.aaa010();
            return;
        }
        this.aaa019.aaa010();
    }

    void aaa017(final boolean z, final Hashtable<String, String> hashtable) {
        aaa012("[onReturnVirtuCryptPEDKCommandResult] isSuccess : " + z + ", data : " + hashtable);
        ccc039zz.aaa001zz aaa001zzVarAaa007 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar = ccc039zz.aaa001zz.SEND_VIRTU_CRYPT_PEDK_RESPONSE;
        if (aaa001zzVarAaa007 == aaa001zzVar) {
            if (this.aaa019.aaa000() == 1) {
                this.aaa020.aaa015(z);
                this.aaa020.aaa004(hashtable);
                this.aaa019.aaa000(aaa001zzVar, 2);
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa022();
                    return;
                }
                return;
            }
            if (this.aaa019.aaa000() == 2) {
                ccc061zz.aaa000("[BBDeviceController] [onReturnVirtuCryptPEDKCommandResult]", " isSuccess : " + z + ", data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
                this.aaa019.aaa010();
                this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_VIRTU_CRYPT_PEDK_COMMAND_RESULT);
                aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda45
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa009(z, hashtable);
                    }
                });
                return;
            }
            this.aaa019.aaa010();
            return;
        }
        this.aaa019.aaa010();
    }

    synchronized void aaa002(boolean z) {
        aaa012("[getFirmwareDebugLog]");
        if (this.aaa019.aaa009()) {
            aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            return;
        }
        this.aaa020.aaa010(z);
        this.aaa020.aaa006("");
        this.aaa019.aaa000(ccc039zz.aaa001zz.GET_FIRMWARE_DEBUG_LOG, 0);
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa000(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa005(boolean z) {
        this.aaa007.onReturnCancelCheckCardResult(z);
    }

    public synchronized void setPinPadButtons(Hashtable<String, Rect> hashtable, Hashtable<String, Rect> hashtable2) {
        ccc061zz.aaa000("[BBDeviceController] [setPinPadButtons]", " pinButton : " + hashtable + ", pinButtonLandscape : " + hashtable2, DebugLogType.FUNCTION, false);
        if (hashtable == null) {
            aaa003(Error.INPUT_INVALID, "pinButton is null");
            return;
        }
        if (hashtable2 == null) {
            aaa003(Error.INPUT_INVALID, "pinButtonLandscape is null");
            return;
        }
        if (aaa000(true)) {
            if (this.aaa014) {
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa000(hashtable, hashtable2);
                }
                return;
            }
            aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command setPinPadButtons");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa001(boolean z, String str) {
        this.aaa007.onReturnDisableFactoryModeResult(z, str);
    }

    void aaa005(final List<CAPK> list) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnCAPKList]", " capkList : " + ccc071zz.aaa001(list), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_CAPK_LIST);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda66
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa002(list);
            }
        });
    }

    void aaa001(final PinEntryResult pinEntryResult, final Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnPinEntryResult]", " pinEntryResult : " + pinEntryResult + ", data : " + ccc071zz.aaa001(hashtable, aaa004zz.MASK_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        if (aaa012() == aaa001zz.SERIAL && aaa022() == aaa006zz.WisePOS_SEVEN) {
            ccc051zz.aaa001(this.aaa000);
        }
        this.aaa020.aaa001(ccc066zz.aaa000zz.RETURN_PIN_ENTRY_RESULT);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_PIN_ENTRY_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(pinEntryResult, hashtable);
            }
        });
    }

    synchronized void aaa006(BluetoothDevice bluetoothDevice) {
        if (this.aaa014 && (this.aaa020.aaa014().aaa006() > 0 || this.aaa020.aaa014().aaa008())) {
            this.aaa020.aaa001(ccc066zz.aaa003zz.NORMAL_DEVICE_INFO);
        }
        if (this.aaa020.aaa017() == ccc066zz.aaa003zz.NORMAL_DEVICE_INFO) {
            this.aaa020.aaa000(bluetoothDevice);
            aaa026.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa033();
                }
            }, 500L);
        } else if (bluetoothDevice == null) {
            aaa003(Error.COMM_LINK_UNINITIALIZED, "Bluetooth disconnected during connecting (error code - 3040)");
        } else {
            aaa007(bluetoothDevice);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa003(Hashtable hashtable) {
        this.aaa007.onReturnEmvReportList(hashtable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa003(boolean z, Hashtable hashtable) {
        this.aaa007.onReturnEncryptDataResult(z, hashtable);
    }

    static aaa006zz aaa022() {
        String strAaa001 = ccc071zz.aaa001("persist.bbpos.product_id", "");
        Locale locale = Locale.ROOT;
        String upperCase = strAaa001.toUpperCase(locale);
        if (upperCase.startsWith("SML0")) {
            return aaa006zz.WisePOS_SML;
        }
        if (!upperCase.startsWith("WSC6") && !upperCase.startsWith("WTH1") && !upperCase.startsWith("WTP1")) {
            if (upperCase.startsWith("WGO1")) {
                return aaa006zz.WisePOS_GO;
            }
            if (upperCase.startsWith("WGP1")) {
                return aaa006zz.WisePOS_GO;
            }
            String upperCase2 = ccc071zz.aaa001("ro.product.model", "").toUpperCase(locale);
            if (!upperCase2.startsWith("WSC6") && !upperCase2.startsWith("WTH1") && !upperCase2.startsWith("WTP1")) {
                if (upperCase2.startsWith("RK3326_GO")) {
                    return aaa006zz.WisePOS_GO;
                }
                String str = Build.MODEL;
                if (!str.equalsIgnoreCase("P1000") && !str.equalsIgnoreCase("WiseposPlus") && !str.equalsIgnoreCase("WiseposNeo") && !str.equalsIgnoreCase("WiseposTouch") && !str.replace(" ", "").equalsIgnoreCase("WiseposE") && !str.replace(" ", "").equalsIgnoreCase("WiseposEPlus") && !str.replace(" ", "").equalsIgnoreCase("WiseposE+") && !upperCase.startsWith("WSC5") && !upperCase.startsWith("WSS5")) {
                    String str2 = Build.HARDWARE;
                    if (str2.equalsIgnoreCase("mt6735")) {
                        return aaa006zz.WisePOS2;
                    }
                    if (str2.equalsIgnoreCase("MT6771")) {
                        return aaa006zz.WisePOS_SEVEN;
                    }
                    return aaa006zz.WisePOS1_1;
                }
                return aaa006zz.WisePOSPlus;
            }
            return aaa006zz.WisePOS_TOUCH;
        }
        return aaa006zz.WisePOS_TOUCH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa003(boolean z) {
        this.aaa007.onDeviceHere(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa005(boolean z, Hashtable hashtable) {
        this.aaa007.onReturnReadDisplaySettingsResult(z, hashtable);
    }

    void aaa016(final boolean z, final Hashtable<String, String> hashtable) {
        aaa012("[onReturnVirtuCryptPEDICommandResult] isSuccess : " + z + ", data : " + hashtable);
        ccc039zz.aaa001zz aaa001zzVarAaa007 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar = ccc039zz.aaa001zz.SEND_VIRTU_CRYPT_PEDI_RESPONSE;
        if (aaa001zzVarAaa007 == aaa001zzVar) {
            if (this.aaa019.aaa000() == 1) {
                this.aaa020.aaa014(z);
                this.aaa020.aaa003(hashtable);
                if (z) {
                    this.aaa019.aaa000(aaa001zzVar, 2);
                    aaa005("35", ccc071zz.aaa001(this.aaa019.aaa003().get("CC")));
                    return;
                }
                this.aaa019.aaa000(aaa001zzVar, 3);
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa022();
                    return;
                }
                return;
            }
            if (this.aaa019.aaa000() == 2) {
                this.aaa020.aaa014(z);
                this.aaa020.aaa003(hashtable);
                this.aaa019.aaa000(aaa001zzVar, 3);
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar2 = this.aaa010;
                if (aaa003zzVar2 != null) {
                    aaa003zzVar2.aaa022();
                    return;
                }
                return;
            }
            if (this.aaa019.aaa000() == 3) {
                ccc061zz.aaa000("[BBDeviceController] [onReturnVirtuCryptPEDICommandResult]", " isSuccess : " + z + ", data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
                this.aaa019.aaa010();
                this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_VIRTU_CRYPT_PEDI_COMMAND_RESULT);
                aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda85
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa008(z, hashtable);
                    }
                });
                return;
            }
            this.aaa019.aaa010();
            return;
        }
        this.aaa019.aaa010();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa005(Hashtable hashtable) {
        this.aaa007.onReturnReadTerminalSettingResult(hashtable);
    }

    void aaa003(Error error, String str) {
        aaa000(error, str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa005(boolean z, String str) {
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_UPDATE_DISPLAY_SETTINGS_PROGRESS);
        this.aaa007.onReturnUpdateDisplaySettingsProgress(100.0d);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_UPDATE_DISPLAY_SETTINGS_RESULT);
        this.aaa007.onReturnUpdateDisplaySettingsResult(z, str);
    }

    void aaa003(int i) {
        aaa012("[onReturnKeyInjectionSwitchAcquirerNormalMode] mode : " + i);
        ccc039zz.aaa001zz aaa001zzVarAaa007 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar = ccc039zz.aaa001zz.VERIFY_7MD_KEY_STATUS;
        if (aaa001zzVarAaa007 == aaa001zzVar) {
            if (this.aaa019.aaa000() == 0) {
                this.aaa019.aaa000(aaa001zzVar, 1);
                aaa000(0);
                return;
            }
            if (this.aaa019.aaa000() == 11) {
                aaa003(Error.INPUT_INVALID, "Mutual Authentication Fail " + (((((((((this.aaa020.aaa020() + this.aaa020.aaa019()) + this.aaa020.aaa027()) + this.aaa020.aaa029()) + this.aaa020.aaa005()) + this.aaa020.aaa031()) + this.aaa020.aaa028()) + this.aaa020.aaa030()) + this.aaa020.aaa006()) + this.aaa020.aaa032()));
                this.aaa019.aaa010();
                return;
            }
            this.aaa019.aaa010();
            return;
        }
        ccc039zz.aaa001zz aaa001zzVarAaa0072 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar2 = ccc039zz.aaa001zz.ENABLE_ENABLEMENT_TOKEN;
        if (aaa001zzVarAaa0072 == aaa001zzVar2) {
            if (this.aaa019.aaa000() == 0) {
                this.aaa019.aaa000(aaa001zzVar2, 1);
                aaa009();
                return;
            } else {
                if (this.aaa019.aaa000() == 2) {
                    if (this.aaa020.aaa012()) {
                        aaa001(TerminalSettingStatus.SUCCESS);
                    } else {
                        aaa001(TerminalSettingStatus.TAG_NOT_ALLOWED_TO_ACCESS);
                    }
                    this.aaa019.aaa010();
                    return;
                }
                this.aaa019.aaa010();
                return;
            }
        }
        ccc039zz.aaa001zz aaa001zzVarAaa0073 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar3 = ccc039zz.aaa001zz.VIRTU_CRYPT_PEDI_REQUEST;
        if (aaa001zzVarAaa0073 == aaa001zzVar3) {
            if (this.aaa019.aaa000() == 0) {
                this.aaa019.aaa000(aaa001zzVar3, 1);
                bbb022();
                return;
            } else if (this.aaa019.aaa000() == 2) {
                aaa010(this.aaa020.aaa057(), this.aaa020.aaa034());
                return;
            } else {
                this.aaa019.aaa010();
                return;
            }
        }
        ccc039zz.aaa001zz aaa001zzVarAaa0074 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar4 = ccc039zz.aaa001zz.SEND_VIRTU_CRYPT_PEDI_RESPONSE;
        if (aaa001zzVarAaa0074 == aaa001zzVar4) {
            if (this.aaa019.aaa000() == 0) {
                this.aaa019.aaa000(aaa001zzVar4, 1);
                aaa005("2F", ccc071zz.aaa001(this.aaa019.aaa003().get("CD")));
                return;
            } else if (this.aaa019.aaa000() == 3) {
                aaa016(this.aaa020.aaa060(), this.aaa020.aaa043());
                return;
            } else {
                this.aaa019.aaa010();
                return;
            }
        }
        ccc039zz.aaa001zz aaa001zzVarAaa0075 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar5 = ccc039zz.aaa001zz.VIRTU_CRYPT_PEDK_REQUEST;
        if (aaa001zzVarAaa0075 == aaa001zzVar5) {
            if (this.aaa019.aaa000() == 0) {
                this.aaa019.aaa000(aaa001zzVar5, 1);
                aaa002(0, this.aaa020.aaa045());
                return;
            } else {
                if (this.aaa019.aaa000() == 3) {
                    this.aaa020.aaa035().remove("blockIndex");
                    this.aaa020.aaa035().remove("maxBlockIndex");
                    aaa011(this.aaa020.aaa058(), this.aaa020.aaa035());
                    return;
                }
                this.aaa019.aaa010();
                return;
            }
        }
        ccc039zz.aaa001zz aaa001zzVarAaa0076 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar6 = ccc039zz.aaa001zz.SEND_VIRTU_CRYPT_PEDK_RESPONSE;
        if (aaa001zzVarAaa0076 == aaa001zzVar6) {
            if (this.aaa019.aaa000() == 0) {
                this.aaa019.aaa000(aaa001zzVar6, 1);
                aaa020(this.aaa019.aaa003());
                return;
            } else if (this.aaa019.aaa000() == 2) {
                aaa017(this.aaa020.aaa061(), this.aaa020.aaa044());
                return;
            } else {
                this.aaa019.aaa010();
                return;
            }
        }
        this.aaa019.aaa010();
    }

    void aaa008() {
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar;
        aaa001zz aaa001zzVar = this.aaa015;
        if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
            if (this.aaa000.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
                if (this.aaa014 && (aaa003zzVar = this.aaa010) != null) {
                    aaa003zzVar.aaa037();
                    this.aaa010.aaa015();
                }
                this.aaa008.aaa032();
                aaa001(aaa001zz.NONE);
                return;
            }
            aaa003(Error.BTV4_NOT_SUPPORTED, "");
            return;
        }
        if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot disconnect bluetooth low energy because blutooth low energy is not connected. Current connection mode is bluetooth low energy");
            return;
        }
        if (aaa001zzVar == aaa001zz.SERIAL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot disconnect bluetooth low energy because blutooth low energy is not connected. Current connection mode is serial");
            return;
        }
        if (aaa001zzVar == aaa001zz.USB) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot disconnect bluetooth low energy because blutooth low energy is not connected. Current connection mode is USB");
        } else if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot disconnect bluetooth low energy because blutooth low energy is not connected. Current connection mode is test channel");
        } else {
            aaa003(Error.COMM_LINK_UNINITIALIZED, "Cannot disconnect bluetooth low energy because blutooth low energy is not connected.");
        }
    }

    void aaa002(CAPK capk) {
        synchronized (aaa024) {
            if (this.aaa014) {
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa001(capk);
                }
                return;
            }
            aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command updateCAPK");
        }
    }

    void aaa020(boolean z) {
        if (this.aaa019.aaa007() == ccc039zz.aaa001zz.CLEAR_FIRMWARE_DEBUG_LOG) {
            this.aaa019.aaa010();
            if (!this.aaa020.aaa047()) {
                if (z) {
                    aaa001(TerminalSettingStatus.SUCCESS);
                    return;
                } else {
                    aaa001(TerminalSettingStatus.TAG_NOT_ALLOWED_TO_ACCESS);
                    return;
                }
            }
            this.aaa020.aaa000(false);
            try {
                if (z) {
                    aaa017(false, "DF2F" + ccc071zz.aaa004(2) + "429BDE" + ccc071zz.aaa004(1) + TlvMap.SET_BUZZER_ENABLED_VALUE);
                    return;
                } else {
                    aaa017(false, "DF2F" + ccc071zz.aaa004(2) + "429BDE" + ccc071zz.aaa004(1) + TlvMap.SET_BUZZER_DISABLED_VALUE);
                    return;
                }
            } catch (Throwable unused) {
                aaa003(Error.UNKNOWN, "(error code - 8005)");
                return;
            }
        }
        this.aaa019.aaa010();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa004(String str) {
        if (this.aaa020.aaa001().aaa000(ccc038zz.aaa000zz.ON_ERROR, Error.FAIL_TO_START_BT)) {
            return;
        }
        ccc061zz.aaa000("[BBDeviceController] [onBTDisconnected] (2)", " " + str, DebugLogType.CALLBACK, false);
        this.aaa007.onBTDisconnected();
    }

    void aaa001(final CAPK capk) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnCAPKDetail]", " capk : " + ccc071zz.aaa000(capk), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_CAPK_DETAIL);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(capk);
            }
        });
    }

    void aaa014(final boolean z, final Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnNfcDataExchangeResult]", " isSuccess : " + z + ", data : " + ccc071zz.aaa001(hashtable, aaa004zz.MASK_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_NFC_DATA_EXCHANGE_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa004(z, hashtable);
            }
        });
    }

    void aaa005(final Error error, final String str) {
        ccc061zz.aaa000("[BBDeviceController] [onError]", " errorState : " + error + ", errorMessage : " + str, DebugLogType.CALLBACK, false);
        if (aaa012() == aaa001zz.SERIAL && aaa022() == aaa006zz.WisePOS_SEVEN) {
            ccc051zz.aaa001(this.aaa000);
        }
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_ERROR, error);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa002(error, str);
            }
        });
    }

    void aaa019(final Hashtable<String, Object> hashtable) {
        Handler handler = aaa026;
        if (handler == null || this.aaa007 == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda135
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa008(hashtable);
            }
        });
    }

    private synchronized void aaa014() {
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar;
        if (aaa022() == aaa006zz.WisePOS_SEVEN && aaa012() == aaa001zz.SERIAL && this.aaa014 && (aaa003zzVar = this.aaa010) != null) {
            aaa003zzVar.aaa001(false);
        }
    }

    void aaa001(boolean z, String str, String str2, int i) {
        if (this.aaa019.aaa007() == ccc039zz.aaa001zz.GET_FIRMWARE_DEBUG_LOG) {
            this.aaa020.aaa001(str);
            if (z && !str.equalsIgnoreCase("") && str2.equalsIgnoreCase("")) {
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa000(i + 1);
                    return;
                }
                return;
            }
            this.aaa019.aaa010();
            if (!this.aaa020.aaa056()) {
                if (z) {
                    if (str2.equalsIgnoreCase("")) {
                        Hashtable<String, Object> hashtable = new Hashtable<>();
                        hashtable.put("DF874D", "");
                        aaa015(hashtable);
                        return;
                    } else {
                        if (str2.equalsIgnoreCase(ccc049zz.aaa000(this.aaa020.aaa015()))) {
                            Hashtable<String, Object> hashtable2 = new Hashtable<>();
                            hashtable2.put("DF874D", this.aaa020.aaa015());
                            aaa015(hashtable2);
                            return;
                        }
                        aaa005(Error.UNKNOWN, "(error code - 8003)");
                        return;
                    }
                }
                Hashtable<String, Object> hashtable3 = new Hashtable<>();
                hashtable3.put("DF874D", TerminalSettingStatus.TAG_NOT_ALLOWED_TO_ACCESS);
                aaa015(hashtable3);
                return;
            }
            this.aaa020.aaa010(false);
            if (z) {
                if (str2.equalsIgnoreCase("")) {
                    try {
                        aaa017(false, "DF2F" + ccc071zz.aaa004(2) + "429BDF874D" + ccc071zz.aaa004(0) + "DE" + ccc071zz.aaa004(1) + TlvMap.SET_BUZZER_ENABLED_VALUE);
                        return;
                    } catch (Throwable unused) {
                        aaa003(Error.UNKNOWN, "(error code - 8004)");
                        return;
                    }
                } else if (str2.equalsIgnoreCase(ccc049zz.aaa000(this.aaa020.aaa015()))) {
                    try {
                        aaa017(false, "DF2F" + ccc071zz.aaa004(2) + "429BDF874D" + ccc071zz.aaa004(this.aaa020.aaa015().length() / 2) + this.aaa020.aaa015() + "DE" + ccc071zz.aaa004(1) + TlvMap.SET_BUZZER_ENABLED_VALUE);
                        return;
                    } catch (Throwable unused2) {
                        aaa003(Error.UNKNOWN, "(error code - 8000)");
                        return;
                    }
                } else {
                    try {
                        aaa017(true, "hash doesn't match");
                        return;
                    } catch (Throwable unused3) {
                        aaa003(Error.UNKNOWN, "(error code - 8001)");
                        return;
                    }
                }
            }
            try {
                aaa017(false, "DF2F" + ccc071zz.aaa004(2) + "429BDE" + ccc071zz.aaa004(1) + TlvMap.SET_BUZZER_DISABLED_VALUE);
                return;
            } catch (Throwable unused4) {
                aaa003(Error.UNKNOWN, "Hash doesn't match (error code - 8002)");
                return;
            }
        }
        this.aaa019.aaa010();
    }

    void aaa004(final List<BluetoothDevice> list) {
        if (list != null) {
            Collections.sort(list, this.aaa023);
        }
        ccc061zz.aaa000("[BBDeviceController] [onBTReturnScanResults] (4)", " foundDevices : " + ccc071zz.aaa000(list), DebugLogType.CALLBACK, false);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_BT_RETURN_SCAN_RESULTS);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda96
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa001(list);
            }
        });
    }

    synchronized void aaa005(String str, String str2) {
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa006(str, str2);
        }
    }

    synchronized void aaa010() {
        aaa012("[enableEnablementToken]");
        if (this.aaa019.aaa009()) {
            aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            return;
        }
        this.aaa019.aaa000(ccc039zz.aaa001zz.ENABLE_ENABLEMENT_TOKEN, 0);
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa019();
        }
    }

    void aaa015(String str) {
        ccc061zz.aaa000("[BBDeviceController] [onRequestEmvL2TestDekDet]", " dek : " + str, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda95
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceController.aaa049();
            }
        });
    }

    void aaa017(boolean z, String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        if (z) {
            aaa033 = false;
        }
        Class<?> clsLoadClass = aaa027.loadClass("com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController");
        for (Method method : clsLoadClass.getDeclaredMethods()) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (method.getName().equalsIgnoreCase("getInstance") && parameterTypes.length == 2) {
                method.setAccessible(true);
                clsLoadClass.getDeclaredMethod("internalFunction1", Boolean.TYPE, String.class).invoke(method.invoke(null, null, null), Boolean.valueOf(z), str);
                return;
            }
        }
    }

    boolean aaa002() {
        int i = this.aaa000.getApplicationInfo().targetSdkVersion;
        StringBuilder sbAppend = new StringBuilder("[checkBluetoothPermission] targetSdkVersion : ").append(i).append(", Build.VERSION.SDK_INT : ");
        int i2 = Build.VERSION.SDK_INT;
        aaa012(sbAppend.append(i2).toString());
        if (i2 >= 31 && i >= 31) {
            aaa012("[checkBluetoothPermission] Manifest.permission.BLUETOOTH_SCAN Manifest.permission.BLUETOOTH_CONNECT");
            return ContextCompat.checkSelfPermission(this.aaa000, "android.permission.BLUETOOTH_SCAN") == 0 && ContextCompat.checkSelfPermission(this.aaa000, "android.permission.BLUETOOTH_CONNECT") == 0;
        }
        aaa012("[checkBluetoothPermission] Manifest.permission.BLUETOOTH Manifest.permission.BLUETOOTH_ADMIN");
        return ContextCompat.checkSelfPermission(this.aaa000, "android.permission.BLUETOOTH") == 0 && ContextCompat.checkSelfPermission(this.aaa000, "android.permission.BLUETOOTH_ADMIN") == 0;
    }

    private void aaa015() {
        if (this.aaa014) {
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa029();
                return;
            }
            return;
        }
        this.aaa006.aaa000();
        aaa033 = false;
        aaa000((ccc062zz) new ccc057zz((byte) 8, new byte[]{16}));
    }

    void aaa018(final String str) {
        ccc038zz ccc038zzVarAaa001 = this.aaa020.aaa001();
        ccc038zz.aaa000zz aaa000zzVar = ccc038zz.aaa000zz.ON_RETURN_BATCH_DATA;
        ccc038zzVarAaa001.aaa000(aaa000zzVar);
        ccc061zz.aaa000("[BBDeviceController] [onReturnBatchData]", " tlv : ***", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001(ccc066zz.aaa000zz.RETURN_BATCH_DATA);
        this.aaa020.aaa001().aaa000(aaa000zzVar);
        this.aaa020.aaa001().aaa001(aaa000zzVar);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa008(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa004(boolean z) {
        ccc071zz.aaa002(100);
        this.aaa007.onReturnAmountConfirmResult(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa004(boolean z, String str) {
        this.aaa007.onReturnEmvCardNumber(z, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa006(Hashtable hashtable) {
        this.aaa007.onReturnUpdateAIDResult(hashtable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa004(Hashtable hashtable) {
        this.aaa007.onReturnReadAIDResult(hashtable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa006(boolean z, String str) {
        this.aaa007.onReturnUpdateDisplayStringResult(z, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa006(boolean z, Hashtable hashtable) {
        this.aaa007.onReturnReadDisplaySettingsResult(z, hashtable);
    }

    void aaa004(final Error error, final String str) {
        ccc061zz.aaa000("[BBDeviceController] [onError]", " errorState : " + error + ", errorMessage : " + str, DebugLogType.CALLBACK, false);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_ERROR, error);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa001(error, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa006(boolean z) {
        this.aaa007.onReturnDisableAccountSelectionResult(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa006(String str) {
        this.aaa007.onRequestOnlineProcess(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa004(boolean z, Hashtable hashtable) {
        this.aaa007.onReturnNfcDataExchangeResult(z, hashtable);
    }

    void aaa023(final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnDisableInputAmountResult]", " isSuccess : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_DISABLE_INPUT_AMOUNT_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda138
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa008(z);
            }
        });
    }

    void aaa004(String str, String str2) {
        aaa012("[onReturnGetPublicKeyFromWCorSP] keyType : " + str + ", publicKey : " + str2);
        ccc039zz.aaa001zz aaa001zzVarAaa007 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar = ccc039zz.aaa001zz.VERIFY_7MD_KEY_STATUS;
        if (aaa001zzVarAaa007 == aaa001zzVar) {
            if (this.aaa019.aaa000() == 2) {
                this.aaa020.aaa014(str2);
                this.aaa019.aaa000(aaa001zzVar, 3);
                aaa001(0, "51");
                return;
            }
            if (this.aaa019.aaa000() == 3) {
                this.aaa020.aaa016(str2);
                this.aaa019.aaa000(aaa001zzVar, 4);
                aaa000(0, "53");
                return;
            }
            if (this.aaa019.aaa000() == 5) {
                this.aaa020.aaa018(str2);
                this.aaa019.aaa000(aaa001zzVar, 6);
                aaa000(1);
                return;
            }
            if (this.aaa019.aaa000() == 7) {
                this.aaa020.aaa015(str2);
                this.aaa019.aaa000(aaa001zzVar, 8);
                aaa001(1, "56");
                return;
            } else if (this.aaa019.aaa000() == 8) {
                this.aaa020.aaa017(str2);
                this.aaa019.aaa000(aaa001zzVar, 9);
                aaa000(1, "58");
                return;
            } else {
                if (this.aaa019.aaa000() == 10) {
                    this.aaa020.aaa019(str2);
                    this.aaa019.aaa000(aaa001zzVar, 11);
                    com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                    if (aaa003zzVar != null) {
                        aaa003zzVar.aaa022();
                        return;
                    }
                    return;
                }
                this.aaa019.aaa010();
                return;
            }
        }
        this.aaa019.aaa010();
    }

    void aaa018(final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnAmountConfirmResult]", " isConfirmed : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001(ccc066zz.aaa000zz.RETURN_AMOUNT_CONFIRM_RESULT);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_AMOUNT_CONFIRM_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda91
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa004(z);
            }
        });
    }

    synchronized void aaa020(Hashtable<String, String> hashtable) {
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa023(hashtable);
        }
    }

    void aaa023(String str) {
        try {
            aaa000(false, ccc071zz.aaa000((Object) "440D", "DF30") + ccc071zz.aaa000((Object) str, "DF6C"), aaa028);
        } catch (Throwable unused) {
            aaa003(Error.UNKNOWN, "(error code - 8012)");
        }
    }

    void aaa018(Hashtable<String, String> hashtable) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Class<?> clsLoadClass = aaa027.loadClass("com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController");
        for (Method method : clsLoadClass.getDeclaredMethods()) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (method.getName().equalsIgnoreCase("getInstance") && parameterTypes.length == 2) {
                method.setAccessible(true);
                clsLoadClass.getDeclaredMethod("internalFunction2", Hashtable.class).invoke(method.invoke(null, null, null), hashtable);
                return;
            }
        }
    }

    private void aaa016() {
        if (this.aaa014) {
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa027();
                return;
            }
            return;
        }
        if (aaa000(true)) {
            aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command getDeviceInfo");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa012(boolean z) {
        this.aaa007.onReturnPowerOffIccResult(z);
    }

    void aaa012(final boolean z, final Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnApduResult]", " isSuccess : " + z + ", data : " + ccc071zz.aaa000(hashtable, aaa004zz.MASK_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        if (this.aaa020.aaa025() == ccc066zz.aaa002zz.SEMI_PASS_THROUGH) {
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_APDU_RESULT);
            this.aaa007.onReturnApduResult(z, hashtable);
            return;
        }
        ccc038zz ccc038zzVarAaa001 = this.aaa020.aaa001();
        ccc038zz.aaa000zz aaa000zzVar = ccc038zz.aaa000zz.ON_RETURN_APDU_RESULT;
        ccc038zzVarAaa001.aaa001(aaa000zzVar);
        this.aaa020.aaa001().aaa001(aaa000zzVar);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa002(z, hashtable);
            }
        });
    }

    synchronized void aaa002(String str, String str2) {
        if (this.aaa019.aaa009()) {
            aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            return;
        }
        this.aaa019.aaa000(ccc039zz.aaa001zz.KEY_INJECTION_SET_INTERNAL_KEY_ENCRYPTION_KEY);
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa002(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa007(boolean z, String str) {
        try {
            Class<?> clsLoadClass = aaa027.loadClass("com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController");
            for (Method method : clsLoadClass.getDeclaredMethods()) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (method.getName().equalsIgnoreCase("getInstance") && parameterTypes.length == 2) {
                    method.setAccessible(true);
                    clsLoadClass.getDeclaredMethod("internalFunction1", Boolean.TYPE, String.class).invoke(method.invoke(null, null, null), Boolean.valueOf(z), str);
                    return;
                }
            }
        } catch (ClassNotFoundException e) {
            aaa012("[otaFunctionSendDataToOtaControllerThroughInternalFunction1] e : " + e.toString());
        } catch (Exception e2) {
            aaa012("[otaFunctionSendDataToOtaControllerThroughInternalFunction1] e : " + e2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa011(String str) {
        this.aaa007.onReturnReversalData(str);
    }

    void aaa011(final boolean z, final String str) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnEmvCardNumber]", " cardNumber : ***", DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_EMV_CARD_NUMBER);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda129
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa004(z, str);
            }
        });
    }

    synchronized void aaa002(int i, String str) {
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa003(i, str);
        }
    }

    void aaa012(boolean z, String str) {
        String strAaa000;
        this.aaa019.aaa010();
        try {
            String str2 = ccc071zz.aaa000((Object) "4CE9", "DF30") + ccc071zz.aaa000(Boolean.valueOf(z), "DE");
            if (ccc071zz.aaa008(str) && (strAaa000 = ccc071zz.aaa000((Object) str, "DF8666")) != null) {
                str2 = str2 + strAaa000;
            }
            aaa017(false, str2);
        } catch (Throwable unused) {
            aaa003(Error.UNKNOWN, "(error code - 8006)");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa011(boolean z) {
        this.aaa007.onReturnEnableInputAmountResult(z);
    }

    void aaa011(final boolean z, final Hashtable<String, String> hashtable) {
        aaa012("[onRequestVirtuCryptPEDKResponse] isSuccess : " + z + ", data : " + hashtable);
        ccc039zz.aaa001zz aaa001zzVarAaa007 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar = ccc039zz.aaa001zz.VIRTU_CRYPT_PEDK_REQUEST;
        if (aaa001zzVarAaa007 == aaa001zzVar) {
            if (this.aaa019.aaa000() == 1) {
                this.aaa020.aaa012(z);
                this.aaa020.aaa002(hashtable);
                if (z) {
                    this.aaa019.aaa000(aaa001zzVar, 2);
                    com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                    if (aaa003zzVar != null) {
                        aaa003zzVar.aaa003(1, "");
                        return;
                    }
                    return;
                }
                this.aaa019.aaa000(aaa001zzVar, 3);
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar2 = this.aaa010;
                if (aaa003zzVar2 != null) {
                    aaa003zzVar2.aaa022();
                    return;
                }
                return;
            }
            if (this.aaa019.aaa000() == 2) {
                String str = hashtable.get("blockIndex");
                String str2 = hashtable.get("maxBlockIndex");
                if (str != null && str2 != null) {
                    int iAaa004 = ccc071zz.aaa004(str);
                    int iAaa0042 = ccc071zz.aaa004(str2);
                    String str3 = hashtable.get("AP");
                    if (iAaa004 > 1) {
                        str3 = this.aaa020.aaa035().get("AP") + str3;
                    }
                    this.aaa020.aaa035().put("AP", str3);
                    aaa012("[onRequestVirtuCryptPEDKResponse] sessionDataWithinConnection.getRequestVirtuCryptPEDKResponse() : " + this.aaa020.aaa035());
                    if (iAaa004 < iAaa0042) {
                        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar3 = this.aaa010;
                        if (aaa003zzVar3 != null) {
                            aaa003zzVar3.aaa003(iAaa004 + 1, "");
                            return;
                        }
                        return;
                    }
                    this.aaa019.aaa000(aaa001zzVar, 3);
                    com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar4 = this.aaa010;
                    if (aaa003zzVar4 != null) {
                        aaa003zzVar4.aaa022();
                        return;
                    }
                    return;
                }
                this.aaa019.aaa010();
                return;
            }
            if (this.aaa019.aaa000() == 3) {
                ccc061zz.aaa000("[BBDeviceController] [onRequestVirtuCryptPEDKResponse]", " isSuccess : " + z + ", data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
                this.aaa019.aaa010();
                this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_VIRTU_CRYPT_PEDK_RESPONSE);
                aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda75
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.aaa001(z, hashtable);
                    }
                });
                return;
            }
            this.aaa019.aaa010();
            return;
        }
        this.aaa019.aaa010();
    }

    void aaa000(ccc057zz ccc057zzVar) {
        aaa001zz aaa001zzVar;
        if (aaa031) {
            return;
        }
        if ((this.aaa006.aaa001() != ccc057zzVar.aaa002() || ccc057zzVar.aaa003() == 0) && ((aaa001zzVar = this.aaa015) == aaa001zz.BLUETOOTH_2 || aaa001zzVar == aaa001zz.BLUETOOTH_4)) {
            this.aaa008.aaa015();
        }
        this.aaa006.aaa000(ccc057zzVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(List list) {
        this.aaa007.onBTReturnScanResults(list);
    }

    boolean aaa004() {
        return ContextCompat.checkSelfPermission(this.aaa000, "android.permission.READ_PHONE_STATE") == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(CheckCardResult checkCardResult, Hashtable hashtable) {
        if (checkCardResult == CheckCardResult.INSERTED_CARD || checkCardResult == CheckCardResult.MSR) {
            ccc071zz.aaa002(100);
        }
        this.aaa007.onReturnCheckCardResult(checkCardResult, hashtable);
        if (hashtable != null) {
            hashtable.clear();
        }
    }

    aaa001zz aaa012() {
        return this.aaa015;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(Hashtable hashtable, boolean z, List list) {
        hashtable.remove("supportSPoCFeature");
        hashtable.remove("internalTamperState");
        if (z) {
            hashtable.remove("fskPublicKeyHash");
        }
        Hashtable<String, String> hashtableAaa000 = aaa000((Hashtable<String, String>) hashtable, (List<String>) list);
        ccc061zz.aaa000("[BBDeviceController] [onReturnDeviceInfo]", " deviceInfoTable : " + ccc071zz.aaa001(hashtableAaa000, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa007.onReturnDeviceInfo(hashtableAaa000);
    }

    void aaa001(final PrintResult printResult) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnPrintResult]", " printResult : " + printResult, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_PRINT_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(printResult);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0449  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Hashtable<java.lang.String, java.lang.String> aaa000(java.util.Hashtable<java.lang.String, java.lang.String> r25) {
        /*
            Method dump skipped, instruction units count: 1103
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.BBDeviceController.aaa000(java.util.Hashtable):java.util.Hashtable");
    }

    void aaa001(final AmountInputResult amountInputResult, final Hashtable<String, String> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnAmount]", " result : " + amountInputResult + ", data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001(ccc066zz.aaa000zz.RETURN_AMOUNT);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_AMOUNT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda74
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(amountInputResult, hashtable);
            }
        });
    }

    void aaa003(String str, String str2) {
        aaa012("[onReturnGetCertFromWCorSP] keyType : " + str + ", cert : " + str2);
        ccc039zz.aaa001zz aaa001zzVarAaa007 = this.aaa019.aaa007();
        ccc039zz.aaa001zz aaa001zzVar = ccc039zz.aaa001zz.VERIFY_7MD_KEY_STATUS;
        if (aaa001zzVarAaa007 == aaa001zzVar) {
            if (this.aaa019.aaa000() == 4) {
                this.aaa020.aaa004(str2);
                this.aaa019.aaa000(aaa001zzVar, 5);
                aaa001(0, "52");
                return;
            } else {
                if (this.aaa019.aaa000() == 9) {
                    this.aaa020.aaa005(str2);
                    this.aaa019.aaa000(aaa001zzVar, 10);
                    aaa001(1, TlvMap.TAG_TRACK_2_DATA);
                    return;
                }
                this.aaa019.aaa010();
                return;
            }
        }
        this.aaa019.aaa010();
    }

    void aaa001(final TerminalSettingStatus terminalSettingStatus) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnUpdateTerminalSettingResult]", " terminalSettingStatus : " + terminalSettingStatus, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_UPDATE_TERMINAL_SETTING_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda115
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(terminalSettingStatus);
            }
        });
    }

    void aaa001(final DisplayPromptResult displayPromptResult) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnDisplayPromptResult]", " result : " + displayPromptResult, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_DISPLAY_PROMPT_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda120
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(displayPromptResult);
            }
        });
    }

    void aaa001(final FunctionKey functionKey) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnFunctionKey]", " funcKey : " + functionKey, DebugLogType.CALLBACK, false);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_FUNCTION_KEY);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(functionKey);
            }
        });
    }

    void aaa001(final int i, final int i2, final String str) {
        ccc061zz.aaa000("[BBDeviceController] [onHardwareFunctionalTestResult]", " result : " + i + ", itemIndex : " + i2 + ", errorMessage : " + str, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_HARDWARE_FUNCTIONAL_TEST_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda126
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(i, i2, str);
            }
        });
    }

    boolean aaa003() {
        return (Build.VERSION.SDK_INT >= 31 && this.aaa000.getApplicationInfo().targetSdkVersion >= 31) || ContextCompat.checkSelfPermission(this.aaa000, "android.permission.ACCESS_COARSE_LOCATION") == 0 || ContextCompat.checkSelfPermission(this.aaa000, "android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    void aaa001(final AccountSelectionResult accountSelectionResult, final int i) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnAccountSelectionResult]", " AccountSelectionResult : " + accountSelectionResult + ", selectedAccountType : " + i, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_ACCOUNT_SELECTION_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(accountSelectionResult, i);
            }
        });
    }

    synchronized void aaa003(String str) {
        if (this.aaa019.aaa009()) {
            aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            return;
        }
        this.aaa019.aaa000(ccc039zz.aaa001zz.KEY_INJECTION_GET_KEK);
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa007(str);
        }
    }

    void aaa001(final AmountInputType amountInputType) {
        ccc061zz.aaa000("[BBDeviceController] [onRequestOtherAmount]", " amountInputType : " + amountInputType, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_OTHER_AMOUNT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(amountInputType);
            }
        });
    }

    void aaa001(final ArrayList<String> arrayList) {
        ccc061zz.aaa000("[BBDeviceController] [onRequestSelectApplication]", " appList : " + arrayList, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001(ccc066zz.aaa000zz.REQUEST_SELECT_APPLICATION);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_SELECT_APPLICATION);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda123
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(arrayList);
            }
        });
    }

    void aaa001(final PinEntrySource pinEntrySource) {
        ccc061zz.aaa000("[BBDeviceController] [onRequestPinEntry]", " pinEntrySource : " + pinEntrySource, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001(ccc066zz.aaa000zz.REQUEST_PIN_ENTRY);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_PIN_ENTRY);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda133
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(pinEntrySource);
            }
        });
    }

    static String aaa011() {
        return "3.31.0";
    }

    void aaa001(final ManualPanEntryType manualPanEntryType) {
        ccc061zz.aaa000("[BBDeviceController] [onRequestManualPanEntry]", " manualPanEntry : " + manualPanEntryType, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001(ccc066zz.aaa000zz.REQUEST_MANUAL_PAN_ENTRY);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_MANUAL_PAN_ENTRY);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(manualPanEntryType);
            }
        });
    }

    void aaa001(final PinPadTouchEvent pinPadTouchEvent) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnAccessiblePINPadTouchEvent]", " pinPadTouchEvent : " + pinPadTouchEvent, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_ACCESSIBLE_PIN_PAD_TOUCH_EVENT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda106
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(pinPadTouchEvent);
            }
        });
    }

    void aaa001(final DisplayText displayText, final String str) {
        this.aaa019.aaa010();
        if (this.aaa020.aaa059()) {
            this.aaa020.aaa013(false);
        }
        if ((this.aaa020.aaa000(ccc066zz.aaa000zz.START_EMV) || this.aaa020.aaa000(ccc066zz.aaa000zz.START_EMV_SUCCEED)) && displayText == DisplayText.CARD_INSERTED) {
            return;
        }
        if (displayText == DisplayText.PROCESSING) {
            this.aaa020.aaa001(ccc066zz.aaa000zz.REQUEST_DISPLAY_TEXT_PROCESSING);
        } else if (displayText == DisplayText.REMOVE_CARD || displayText == DisplayText.APPROVED || displayText == DisplayText.SHOW_THANK_YOU) {
            this.aaa020.aaa001(ccc066zz.aaa000zz.IDLE);
        }
        DisplayText displayText2 = DisplayText.APPROVED;
        if (displayText == displayText2) {
            this.aaa020.aaa001().aaa000(ccc038zz.aaa000zz.ON_REQUEST_DISPLAY_TEXT, displayText2);
        }
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_DISPLAY_TEXT, displayText);
        ccc061zz.aaa000("[BBDeviceController] [onRequestDisplayText]", " displayText : " + displayText + ", displayTextLanguage : " + str, DebugLogType.CALLBACK, false);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda80
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(displayText, str);
            }
        });
    }

    void aaa001(final String str, final int i) {
        ccc061zz.aaa000("[BBDeviceController] [onRequestDisplayAsterisk]", " unmaskedDigits : " + str + ", numOfAsterisk : " + i, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_DISPLAY_ASTERISK);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda90
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(str, i);
            }
        });
    }

    void aaa001(final ContactlessStatus contactlessStatus) {
        ccc061zz.aaa000("[BBDeviceController] [onRequestDisplayLEDIndicator]", " status : " + contactlessStatus, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_DISPLAY_LED_INDICATOR);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda92
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(contactlessStatus);
            }
        });
    }

    void aaa001(final ContactlessStatusTone contactlessStatusTone) {
        ccc061zz.aaa000("[BBDeviceController] [onRequestProduceAudioTone]", " tone : " + contactlessStatusTone, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_PRODUCE_AUDIO_TONE);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda69
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(contactlessStatusTone);
            }
        });
    }

    void aaa001(final CheckCardMode checkCardMode) {
        ccc061zz.aaa000("[BBDeviceController] [onWaitingForCard]", " checkCardMode : " + checkCardMode, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001(ccc066zz.aaa000zz.WAITING_FOR_CARD);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_WAITING_FOR_CARD);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda111
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(checkCardMode);
            }
        });
    }

    void aaa001(final int i, final boolean z) {
        ccc061zz.aaa000("[BBDeviceController] [onRequestPrintData]", " index : " + i + ", isReprint : " + z, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_REQUEST_PRINT_DATA);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda140
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(i, z);
            }
        });
    }

    void aaa001(final BatteryStatus batteryStatus) {
        if (this.aaa019.aaa007() == ccc039zz.aaa001zz.POWER_DOWN || this.aaa019.aaa007() == ccc039zz.aaa001zz.RESET_DEVICE) {
            return;
        }
        ccc038zz ccc038zzVarAaa001 = this.aaa020.aaa001();
        ccc038zz.aaa000zz aaa000zzVar = ccc038zz.aaa000zz.ON_BATTERY_LOW;
        BatteryStatus batteryStatus2 = BatteryStatus.CRITICALLY_LOW;
        if (ccc038zzVarAaa001.aaa000(aaa000zzVar, batteryStatus2) || this.aaa020.aaa001().aaa000(ccc038zz.aaa000zz.ON_POWER_DOWN) || this.aaa020.aaa001().aaa000(ccc038zz.aaa000zz.ON_DEVICE_RESET)) {
            return;
        }
        aaa002zz aaa002zzVarAaa013 = aaa013();
        aaa002zz aaa002zzVar = aaa002zz.CONNECTING;
        if (aaa002zzVarAaa013 != aaa002zzVar || ((this.aaa020.aaa017() != ccc066zz.aaa003zz.NORMAL_DEVICE_INFO && this.aaa020.aaa017() != ccc066zz.aaa003zz.SP_DEVICE_INFO) || batteryStatus != batteryStatus2 || (aaa012() != aaa001zz.BLUETOOTH_2 && aaa012() != aaa001zz.BLUETOOTH_4))) {
            ccc061zz.aaa000("[BBDeviceController] [onBatteryLow]", " batteryStatus : " + batteryStatus, DebugLogType.CALLBACK, false);
        }
        if (aaa013() == aaa002zzVar && ((this.aaa020.aaa017() == ccc066zz.aaa003zz.NORMAL_DEVICE_INFO || this.aaa020.aaa017() == ccc066zz.aaa003zz.SP_DEVICE_INFO) && batteryStatus == batteryStatus2)) {
            aaa000(aaa002zz.CONNECTED);
            aaa001zz aaa001zzVarAaa012 = aaa012();
            aaa001zz aaa001zzVar = aaa001zz.BLUETOOTH_2;
            if (aaa001zzVarAaa012 != aaa001zzVar && aaa012() != aaa001zz.BLUETOOTH_4) {
                if (aaa012() == aaa001zz.SERIAL) {
                    this.aaa020.aaa006(true);
                    this.aaa020.aaa011("Communication error during prefetch device info");
                    aaa046();
                } else if (aaa012() == aaa001zz.USB) {
                    bbb020();
                } else if (aaa012() == aaa001zz.TEST_CHANNEL) {
                    bbb019();
                }
            } else {
                this.aaa020.aaa001(ccc066zz.aaa003zz.NA);
                BluetoothDevice bluetoothDeviceAaa007 = this.aaa020.aaa007();
                if (bluetoothDeviceAaa007 != null) {
                    if (aaa012() == aaa001zzVar) {
                        aaa005(bluetoothDeviceAaa007);
                        return;
                    } else {
                        aaa007(bluetoothDeviceAaa007);
                        return;
                    }
                }
                return;
            }
        }
        this.aaa020.aaa001().aaa001(aaa000zzVar, batteryStatus);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda116
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(batteryStatus);
            }
        });
    }

    private Hashtable<String, String> aaa000(Hashtable<String, String> hashtable, List<String> list) {
        if (list.isEmpty()) {
            aaa012("[filterDeviceInfo] Checkpoint 2");
            return new Hashtable<>(hashtable);
        }
        aaa012("[filterDeviceInfo] Checkpoint 3");
        Hashtable<String, String> hashtable2 = new Hashtable<>();
        for (String str : list) {
            aaa012("[filterDeviceInfo] key : " + str + ", deviceInfoTable.get(" + str + ") : " + hashtable.get(str));
            if (hashtable.containsKey(str)) {
                hashtable2.put(str, hashtable.get(str));
            } else {
                hashtable2.put(str, "");
            }
        }
        return hashtable2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(Hashtable hashtable, Hashtable hashtable2, List list) {
        hashtable.remove("supportSPoCFeature");
        Hashtable<String, String> hashtableAaa000 = aaa000((Hashtable<String, String>) hashtable2, (List<String>) list);
        ccc061zz.aaa000("[BBDeviceController] [onReturnDeviceInfo]", " deviceInfoTable : " + ccc071zz.aaa001(hashtableAaa000, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa007.onReturnDeviceInfo(hashtableAaa000);
    }

    void aaa000(final TransactionResult transactionResult, Hashtable<String, String> hashtable) {
        TransactionResult transactionResult2 = TransactionResult.APPROVED;
        if (transactionResult == transactionResult2) {
            this.aaa020.aaa001().aaa000(ccc038zz.aaa000zz.ON_RETURN_TRANSACTION_RESULT, transactionResult2);
        }
        ccc061zz.aaa000("[BBDeviceController] [onReturnTransactionResult]", " transResult : " + transactionResult + ", data : " + ccc071zz.aaa001(hashtable, aaa004zz.SHOW_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        if (this.aaa020.aaa059()) {
            this.aaa020.aaa013(false);
        }
        this.aaa020.aaa001(ccc066zz.aaa000zz.IDLE);
        if (transactionResult == transactionResult2) {
            this.aaa020.aaa001().aaa000(ccc038zz.aaa000zz.ON_RETURN_TRANSACTION_RESULT, transactionResult2);
        }
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_TRANSACTION_RESULT, transactionResult);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda88
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(transactionResult);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(TransactionResult transactionResult) {
        this.aaa007.onReturnTransactionResult(transactionResult);
    }

    void aaa000(TransactionResult transactionResult, String str) {
        TransactionResult transactionResult2 = TransactionResult.APPROVED;
        if (transactionResult == transactionResult2) {
            this.aaa020.aaa001().aaa000(ccc038zz.aaa000zz.ON_RETURN_TRANSACTION_RESULT, transactionResult2);
        }
        ccc061zz.aaa000("[BBDeviceController] [onReturnTransactionResult]", " transResult : " + transactionResult + ", authorisationResponseCode : " + str, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        if (this.aaa020.aaa059()) {
            this.aaa020.aaa013(false);
        }
        this.aaa020.aaa001(ccc066zz.aaa000zz.IDLE);
        if (transactionResult == transactionResult2) {
            this.aaa020.aaa001().aaa000(ccc038zz.aaa000zz.ON_RETURN_TRANSACTION_RESULT, transactionResult2);
        }
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_TRANSACTION_RESULT, transactionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(PinEntryResult pinEntryResult, Hashtable hashtable) {
        this.aaa007.onReturnPinEntryResult(pinEntryResult, hashtable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(CAPK capk) {
        this.aaa007.onReturnCAPKDetail(capk);
    }

    void aaa000(CheckCardResult checkCardResult, String str) {
        this.aaa019.aaa010();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(boolean z, String str, String str2, int i) {
        this.aaa007.onReturnPowerOnIccResult(z, str, str2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(PrintResult printResult) {
        this.aaa007.onReturnPrintResult(printResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(AmountInputResult amountInputResult, Hashtable hashtable) {
        this.aaa007.onReturnAmount(amountInputResult, hashtable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(TerminalSettingStatus terminalSettingStatus) {
        this.aaa007.onReturnUpdateTerminalSettingResult(terminalSettingStatus);
    }

    void aaa000(final boolean z, String str, String str2, int i, String str3) {
        List<ccc067zz> list;
        int i2;
        if (this.aaa019.aaa007() == ccc039zz.aaa001zz.READ_DISPLAY_SETTINGS) {
            this.aaa020.aaa002(str);
            if (z && str2.equalsIgnoreCase("")) {
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa002(i + 1, "");
                    return;
                }
                return;
            }
            Hashtable<String, Object> hashtableAaa002 = this.aaa019.aaa002();
            this.aaa019.aaa010();
            if (z) {
                if (str2.equalsIgnoreCase(ccc049zz.aaa000(this.aaa020.aaa033()))) {
                    final Hashtable hashtable = new Hashtable();
                    List<ccc067zz> listAaa000 = ccc068zz.aaa000(this.aaa020.aaa033());
                    ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(listAaa000, "DF8317");
                    ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(listAaa000, "FF8901");
                    if (ccc067zzVarAaa000 != null || ccc067zzVarAaa0002 != null) {
                        Hashtable hashtable2 = new Hashtable();
                        if (ccc067zzVarAaa000 != null) {
                            hashtable2.put("data", ccc067zzVarAaa000.aaa001);
                        }
                        if (ccc067zzVarAaa0002 != null) {
                            List<ccc067zz> listAaa0002 = ccc068zz.aaa000(ccc067zzVarAaa0002.aaa001);
                            ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(listAaa0002, "DF8902");
                            ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(listAaa0002, "DF8903");
                            if (hashtableAaa002.containsKey("image")) {
                                Hashtable hashtable3 = (Hashtable) hashtableAaa002.get("image");
                                if (ccc067zzVarAaa0003 != null && hashtable3.containsKey("foregroundColor")) {
                                    hashtable2.put("foregroundColor", ccc067zzVarAaa0003.aaa001);
                                }
                                if (ccc067zzVarAaa0004 != null && hashtable3.containsKey("backgroundColor")) {
                                    hashtable2.put("backgroundColor", ccc067zzVarAaa0004.aaa001);
                                }
                            }
                        }
                        hashtable.put("image", hashtable2);
                    }
                    ccc067zz ccc067zzVarAaa0005 = ccc068zz.aaa000(listAaa000, "DF8549");
                    ccc067zz ccc067zzVarAaa0006 = ccc068zz.aaa000(listAaa000, "DF872A");
                    ccc067zz ccc067zzVarAaa0007 = ccc068zz.aaa000(listAaa000, "DF872C");
                    ccc067zz ccc067zzVarAaa0008 = ccc068zz.aaa000(listAaa000, "DF8744");
                    ccc067zz ccc067zzVarAaa0009 = ccc068zz.aaa000(listAaa000, "DF874F");
                    ccc067zz ccc067zzVarAaa00010 = ccc068zz.aaa000(listAaa000, "DF8750");
                    ccc067zz ccc067zzVarAaa00011 = ccc068zz.aaa000(listAaa000, "DF8751");
                    ccc067zz ccc067zzVarAaa00012 = ccc068zz.aaa000(listAaa000, "DF8752");
                    if (ccc067zzVarAaa0005 == null && ccc067zzVarAaa0006 == null && ccc067zzVarAaa0007 == null && ccc067zzVarAaa0008 == null && ccc067zzVarAaa0009 == null && ccc067zzVarAaa00010 == null && ccc067zzVarAaa00011 == null && ccc067zzVarAaa00012 == null) {
                        list = listAaa000;
                    } else {
                        Hashtable hashtable4 = new Hashtable();
                        if (ccc067zzVarAaa0005 != null) {
                            list = listAaa000;
                            hashtable4.put("statusBarColor", ccc067zzVarAaa0005.aaa001);
                        } else {
                            list = listAaa000;
                        }
                        if (ccc067zzVarAaa0006 != null) {
                            hashtable4.put("screenColor", ccc067zzVarAaa0006.aaa001);
                        }
                        if (ccc067zzVarAaa0007 != null) {
                            try {
                                int i3 = Integer.parseInt(ccc067zzVarAaa0007.aaa001, 16);
                                if (hashtableAaa002.containsKey("theme")) {
                                    Hashtable hashtable5 = (Hashtable) hashtableAaa002.get("theme");
                                    if (hashtable5.containsKey("statusBarInfo")) {
                                        Hashtable hashtable6 = (Hashtable) hashtable5.get("statusBarInfo");
                                        Hashtable hashtable7 = new Hashtable();
                                        if (hashtable6.containsKey("time")) {
                                            i2 = i3;
                                            if ((i3 & 1) == 1) {
                                                hashtable7.put("time", Boolean.FALSE);
                                            } else {
                                                hashtable7.put("time", Boolean.TRUE);
                                            }
                                        } else {
                                            i2 = i3;
                                        }
                                        if (hashtable6.containsKey("bluetooth")) {
                                            if ((i2 & 2) == 2) {
                                                hashtable7.put("bluetooth", Boolean.FALSE);
                                            } else {
                                                hashtable7.put("bluetooth", Boolean.TRUE);
                                            }
                                        }
                                        if (hashtable6.containsKey("battery")) {
                                            if ((i2 & 4) == 4) {
                                                hashtable7.put("battery", Boolean.FALSE);
                                            } else {
                                                hashtable7.put("battery", Boolean.TRUE);
                                            }
                                        }
                                        if (hashtable7.size() > 0) {
                                            hashtable4.put("statusBarInfo", hashtable7);
                                        }
                                    }
                                }
                            } catch (Exception unused) {
                            }
                        }
                        if (ccc067zzVarAaa0008 != null) {
                            try {
                                if (Integer.parseInt(ccc067zzVarAaa0008.aaa001, 16) > 0) {
                                    hashtable4.put("statusBarVisibility", Boolean.TRUE);
                                } else {
                                    hashtable4.put("statusBarVisibility", Boolean.FALSE);
                                }
                            } catch (Exception unused2) {
                            }
                        }
                        if (ccc067zzVarAaa0009 != null) {
                            try {
                                hashtable4.put("statusIconSet", Integer.valueOf(Integer.parseInt(ccc067zzVarAaa0009.aaa001, 16) + 1));
                            } catch (Exception unused3) {
                            }
                        }
                        if (ccc067zzVarAaa00010 != null) {
                            hashtable4.put("highlightColor", ccc067zzVarAaa00010.aaa001);
                        }
                        if (ccc067zzVarAaa00011 != null) {
                            hashtable4.put("userActionIconColor", ccc067zzVarAaa00011.aaa001);
                        }
                        if (ccc067zzVarAaa00012 != null) {
                            hashtable4.put("spinnerIconColor", ccc067zzVarAaa00012.aaa001);
                        }
                        hashtable.put("theme", hashtable4);
                    }
                    List<ccc067zz> list2 = list;
                    ccc067zz ccc067zzVarAaa00013 = ccc068zz.aaa000(list2, "DF8729");
                    if (ccc067zzVarAaa00013 != null) {
                        hashtable.put("brightnessLevel", ccc071zz.aaa000(ccc071zz.aaa004(ccc067zzVarAaa00013.aaa001) + 1, 2));
                    }
                    ccc067zz ccc067zzVarAaa00014 = ccc068zz.aaa000(list2, "DF872B");
                    if (ccc067zzVarAaa00014 != null) {
                        hashtable.put("backlightTimeout", ccc067zzVarAaa00014.aaa001);
                    }
                    ccc067zz ccc067zzVarAaa00015 = ccc068zz.aaa000(list2, "DF872F");
                    if (ccc067zzVarAaa00015 != null) {
                        hashtable.put("language", ccc067zzVarAaa00015.aaa001);
                    }
                    ccc067zz ccc067zzVarAaa00016 = ccc068zz.aaa000(list2, "DF875A");
                    if (ccc067zzVarAaa00016 != null) {
                        hashtable.put("adaptiveBrightness", ccc067zzVarAaa00016.aaa001);
                    }
                    ccc067zz ccc067zzVarAaa00017 = ccc068zz.aaa000(list2, "DF875C");
                    if (ccc067zzVarAaa00017 != null) {
                        hashtable.put("capacitiveSensor", ccc067zzVarAaa00017.aaa001);
                    }
                    ccc067zz ccc067zzVarAaa00018 = ccc068zz.aaa000(list2, "DF875D");
                    if (ccc067zzVarAaa00018 != null) {
                        hashtable.put("horizontalScrollSpeed", ccc067zzVarAaa00018.aaa001);
                    }
                    ccc067zz ccc067zzVarAaa00019 = ccc068zz.aaa000(list2, "DF877E");
                    if (ccc067zzVarAaa00019 != null) {
                        hashtable.put("verticalScrollSpeed", ccc067zzVarAaa00019.aaa001);
                    }
                    ccc067zz ccc067zzVarAaa00020 = ccc068zz.aaa000(list2, "DF8762");
                    if (ccc067zzVarAaa00020 != null) {
                        hashtable.put("scrollDirection", ccc067zzVarAaa00020.aaa001);
                    }
                    ccc061zz.aaa000("[BBDeviceController] [onReturnReadDisplaySettingsResult]", " isSuccess : " + z + ", readDisplaySettingsHashtable : " + hashtable, DebugLogType.CALLBACK, false);
                    this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_READ_DISPLAY_SETTINGS_RESULT);
                    aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda65
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.aaa005(z, hashtable);
                        }
                    });
                    return;
                }
                aaa005(Error.UNKNOWN, "(error code - 8010)");
                return;
            }
            final Hashtable hashtable8 = new Hashtable();
            hashtable8.put("errorMessage", str3);
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_READ_DISPLAY_SETTINGS_RESULT);
            aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda76
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa006(z, hashtable8);
                }
            });
            return;
        }
        this.aaa019.aaa010();
    }

    void aaa001(final SessionError sessionError, final String str) {
        ccc061zz.aaa000("[BBDeviceController] [onSessionError]", " sessionError : " + sessionError + ", errorMessage : " + str, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        if (aaa034) {
            if (sessionError == SessionError.SESSION_NOT_INITIALIZED) {
                aaa000(true, "Session not initialized", aaa026);
            } else if (sessionError == SessionError.FIRMWARE_NOT_SUPPORTED) {
                aaa000(true, "Fimware not supported", aaa026);
            } else if (sessionError == SessionError.INVALID_SESSION) {
                aaa000(true, "Invalid session", aaa026);
            } else if (sessionError == SessionError.INVALID_VENDOR_TOKEN) {
                aaa000(true, "Invalid Vendor Token", aaa026);
            }
        }
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_SESSION_ERROR);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda137
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(sessionError, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa001(Error error, String str) {
        this.aaa007.onError(error, str);
    }

    void aaa001(final PowerSource powerSource, final BatteryStatus batteryStatus) {
        ccc061zz.aaa000("[BBDeviceController] [onPowerConnected]", " powerSource : " + powerSource + ", batteryStatus : " + batteryStatus, DebugLogType.CALLBACK, false);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_POWER_CONNECTED);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda107
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(powerSource, batteryStatus);
            }
        });
    }

    void aaa001(final PowerSource powerSource) {
        ccc061zz.aaa000("[BBDeviceController] [onPowerDisconnected]", " powerSource : " + powerSource, DebugLogType.CALLBACK, false);
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_POWER_DISCONNECTED);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda77
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(powerSource);
            }
        });
    }

    void aaa001(final boolean z, final DeviceResetReason deviceResetReason) {
        if (this.aaa019.aaa007() == ccc039zz.aaa001zz.RESET_DEVICE && deviceResetReason == DeviceResetReason.UNKNOWN) {
            deviceResetReason = DeviceResetReason.APP_RESET_DEVICE;
        }
        ccc061zz.aaa000("[BBDeviceController] [onDeviceReset]", " isSuccess : " + z + ", reason : " + deviceResetReason, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_DEVICE_RESET);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda78
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(z, deviceResetReason);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa001(int i) {
        this.aaa007.onDeviceResetAlert(i);
    }

    void aaa001(final NfcDetectCardResult nfcDetectCardResult, final Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnNfcDetectCardResult]", " nfcDetectCardResult : " + nfcDetectCardResult + ", data : " + ccc071zz.aaa000(hashtable, aaa004zz.MASK_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_NFC_DETECT_CARD_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(nfcDetectCardResult, hashtable);
            }
        });
    }

    void aaa001(final VASResult vASResult, final Hashtable<String, Object> hashtable) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnVasResult]", " result : " + vASResult + ", data : " + ccc071zz.aaa000(hashtable, aaa004zz.MASK_ALL_VALUES), DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_RETURN_VAS_RESULT);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda79
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(vASResult, hashtable);
            }
        });
    }

    void aaa001(String str, String str2, String str3) {
        ccc061zz.aaa000("[BBDeviceController] [onRequestDisplayEmvL2TestClUi]", " ui_request_data : " + str + ", ui_request_msg_id : " + str2 + ", ui_request_status : " + str3, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda99
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceController.aaa048();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa001(boolean z, Hashtable hashtable) {
        this.aaa007.onRequestVirtuCryptPEDKResponse(z, hashtable);
    }

    synchronized void aaa001(int i, String str) {
        aaa012("[getPublicKeyFromWCorSP] target : " + i + ", keyType : " + str);
        if (aaa012() == aaa001zz.SERIAL && aaa022() == aaa006zz.WisePOS_SEVEN) {
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa001(i, str);
            }
            return;
        }
        aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command ");
    }

    synchronized void aaa001(boolean z) {
        aaa012("[clearFirmwareDebugLog]");
        if (this.aaa019.aaa009()) {
            aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            return;
        }
        this.aaa020.aaa000(z);
        this.aaa020.aaa006("");
        this.aaa019.aaa000(ccc039zz.aaa001zz.CLEAR_FIRMWARE_DEBUG_LOG);
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa007();
        }
    }

    private synchronized void aaa001(Hashtable<String, String> hashtable) {
        if (this.aaa014) {
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa007(hashtable);
            }
            return;
        }
        aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command findCAPKLocation / removeCAPK");
    }

    @Deprecated
    private void aaa001(String[] strArr, int i) {
        aaa001zz aaa001zzVar = this.aaa015;
        if (aaa001zzVar == aaa001zz.NONE) {
            if (this.aaa000.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
                this.aaa008.aaa002(strArr, i);
                return;
            } else {
                aaa003(Error.BTV4_NOT_SUPPORTED, "");
                return;
            }
        }
        if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot scan BTv4 while bluetooth 2.0 is connected");
            return;
        }
        if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot scan BTv4 while bluetooth low energy is connected");
            return;
        }
        if (aaa001zzVar == aaa001zz.SERIAL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot scan BTv4 while serial is connected");
        } else if (aaa001zzVar == aaa001zz.USB) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot scan BTv4 while USB is connected");
        } else if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot scan BTv4 while test channel is connected");
        }
    }

    @Deprecated
    private void aaa001(BluetoothDevice bluetoothDevice) {
        aaa001zz aaa001zzVar = this.aaa015;
        if (aaa001zzVar == aaa001zz.NONE) {
            if (this.aaa000.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
                aaa001(aaa001zz.BLUETOOTH_4);
                aaa000(aaa002zz.CONNECTING);
                this.aaa008.aaa037();
                this.aaa008.aaa000(bluetoothDevice, true);
                return;
            }
            aaa003(Error.BTV4_NOT_SUPPORTED, "");
            return;
        }
        if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth low energy while bluetooth 2.0 is connected");
            return;
        }
        if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth low energy again while bluetooth low energy is connected");
            return;
        }
        if (aaa001zzVar == aaa001zz.SERIAL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth low energy while serial is connected");
        } else if (aaa001zzVar == aaa001zz.USB) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth low energy while USB is connected");
        } else if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth low energy while test channel is connected");
        }
    }

    boolean aaa001() {
        if (Build.VERSION.SDK_INT >= 33) {
            return ((BluetoothManager) this.aaa000.getSystemService("bluetooth")).getAdapter().isEnabled();
        }
        return true;
    }

    synchronized void aaa001(String str, String str2) {
        if (this.aaa019.aaa009()) {
            aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            return;
        }
        this.aaa019.aaa000(ccc039zz.aaa001zz.KEY_INJECTION_INJECT_TMK0);
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa001(str, str2);
        }
    }

    void aaa000(final TerminalSettingStatus terminalSettingStatus, final String str) {
        final String upperCase;
        if (this.aaa019.aaa007() == ccc039zz.aaa001zz.READ_TERMINAL_SETTING) {
            upperCase = this.aaa019.aaa004().toUpperCase(Locale.ROOT);
        } else {
            upperCase = "";
        }
        this.aaa019.aaa010();
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda119
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(upperCase, terminalSettingStatus, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(String str, TerminalSettingStatus terminalSettingStatus, String str2) {
        if (!str.equalsIgnoreCase("")) {
            List<String> listAaa002 = ccc071zz.aaa002(str);
            if (listAaa002.size() > 1) {
                Hashtable<String, Object> hashtable = new Hashtable<>();
                for (int i = 0; i < listAaa002.size(); i++) {
                    if (terminalSettingStatus == TerminalSettingStatus.SUCCESS) {
                        hashtable.put(listAaa002.get(i).toUpperCase(Locale.ROOT), str2);
                    } else {
                        hashtable.put(listAaa002.get(i).toUpperCase(Locale.ROOT), terminalSettingStatus);
                    }
                }
                aaa015(hashtable);
                return;
            }
            Hashtable<String, Object> hashtable2 = new Hashtable<>();
            if (terminalSettingStatus == TerminalSettingStatus.SUCCESS) {
                hashtable2.put(str, str2);
            } else {
                hashtable2.put(str, terminalSettingStatus);
            }
            aaa015(hashtable2);
            return;
        }
        Hashtable<String, Object> hashtable3 = new Hashtable<>();
        if (terminalSettingStatus == TerminalSettingStatus.SUCCESS) {
            hashtable3.put("Unknown DOL", str2);
        } else {
            hashtable3.put("Unknown DOL", terminalSettingStatus);
        }
        aaa015(hashtable3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(DisplayPromptResult displayPromptResult) {
        this.aaa007.onReturnDisplayPromptResult(displayPromptResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(FunctionKey functionKey) {
        this.aaa007.onReturnFunctionKey(functionKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(int i, int i2, String str) {
        this.aaa007.onHardwareFunctionalTestResult(i, i2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(AccountSelectionResult accountSelectionResult, int i) {
        this.aaa007.onReturnAccountSelectionResult(accountSelectionResult, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(AmountInputType amountInputType) {
        this.aaa007.onRequestOtherAmount(amountInputType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(ArrayList arrayList) {
        this.aaa007.onRequestSelectApplication(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(PinEntrySource pinEntrySource) {
        this.aaa007.onRequestPinEntry(pinEntrySource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(ManualPanEntryType manualPanEntryType) {
        this.aaa007.onRequestManualPanEntry(manualPanEntryType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(PinPadTouchEvent pinPadTouchEvent) {
        this.aaa007.onReturnAccessiblePINPadTouchEvent(pinPadTouchEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(double d) {
        this.aaa007.onReturnUpdateDisplaySettingsProgress(d);
    }

    void aaa000(boolean z, String str, String str2, int i, int i2, String str3) {
        if (this.aaa019.aaa007() != ccc039zz.aaa001zz.ENCRYPT_DECRYPT_OP_KEY) {
            this.aaa019.aaa010();
            return;
        }
        if (z) {
            this.aaa020.aaa000(str);
            if ((i & 128) == 128) {
                this.aaa019.aaa010();
                ccc061zz.aaa000("[BBDeviceController] [onReturnEncryptDecryptOpKeyResult]", " isSuccess : " + z + ", data : " + this.aaa020.aaa013() + ", hmac : " + str2 + ", message : " + str3, DebugLogType.CALLBACK, false);
                aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda56
                    @Override // java.lang.Runnable
                    public final void run() {
                        BBDeviceController.aaa060();
                    }
                });
                return;
            } else {
                ccc039zz ccc039zzVar = this.aaa019;
                ccc039zzVar.aaa000(ccc039zzVar.aaa000() + 1);
                com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
                if (aaa003zzVar != null) {
                    aaa003zzVar.aaa000(ccc039zz.aaa000(this.aaa019.aaa004(), this.aaa019.aaa000(), 512), this.aaa019.aaa000(), ccc039zz.aaa000(this.aaa019.aaa004(), 512), this.aaa019.aaa005(), this.aaa019.aaa006());
                    return;
                }
                return;
            }
        }
        this.aaa019.aaa010();
        ccc061zz.aaa000("[BBDeviceController] [onReturnEncryptDecryptOpKeyResult]", " isSuccess : " + z + ", data : , hmac : , message : " + str3, DebugLogType.CALLBACK, false);
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceController.aaa061();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(DisplayText displayText, String str) {
        this.aaa007.onRequestDisplayText(displayText, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(String str, int i) {
        this.aaa007.onRequestDisplayAsterisk(str, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(ContactlessStatus contactlessStatus) {
        this.aaa007.onRequestDisplayLEDIndicator(contactlessStatus);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(ContactlessStatusTone contactlessStatusTone) {
        this.aaa007.onRequestProduceAudioTone(contactlessStatusTone);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(CheckCardMode checkCardMode) {
        this.aaa007.onWaitingForCard(checkCardMode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(int i, boolean z) {
        this.aaa007.onRequestPrintData(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(BatteryStatus batteryStatus) {
        this.aaa007.onBatteryLow(batteryStatus);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(SessionError sessionError, String str) {
        this.aaa007.onSessionError(sessionError, str);
    }

    void aaa000(final Error error, final String str, boolean z) {
        CharSequence charSequence;
        String str2;
        String str3;
        final ccc039zz.aaa001zz aaa001zzVar;
        final String str4;
        aaa001zz aaa001zzVar2;
        aaa001zz aaa001zzVarAaa012 = aaa012();
        aaa001zz aaa001zzVar3 = aaa001zz.SERIAL;
        if (aaa001zzVarAaa012 == aaa001zzVar3 && aaa022() == aaa006zz.WisePOS_SEVEN && error == Error.TAMPER) {
            Intent intent = new Intent();
            intent.setAction("com.stripe.bbpos.bbdevice.ERROR_NOTIFICATION");
            intent.putExtra("error", "TAMPER");
            intent.putExtra("errorMessage", str);
            this.aaa000.sendBroadcast(intent);
        } else if (aaa012() == aaa001zzVar3 && aaa022() == aaa006zz.WisePOS_SEVEN && error == Error.INTEGRITY_CHECK_ERROR) {
            Intent intent2 = new Intent();
            intent2.setAction("com.stripe.bbpos.bbdevice.ERROR_NOTIFICATION");
            intent2.putExtra("error", "INTEGRITY_CHECK_ERROR");
            intent2.putExtra("errorMessage", str);
            this.aaa000.sendBroadcast(intent2);
        }
        ccc039zz.aaa001zz aaa001zzVarAaa007 = this.aaa019.aaa007();
        if (!z) {
            this.aaa019.aaa010();
        }
        if (aaa013() == aaa002zz.CONNECTING && (this.aaa020.aaa017() == ccc066zz.aaa003zz.NORMAL_DEVICE_INFO || this.aaa020.aaa017() == ccc066zz.aaa003zz.SP_DEVICE_INFO)) {
            if (aaa034) {
                if (error == Error.FAIL_TO_START_AUDIO) {
                    aaa000(true, "Fail to start audio", aaa026);
                } else if (error == Error.FAIL_TO_START_BT) {
                    aaa000(true, "Fail to start bluetooth", aaa026);
                } else if (error == Error.FAIL_TO_START_SERIAL) {
                    aaa000(true, "Fail to start serial", aaa026);
                } else if (error == Error.FAIL_TO_START_USB) {
                    aaa000(true, "Fail to start USB", aaa026);
                } else if (error == Error.FAIL_TO_START_TEST_CHANNEL) {
                    aaa000(true, "Fail to start test channel", aaa026);
                } else if (error == Error.PAIRING_ERROR_INCORRECT_PASSKEY) {
                    aaa000(true, "Pairing error. Incorrect BLE passkey", aaa026);
                } else if (error == Error.PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE) {
                    aaa000(true, "Pairing error. Already paired with another device", aaa026);
                } else if (error == Error.NFC_NOT_SUPPORTED) {
                    aaa000(true, "NFC not supported", aaa026);
                } else if (error == Error.NFC_PERMISSION_DENIED) {
                    aaa000(true, "NFC permission denied", aaa026);
                } else if (error == Error.NFC_DISABLED) {
                    aaa000(true, "NFC disabled", aaa026);
                } else if (error == Error.CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE) {
                    aaa000(true, "Current APP is not the default NFC service", aaa026);
                }
            }
            if (error != Error.USB_DEVICE_NOT_FOUND && error != Error.USB_DEVICE_PERMISSION_DENIED && error != Error.USB_NOT_SUPPORTED && error != Error.BLUETOOTH_PERMISSION_DENIED && error != Error.BTV4_NOT_SUPPORTED && error != Error.FAIL_TO_START_AUDIO && error != Error.FAIL_TO_START_BT && error != Error.FAIL_TO_START_SERIAL && error != Error.FAIL_TO_START_USB && error != Error.FAIL_TO_START_TEST_CHANNEL && error != Error.PAIRING_ERROR_INCORRECT_PASSKEY && error != Error.PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE && error != Error.NFC_NOT_SUPPORTED && error != Error.NFC_PERMISSION_DENIED && error != Error.NFC_DISABLED && error != Error.CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE) {
                aaa001zz aaa001zzVarAaa0122 = aaa012();
                aaa000(aaa002zz.IDLE);
                this.aaa020.aaa062();
                if (aaa001zzVarAaa0122 == aaa001zz.BLUETOOTH_2 || aaa001zzVarAaa0122 == aaa001zz.BLUETOOTH_4) {
                    str4 = str;
                    aaa001zzVar2 = aaa001zzVar3;
                    this.aaa020.aaa005(true);
                    this.aaa020.aaa010("Communication error during prefetch device info");
                    aaa000(aaa002zz.CONNECTED);
                    aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.aaa040();
                        }
                    });
                } else {
                    aaa001zzVar2 = aaa001zzVar3;
                    if (aaa001zzVarAaa0122 == aaa001zzVar2) {
                        this.aaa020.aaa006(true);
                        str4 = str;
                        if (str4.contains("SP-WC Connection Health Check : ")) {
                            this.aaa020.aaa011(str4);
                        } else {
                            this.aaa020.aaa011("Communication error during prefetch device info");
                        }
                        aaa000(aaa002zz.CONNECTED);
                        aaa046();
                    } else {
                        str4 = str;
                        if (aaa001zzVarAaa0122 == aaa001zz.USB) {
                            bbb020();
                        } else if (aaa001zzVarAaa0122 == aaa001zz.TEST_CHANNEL) {
                            bbb019();
                        }
                    }
                }
                if (error != Error.TAMPER && error != Error.INTEGRITY_CHECK_ERROR) {
                    return;
                }
            } else {
                str4 = str;
                aaa001zzVar2 = aaa001zzVar3;
                aaa000(aaa002zz.IDLE);
                aaa001(aaa001zz.NONE);
                this.aaa020.aaa062();
            }
            ccc061zz.aaa000("[BBDeviceController] [onError]", " errorState : " + error + ", errorMessage : " + str4, DebugLogType.CALLBACK, false);
            if (aaa012() == aaa001zzVar2 && aaa022() == aaa006zz.WisePOS_SEVEN) {
                ccc051zz.aaa001(this.aaa000);
            }
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_ERROR, error);
            aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa000(error, str4);
                }
            });
            return;
        }
        if (str == null || !str.contains("Error Code 90 - Mutual Authentication Fail")) {
            charSequence = "Error Code 90 - Mutual Authentication Fail";
            str2 = "NFC permission denied";
            str3 = "NFC not supported";
            aaa001zzVar = aaa001zzVarAaa007;
            if (aaa001zzVar == ccc039zz.aaa001zz.RESET_DEVICE && error == Error.COMM_ERROR && str.equalsIgnoreCase("Device no response (error code - 0055)")) {
                ccc061zz.aaa000("[BBDeviceController] [onDeviceReset]", " isSuccess : false, reason : APP_RESET_DEVICE", DebugLogType.CALLBACK, false);
            } else if (error == Error.COMM_ERROR && str.equalsIgnoreCase("Device no response (error code - 0056)")) {
                ccc061zz.aaa000("[BBDeviceController] [onDeviceReset]", " isSuccess : false, reason : RECOVERY_ATTEMPT", DebugLogType.CALLBACK, false);
            } else {
                ccc061zz.aaa000("[BBDeviceController] [onError]", " errorState : " + error + ", errorMessage : " + str, DebugLogType.CALLBACK, false);
            }
        } else {
            charSequence = "Error Code 90 - Mutual Authentication Fail";
            str2 = "NFC permission denied";
            str3 = "NFC not supported";
            aaa001zzVar = aaa001zzVarAaa007;
        }
        if (aaa034) {
            if (error == Error.COMM_ERROR) {
                aaa000(true, "Communication error", aaa026);
            } else if (error == Error.DEVICE_BUSY) {
                aaa000(true, "Device busy", aaa026);
            } else if (error == Error.INPUT_INVALID) {
                aaa000(true, "Input invalid", aaa026);
            } else if (error == Error.UNKNOWN) {
                aaa000(true, "Unknown", aaa026);
            } else if (error == Error.CMD_NOT_AVAILABLE) {
                aaa000(true, "Device cannot support OTA", aaa026);
            } else if (error == Error.FAIL_TO_START_AUDIO) {
                aaa000(true, "Fail to start audio", aaa026);
            } else if (error == Error.FAIL_TO_START_BT) {
                aaa000(true, "Fail to start bluetooth", aaa026);
            } else if (error == Error.FAIL_TO_START_SERIAL) {
                aaa000(true, "Fail to start serial", aaa026);
            } else if (error == Error.FAIL_TO_START_USB) {
                aaa000(true, "Fail to start USB", aaa026);
            } else if (error == Error.FAIL_TO_START_TEST_CHANNEL) {
                aaa000(true, "Fail to start test channel", aaa026);
            } else if (error == Error.PAIRING_ERROR) {
                aaa000(true, "Pairing error", aaa026);
            } else if (error == Error.PAIRING_ERROR_INCORRECT_PASSKEY) {
                aaa000(true, "Pairing error. Incorrect BLE passkey", aaa026);
            } else if (error == Error.PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE) {
                aaa000(true, "Pairing error. Already paired with another device", aaa026);
            } else if (error == Error.NFC_NOT_SUPPORTED) {
                aaa000(true, str3, aaa026);
            } else if (error == Error.NFC_PERMISSION_DENIED) {
                aaa000(true, str2, aaa026);
            } else if (error == Error.NFC_DISABLED) {
                aaa000(true, "NFC disabled", aaa026);
            } else if (error == Error.CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE) {
                aaa000(true, "Current APP is not the default NFC service", aaa026);
            }
        }
        if (error == Error.USB_DEVICE_NOT_FOUND || error == Error.USB_DEVICE_PERMISSION_DENIED || error == Error.USB_NOT_SUPPORTED || error == Error.BLUETOOTH_PERMISSION_DENIED || error == Error.BTV4_NOT_SUPPORTED || error == Error.FAIL_TO_START_AUDIO || error == Error.FAIL_TO_START_BT || error == Error.FAIL_TO_START_SERIAL || error == Error.FAIL_TO_START_USB || error == Error.FAIL_TO_START_TEST_CHANNEL || error == Error.PAIRING_ERROR || error == Error.PAIRING_ERROR_INCORRECT_PASSKEY || error == Error.PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE || error == Error.NFC_NOT_SUPPORTED || error == Error.NFC_PERMISSION_DENIED || error == Error.NFC_DISABLED || error == Error.CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE) {
            aaa000(aaa002zz.IDLE);
            aaa001(aaa001zz.NONE);
            this.aaa020.aaa062();
        }
        if (str != null && str.contains(charSequence)) {
            bbb021();
            return;
        }
        if (aaa012() == aaa001zzVar3 && aaa022() == aaa006zz.WisePOS_SEVEN) {
            ccc051zz.aaa001(this.aaa000);
        }
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(aaa001zzVar, error, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(Error error, String str) {
        this.aaa007.onError(error, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(ccc039zz.aaa001zz aaa001zzVar, Error error, String str) {
        if (aaa001zzVar == ccc039zz.aaa001zz.RESET_DEVICE && error == Error.COMM_ERROR && str.equalsIgnoreCase("Device no response (error code - 0055)")) {
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_DEVICE_RESET);
            this.aaa007.onDeviceReset(false, DeviceResetReason.APP_RESET_DEVICE);
        } else if (error == Error.COMM_ERROR && str.equalsIgnoreCase("Device no response (error code - 0056)")) {
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_DEVICE_RESET);
            this.aaa007.onDeviceReset(false, DeviceResetReason.RECOVERY_ATTEMPT);
        } else {
            this.aaa020.aaa001().aaa001(ccc038zz.aaa000zz.ON_ERROR, error);
            this.aaa007.onError(error, str);
        }
    }

    void aaa000(boolean z, String str, String str2) {
        String strAaa000;
        this.aaa019.aaa010();
        try {
            String str3 = ccc071zz.aaa000((Object) "4CEB", "DF30") + ccc071zz.aaa000(Boolean.valueOf(z), "DE");
            String strAaa0002 = ccc071zz.aaa000((Object) str, "DF6F");
            if (strAaa0002 != null) {
                str3 = str3 + strAaa0002;
            }
            if (ccc071zz.aaa008(str2) && (strAaa000 = ccc071zz.aaa000((Object) str2, "DF8666")) != null) {
                str3 = str3 + strAaa000;
            }
            aaa017(false, str3);
        } catch (Throwable unused) {
            aaa003(Error.UNKNOWN, "(error code - 8007)");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(PowerSource powerSource, BatteryStatus batteryStatus) {
        this.aaa007.onPowerConnected(powerSource, batteryStatus);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(PowerSource powerSource) {
        this.aaa007.onPowerDisconnected(powerSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(boolean z, DeviceResetReason deviceResetReason) {
        this.aaa007.onDeviceReset(z, deviceResetReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(NfcDetectCardResult nfcDetectCardResult, Hashtable hashtable) {
        this.aaa007.onReturnNfcDetectCardResult(nfcDetectCardResult, hashtable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(boolean z, String str) {
        this.aaa007.onReturnControlLEDResult(z, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(VASResult vASResult, Hashtable hashtable) {
        this.aaa007.onReturnVasResult(vASResult, hashtable);
    }

    void aaa000(String str, String str2, String str3, String str4) {
        ccc061zz.aaa000("[BBDeviceController] [onReturnOutcomeParameterForL2TestMasterPayPass]", " outcomeparameterset : " + str + ", discretionaryData : " + str2 + ", dataRecord : " + str3 + ", ui_request_data : " + str4, DebugLogType.CALLBACK, false);
        this.aaa019.aaa010();
        aaa026.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda136
            @Override // java.lang.Runnable
            public final void run() {
                BBDeviceController.aaa062();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(boolean z, Hashtable hashtable) {
        this.aaa007.onRequestVirtuCryptPEDIResponse(z, hashtable);
    }

    boolean aaa000(boolean z) {
        if (aaa012() != aaa001zz.BLUETOOTH_2 && aaa012() != aaa001zz.BLUETOOTH_4) {
            if (aaa012() == aaa001zz.SERIAL) {
                if (aaa013() == aaa002zz.IDLE) {
                    aaa004(Error.COMM_LINK_UNINITIALIZED, "Cannot send command while serial is idle");
                    return false;
                }
                if (aaa013() == aaa002zz.CONNECTING) {
                    aaa004(Error.COMM_LINK_UNINITIALIZED, "Cannot send command while serial is connecting");
                    return false;
                }
                if (aaa013() == aaa002zz.DISCONNECTING) {
                    aaa004(Error.COMM_LINK_UNINITIALIZED, "Cannot send command while serial is disconnecting");
                    return false;
                }
                if (aaa013() == aaa002zz.CONNECTED) {
                    if (this.aaa020.aaa016() == ccc066zz.aaa001zz.BOOTLOADER) {
                        aaa004(Error.COMM_ERROR, "Bootloader entered");
                        return false;
                    }
                    if (this.aaa020.aaa016() == ccc066zz.aaa001zz.RECOVERY) {
                        aaa004(Error.COMM_ERROR, "Recovery mode entered");
                        return false;
                    }
                }
            } else if (aaa012() == aaa001zz.USB) {
                if (aaa013() == aaa002zz.IDLE) {
                    aaa004(Error.COMM_LINK_UNINITIALIZED, "Cannot send command while USB is idle");
                    return false;
                }
                if (aaa013() == aaa002zz.CONNECTING) {
                    aaa004(Error.COMM_LINK_UNINITIALIZED, "Cannot send command while USB is connecting");
                    return false;
                }
                if (aaa013() == aaa002zz.DISCONNECTING) {
                    aaa004(Error.COMM_LINK_UNINITIALIZED, "Cannot send command while USB is disconnecting");
                    return false;
                }
                if (aaa013() == aaa002zz.CONNECTED) {
                    if (this.aaa020.aaa016() == ccc066zz.aaa001zz.BOOTLOADER) {
                        aaa004(Error.COMM_ERROR, "Bootloader entered");
                        return false;
                    }
                    if (this.aaa020.aaa016() == ccc066zz.aaa001zz.RECOVERY) {
                        aaa004(Error.COMM_ERROR, "Recovery mode entered");
                        return false;
                    }
                }
            } else if (aaa012() == aaa001zz.TEST_CHANNEL) {
                if (aaa013() == aaa002zz.IDLE) {
                    aaa004(Error.COMM_LINK_UNINITIALIZED, "Cannot send command while test channel is idle");
                    return false;
                }
                if (aaa013() == aaa002zz.CONNECTING) {
                    aaa004(Error.COMM_LINK_UNINITIALIZED, "Cannot send command while test channel is connecting");
                    return false;
                }
                if (aaa013() == aaa002zz.DISCONNECTING) {
                    aaa004(Error.COMM_LINK_UNINITIALIZED, "Cannot send command while test channel is disconnecting");
                    return false;
                }
                if (aaa013() == aaa002zz.CONNECTED) {
                    if (this.aaa020.aaa016() == ccc066zz.aaa001zz.BOOTLOADER) {
                        aaa004(Error.COMM_ERROR, "Bootloader entered");
                        return false;
                    }
                    if (this.aaa020.aaa016() == ccc066zz.aaa001zz.RECOVERY) {
                        aaa004(Error.COMM_ERROR, "Recovery mode entered");
                        return false;
                    }
                }
            } else if (aaa012() == aaa001zz.NONE) {
                aaa004(Error.COMM_LINK_UNINITIALIZED, "");
                return false;
            }
        } else {
            if (aaa013() == aaa002zz.IDLE) {
                aaa004(Error.COMM_LINK_UNINITIALIZED, "Cannot send command while bluetooth is idle");
                return false;
            }
            if (aaa013() == aaa002zz.CONNECTING) {
                aaa004(Error.COMM_LINK_UNINITIALIZED, "Cannot send command while bluetooth is connecting");
                return false;
            }
            if (aaa013() == aaa002zz.DISCONNECTING) {
                aaa004(Error.COMM_LINK_UNINITIALIZED, "Cannot send command while bluetooth is disconnecting");
                return false;
            }
            if (aaa013() == aaa002zz.CONNECTED) {
                if (this.aaa020.aaa016() == ccc066zz.aaa001zz.BOOTLOADER) {
                    aaa004(Error.COMM_ERROR, "Bootloader entered");
                    return false;
                }
                if (this.aaa020.aaa016() == ccc066zz.aaa001zz.RECOVERY) {
                    aaa004(Error.COMM_ERROR, "Recovery mode entered");
                    return false;
                }
            }
        }
        if (this.aaa020.aaa036() != ccc066zz.aaa004zz.NOT) {
            aaa004(Error.DEVICE_BUSY, "Device busy with command/callback: disableFactoryMode *** (error code - 7018)");
            return false;
        }
        if (!z || aaa018() != aaa000zz.DEVICE_BUSY) {
            return true;
        }
        aaa004(Error.DEVICE_BUSY, "Device busy with OTA operations.");
        return false;
    }

    synchronized void aaa000(int i) {
        aaa012("[getWiseCubeKeyStatus]");
        if (aaa012() == aaa001zz.SERIAL && aaa022() == aaa006zz.WisePOS_SEVEN) {
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa001(i);
            }
            return;
        }
        aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command ");
    }

    synchronized void aaa000(int i, String str) {
        aaa012("[getCertFromWCorSP] target : " + i + ", keyType : " + str);
        if (aaa000(aaa001zz.SERIAL) && aaa000(aaa006zz.WisePOS_SEVEN)) {
            com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
            if (aaa003zzVar != null) {
                aaa003zzVar.aaa000(i, str);
            }
            return;
        }
        aaa003(Error.CMD_NOT_AVAILABLE, "The connected reader or the loaded firmware version does not support this command ");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00dd A[Catch: Exception -> 0x00e3, TRY_LEAVE, TryCatch #0 {Exception -> 0x00e3, blocks: (B:9:0x001e, B:13:0x002f, B:14:0x0052, B:16:0x0055, B:34:0x0098, B:54:0x00dd, B:37:0x00a1, B:39:0x00a9, B:41:0x00b5, B:44:0x00bc, B:46:0x00c2, B:49:0x00d4, B:19:0x005e, B:21:0x0068, B:23:0x0070, B:26:0x0079, B:28:0x0081, B:31:0x0092), top: B:59:0x001e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean aaa000(java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.bbpos.bbdevice.BBDeviceController.aaa000(java.lang.String):boolean");
    }

    boolean aaa000(aaa001zz aaa001zzVar) {
        return aaa001zzVar == this.aaa015;
    }

    private void aaa000(String[] strArr, int i) {
        aaa001zz aaa001zzVar = this.aaa015;
        if (aaa001zzVar == aaa001zz.NONE) {
            this.aaa008.aaa001(strArr, i);
            return;
        }
        if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot scan BTv2 while bluetooth 2.0 is connected");
            return;
        }
        if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot scan BTv2 while bluetooth low energy is connected");
            return;
        }
        if (aaa001zzVar == aaa001zz.SERIAL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot scan BTv2 while serial is connected");
        } else if (aaa001zzVar == aaa001zz.USB) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot scan BTv2 while USB is connected");
        } else if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
            aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot scan BTv2 while test channel is connected");
        }
    }

    private void aaa000(BluetoothDevice bluetoothDevice) {
        if (!aaa002()) {
            aaa003(Error.BLUETOOTH_PERMISSION_DENIED, "android.permission.BLUETOOTH and android.permission.BLUETOOTH_ADMIN are required");
            return;
        }
        if (!aaa001()) {
            aaa004(Error.FAIL_TO_START_BT, "Bluetooth is disabled. Please turn on Bluetooth");
            return;
        }
        aaa001zz aaa001zzVar = this.aaa015;
        if (aaa001zzVar == aaa001zz.NONE) {
            this.aaa008.aaa036();
            if (this.aaa000.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
                this.aaa008.aaa037();
            }
            this.aaa022.aaa001();
            this.aaa020.aaa062();
            if (this.aaa000.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
                if (bluetoothDevice.getType() == 1) {
                    aaa008(bluetoothDevice);
                    return;
                }
                if (bluetoothDevice.getType() == 2) {
                    BluetoothDevice bluetoothDeviceAaa001 = this.aaa008.aaa001(bluetoothDevice);
                    if (bluetoothDeviceAaa001 == null) {
                        aaa001(bluetoothDevice);
                        return;
                    } else if (bluetoothDeviceAaa001.getType() == 2) {
                        aaa001(bluetoothDevice);
                        return;
                    } else {
                        aaa008(bluetoothDeviceAaa001);
                        return;
                    }
                }
                if (bluetoothDevice.getType() == 3) {
                    aaa008(bluetoothDevice);
                    return;
                } else {
                    aaa008(bluetoothDevice);
                    return;
                }
            }
            aaa008(bluetoothDevice);
            return;
        }
        if (aaa001zzVar == aaa001zz.BLUETOOTH_2) {
            if (aaa013() == aaa002zz.CONNECTING) {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth again while bluetooth 2.0 is connecting");
                return;
            } else {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth again while bluetooth 2.0 is connected");
                return;
            }
        }
        if (aaa001zzVar == aaa001zz.BLUETOOTH_4) {
            if (aaa013() == aaa002zz.CONNECTING) {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth again while bluetooth low energy is connecting");
                return;
            } else {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth again while bluetooth low energy is connected");
                return;
            }
        }
        if (aaa001zzVar == aaa001zz.SERIAL) {
            if (aaa013() == aaa002zz.CONNECTING) {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth while serial is connecting");
                return;
            } else {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth while serial is connected");
                return;
            }
        }
        if (aaa001zzVar == aaa001zz.USB) {
            if (aaa013() == aaa002zz.CONNECTING) {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth while USB is connecting");
                return;
            } else {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth while USB is connected");
                return;
            }
        }
        if (aaa001zzVar == aaa001zz.TEST_CHANNEL) {
            if (aaa013() == aaa002zz.CONNECTING) {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth while test channel is connecting");
            } else {
                aaa003(Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, "Cannot connect bluetooth while test channel is connected");
            }
        }
    }

    boolean aaa000() {
        return ContextCompat.checkSelfPermission(this.aaa000, "android.permission.BBPOS") == 0;
    }

    static boolean aaa000(aaa006zz aaa006zzVar) {
        return aaa022() == aaa006zzVar;
    }

    synchronized void aaa000(String str, String str2) {
        if (this.aaa019.aaa009()) {
            aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            return;
        }
        this.aaa019.aaa000(ccc039zz.aaa001zz.KEY_INJECTION_INJECT_RSA);
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa000(str, str2);
        }
    }

    synchronized void aaa000(String str, String str2, String str3) {
        if (this.aaa019.aaa009()) {
            aaa000(Error.DEVICE_BUSY, "Device busy with command/callback: " + this.aaa019.aaa008() + " ***", true);
            return;
        }
        this.aaa019.aaa000(ccc039zz.aaa001zz.KEY_INJECTION_SEND_KEK_KCV);
        com.stripe.bbpos.bbdevice.aaa003zz aaa003zzVar = this.aaa010;
        if (aaa003zzVar != null) {
            aaa003zzVar.aaa000(str, str2, str3);
        }
    }

    void aaa000(final boolean z, final String str, Handler handler) {
        if (z) {
            aaa033 = false;
        }
        if (aaa034) {
            handler.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.BBDeviceController$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.aaa007(z, str);
                }
            });
        }
    }
}
