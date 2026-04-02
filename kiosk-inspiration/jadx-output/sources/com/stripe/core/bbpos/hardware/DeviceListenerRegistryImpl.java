package com.stripe.core.bbpos.hardware;

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
import com.stripe.core.bbpos.hardware.api.AmountInputResult;
import com.stripe.core.bbpos.hardware.api.BatteryStatus;
import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import com.stripe.core.bbpos.hardware.api.DeviceResetReason;
import com.stripe.core.bbpos.hardware.api.SessionError;
import com.stripe.core.bbpos.hardware.api.TerminalSettingStatus;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.sun.jna.Callback;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeviceListenerRegistryImpl.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B=\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bj\u0002`\u000b¢\u0006\u0002\u0010\fJ\u001c\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00120\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0012H\u0016J\u0016\u0010\u001c\u001a\u00020\u00122\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001a0\u001eH\u0016J\u0018\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u0010'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\"\u0010,\u001a\u00020\u00122\u0006\u0010-\u001a\u00020&2\u0006\u0010.\u001a\u00020&2\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\b\u0010/\u001a\u00020\u0012H\u0016J\b\u00100\u001a\u00020\u0012H\u0016J\u0018\u00101\u001a\u00020\u00122\u0006\u00102\u001a\u00020+2\u0006\u00103\u001a\u00020&H\u0016J\u0018\u00104\u001a\u00020\u00122\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u00020+H\u0016J\b\u00108\u001a\u00020\u0012H\u0016J\u0010\u00109\u001a\u00020\u00122\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u0010<\u001a\u00020\u00122\u0006\u0010=\u001a\u00020+H\u0016J\u0010\u0010>\u001a\u00020\u00122\u0006\u0010?\u001a\u00020@H\u0016J\u0010\u0010A\u001a\u00020\u00122\u0006\u0010B\u001a\u00020CH\u0016J\b\u0010D\u001a\u00020\u0012H\u0016J\u0016\u0010E\u001a\u00020\u00122\f\u0010F\u001a\b\u0012\u0004\u0012\u00020+0\u001eH\u0016J\u0018\u0010G\u001a\u00020\u00122\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020KH\u0016J$\u0010L\u001a\u00020\u00122\u0006\u0010-\u001a\u00020M2\u0012\u0010N\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020+0OH\u0016J\u0010\u0010P\u001a\u00020\u00122\u0006\u0010=\u001a\u00020+H\u0016J\u0010\u0010Q\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J\u0018\u0010R\u001a\u00020\u00122\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020VH\u0016J\u001e\u0010W\u001a\u00020\u00122\u0014\u0010X\u001a\u0010\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020Y\u0018\u00010OH\u0016J$\u0010Z\u001a\u00020\u00122\u0006\u0010[\u001a\u00020\\2\u0012\u0010]\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020+0OH\u0016J\u0010\u0010^\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J$\u0010_\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!2\u0012\u0010N\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020+0OH\u0016J\u0018\u0010`\u001a\u00020\u00122\u0006\u0010-\u001a\u00020a2\u0006\u0010b\u001a\u00020cH\u0016J\u001c\u0010d\u001a\u00020\u00122\u0012\u0010N\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020Y0OH\u0016JÐ\u0001\u0010e\u001a\u00020\u00122\u0006\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020g2\u0006\u0010i\u001a\u00020g2\u0006\u0010j\u001a\u00020g2\u0006\u0010k\u001a\u00020g2\u0006\u0010l\u001a\u00020g2\u0006\u0010m\u001a\u00020g2\u0006\u0010n\u001a\u00020g2\u0006\u0010o\u001a\u00020g2\u0006\u0010p\u001a\u00020g2\u0006\u0010q\u001a\u00020g2\u0006\u0010r\u001a\u00020g2\u0006\u0010s\u001a\u00020g2\u0006\u0010t\u001a\u00020g2\u0006\u0010u\u001a\u00020g2\u0006\u0010v\u001a\u00020g2\u0006\u0010w\u001a\u00020g2\u0006\u0010x\u001a\u00020g2\u0006\u0010y\u001a\u00020g2\u0006\u0010z\u001a\u00020g2\u0006\u0010{\u001a\u00020g2\u0006\u0010|\u001a\u00020g2\u0006\u0010}\u001a\u00020g2\u0006\u0010~\u001a\u00020g2\u0006\u0010\u007f\u001a\u00020gH\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\u00122\u0006\u0010=\u001a\u00020+H\u0016J\u0011\u0010\u0081\u0001\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J\u0012\u0010\u0082\u0001\u001a\u00020\u00122\u0007\u0010-\u001a\u00030\u0083\u0001H\u0016J\u001e\u0010\u0084\u0001\u001a\u00020\u00122\u0013\u0010N\u001a\u000f\u0012\u0004\u0012\u00020+\u0012\u0005\u0012\u00030\u0085\u00010OH\u0016J\u001a\u0010\u0086\u0001\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!2\u0007\u0010\u0087\u0001\u001a\u00020+H\u0016J\u0013\u0010\u0088\u0001\u001a\u00020\u00122\b\u0010\u0089\u0001\u001a\u00030\u0085\u0001H\u0016J\u001e\u0010\u008a\u0001\u001a\u00020\u00122\u0013\u0010N\u001a\u000f\u0012\u0004\u0012\u00020+\u0012\u0005\u0012\u00030\u0085\u00010OH\u0016J\t\u0010\u008b\u0001\u001a\u00020\u0012H\u0016J\t\u0010\u008c\u0001\u001a\u00020\u0012H\u0016J\u001b\u0010\u008d\u0001\u001a\u00020\u00122\b\u0010\u008e\u0001\u001a\u00030\u008f\u00012\u0006\u0010*\u001a\u00020+H\u0016J\t\u0010\u0090\u0001\u001a\u00020\u0012H\u0016J\t\u0010\u0091\u0001\u001a\u00020\u0012H\u0016J\t\u0010\u0092\u0001\u001a\u00020\u0012H\u0016J\u0013\u0010\u0093\u0001\u001a\u00020\u00122\b\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0016J\u0012\u0010\u0096\u0001\u001a\u00020\u00122\u0007\u0010\u0097\u0001\u001a\u00020\u0001H\u0016J\u0012\u0010\u0098\u0001\u001a\u00020\u00122\u0007\u0010\u0097\u0001\u001a\u00020\u0001H\u0016J\u001a\u0010\u0099\u0001\u001a\u00020\u00122\u000e\u0010\u009a\u0001\u001a\t\u0012\u0004\u0012\u00020\u00120\u009b\u0001H\u0082\bJ\u001a\u0010\u009c\u0001\u001a\u00020\u00122\u000e\u0010\u009a\u0001\u001a\t\u0012\u0004\u0012\u00020\u00120\u009b\u0001H\u0082\bR\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bj\u0002`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u009d\u0001"}, d2 = {"Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;", "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;", "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;", "encryptionHandler", "observabilityHandler", "missingKeyHandler", "readerStatusHandler", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "listeners", "", "lock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "notifyAll", "", Callback.METHOD_NAME, "Lkotlin/Function1;", "onBatteryLow", "batteryStatus", "Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;", "onBtConnected", "connectedDevice", "Landroid/bluetooth/BluetoothDevice;", "onBtDisconnected", "onBtReturnScanResults", "foundDevices", "", "onDeviceReset", "isSuccess", "", "reason", "Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;", "onDeviceResetAlert", "timeBeforeReset", "", "onError", "error", "Lcom/stripe/bbpos/sdk/Error;", "errorMessage", "", "onHardwareFunctionalTestResult", "result", "itemIndex", "onPowerButtonPressed", "onPowerDown", "onRequestDisplayAsterisk", "unmaskedDigits", "numOfAsterisk", "onRequestDisplayText", "displayText", "Lcom/stripe/bbpos/sdk/DisplayText;", "displayTextLanguage", "onRequestFinalConfirm", "onRequestManualPanEntry", "manualPanEntry", "Lcom/stripe/bbpos/sdk/ManualPanEntryType;", "onRequestOnlineProcess", "tlv", "onRequestPinEntry", "pinEntrySource", "Lcom/stripe/bbpos/sdk/PinEntrySource;", "onRequestProduceAudioTone", "tone", "Lcom/stripe/bbpos/sdk/ContactlessStatusTone;", "onRequestSelectAccountType", "onRequestSelectApplication", "appList", "onReturnAccessiblePinPadTouchEvent", "pinPadTouchEvent", "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;", "eventId", "Ljava/util/UUID;", "onReturnAmount", "Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;", "data", "", "onReturnBatchData", "onReturnCancelCheckCardResult", "onReturnCheckCardResult", "checkCardResult", "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;", "cardData", "Lcom/stripe/bbpos/sdk/CardData;", "onReturnDebugLog", "debugLog", "", "onReturnDeviceInfo", "deviceInfo", "Lcom/stripe/bbpos/sdk/DeviceInfo;", "rawReaderData", "onReturnDisableInputAmountResult", "onReturnEncryptDataResult", "onReturnPinEntryResult", "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;", "pinData", "Lcom/stripe/bbpos/sdk/PinData;", "onReturnReadAidResult", "onReturnReadTerminalSettingResult", "acquirerIdentifier", "Lcom/stripe/bbpos/sdk/TerminalSettingValue;", "terminalCountryCode", "transactionCurrencyCode", "transactionCurrencyExponent", "merchantNameAndLocation", "merchantIdentifier", "terminalIdentification", BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME, "terminalType", "additionalTerminalCapabilities", "normalModeTimeout", "standbyModeTimeout", "bluetoothDiscoveryTimeout", "msrPinEntryTimeout", "firmwareFallbackEnabled", "customBluetoothNamePrefix", "customBluetoothSerialSuffix", "firmwareForceChipEnabled", "iccTransactionBeepEnabled", "keypadEventBeepEnabled", "spocModeEnabled", "domesticDebitAidList", "visaDynamicReaderLimit", "buzzerSoundEnabled", "configHash", "onReturnReversalData", "onReturnSetPinPadButtonsResult", "onReturnTransactionResult", "Lcom/stripe/bbpos/sdk/TransactionResult$Type;", "onReturnUpdateAidResult", "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;", "onReturnUpdateDisplaySettingsResult", "message", "onReturnUpdateTerminalSettingResult", NotificationCompat.CATEGORY_STATUS, "onReturnUpdateTerminalSettingsResult", "onSerialConnected", "onSerialDisconnected", "onSessionError", "sessionError", "Lcom/stripe/core/bbpos/hardware/api/SessionError;", "onSessionInitialized", "onUsbConnected", "onUsbDisconnected", "onWaitingForCard", BbposDeviceControllerImpl.CHECK_CARD_MODE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/CheckCardMode;", "registerListener", "listenerWrapper", "unregisterListener", "withReadLock", "block", "Lkotlin/Function0;", "withWriteLock", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceListenerRegistryImpl implements DeviceListenerWrapper, DeviceListenerRegistry {
    private final Set<DeviceListenerWrapper> listeners;
    private final ReentrantReadWriteLock lock;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    public DeviceListenerRegistryImpl(DeviceListenerWrapper encryptionHandler, DeviceListenerWrapper observabilityHandler, DeviceListenerWrapper missingKeyHandler, DeviceListenerWrapper readerStatusHandler, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(encryptionHandler, "encryptionHandler");
        Intrinsics.checkNotNullParameter(observabilityHandler, "observabilityHandler");
        Intrinsics.checkNotNullParameter(missingKeyHandler, "missingKeyHandler");
        Intrinsics.checkNotNullParameter(readerStatusHandler, "readerStatusHandler");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
        this.lock = new ReentrantReadWriteLock();
        this.listeners = CollectionsKt.toMutableSet(SetsKt.setOf((Object[]) new DeviceListenerWrapper[]{encryptionHandler, observabilityHandler, missingKeyHandler, readerStatusHandler}));
    }

    private final void withWriteLock(Function0<Unit> block) {
        ReentrantReadWriteLock.WriteLock writeLock = this.lock.writeLock();
        Intrinsics.checkNotNullExpressionValue(writeLock, "writeLock(...)");
        ReentrantReadWriteLock.WriteLock writeLock2 = writeLock;
        writeLock2.lock();
        try {
            block.invoke();
        } finally {
            writeLock2.unlock();
        }
    }

    private final void withReadLock(Function0<Unit> block) {
        ReentrantReadWriteLock.ReadLock lock = this.lock.readLock();
        Intrinsics.checkNotNullExpressionValue(lock, "readLock(...)");
        ReentrantReadWriteLock.ReadLock readLock = lock;
        readLock.lock();
        try {
            block.invoke();
        } finally {
            readLock.unlock();
        }
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onWaitingForCard(final CheckCardMode checkCardMode) {
        Intrinsics.checkNotNullParameter(checkCardMode, "checkCardMode");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onWaitingForCard.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onWaitingForCard(checkCardMode);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBtReturnScanResults(final List<BluetoothDevice> foundDevices) {
        Intrinsics.checkNotNullParameter(foundDevices, "foundDevices");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onBtReturnScanResults.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onBtReturnScanResults(foundDevices);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBtConnected(final BluetoothDevice connectedDevice) {
        Intrinsics.checkNotNullParameter(connectedDevice, "connectedDevice");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onBtConnected.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onBtConnected(connectedDevice);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBtDisconnected() {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onBtDisconnected.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onBtDisconnected();
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onUsbConnected() {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onUsbConnected.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onUsbConnected();
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onUsbDisconnected() {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onUsbDisconnected.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onUsbDisconnected();
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSerialConnected() {
        this.logger.d("onSerialConnected()", new Pair[0]);
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onSerialConnected.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onSerialConnected();
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSerialDisconnected() {
        this.logger.d("onSerialDisconnected", new Pair[0]);
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onSerialDisconnected.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onSerialDisconnected();
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnCheckCardResult(final CheckCardResult.Type checkCardResult, final CardData cardData) {
        Intrinsics.checkNotNullParameter(checkCardResult, "checkCardResult");
        Intrinsics.checkNotNullParameter(cardData, "cardData");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnCheckCardResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnCheckCardResult(checkCardResult, cardData);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnCancelCheckCardResult(final boolean isSuccess) {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnCancelCheckCardResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnCancelCheckCardResult(isSuccess);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnDeviceInfo(final DeviceInfo deviceInfo, final Map<String, String> rawReaderData) {
        Intrinsics.checkNotNullParameter(deviceInfo, "deviceInfo");
        Intrinsics.checkNotNullParameter(rawReaderData, "rawReaderData");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnDeviceInfo.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnDeviceInfo(deviceInfo, rawReaderData);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnTransactionResult(final TransactionResult.Type result) {
        Intrinsics.checkNotNullParameter(result, "result");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnTransactionResult.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnTransactionResult(result);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnBatchData(final String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnBatchData.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnBatchData(tlv);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnReversalData(final String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnReversalData.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnReversalData(tlv);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnPinEntryResult(final PinEntryResult.Type result, final PinData pinData) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(pinData, "pinData");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnPinEntryResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnPinEntryResult(result, pinData);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnAmount(final AmountInputResult result, final Map<String, String> data) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(data, "data");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnAmount.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnAmount(result, data);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnUpdateAidResult(final Map<String, ? extends TerminalSettingStatus> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnUpdateAidResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnUpdateAidResult(data);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnUpdateTerminalSettingResult(final TerminalSettingStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnUpdateTerminalSettingResult.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnUpdateTerminalSettingResult(status);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnUpdateTerminalSettingsResult(final Map<String, ? extends TerminalSettingStatus> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnUpdateTerminalSettingsResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnUpdateTerminalSettingsResult(data);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnReadAidResult(final Map<String, ? extends Object> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnReadAidResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnReadAidResult(data);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnReadTerminalSettingResult(final TerminalSettingValue acquirerIdentifier, final TerminalSettingValue terminalCountryCode, final TerminalSettingValue transactionCurrencyCode, final TerminalSettingValue transactionCurrencyExponent, final TerminalSettingValue merchantNameAndLocation, final TerminalSettingValue merchantIdentifier, final TerminalSettingValue terminalIdentification, final TerminalSettingValue terminalCapabilities, final TerminalSettingValue terminalType, final TerminalSettingValue additionalTerminalCapabilities, final TerminalSettingValue normalModeTimeout, final TerminalSettingValue standbyModeTimeout, final TerminalSettingValue bluetoothDiscoveryTimeout, final TerminalSettingValue msrPinEntryTimeout, final TerminalSettingValue firmwareFallbackEnabled, final TerminalSettingValue customBluetoothNamePrefix, final TerminalSettingValue customBluetoothSerialSuffix, final TerminalSettingValue firmwareForceChipEnabled, final TerminalSettingValue iccTransactionBeepEnabled, final TerminalSettingValue keypadEventBeepEnabled, final TerminalSettingValue spocModeEnabled, final TerminalSettingValue domesticDebitAidList, final TerminalSettingValue visaDynamicReaderLimit, final TerminalSettingValue buzzerSoundEnabled, final TerminalSettingValue configHash) {
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
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnReadTerminalSettingResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnReadTerminalSettingResult(acquirerIdentifier, terminalCountryCode, transactionCurrencyCode, transactionCurrencyExponent, merchantNameAndLocation, merchantIdentifier, terminalIdentification, terminalCapabilities, terminalType, additionalTerminalCapabilities, normalModeTimeout, standbyModeTimeout, bluetoothDiscoveryTimeout, msrPinEntryTimeout, firmwareFallbackEnabled, customBluetoothNamePrefix, customBluetoothSerialSuffix, firmwareForceChipEnabled, iccTransactionBeepEnabled, keypadEventBeepEnabled, spocModeEnabled, domesticDebitAidList, visaDynamicReaderLimit, buzzerSoundEnabled, configHash);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnDisableInputAmountResult(final boolean isSuccess) {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnDisableInputAmountResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnDisableInputAmountResult(isSuccess);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnEncryptDataResult(final boolean isSuccess, final Map<String, String> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnEncryptDataResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnEncryptDataResult(isSuccess, data);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestSelectApplication(final List<String> appList) {
        Intrinsics.checkNotNullParameter(appList, "appList");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onRequestSelectApplication.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onRequestSelectApplication(appList);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestSelectAccountType() {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onRequestSelectAccountType.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onRequestSelectAccountType();
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestPinEntry(final PinEntrySource pinEntrySource) {
        Intrinsics.checkNotNullParameter(pinEntrySource, "pinEntrySource");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onRequestPinEntry.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onRequestPinEntry(pinEntrySource);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestManualPanEntry(final ManualPanEntryType manualPanEntry) {
        Intrinsics.checkNotNullParameter(manualPanEntry, "manualPanEntry");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onRequestManualPanEntry.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onRequestManualPanEntry(manualPanEntry);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnSetPinPadButtonsResult(final boolean isSuccess) {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnSetPinPadButtonsResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnSetPinPadButtonsResult(isSuccess);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnUpdateDisplaySettingsResult(final boolean isSuccess, final String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnUpdateDisplaySettingsResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnUpdateDisplaySettingsResult(isSuccess, message);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestOnlineProcess(final String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onRequestOnlineProcess.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onRequestOnlineProcess(tlv);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestDisplayText(final DisplayText displayText, final String displayTextLanguage) {
        Intrinsics.checkNotNullParameter(displayText, "displayText");
        Intrinsics.checkNotNullParameter(displayTextLanguage, "displayTextLanguage");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onRequestDisplayText.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onRequestDisplayText(displayText, displayTextLanguage);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestDisplayAsterisk(final String unmaskedDigits, final int numOfAsterisk) {
        Intrinsics.checkNotNullParameter(unmaskedDigits, "unmaskedDigits");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onRequestDisplayAsterisk.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onRequestDisplayAsterisk(unmaskedDigits, numOfAsterisk);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnAccessiblePinPadTouchEvent(final PinPadTouchEvent pinPadTouchEvent, final UUID eventId) {
        Intrinsics.checkNotNullParameter(pinPadTouchEvent, "pinPadTouchEvent");
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnAccessiblePinPadTouchEvent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnAccessiblePinPadTouchEvent(pinPadTouchEvent, eventId);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestProduceAudioTone(final ContactlessStatusTone tone) {
        Intrinsics.checkNotNullParameter(tone, "tone");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onRequestProduceAudioTone.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onRequestProduceAudioTone(tone);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestFinalConfirm() {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onRequestFinalConfirm.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onRequestFinalConfirm();
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBatteryLow(final BatteryStatus batteryStatus) {
        Intrinsics.checkNotNullParameter(batteryStatus, "batteryStatus");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onBatteryLow.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onBatteryLow(batteryStatus);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onError(final Error error, final String errorMessage) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onError.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onError(error, errorMessage);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSessionInitialized() {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onSessionInitialized.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onSessionInitialized();
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSessionError(final SessionError sessionError, final String errorMessage) {
        Intrinsics.checkNotNullParameter(sessionError, "sessionError");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onSessionError.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onSessionError(sessionError, errorMessage);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnDebugLog(final Map<String, ? extends Object> debugLog) {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onReturnDebugLog.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onReturnDebugLog(debugLog);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onHardwareFunctionalTestResult(final int result, final int itemIndex, final String errorMessage) {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onHardwareFunctionalTestResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onHardwareFunctionalTestResult(result, itemIndex, errorMessage);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onDeviceResetAlert(final int timeBeforeReset) {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onDeviceResetAlert.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onDeviceResetAlert(timeBeforeReset);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onDeviceReset(final boolean isSuccess, final DeviceResetReason reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onDeviceReset.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onDeviceReset(isSuccess, reason);
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onPowerButtonPressed() {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onPowerButtonPressed.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onPowerButtonPressed();
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onPowerDown() {
        notifyAll(new Function1<DeviceListenerWrapper, Unit>() { // from class: com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl.onPowerDown.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DeviceListenerWrapper deviceListenerWrapper) {
                invoke2(deviceListenerWrapper);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DeviceListenerWrapper it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onPowerDown();
            }
        });
    }

    @Override // com.stripe.core.bbpos.hardware.DeviceListenerRegistry
    public void registerListener(DeviceListenerWrapper listenerWrapper) {
        Intrinsics.checkNotNullParameter(listenerWrapper, "listenerWrapper");
        ReentrantReadWriteLock.WriteLock writeLock = this.lock.writeLock();
        Intrinsics.checkNotNullExpressionValue(writeLock, "writeLock(...)");
        ReentrantReadWriteLock.WriteLock writeLock2 = writeLock;
        writeLock2.lock();
        try {
            this.listeners.add(listenerWrapper);
            Unit unit = Unit.INSTANCE;
        } finally {
            writeLock2.unlock();
        }
    }

    @Override // com.stripe.core.bbpos.hardware.DeviceListenerRegistry
    public void unregisterListener(DeviceListenerWrapper listenerWrapper) {
        Intrinsics.checkNotNullParameter(listenerWrapper, "listenerWrapper");
        ReentrantReadWriteLock.WriteLock writeLock = this.lock.writeLock();
        Intrinsics.checkNotNullExpressionValue(writeLock, "writeLock(...)");
        ReentrantReadWriteLock.WriteLock writeLock2 = writeLock;
        writeLock2.lock();
        try {
            this.listeners.remove(listenerWrapper);
            Unit unit = Unit.INSTANCE;
        } finally {
            writeLock2.unlock();
        }
    }

    private final void notifyAll(Function1<? super DeviceListenerWrapper, Unit> callback) {
        ReentrantReadWriteLock.ReadLock lock = this.lock.readLock();
        Intrinsics.checkNotNullExpressionValue(lock, "readLock(...)");
        ReentrantReadWriteLock.ReadLock readLock = lock;
        readLock.lock();
        try {
            Iterator<T> it = this.listeners.iterator();
            while (it.hasNext()) {
                callback.invoke((DeviceListenerWrapper) it.next());
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            readLock.unlock();
        }
    }
}
