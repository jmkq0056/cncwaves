package com.stripe.core.bbpos.hardware.api;

import android.bluetooth.BluetoothDevice;
import android.graphics.Rect;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.stripe.bbpos.sdk.AmountInputType;
import com.stripe.bbpos.sdk.CheckCardMode;
import com.stripe.bbpos.sdk.ContactlessOnlinePinOption;
import com.stripe.bbpos.sdk.DomesticDebitPriority;
import com.stripe.bbpos.sdk.EncryptionMethod;
import com.stripe.bbpos.sdk.OtherAmountOption;
import com.stripe.bbpos.sdk.QuickChipOption;
import com.stripe.bbpos.sdk.TransactionType;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.jvmcore.dagger.BluetoothUsbPinPadReaders;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: compiled from: DeviceControllerWrapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010$\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\b\u0010\u000f\u001a\u00020\u0003H'J\b\u0010\u0010\u001a\u00020\u0003H&J\b\u0010\u0011\u001a\u00020\u0003H&J(\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H'J\u0018\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH&J\b\u0010\u001f\u001a\u00020\u0003H&J\u0016\u0010 \u001a\u00020\u00032\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0\"H&J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u001cH&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u001cH&J\u0082\u0002\u0010'\u001a\u00020\u00032\b\b\u0002\u0010(\u001a\u00020)2\b\b\u0002\u0010*\u001a\u00020)2\b\b\u0002\u0010+\u001a\u00020)2\b\b\u0002\u0010,\u001a\u00020)2\b\b\u0002\u0010-\u001a\u00020)2\b\b\u0002\u0010.\u001a\u00020)2\b\b\u0002\u0010/\u001a\u00020)2\b\b\u0002\u00100\u001a\u00020)2\b\b\u0002\u00101\u001a\u00020)2\b\b\u0002\u00102\u001a\u00020)2\b\b\u0002\u00103\u001a\u00020)2\b\b\u0002\u00104\u001a\u00020)2\b\b\u0002\u00105\u001a\u00020)2\b\b\u0002\u00106\u001a\u00020)2\b\b\u0002\u00107\u001a\u00020)2\b\b\u0002\u00108\u001a\u00020)2\b\b\u0002\u00109\u001a\u00020)2\b\b\u0002\u0010:\u001a\u00020)2\b\b\u0002\u0010;\u001a\u00020)2\b\b\u0002\u0010<\u001a\u00020)2\b\b\u0002\u0010=\u001a\u00020)2\b\b\u0002\u0010>\u001a\u00020)2\b\b\u0002\u0010?\u001a\u00020)2\b\b\u0002\u0010@\u001a\u00020)2\b\b\u0002\u0010A\u001a\u00020)H&J\b\u0010B\u001a\u00020\u0003H&J\u0010\u0010C\u001a\u00020\u00032\u0006\u0010D\u001a\u00020\u000bH&J\u0010\u0010E\u001a\u00020\u00032\u0006\u0010F\u001a\u00020\u000bH&J\u0010\u0010G\u001a\u00020\u00032\u0006\u0010H\u001a\u00020)H&J\u0012\u0010I\u001a\u00020\u00032\b\u0010J\u001a\u0004\u0018\u00010\u001cH&J\u0010\u0010K\u001a\u00020\u00032\u0006\u0010L\u001a\u00020)H&Jp\u0010M\u001a\u00020\u00032\u0006\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020O2\u0006\u0010Q\u001a\u00020O2\u0006\u0010R\u001a\u00020O2\u0006\u0010S\u001a\u00020O2\u0006\u0010T\u001a\u00020O2\u0006\u0010U\u001a\u00020O2\u0006\u0010V\u001a\u00020O2\u0006\u0010W\u001a\u00020O2\u0006\u0010X\u001a\u00020O2\u0006\u0010Y\u001a\u00020O2\u0006\u0010Z\u001a\u00020O2\u0006\u0010[\u001a\u00020OH&J \u0010\\\u001a\u00020\u00032\u000e\u0010]\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\"2\u0006\u0010^\u001a\u00020\u000bH&J¥\u0001\u0010_\u001a\u00020\u00032\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020\t2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020)2\u0006\u0010f\u001a\u00020\u000b2\u0006\u0010g\u001a\u00020\u000b2\u0006\u0010h\u001a\u00020\u001c2\u0006\u0010i\u001a\u00020\u001c2\u0006\u0010j\u001a\u00020\u000b2\u0006\u0010k\u001a\u00020\u000b2\u0006\u0010l\u001a\u00020\u000b2\u0006\u0010m\u001a\u00020\u000b2\b\u0010n\u001a\u0004\u0018\u00010\u001c2\b\u0010o\u001a\u0004\u0018\u00010p2\b\u0010q\u001a\u0004\u0018\u00010r2\u0006\u0010s\u001a\u00020)2\u0006\u0010t\u001a\u00020)2\b\u0010u\u001a\u0004\u0018\u00010\u000bH&¢\u0006\u0002\u0010vJ\u001f\u0010w\u001a\u00020\u00032\u0006\u0010t\u001a\u00020)2\b\u0010u\u001a\u0004\u0018\u00010\u000bH&¢\u0006\u0002\u0010xJ\b\u0010y\u001a\u00020\u0003H&J\b\u0010z\u001a\u00020\u0003H&J\u0010\u0010{\u001a\u00020\u00032\u0006\u0010]\u001a\u00020\u001cH&J\b\u0010|\u001a\u00020\u0003H&J\b\u0010}\u001a\u00020\u0003H&J\u001c\u0010~\u001a\u00020\u00032\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c0\u007fH&J\u001d\u0010\u0080\u0001\u001a\u00020\u00032\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00010\u007fH&J\u0011\u0010\u0081\u0001\u001a\u00020\u00032\u0006\u0010J\u001a\u00020\u001cH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0082\u0001À\u0006\u0001"}, d2 = {"Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "", "cancelCheckCard", "", "cancelPinEntry", "cancelSelectAccountType", "cancelSelectApplication", "checkCard", "mode", "Lcom/stripe/bbpos/sdk/CheckCardMode;", "timeout", "", "connectBt", "bluetoothDevice", "Landroid/bluetooth/BluetoothDevice;", "disableInputAmount", "disconnectBt", "disconnectSerial", "enableInputAmount", "setAmountTimeout", "amountInputType", "Lcom/stripe/bbpos/sdk/AmountInputType;", "otherAmountOption", "Lcom/stripe/bbpos/sdk/OtherAmountOption;", "tippingOption", "Lcom/stripe/core/bbpos/hardware/api/TippingOption;", "encryptDataWithSettings", "data", "", "encryptionMethod", "Lcom/stripe/bbpos/sdk/EncryptionMethod;", "getDeviceInfo", "getDeviceInfoByKeys", UserMetadata.KEYDATA_FILENAME, "", "initSession", "vendorToken", "readAid", "appIndex", "readTerminalSetting", "acquirerIdentifier", "", "terminalCountryCode", "transactionCurrencyCode", "transactionCurrencyExponent", "merchantNameAndLocation", "merchantIdentifier", "terminalIdentification", BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME, "terminalType", "additionalTerminalCapabilities", "normalModeTimeout", "standbyModeTimeout", "bluetoothDiscoveryTimeout", "msrPinEntryTimeout", "firmwareFallbackEnabled", "customBluetoothNamePrefix", "customBluetoothSerialSuffix", "firmwareForceChipEnabled", "iccTransactionBeepEnabled", "keypadEventBeepEnabled", "spocModeEnabled", "domesticDebitAidList", "visaDynamicReaderLimit", "buzzerSoundEnabled", "configHash", "resetDevice", "selectAccountType", "type", "selectApplication", FirebaseAnalytics.Param.INDEX, "sendFinalConfirmResult", "confirm", "sendOnlineProcessResult", "tlv", "setDebugLogEnabled", "enabled", "setPinPadButtons", "zero", "Landroid/graphics/Rect;", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "backspace", "cancel", "enter", "startBtScan", "deviceName", "scanTimeout", "startEmv", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/TransactionType;", BbposDeviceControllerImpl.CHECK_CARD_MODE_PARAM_NAME, BbposDeviceControllerImpl.QUICK_CHIP_OPTION_PARAM_NAME, "Lcom/stripe/bbpos/sdk/QuickChipOption;", BbposDeviceControllerImpl.DISABLE_QUICK_CHIP_PARAM_NAME, BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME, BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, BbposDeviceControllerImpl.TERMINAL_TIME_PARAM_NAME, BbposDeviceControllerImpl.CHECK_CARD_TIMEOUT_PARAM_NAME, BbposDeviceControllerImpl.SELECT_APPLICATION_TIMEOUT_PARAM_NAME, BbposDeviceControllerImpl.SELECT_ACCOUNT_TYPE_PARAM_NAME, BbposDeviceControllerImpl.ONLINE_PROCESS_TIMEOUT_PARAM_NAME, "terminalCapabilitiesOverride", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/bbpos/sdk/DomesticDebitPriority;", "contactlessOnlinePinOption", "Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "isAccessiblePinPad", "pinEntryTimeoutInSeconds", "(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;Lcom/stripe/bbpos/sdk/QuickChipOption;ZIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;)V", "startPinEntry", "(ZLjava/lang/Integer;)V", "startSerial", "startUsb", "startUsbWithDeviceName", "stopBtScan", "stopUsb", "updateAid", "", "updateDisplaySettings", "updateTerminalSettings", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface DeviceControllerWrapper {
    void cancelCheckCard();

    void cancelPinEntry();

    void cancelSelectAccountType();

    void cancelSelectApplication();

    void checkCard(CheckCardMode mode, int timeout);

    void connectBt(BluetoothDevice bluetoothDevice);

    @BluetoothUsbPinPadReaders
    void disableInputAmount();

    void disconnectBt();

    void disconnectSerial();

    @BluetoothUsbPinPadReaders
    void enableInputAmount(int setAmountTimeout, AmountInputType amountInputType, OtherAmountOption otherAmountOption, TippingOption tippingOption);

    void encryptDataWithSettings(String data, EncryptionMethod encryptionMethod);

    void getDeviceInfo();

    void getDeviceInfoByKeys(List<String> keys);

    void initSession(String vendorToken);

    void readAid(String appIndex);

    void readTerminalSetting(boolean acquirerIdentifier, boolean terminalCountryCode, boolean transactionCurrencyCode, boolean transactionCurrencyExponent, boolean merchantNameAndLocation, boolean merchantIdentifier, boolean terminalIdentification, boolean terminalCapabilities, boolean terminalType, boolean additionalTerminalCapabilities, boolean normalModeTimeout, boolean standbyModeTimeout, boolean bluetoothDiscoveryTimeout, boolean msrPinEntryTimeout, boolean firmwareFallbackEnabled, boolean customBluetoothNamePrefix, boolean customBluetoothSerialSuffix, boolean firmwareForceChipEnabled, boolean iccTransactionBeepEnabled, boolean keypadEventBeepEnabled, boolean spocModeEnabled, boolean domesticDebitAidList, boolean visaDynamicReaderLimit, boolean buzzerSoundEnabled, boolean configHash);

    void resetDevice();

    void selectAccountType(int type);

    void selectApplication(int index);

    void sendFinalConfirmResult(boolean confirm);

    void sendOnlineProcessResult(String tlv);

    void setDebugLogEnabled(boolean enabled);

    void setPinPadButtons(Rect zero, Rect one, Rect two, Rect three, Rect four, Rect five, Rect six, Rect seven, Rect eight, Rect nine, Rect backspace, Rect cancel, Rect enter);

    void startBtScan(List<String> deviceName, int scanTimeout);

    void startEmv(TransactionType transactionType, CheckCardMode checkCardMode, QuickChipOption quickChipOption, boolean disableQuickChip, int currencyCode, int currencyExponent, String amount, String terminalTime, int checkCardTimeout, int selectApplicationTimeout, int selectAccountTypeTimeout, int onlineProcessTimeout, String terminalCapabilitiesOverride, DomesticDebitPriority domesticDebitPriority, ContactlessOnlinePinOption contactlessOnlinePinOption, boolean forcePinEntry, boolean isAccessiblePinPad, Integer pinEntryTimeoutInSeconds);

    void startPinEntry(boolean isAccessiblePinPad, Integer pinEntryTimeoutInSeconds);

    void startSerial();

    void startUsb();

    void startUsbWithDeviceName(String deviceName);

    void stopBtScan();

    void stopUsb();

    void updateAid(Map<String, String> data);

    void updateDisplaySettings(Map<String, ? extends Object> data);

    void updateTerminalSettings(String tlv);

    static /* synthetic */ void readTerminalSetting$default(DeviceControllerWrapper deviceControllerWrapper, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, boolean z25, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readTerminalSetting");
        }
        deviceControllerWrapper.readTerminalSetting((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3, (i & 8) != 0 ? false : z4, (i & 16) != 0 ? false : z5, (i & 32) != 0 ? false : z6, (i & 64) != 0 ? false : z7, (i & 128) != 0 ? false : z8, (i & 256) != 0 ? false : z9, (i & 512) != 0 ? false : z10, (i & 1024) != 0 ? false : z11, (i & 2048) != 0 ? false : z12, (i & 4096) != 0 ? false : z13, (i & 8192) != 0 ? false : z14, (i & 16384) != 0 ? false : z15, (i & 32768) != 0 ? false : z16, (i & 65536) != 0 ? false : z17, (i & 131072) != 0 ? false : z18, (i & 262144) != 0 ? false : z19, (i & 524288) != 0 ? false : z20, (i & 1048576) != 0 ? false : z21, (i & 2097152) != 0 ? false : z22, (i & 4194304) != 0 ? false : z23, (i & 8388608) != 0 ? false : z24, (i & 16777216) != 0 ? false : z25);
    }
}
