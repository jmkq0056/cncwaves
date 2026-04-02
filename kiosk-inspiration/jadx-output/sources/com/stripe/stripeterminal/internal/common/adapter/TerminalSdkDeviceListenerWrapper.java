package com.stripe.stripeterminal.internal.common.adapter;

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
import com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener;
import com.stripe.core.bbpos.hardware.api.AmountInputResult;
import com.stripe.core.bbpos.hardware.api.BatteryStatus;
import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import com.stripe.core.bbpos.hardware.api.DeviceResetReason;
import com.stripe.core.bbpos.hardware.api.SessionError;
import com.stripe.core.bbpos.hardware.api.TerminalSettingStatus;
import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothDiscoveryFilter;
import com.stripe.stripeterminal.internal.common.makers.ReaderMaker;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalSdkDeviceListenerWrapper.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\f¢\u0006\u0002\u0010\rJ\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0096\u0001J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u000fH\u0016J\u0016\u0010\u0016\u001a\u00020\u000f2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u0018H\u0016J\u0019\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0096\u0001J\u0011\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 H\u0096\u0001J\u0019\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0096\u0001J#\u0010&\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020 2\u0006\u0010(\u001a\u00020 2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0001J\t\u0010)\u001a\u00020\u000fH\u0096\u0001J\t\u0010*\u001a\u00020\u000fH\u0096\u0001J\u0019\u0010+\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020%2\u0006\u0010-\u001a\u00020 H\u0096\u0001J\u0019\u0010.\u001a\u00020\u000f2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020%H\u0096\u0001J\t\u00102\u001a\u00020\u000fH\u0096\u0001J\u0011\u00103\u001a\u00020\u000f2\u0006\u00104\u001a\u000205H\u0096\u0001J\u0011\u00106\u001a\u00020\u000f2\u0006\u00107\u001a\u00020%H\u0096\u0001J\u0011\u00108\u001a\u00020\u000f2\u0006\u00109\u001a\u00020:H\u0096\u0001J\u0011\u0010;\u001a\u00020\u000f2\u0006\u0010<\u001a\u00020=H\u0096\u0001J\t\u0010>\u001a\u00020\u000fH\u0096\u0001J\u0017\u0010?\u001a\u00020\u000f2\f\u0010@\u001a\b\u0012\u0004\u0012\u00020%0\u0018H\u0096\u0001J\u0019\u0010A\u001a\u00020\u000f2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020EH\u0096\u0001J%\u0010F\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020G2\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%0IH\u0096\u0001J\u0011\u0010J\u001a\u00020\u000f2\u0006\u00107\u001a\u00020%H\u0096\u0001J\u0011\u0010K\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0096\u0001J\u0019\u0010L\u001a\u00020\u000f2\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020PH\u0096\u0001J\u001f\u0010Q\u001a\u00020\u000f2\u0014\u0010R\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020S\u0018\u00010IH\u0096\u0001J%\u0010T\u001a\u00020\u000f2\u0006\u0010U\u001a\u00020V2\u0012\u0010W\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%0IH\u0096\u0001J\u0011\u0010X\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0096\u0001J%\u0010Y\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%0IH\u0096\u0001J\u0019\u0010Z\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020[2\u0006\u0010\\\u001a\u00020]H\u0096\u0001J\u001d\u0010^\u001a\u00020\u000f2\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020S0IH\u0096\u0001JÑ\u0001\u0010_\u001a\u00020\u000f2\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020a2\u0006\u0010c\u001a\u00020a2\u0006\u0010d\u001a\u00020a2\u0006\u0010e\u001a\u00020a2\u0006\u0010f\u001a\u00020a2\u0006\u0010g\u001a\u00020a2\u0006\u0010h\u001a\u00020a2\u0006\u0010i\u001a\u00020a2\u0006\u0010j\u001a\u00020a2\u0006\u0010k\u001a\u00020a2\u0006\u0010l\u001a\u00020a2\u0006\u0010m\u001a\u00020a2\u0006\u0010n\u001a\u00020a2\u0006\u0010o\u001a\u00020a2\u0006\u0010p\u001a\u00020a2\u0006\u0010q\u001a\u00020a2\u0006\u0010r\u001a\u00020a2\u0006\u0010s\u001a\u00020a2\u0006\u0010t\u001a\u00020a2\u0006\u0010u\u001a\u00020a2\u0006\u0010v\u001a\u00020a2\u0006\u0010w\u001a\u00020a2\u0006\u0010x\u001a\u00020a2\u0006\u0010y\u001a\u00020aH\u0096\u0001J\u0011\u0010z\u001a\u00020\u000f2\u0006\u00107\u001a\u00020%H\u0096\u0001J\u0011\u0010{\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0096\u0001J\u0011\u0010|\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020}H\u0096\u0001J\u001d\u0010~\u001a\u00020\u000f2\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u007f0IH\u0096\u0001J\u001b\u0010\u0080\u0001\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0007\u0010\u0081\u0001\u001a\u00020%H\u0096\u0001J\u0013\u0010\u0082\u0001\u001a\u00020\u000f2\u0007\u0010\u0083\u0001\u001a\u00020\u007fH\u0096\u0001J\u001e\u0010\u0084\u0001\u001a\u00020\u000f2\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u007f0IH\u0096\u0001J\n\u0010\u0085\u0001\u001a\u00020\u000fH\u0096\u0001J\n\u0010\u0086\u0001\u001a\u00020\u000fH\u0096\u0001J\u001c\u0010\u0087\u0001\u001a\u00020\u000f2\b\u0010\u0088\u0001\u001a\u00030\u0089\u00012\u0006\u0010$\u001a\u00020%H\u0096\u0001J\n\u0010\u008a\u0001\u001a\u00020\u000fH\u0096\u0001J\t\u0010\u008b\u0001\u001a\u00020\u000fH\u0016J\t\u0010\u008c\u0001\u001a\u00020\u000fH\u0016J\u0014\u0010\u008d\u0001\u001a\u00020\u000f2\b\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u0096\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0090\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;", "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;", "deviceListenerWrapper", "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;", "readerStatusListener", "Lcom/stripe/core/hardware/status/ReaderStatusListener;", "discoveryFilter", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "onBatteryLow", "", "batteryStatus", "Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;", "onBtConnected", "connectedDevice", "Landroid/bluetooth/BluetoothDevice;", "onBtDisconnected", "onBtReturnScanResults", "foundDevices", "", "onDeviceReset", "isSuccess", "", "reason", "Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;", "onDeviceResetAlert", "timeBeforeReset", "", "onError", "error", "Lcom/stripe/bbpos/sdk/Error;", "errorMessage", "", "onHardwareFunctionalTestResult", "result", "itemIndex", "onPowerButtonPressed", "onPowerDown", "onRequestDisplayAsterisk", "unmaskedDigits", "numOfAsterisk", "onRequestDisplayText", "displayText", "Lcom/stripe/bbpos/sdk/DisplayText;", "displayTextLanguage", "onRequestFinalConfirm", "onRequestManualPanEntry", "manualPanEntry", "Lcom/stripe/bbpos/sdk/ManualPanEntryType;", "onRequestOnlineProcess", "tlv", "onRequestPinEntry", "pinEntrySource", "Lcom/stripe/bbpos/sdk/PinEntrySource;", "onRequestProduceAudioTone", "tone", "Lcom/stripe/bbpos/sdk/ContactlessStatusTone;", "onRequestSelectAccountType", "onRequestSelectApplication", "appList", "onReturnAccessiblePinPadTouchEvent", "pinPadTouchEvent", "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;", "eventId", "Ljava/util/UUID;", "onReturnAmount", "Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;", "data", "", "onReturnBatchData", "onReturnCancelCheckCardResult", "onReturnCheckCardResult", "checkCardResult", "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;", "cardData", "Lcom/stripe/bbpos/sdk/CardData;", "onReturnDebugLog", "debugLog", "", "onReturnDeviceInfo", "deviceInfo", "Lcom/stripe/bbpos/sdk/DeviceInfo;", "rawReaderData", "onReturnDisableInputAmountResult", "onReturnEncryptDataResult", "onReturnPinEntryResult", "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;", "pinData", "Lcom/stripe/bbpos/sdk/PinData;", "onReturnReadAidResult", "onReturnReadTerminalSettingResult", "acquirerIdentifier", "Lcom/stripe/bbpos/sdk/TerminalSettingValue;", "terminalCountryCode", "transactionCurrencyCode", "transactionCurrencyExponent", "merchantNameAndLocation", "merchantIdentifier", "terminalIdentification", BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME, "terminalType", "additionalTerminalCapabilities", "normalModeTimeout", "standbyModeTimeout", "bluetoothDiscoveryTimeout", "msrPinEntryTimeout", "firmwareFallbackEnabled", "customBluetoothNamePrefix", "customBluetoothSerialSuffix", "firmwareForceChipEnabled", "iccTransactionBeepEnabled", "keypadEventBeepEnabled", "spocModeEnabled", "domesticDebitAidList", "visaDynamicReaderLimit", "buzzerSoundEnabled", "configHash", "onReturnReversalData", "onReturnSetPinPadButtonsResult", "onReturnTransactionResult", "Lcom/stripe/bbpos/sdk/TransactionResult$Type;", "onReturnUpdateAidResult", "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;", "onReturnUpdateDisplaySettingsResult", "message", "onReturnUpdateTerminalSettingResult", NotificationCompat.CATEGORY_STATUS, "onReturnUpdateTerminalSettingsResult", "onSerialConnected", "onSerialDisconnected", "onSessionError", "sessionError", "Lcom/stripe/core/bbpos/hardware/api/SessionError;", "onSessionInitialized", "onUsbConnected", "onUsbDisconnected", "onWaitingForCard", BbposDeviceControllerImpl.CHECK_CARD_MODE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/CheckCardMode;", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalSdkDeviceListenerWrapper implements DeviceListenerWrapper {
    private final BbposPaymentCollectionListener deviceListenerWrapper;
    private final BbposBluetoothDiscoveryFilter discoveryFilter;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final ReaderStatusListener readerStatusListener;

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBatteryLow(BatteryStatus batteryStatus) {
        Intrinsics.checkNotNullParameter(batteryStatus, "batteryStatus");
        this.deviceListenerWrapper.onBatteryLow(batteryStatus);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onDeviceReset(boolean isSuccess, DeviceResetReason reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.deviceListenerWrapper.onDeviceReset(isSuccess, reason);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onDeviceResetAlert(int timeBeforeReset) {
        this.deviceListenerWrapper.onDeviceResetAlert(timeBeforeReset);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onError(Error error, String errorMessage) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.deviceListenerWrapper.onError(error, errorMessage);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onHardwareFunctionalTestResult(int result, int itemIndex, String errorMessage) {
        this.deviceListenerWrapper.onHardwareFunctionalTestResult(result, itemIndex, errorMessage);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onPowerButtonPressed() {
        this.deviceListenerWrapper.onPowerButtonPressed();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onPowerDown() {
        this.deviceListenerWrapper.onPowerDown();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestDisplayAsterisk(String unmaskedDigits, int numOfAsterisk) {
        Intrinsics.checkNotNullParameter(unmaskedDigits, "unmaskedDigits");
        this.deviceListenerWrapper.onRequestDisplayAsterisk(unmaskedDigits, numOfAsterisk);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestDisplayText(DisplayText displayText, String displayTextLanguage) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(displayText, "displayText");
        Intrinsics.checkNotNullParameter(displayTextLanguage, "displayTextLanguage");
        this.deviceListenerWrapper.onRequestDisplayText(displayText, displayTextLanguage);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestFinalConfirm() throws IllegalAccessException, InstantiationException {
        this.deviceListenerWrapper.onRequestFinalConfirm();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestManualPanEntry(ManualPanEntryType manualPanEntry) {
        Intrinsics.checkNotNullParameter(manualPanEntry, "manualPanEntry");
        this.deviceListenerWrapper.onRequestManualPanEntry(manualPanEntry);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestOnlineProcess(String tlv) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        this.deviceListenerWrapper.onRequestOnlineProcess(tlv);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestPinEntry(PinEntrySource pinEntrySource) {
        Intrinsics.checkNotNullParameter(pinEntrySource, "pinEntrySource");
        this.deviceListenerWrapper.onRequestPinEntry(pinEntrySource);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestProduceAudioTone(ContactlessStatusTone tone) {
        Intrinsics.checkNotNullParameter(tone, "tone");
        this.deviceListenerWrapper.onRequestProduceAudioTone(tone);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestSelectAccountType() throws IllegalAccessException, InstantiationException {
        this.deviceListenerWrapper.onRequestSelectAccountType();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestSelectApplication(List<String> appList) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(appList, "appList");
        this.deviceListenerWrapper.onRequestSelectApplication(appList);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnAccessiblePinPadTouchEvent(PinPadTouchEvent pinPadTouchEvent, UUID eventId) {
        Intrinsics.checkNotNullParameter(pinPadTouchEvent, "pinPadTouchEvent");
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        this.deviceListenerWrapper.onReturnAccessiblePinPadTouchEvent(pinPadTouchEvent, eventId);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnAmount(AmountInputResult result, Map<String, String> data) throws IOException {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(data, "data");
        this.deviceListenerWrapper.onReturnAmount(result, data);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnBatchData(String tlv) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        this.deviceListenerWrapper.onReturnBatchData(tlv);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnCancelCheckCardResult(boolean isSuccess) {
        this.deviceListenerWrapper.onReturnCancelCheckCardResult(isSuccess);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnCheckCardResult(CheckCardResult.Type checkCardResult, CardData cardData) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(checkCardResult, "checkCardResult");
        Intrinsics.checkNotNullParameter(cardData, "cardData");
        this.deviceListenerWrapper.onReturnCheckCardResult(checkCardResult, cardData);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnDebugLog(Map<String, ? extends Object> debugLog) {
        this.deviceListenerWrapper.onReturnDebugLog(debugLog);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnDeviceInfo(DeviceInfo deviceInfo, Map<String, String> rawReaderData) {
        Intrinsics.checkNotNullParameter(deviceInfo, "deviceInfo");
        Intrinsics.checkNotNullParameter(rawReaderData, "rawReaderData");
        this.deviceListenerWrapper.onReturnDeviceInfo(deviceInfo, rawReaderData);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnDisableInputAmountResult(boolean isSuccess) {
        this.deviceListenerWrapper.onReturnDisableInputAmountResult(isSuccess);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnEncryptDataResult(boolean isSuccess, Map<String, String> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.deviceListenerWrapper.onReturnEncryptDataResult(isSuccess, data);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnPinEntryResult(PinEntryResult.Type result, PinData pinData) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(pinData, "pinData");
        this.deviceListenerWrapper.onReturnPinEntryResult(result, pinData);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnReadAidResult(Map<String, ? extends Object> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.deviceListenerWrapper.onReturnReadAidResult(data);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnReadTerminalSettingResult(TerminalSettingValue acquirerIdentifier, TerminalSettingValue terminalCountryCode, TerminalSettingValue transactionCurrencyCode, TerminalSettingValue transactionCurrencyExponent, TerminalSettingValue merchantNameAndLocation, TerminalSettingValue merchantIdentifier, TerminalSettingValue terminalIdentification, TerminalSettingValue terminalCapabilities, TerminalSettingValue terminalType, TerminalSettingValue additionalTerminalCapabilities, TerminalSettingValue normalModeTimeout, TerminalSettingValue standbyModeTimeout, TerminalSettingValue bluetoothDiscoveryTimeout, TerminalSettingValue msrPinEntryTimeout, TerminalSettingValue firmwareFallbackEnabled, TerminalSettingValue customBluetoothNamePrefix, TerminalSettingValue customBluetoothSerialSuffix, TerminalSettingValue firmwareForceChipEnabled, TerminalSettingValue iccTransactionBeepEnabled, TerminalSettingValue keypadEventBeepEnabled, TerminalSettingValue spocModeEnabled, TerminalSettingValue domesticDebitAidList, TerminalSettingValue visaDynamicReaderLimit, TerminalSettingValue buzzerSoundEnabled, TerminalSettingValue configHash) {
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
        this.deviceListenerWrapper.onReturnReadTerminalSettingResult(acquirerIdentifier, terminalCountryCode, transactionCurrencyCode, transactionCurrencyExponent, merchantNameAndLocation, merchantIdentifier, terminalIdentification, terminalCapabilities, terminalType, additionalTerminalCapabilities, normalModeTimeout, standbyModeTimeout, bluetoothDiscoveryTimeout, msrPinEntryTimeout, firmwareFallbackEnabled, customBluetoothNamePrefix, customBluetoothSerialSuffix, firmwareForceChipEnabled, iccTransactionBeepEnabled, keypadEventBeepEnabled, spocModeEnabled, domesticDebitAidList, visaDynamicReaderLimit, buzzerSoundEnabled, configHash);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnReversalData(String tlv) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        this.deviceListenerWrapper.onReturnReversalData(tlv);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnSetPinPadButtonsResult(boolean isSuccess) {
        this.deviceListenerWrapper.onReturnSetPinPadButtonsResult(isSuccess);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnTransactionResult(TransactionResult.Type result) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(result, "result");
        this.deviceListenerWrapper.onReturnTransactionResult(result);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnUpdateAidResult(Map<String, ? extends TerminalSettingStatus> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.deviceListenerWrapper.onReturnUpdateAidResult(data);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnUpdateDisplaySettingsResult(boolean isSuccess, String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.deviceListenerWrapper.onReturnUpdateDisplaySettingsResult(isSuccess, message);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnUpdateTerminalSettingResult(TerminalSettingStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.deviceListenerWrapper.onReturnUpdateTerminalSettingResult(status);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnUpdateTerminalSettingsResult(Map<String, ? extends TerminalSettingStatus> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.deviceListenerWrapper.onReturnUpdateTerminalSettingsResult(data);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSerialConnected() {
        this.deviceListenerWrapper.onSerialConnected();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSerialDisconnected() {
        this.deviceListenerWrapper.onSerialDisconnected();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSessionError(SessionError sessionError, String errorMessage) {
        Intrinsics.checkNotNullParameter(sessionError, "sessionError");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.deviceListenerWrapper.onSessionError(sessionError, errorMessage);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSessionInitialized() {
        this.deviceListenerWrapper.onSessionInitialized();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onWaitingForCard(CheckCardMode checkCardMode) {
        Intrinsics.checkNotNullParameter(checkCardMode, "checkCardMode");
        this.deviceListenerWrapper.onWaitingForCard(checkCardMode);
    }

    public TerminalSdkDeviceListenerWrapper(BbposPaymentCollectionListener deviceListenerWrapper, ReaderStatusListener readerStatusListener, BbposBluetoothDiscoveryFilter discoveryFilter, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(deviceListenerWrapper, "deviceListenerWrapper");
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(discoveryFilter, "discoveryFilter");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.deviceListenerWrapper = deviceListenerWrapper;
        this.readerStatusListener = readerStatusListener;
        this.discoveryFilter = discoveryFilter;
        this.logger = logger;
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBtReturnScanResults(List<BluetoothDevice> foundDevices) {
        Intrinsics.checkNotNullParameter(foundDevices, "foundDevices");
        this.deviceListenerWrapper.onBtReturnScanResults(foundDevices);
        ReaderStatusListener readerStatusListener = this.readerStatusListener;
        BbposBluetoothDiscoveryFilter bbposBluetoothDiscoveryFilter = this.discoveryFilter;
        ReaderMaker readerMaker = ReaderMaker.INSTANCE;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = foundDevices.iterator();
        while (it.hasNext()) {
            Reader.BluetoothReader bluetoothReaderFromBluetoothDeviceOrNull = readerMaker.fromBluetoothDeviceOrNull((BluetoothDevice) it.next());
            if (bluetoothReaderFromBluetoothDeviceOrNull != null) {
                arrayList.add(bluetoothReaderFromBluetoothDeviceOrNull);
            }
        }
        readerStatusListener.handleReaderDiscovery(CollectionsKt.toSet(bbposBluetoothDiscoveryFilter.filterDevices(arrayList)));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBtConnected(BluetoothDevice connectedDevice) {
        Intrinsics.checkNotNullParameter(connectedDevice, "connectedDevice");
        this.deviceListenerWrapper.onBtConnected(connectedDevice);
        this.logger.i("onBTConnected", new Pair[0]);
        this.readerStatusListener.handleReaderConnect(ReaderMaker.INSTANCE.fromBluetoothDevice(connectedDevice));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBtDisconnected() {
        this.deviceListenerWrapper.onBtDisconnected();
        this.logger.i("onBTDisconnected", new Pair[0]);
        ReaderStatusListener.handleReaderDisconnect$default(this.readerStatusListener, null, 1, null);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onUsbConnected() {
        this.deviceListenerWrapper.onUsbConnected();
        this.logger.i("onUsbConnected", new Pair[0]);
        this.readerStatusListener.handleReaderConnect(Reader.UsbReader.UnspecifiedUsbReader.INSTANCE);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onUsbDisconnected() {
        this.deviceListenerWrapper.onUsbDisconnected();
        this.logger.i("onUsbDisconnected", new Pair[0]);
        ReaderStatusListener.handleReaderDisconnect$default(this.readerStatusListener, null, 1, null);
    }
}
