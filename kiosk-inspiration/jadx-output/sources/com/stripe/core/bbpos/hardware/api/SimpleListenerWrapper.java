package com.stripe.core.bbpos.hardware.api;

import android.bluetooth.BluetoothDevice;
import androidx.core.app.NotificationCompat;
import com.stripe.bbpos.sdk.CardData;
import com.stripe.bbpos.sdk.CheckCardMode;
import com.stripe.bbpos.sdk.CheckCardResult;
import com.stripe.bbpos.sdk.ContactlessStatusTone;
import com.stripe.bbpos.sdk.DeviceInfo;
import com.stripe.bbpos.sdk.DisplayText;
import com.stripe.bbpos.sdk.Error;
import com.stripe.bbpos.sdk.ManualPanEntryType;
import com.stripe.bbpos.sdk.PinData;
import com.stripe.bbpos.sdk.PinEntryResult;
import com.stripe.bbpos.sdk.PinEntrySource;
import com.stripe.bbpos.sdk.PinPadTouchEvent;
import com.stripe.bbpos.sdk.TerminalSettingValue;
import com.stripe.bbpos.sdk.TransactionResult;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SimpleListenerWrapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0003H\u0016J\u0016\u0010\n\u001a\u00020\u00032\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\fH\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\"\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00142\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001d\u001a\u00020\u0003H\u0016J\b\u0010\u001e\u001a\u00020\u0003H\u0016J\u0018\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u0014H\u0016J\u0018\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0019H\u0016J\b\u0010&\u001a\u00020\u0003H\u0016J\u0010\u0010'\u001a\u00020\u00032\u0006\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0019H\u0016J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010-\u001a\u00020.H\u0016J\u0010\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u000201H\u0016J\b\u00102\u001a\u00020\u0003H\u0016J\u0016\u00103\u001a\u00020\u00032\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u00190\fH\u0016J\u0018\u00105\u001a\u00020\u00032\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000209H\u0016J$\u0010:\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020;2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190=H\u0016J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0019H\u0016J\u0010\u0010?\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010@\u001a\u00020\u00032\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u0016J\u001e\u0010E\u001a\u00020\u00032\u0014\u0010F\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020G\u0018\u00010=H\u0016J$\u0010H\u001a\u00020\u00032\u0006\u0010I\u001a\u00020J2\u0012\u0010K\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190=H\u0016J\u0010\u0010L\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J$\u0010M\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190=H\u0016J\u0018\u0010N\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020O2\u0006\u0010P\u001a\u00020QH\u0016J\u001c\u0010R\u001a\u00020\u00032\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020G0=H\u0016JÐ\u0001\u0010S\u001a\u00020\u00032\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020U2\u0006\u0010W\u001a\u00020U2\u0006\u0010X\u001a\u00020U2\u0006\u0010Y\u001a\u00020U2\u0006\u0010Z\u001a\u00020U2\u0006\u0010[\u001a\u00020U2\u0006\u0010\\\u001a\u00020U2\u0006\u0010]\u001a\u00020U2\u0006\u0010^\u001a\u00020U2\u0006\u0010_\u001a\u00020U2\u0006\u0010`\u001a\u00020U2\u0006\u0010a\u001a\u00020U2\u0006\u0010b\u001a\u00020U2\u0006\u0010c\u001a\u00020U2\u0006\u0010d\u001a\u00020U2\u0006\u0010e\u001a\u00020U2\u0006\u0010f\u001a\u00020U2\u0006\u0010g\u001a\u00020U2\u0006\u0010h\u001a\u00020U2\u0006\u0010i\u001a\u00020U2\u0006\u0010j\u001a\u00020U2\u0006\u0010k\u001a\u00020U2\u0006\u0010l\u001a\u00020U2\u0006\u0010m\u001a\u00020UH\u0016J\u0010\u0010n\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0019H\u0016J\u0010\u0010o\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010p\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020qH\u0016J\u001c\u0010r\u001a\u00020\u00032\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020s0=H\u0016J\u0018\u0010t\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010u\u001a\u00020\u0019H\u0016J\u0010\u0010v\u001a\u00020\u00032\u0006\u0010w\u001a\u00020sH\u0016J\u001c\u0010x\u001a\u00020\u00032\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020s0=H\u0016J\b\u0010y\u001a\u00020\u0003H\u0016J\b\u0010z\u001a\u00020\u0003H\u0016J\u0018\u0010{\u001a\u00020\u00032\u0006\u0010|\u001a\u00020}2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010~\u001a\u00020\u0003H\u0016J\b\u0010\u007f\u001a\u00020\u0003H\u0016J\t\u0010\u0080\u0001\u001a\u00020\u0003H\u0016J\u0013\u0010\u0081\u0001\u001a\u00020\u00032\b\u0010\u0082\u0001\u001a\u00030\u0083\u0001H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0084\u0001À\u0006\u0001"}, d2 = {"Lcom/stripe/core/bbpos/hardware/api/SimpleListenerWrapper;", "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;", "onBatteryLow", "", "batteryStatus", "Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;", "onBtConnected", "connectedDevice", "Landroid/bluetooth/BluetoothDevice;", "onBtDisconnected", "onBtReturnScanResults", "foundDevices", "", "onDeviceReset", "isSuccess", "", "reason", "Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;", "onDeviceResetAlert", "timeBeforeReset", "", "onError", "error", "Lcom/stripe/bbpos/sdk/Error;", "errorMessage", "", "onHardwareFunctionalTestResult", "result", "itemIndex", "onPowerButtonPressed", "onPowerDown", "onRequestDisplayAsterisk", "unmaskedDigits", "numOfAsterisk", "onRequestDisplayText", "displayText", "Lcom/stripe/bbpos/sdk/DisplayText;", "displayTextLanguage", "onRequestFinalConfirm", "onRequestManualPanEntry", "manualPanEntry", "Lcom/stripe/bbpos/sdk/ManualPanEntryType;", "onRequestOnlineProcess", "tlv", "onRequestPinEntry", "pinEntrySource", "Lcom/stripe/bbpos/sdk/PinEntrySource;", "onRequestProduceAudioTone", "tone", "Lcom/stripe/bbpos/sdk/ContactlessStatusTone;", "onRequestSelectAccountType", "onRequestSelectApplication", "appList", "onReturnAccessiblePinPadTouchEvent", "pinPadTouchEvent", "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;", "eventId", "Ljava/util/UUID;", "onReturnAmount", "Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;", "data", "", "onReturnBatchData", "onReturnCancelCheckCardResult", "onReturnCheckCardResult", "checkCardResult", "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;", "cardData", "Lcom/stripe/bbpos/sdk/CardData;", "onReturnDebugLog", "debugLog", "", "onReturnDeviceInfo", "deviceInfo", "Lcom/stripe/bbpos/sdk/DeviceInfo;", "rawReaderData", "onReturnDisableInputAmountResult", "onReturnEncryptDataResult", "onReturnPinEntryResult", "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;", "pinData", "Lcom/stripe/bbpos/sdk/PinData;", "onReturnReadAidResult", "onReturnReadTerminalSettingResult", "acquirerIdentifier", "Lcom/stripe/bbpos/sdk/TerminalSettingValue;", "terminalCountryCode", "transactionCurrencyCode", "transactionCurrencyExponent", "merchantNameAndLocation", "merchantIdentifier", "terminalIdentification", BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME, "terminalType", "additionalTerminalCapabilities", "normalModeTimeout", "standbyModeTimeout", "bluetoothDiscoveryTimeout", "msrPinEntryTimeout", "firmwareFallbackEnabled", "customBluetoothNamePrefix", "customBluetoothSerialSuffix", "firmwareForceChipEnabled", "iccTransactionBeepEnabled", "keypadEventBeepEnabled", "spocModeEnabled", "domesticDebitAidList", "visaDynamicReaderLimit", "buzzerSoundEnabled", "configHash", "onReturnReversalData", "onReturnSetPinPadButtonsResult", "onReturnTransactionResult", "Lcom/stripe/bbpos/sdk/TransactionResult$Type;", "onReturnUpdateAidResult", "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;", "onReturnUpdateDisplaySettingsResult", "message", "onReturnUpdateTerminalSettingResult", NotificationCompat.CATEGORY_STATUS, "onReturnUpdateTerminalSettingsResult", "onSerialConnected", "onSerialDisconnected", "onSessionError", "sessionError", "Lcom/stripe/core/bbpos/hardware/api/SessionError;", "onSessionInitialized", "onUsbConnected", "onUsbDisconnected", "onWaitingForCard", BbposDeviceControllerImpl.CHECK_CARD_MODE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/CheckCardMode;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface SimpleListenerWrapper extends DeviceListenerWrapper {
    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onBatteryLow(BatteryStatus batteryStatus) {
        Intrinsics.checkNotNullParameter(batteryStatus, "batteryStatus");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onBtConnected(BluetoothDevice connectedDevice) {
        Intrinsics.checkNotNullParameter(connectedDevice, "connectedDevice");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onBtDisconnected() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onBtReturnScanResults(List<BluetoothDevice> foundDevices) {
        Intrinsics.checkNotNullParameter(foundDevices, "foundDevices");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onDeviceReset(boolean isSuccess, DeviceResetReason reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onDeviceResetAlert(int timeBeforeReset) {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onError(Error error, String errorMessage) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onHardwareFunctionalTestResult(int result, int itemIndex, String errorMessage) {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onPowerButtonPressed() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onPowerDown() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onRequestDisplayAsterisk(String unmaskedDigits, int numOfAsterisk) {
        Intrinsics.checkNotNullParameter(unmaskedDigits, "unmaskedDigits");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onRequestDisplayText(DisplayText displayText, String displayTextLanguage) {
        Intrinsics.checkNotNullParameter(displayText, "displayText");
        Intrinsics.checkNotNullParameter(displayTextLanguage, "displayTextLanguage");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onRequestFinalConfirm() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onRequestManualPanEntry(ManualPanEntryType manualPanEntry) {
        Intrinsics.checkNotNullParameter(manualPanEntry, "manualPanEntry");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onRequestOnlineProcess(String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onRequestPinEntry(PinEntrySource pinEntrySource) {
        Intrinsics.checkNotNullParameter(pinEntrySource, "pinEntrySource");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onRequestProduceAudioTone(ContactlessStatusTone tone) {
        Intrinsics.checkNotNullParameter(tone, "tone");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onRequestSelectAccountType() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onRequestSelectApplication(List<String> appList) {
        Intrinsics.checkNotNullParameter(appList, "appList");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnAccessiblePinPadTouchEvent(PinPadTouchEvent pinPadTouchEvent, UUID eventId) {
        Intrinsics.checkNotNullParameter(pinPadTouchEvent, "pinPadTouchEvent");
        Intrinsics.checkNotNullParameter(eventId, "eventId");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnAmount(AmountInputResult result, Map<String, String> data) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(data, "data");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnBatchData(String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnCancelCheckCardResult(boolean isSuccess) {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnCheckCardResult(CheckCardResult.Type checkCardResult, CardData cardData) {
        Intrinsics.checkNotNullParameter(checkCardResult, "checkCardResult");
        Intrinsics.checkNotNullParameter(cardData, "cardData");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnDebugLog(Map<String, ? extends Object> debugLog) {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnDeviceInfo(DeviceInfo deviceInfo, Map<String, String> rawReaderData) {
        Intrinsics.checkNotNullParameter(deviceInfo, "deviceInfo");
        Intrinsics.checkNotNullParameter(rawReaderData, "rawReaderData");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnDisableInputAmountResult(boolean isSuccess) {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnEncryptDataResult(boolean isSuccess, Map<String, String> data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnPinEntryResult(PinEntryResult.Type result, PinData pinData) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(pinData, "pinData");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnReadAidResult(Map<String, ? extends Object> data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnReadTerminalSettingResult(TerminalSettingValue acquirerIdentifier, TerminalSettingValue terminalCountryCode, TerminalSettingValue transactionCurrencyCode, TerminalSettingValue transactionCurrencyExponent, TerminalSettingValue merchantNameAndLocation, TerminalSettingValue merchantIdentifier, TerminalSettingValue terminalIdentification, TerminalSettingValue terminalCapabilities, TerminalSettingValue terminalType, TerminalSettingValue additionalTerminalCapabilities, TerminalSettingValue normalModeTimeout, TerminalSettingValue standbyModeTimeout, TerminalSettingValue bluetoothDiscoveryTimeout, TerminalSettingValue msrPinEntryTimeout, TerminalSettingValue firmwareFallbackEnabled, TerminalSettingValue customBluetoothNamePrefix, TerminalSettingValue customBluetoothSerialSuffix, TerminalSettingValue firmwareForceChipEnabled, TerminalSettingValue iccTransactionBeepEnabled, TerminalSettingValue keypadEventBeepEnabled, TerminalSettingValue spocModeEnabled, TerminalSettingValue domesticDebitAidList, TerminalSettingValue visaDynamicReaderLimit, TerminalSettingValue buzzerSoundEnabled, TerminalSettingValue configHash) {
        Intrinsics.checkNotNullParameter(acquirerIdentifier, "acquirerIdentifier");
        Intrinsics.checkNotNullParameter(terminalCountryCode, "terminalCountryCode");
        Intrinsics.checkNotNullParameter(transactionCurrencyCode, "transactionCurrencyCode");
        Intrinsics.checkNotNullParameter(transactionCurrencyExponent, "transactionCurrencyExponent");
        Intrinsics.checkNotNullParameter(merchantNameAndLocation, "merchantNameAndLocation");
        Intrinsics.checkNotNullParameter(merchantIdentifier, "merchantIdentifier");
        Intrinsics.checkNotNullParameter(terminalIdentification, "terminalIdentification");
        Intrinsics.checkNotNullParameter(terminalCapabilities, "terminalCapabilities");
        Intrinsics.checkNotNullParameter(terminalType, "terminalType");
        Intrinsics.checkNotNullParameter(additionalTerminalCapabilities, "additionalTerminalCapabilities");
        Intrinsics.checkNotNullParameter(normalModeTimeout, "normalModeTimeout");
        Intrinsics.checkNotNullParameter(standbyModeTimeout, "standbyModeTimeout");
        Intrinsics.checkNotNullParameter(bluetoothDiscoveryTimeout, "bluetoothDiscoveryTimeout");
        Intrinsics.checkNotNullParameter(msrPinEntryTimeout, "msrPinEntryTimeout");
        Intrinsics.checkNotNullParameter(firmwareFallbackEnabled, "firmwareFallbackEnabled");
        Intrinsics.checkNotNullParameter(customBluetoothNamePrefix, "customBluetoothNamePrefix");
        Intrinsics.checkNotNullParameter(customBluetoothSerialSuffix, "customBluetoothSerialSuffix");
        Intrinsics.checkNotNullParameter(firmwareForceChipEnabled, "firmwareForceChipEnabled");
        Intrinsics.checkNotNullParameter(iccTransactionBeepEnabled, "iccTransactionBeepEnabled");
        Intrinsics.checkNotNullParameter(keypadEventBeepEnabled, "keypadEventBeepEnabled");
        Intrinsics.checkNotNullParameter(spocModeEnabled, "spocModeEnabled");
        Intrinsics.checkNotNullParameter(domesticDebitAidList, "domesticDebitAidList");
        Intrinsics.checkNotNullParameter(visaDynamicReaderLimit, "visaDynamicReaderLimit");
        Intrinsics.checkNotNullParameter(buzzerSoundEnabled, "buzzerSoundEnabled");
        Intrinsics.checkNotNullParameter(configHash, "configHash");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnReversalData(String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnSetPinPadButtonsResult(boolean isSuccess) {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnTransactionResult(TransactionResult.Type result) {
        Intrinsics.checkNotNullParameter(result, "result");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnUpdateAidResult(Map<String, ? extends TerminalSettingStatus> data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnUpdateDisplaySettingsResult(boolean isSuccess, String message) {
        Intrinsics.checkNotNullParameter(message, "message");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnUpdateTerminalSettingResult(TerminalSettingStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onReturnUpdateTerminalSettingsResult(Map<String, ? extends TerminalSettingStatus> data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onSerialConnected() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onSerialDisconnected() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onSessionError(SessionError sessionError, String errorMessage) {
        Intrinsics.checkNotNullParameter(sessionError, "sessionError");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onSessionInitialized() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onUsbConnected() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onUsbDisconnected() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    default void onWaitingForCard(CheckCardMode checkCardMode) {
        Intrinsics.checkNotNullParameter(checkCardMode, "checkCardMode");
    }
}
