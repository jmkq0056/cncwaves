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
import com.stripe.core.bbpos.hardware.BbposControllerListener;
import com.stripe.core.bbpos.hardware.api.AmountInputResult;
import com.stripe.core.bbpos.hardware.api.BatteryStatus;
import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import com.stripe.core.bbpos.hardware.api.DeviceResetReason;
import com.stripe.core.bbpos.hardware.api.SessionError;
import com.stripe.core.bbpos.hardware.api.TerminalSettingStatus;
import com.stripe.core.bbpos.hardware.emv.CheckCardModeConverter;
import com.stripe.hardware.emv.IntermediateTransactionError;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.magstripe.MagStripeReadFailure;
import com.stripe.hardware.paymentcollection.AccessiblePinPadTouchEvent;
import com.stripe.hardware.paymentcollection.ContactCardSlotState;
import com.stripe.hardware.paymentcollection.ManualEntryEventReceiver;
import com.stripe.hardware.paymentcollection.ManualEntryType;
import com.stripe.hardware.paymentcollection.PaymentEventReceiver;
import com.stripe.hardware.paymentcollection.PinEntryStatus;
import com.stripe.hardware.status.AudioAlertType;
import com.stripe.hardware.status.ReaderDisplayMessage;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.PaymentsScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Gauge;
import dagger.Lazy;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposPaymentCollectionListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000°\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0002©\u0001BS\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0016\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010¢\u0006\u0002\u0010\u0011J\u0010\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(H\u0016J\u0011\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020+H\u0096\u0001J\t\u0010,\u001a\u00020&H\u0096\u0001J\u0017\u0010-\u001a\u00020&2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020+0/H\u0096\u0001J\u0019\u00100\u001a\u00020&2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0096\u0001J\u0011\u00105\u001a\u00020&2\u0006\u00106\u001a\u000207H\u0096\u0001J\u0018\u00108\u001a\u00020&2\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0016J#\u0010=\u001a\u00020&2\u0006\u0010>\u001a\u0002072\u0006\u0010?\u001a\u0002072\b\u0010;\u001a\u0004\u0018\u00010<H\u0096\u0001J\t\u0010@\u001a\u00020&H\u0096\u0001J\t\u0010A\u001a\u00020&H\u0096\u0001J\u0018\u0010B\u001a\u00020&2\u0006\u0010C\u001a\u00020<2\u0006\u0010D\u001a\u000207H\u0016J\u0018\u0010E\u001a\u00020&2\u0006\u0010F\u001a\u00020\u00142\u0006\u0010G\u001a\u00020<H\u0016J\b\u0010H\u001a\u00020&H\u0016J\u0010\u0010I\u001a\u00020&2\u0006\u0010J\u001a\u00020KH\u0016J\u0010\u0010L\u001a\u00020&2\u0006\u0010M\u001a\u00020<H\u0016J\u0010\u0010N\u001a\u00020&2\u0006\u0010O\u001a\u00020PH\u0016J\u0010\u0010Q\u001a\u00020&2\u0006\u0010R\u001a\u00020SH\u0016J\b\u0010T\u001a\u00020&H\u0016J\u0016\u0010U\u001a\u00020&2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020<0/H\u0016J\u0018\u0010W\u001a\u00020&2\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020[H\u0016J$\u0010\\\u001a\u00020&2\u0006\u0010>\u001a\u00020]2\u0012\u0010^\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020<0\u0013H\u0017J\u0010\u0010_\u001a\u00020&2\u0006\u0010M\u001a\u00020<H\u0016J\u0010\u0010`\u001a\u00020&2\u0006\u00101\u001a\u000202H\u0016J\u0018\u0010a\u001a\u00020&2\u0006\u0010b\u001a\u00020c2\u0006\u0010d\u001a\u00020eH\u0016J\u001f\u0010f\u001a\u00020&2\u0014\u0010g\u001a\u0010\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020h\u0018\u00010\u0013H\u0096\u0001J%\u0010i\u001a\u00020&2\u0006\u0010j\u001a\u00020k2\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020<0\u0013H\u0096\u0001J\u0011\u0010m\u001a\u00020&2\u0006\u00101\u001a\u000202H\u0096\u0001J%\u0010n\u001a\u00020&2\u0006\u00101\u001a\u0002022\u0012\u0010^\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020<0\u0013H\u0096\u0001J\u0018\u0010o\u001a\u00020&2\u0006\u0010>\u001a\u00020p2\u0006\u0010q\u001a\u00020rH\u0016J\u001d\u0010s\u001a\u00020&2\u0012\u0010^\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020h0\u0013H\u0096\u0001Jà\u0001\u0010t\u001a\u00020&2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020v2\u0006\u0010x\u001a\u00020v2\u0006\u0010y\u001a\u00020v2\u0006\u0010z\u001a\u00020v2\u0006\u0010{\u001a\u00020v2\u0006\u0010|\u001a\u00020v2\u0006\u0010}\u001a\u00020v2\u0006\u0010~\u001a\u00020v2\u0006\u0010\u007f\u001a\u00020v2\u0007\u0010\u0080\u0001\u001a\u00020v2\u0007\u0010\u0081\u0001\u001a\u00020v2\u0007\u0010\u0082\u0001\u001a\u00020v2\u0007\u0010\u0083\u0001\u001a\u00020v2\u0007\u0010\u0084\u0001\u001a\u00020v2\u0007\u0010\u0085\u0001\u001a\u00020v2\u0007\u0010\u0086\u0001\u001a\u00020v2\u0007\u0010\u0087\u0001\u001a\u00020v2\u0007\u0010\u0088\u0001\u001a\u00020v2\u0007\u0010\u0089\u0001\u001a\u00020v2\u0007\u0010\u008a\u0001\u001a\u00020v2\u0007\u0010\u008b\u0001\u001a\u00020v2\u0007\u0010\u008c\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020v2\u0007\u0010\u008e\u0001\u001a\u00020vH\u0096\u0001J\u0011\u0010\u008f\u0001\u001a\u00020&2\u0006\u0010M\u001a\u00020<H\u0016J\u0011\u0010\u0090\u0001\u001a\u00020&2\u0006\u00101\u001a\u000202H\u0016J\u0012\u0010\u0091\u0001\u001a\u00020&2\u0007\u0010>\u001a\u00030\u0092\u0001H\u0016J\u001f\u0010\u0093\u0001\u001a\u00020&2\u0013\u0010^\u001a\u000f\u0012\u0004\u0012\u00020<\u0012\u0005\u0012\u00030\u0094\u00010\u0013H\u0096\u0001J\u001b\u0010\u0095\u0001\u001a\u00020&2\u0006\u00101\u001a\u0002022\u0007\u0010\u0096\u0001\u001a\u00020<H\u0096\u0001J\u0014\u0010\u0097\u0001\u001a\u00020&2\b\u0010\u0098\u0001\u001a\u00030\u0094\u0001H\u0096\u0001J\u001f\u0010\u0099\u0001\u001a\u00020&2\u0013\u0010^\u001a\u000f\u0012\u0004\u0012\u00020<\u0012\u0005\u0012\u00030\u0094\u00010\u0013H\u0096\u0001J\n\u0010\u009a\u0001\u001a\u00020&H\u0096\u0001J\t\u0010\u009b\u0001\u001a\u00020&H\u0016J\u001c\u0010\u009c\u0001\u001a\u00020&2\b\u0010\u009d\u0001\u001a\u00030\u009e\u00012\u0006\u0010;\u001a\u00020<H\u0096\u0001J\n\u0010\u009f\u0001\u001a\u00020&H\u0096\u0001J\n\u0010 \u0001\u001a\u00020&H\u0096\u0001J\n\u0010¡\u0001\u001a\u00020&H\u0096\u0001J\u0013\u0010¢\u0001\u001a\u00020&2\b\u0010£\u0001\u001a\u00030¤\u0001H\u0016J\u0010\u0010¥\u0001\u001a\u0005\u0018\u00010¦\u0001*\u00020\u0014H\u0002J\u000e\u0010§\u0001\u001a\u00030¨\u0001*\u00020YH\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R&\u0010\u0018\u001a\u001a\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\n \"*\u0004\u0018\u00010\u00050\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$¨\u0006ª\u0001"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;", "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;", "deviceListenerWrapper", "lazyPaymentEventReceiver", "Ldagger/Lazy;", "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;", "lazyManualEntryEventReceiver", "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "cardRemovalChecker", "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "displayTextErrorMapping", "", "Lcom/stripe/bbpos/sdk/DisplayText;", "Lcom/stripe/hardware/emv/IntermediateTransactionError;", "getDisplayTextErrorMapping", "()Ljava/util/Map;", "healthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;", "manualEntryEventReceiver", "getManualEntryEventReceiver", "()Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;", "paymentEventReceiver", "kotlin.jvm.PlatformType", "getPaymentEventReceiver", "()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;", "onBatteryLow", "", "batteryStatus", "Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;", "onBtConnected", "connectedDevice", "Landroid/bluetooth/BluetoothDevice;", "onBtDisconnected", "onBtReturnScanResults", "foundDevices", "", "onDeviceReset", "isSuccess", "", "reason", "Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;", "onDeviceResetAlert", "timeBeforeReset", "", "onError", "error", "Lcom/stripe/bbpos/sdk/Error;", "errorMessage", "", "onHardwareFunctionalTestResult", "result", "itemIndex", "onPowerButtonPressed", "onPowerDown", "onRequestDisplayAsterisk", "unmaskedDigits", "numOfAsterisk", "onRequestDisplayText", "displayText", "displayTextLanguage", "onRequestFinalConfirm", "onRequestManualPanEntry", "manualPanEntry", "Lcom/stripe/bbpos/sdk/ManualPanEntryType;", "onRequestOnlineProcess", "tlv", "onRequestPinEntry", "pinEntrySource", "Lcom/stripe/bbpos/sdk/PinEntrySource;", "onRequestProduceAudioTone", "tone", "Lcom/stripe/bbpos/sdk/ContactlessStatusTone;", "onRequestSelectAccountType", "onRequestSelectApplication", "appList", "onReturnAccessiblePinPadTouchEvent", "pinPadTouchEvent", "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;", "eventId", "Ljava/util/UUID;", "onReturnAmount", "Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;", "data", "onReturnBatchData", "onReturnCancelCheckCardResult", "onReturnCheckCardResult", "checkCardResult", "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;", "cardData", "Lcom/stripe/bbpos/sdk/CardData;", "onReturnDebugLog", "debugLog", "", "onReturnDeviceInfo", "deviceInfo", "Lcom/stripe/bbpos/sdk/DeviceInfo;", "rawReaderData", "onReturnDisableInputAmountResult", "onReturnEncryptDataResult", "onReturnPinEntryResult", "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;", "pinData", "Lcom/stripe/bbpos/sdk/PinData;", "onReturnReadAidResult", "onReturnReadTerminalSettingResult", "acquirerIdentifier", "Lcom/stripe/bbpos/sdk/TerminalSettingValue;", "terminalCountryCode", "transactionCurrencyCode", "transactionCurrencyExponent", "merchantNameAndLocation", "merchantIdentifier", "terminalIdentification", BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME, "terminalType", "additionalTerminalCapabilities", "normalModeTimeout", "standbyModeTimeout", "bluetoothDiscoveryTimeout", "msrPinEntryTimeout", "firmwareFallbackEnabled", "customBluetoothNamePrefix", "customBluetoothSerialSuffix", "firmwareForceChipEnabled", "iccTransactionBeepEnabled", "keypadEventBeepEnabled", "spocModeEnabled", "domesticDebitAidList", "visaDynamicReaderLimit", "buzzerSoundEnabled", "configHash", "onReturnReversalData", "onReturnSetPinPadButtonsResult", "onReturnTransactionResult", "Lcom/stripe/bbpos/sdk/TransactionResult$Type;", "onReturnUpdateAidResult", "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;", "onReturnUpdateDisplaySettingsResult", "message", "onReturnUpdateTerminalSettingResult", NotificationCompat.CATEGORY_STATUS, "onReturnUpdateTerminalSettingsResult", "onSerialConnected", "onSerialDisconnected", "onSessionError", "sessionError", "Lcom/stripe/core/bbpos/hardware/api/SessionError;", "onSessionInitialized", "onUsbConnected", "onUsbDisconnected", "onWaitingForCard", BbposDeviceControllerImpl.CHECK_CARD_MODE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/CheckCardMode;", "toReaderDisplayMessage", "Lcom/stripe/hardware/status/ReaderDisplayMessage;", "toReaderPinPadTouchEvent", "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;", "Factory", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposPaymentCollectionListener implements DeviceListenerWrapper {
    private final CardRemovalChecker cardRemovalChecker;
    private final DeviceListenerWrapper deviceListenerWrapper;
    private final Map<DisplayText, IntermediateTransactionError> displayTextErrorMapping;
    private final HealthLogger<BbposDomain, BbposDomain.Builder, PaymentsScope, PaymentsScope.Builder> healthLogger;
    private final Lazy<ManualEntryEventReceiver> lazyManualEntryEventReceiver;
    private final Lazy<PaymentEventReceiver> lazyPaymentEventReceiver;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    /* JADX INFO: compiled from: BbposPaymentCollectionListener.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;
        public static final /* synthetic */ int[] $EnumSwitchMapping$4;
        public static final /* synthetic */ int[] $EnumSwitchMapping$5;
        public static final /* synthetic */ int[] $EnumSwitchMapping$6;

        static {
            int[] iArr = new int[CheckCardResult.Type.values().length];
            try {
                iArr[CheckCardResult.Type.NO_CARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CheckCardResult.Type.INSERTED_CARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CheckCardResult.Type.NOT_ICC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CheckCardResult.Type.MSR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CheckCardResult.Type.BAD_SWIPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CheckCardResult.Type.MAG_HEAD_FAIL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[CheckCardResult.Type.MANUAL_PAN_ENTRY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[CheckCardResult.Type.CHECK_CARD_RESULT_TYPE_UNKNOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[CheckCardResult.Type.USE_ICC_CARD.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[CheckCardResult.Type.TAP_CARD_DETECTED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[CheckCardResult.Type.CARD_NOT_SUPPORTED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DisplayText.values().length];
            try {
                iArr2[DisplayText.CTL_TRANSACTION_LIMIT_EXCEEDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[DisplayText.NOT_ICC_CARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[DisplayText.REFER_TO_YOUR_PAYMENT_DEVICE.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr2[DisplayText.INSERT_OR_SWIPE_CARD.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr2[DisplayText.CTL_NO_EMV_APPS.ordinal()] = 5;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr2[DisplayText.NO_EMV_APPS.ordinal()] = 6;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr2[DisplayText.MULTIPLE_CARDS_DETECTED.ordinal()] = 7;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr2[DisplayText.INSERT_CARD.ordinal()] = 8;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr2[DisplayText.USE_MAG_STRIPE.ordinal()] = 9;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr2[DisplayText.PRESENT_CARD_AGAIN.ordinal()] = 10;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr2[DisplayText.REMOVE_CARD.ordinal()] = 11;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr2[DisplayText.NOT_ACCEPTED.ordinal()] = 12;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr2[DisplayText.CTL_APP_NOT_SUPPORTED.ordinal()] = 13;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr2[DisplayText.PLEASE_WAIT.ordinal()] = 14;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr2[DisplayText.PROCESSING.ordinal()] = 15;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr2[DisplayText.PRESENT_CARD.ordinal()] = 16;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr2[DisplayText.AUTHORISING.ordinal()] = 17;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr2[DisplayText.CARD_IS_STILL_INSERTED.ordinal()] = 18;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr2[DisplayText.SHOW_THANK_YOU.ordinal()] = 19;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr2[DisplayText.INSERT_SWIPE_OR_TRY_ANOTHER_CARD.ordinal()] = 20;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr2[DisplayText.TOO_MANY_TAPS.ordinal()] = 21;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr2[DisplayText.CARD_NOT_ADMITTED.ordinal()] = 22;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr2[DisplayText.INVALID_TRANSACTION.ordinal()] = 23;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr2[DisplayText.INVALID_CARD_NUMBER.ordinal()] = 24;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr2[DisplayText.SYSTEM_MALFUNCTION.ordinal()] = 25;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr2[DisplayText.EXPIRED_CARD.ordinal()] = 26;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr2[DisplayText.TRANSACTION_NOT_PERMITTED.ordinal()] = 27;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr2[DisplayText.INVALID_FUNCTION.ordinal()] = 28;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr2[DisplayText.INVALID_CARD.ordinal()] = 29;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr2[DisplayText.WRONG_CARD.ordinal()] = 30;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr2[DisplayText.TERMINAL_NOT_PERMITTED.ordinal()] = 31;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr2[DisplayText.ORIGINAL_AMOUNT_INCORRECT.ordinal()] = 32;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr2[DisplayText.CARD_NOT_READABLE.ordinal()] = 33;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr2[DisplayText.AUTHENTICATION_REQUIRED.ordinal()] = 34;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr2[DisplayText.NOT_ACCEPTED_TRY_AGAIN.ordinal()] = 35;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr2[DisplayText.DECLINED_WITH_RESPONSE_CODE_05.ordinal()] = 36;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr2[DisplayText.CARD_ERROR_PLEASE_REMOVE_CARD.ordinal()] = 37;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr2[DisplayText.NOT_ACCEPTED_PLEASE_REMOVE_CARD.ordinal()] = 38;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr2[DisplayText.PROCESSING_ERROR_PLEASE_REMOVE_CARD.ordinal()] = 39;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr2[DisplayText.DISPLAY_TEXT_UNKNOWN.ordinal()] = 40;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr2[DisplayText.APPROVED.ordinal()] = 41;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr2[DisplayText.CALL_YOUR_BANK.ordinal()] = 42;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr2[DisplayText.DECLINED.ordinal()] = 43;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr2[DisplayText.ENTER_AMOUNT.ordinal()] = 44;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr2[DisplayText.ENTER_PIN.ordinal()] = 45;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr2[DisplayText.INCORRECT_PIN.ordinal()] = 46;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr2[DisplayText.PIN_OK.ordinal()] = 47;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr2[DisplayText.TRY_AGAIN.ordinal()] = 48;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                iArr2[DisplayText.TRANSACTION_TERMINATED.ordinal()] = 49;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                iArr2[DisplayText.LAST_PIN_TRY.ordinal()] = 50;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                iArr2[DisplayText.SELECT_ACCOUNT.ordinal()] = 51;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                iArr2[DisplayText.APPROVED_PLEASE_SIGN.ordinal()] = 52;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                iArr2[DisplayText.TIMEOUT.ordinal()] = 53;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                iArr2[DisplayText.APPLICATION_EXPIRED.ordinal()] = 54;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                iArr2[DisplayText.FINAL_CONFIRM.ordinal()] = 55;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                iArr2[DisplayText.PIN_TRY_LIMIT_EXCEEDED.ordinal()] = 56;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                iArr2[DisplayText.CARD_INSERTED.ordinal()] = 57;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                iArr2[DisplayText.CARD_REMOVED.ordinal()] = 58;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                iArr2[DisplayText.INVALID_INPUT.ordinal()] = 59;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                iArr2[DisplayText.CARD_ERROR.ordinal()] = 60;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                iArr2[DisplayText.INCORRECT_CARD_DATA.ordinal()] = 61;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                iArr2[DisplayText.ERROR_STATUS_WORD.ordinal()] = 62;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                iArr2[DisplayText.DPAS_CDCVM.ordinal()] = 63;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                iArr2[DisplayText.CARD_ERROR_PLEASE_ENTER_PIN_AGAIN.ordinal()] = 64;
            } catch (NoSuchFieldError unused75) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[PinPadTouchEvent.values().length];
            try {
                iArr3[PinPadTouchEvent.PIN_PAD_TOUCH_EVENT_UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                iArr3[PinPadTouchEvent.OUT_OF_PIN_PAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                iArr3[PinPadTouchEvent.NEW_KEY_DETECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                iArr3[PinPadTouchEvent.BACKSPACE_KEY_DETECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                iArr3[PinPadTouchEvent.CLEAR_KEY_DETECTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                iArr3[PinPadTouchEvent.CANCEL_KEY_DETECTED.ordinal()] = 6;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                iArr3[PinPadTouchEvent.ENTER_KEY_DETECTED.ordinal()] = 7;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                iArr3[PinPadTouchEvent.ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH.ordinal()] = 8;
            } catch (NoSuchFieldError unused83) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[PinEntryResult.Type.values().length];
            try {
                iArr4[PinEntryResult.Type.PIN_ENTRY_RESULT_UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                iArr4[PinEntryResult.Type.ENTERED.ordinal()] = 2;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                iArr4[PinEntryResult.Type.CANCEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                iArr4[PinEntryResult.Type.TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                iArr4[PinEntryResult.Type.BYPASS.ordinal()] = 5;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                iArr4[PinEntryResult.Type.WRONG_PIN_LENGTH.ordinal()] = 6;
            } catch (NoSuchFieldError unused89) {
            }
            try {
                iArr4[PinEntryResult.Type.INCORRECT_PIN.ordinal()] = 7;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                iArr4[PinEntryResult.Type.ICC_REMOVED.ordinal()] = 8;
            } catch (NoSuchFieldError unused91) {
            }
            $EnumSwitchMapping$3 = iArr4;
            int[] iArr5 = new int[ContactlessStatusTone.values().length];
            try {
                iArr5[ContactlessStatusTone.CONTACTLESS_STATUS_TONE_UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                iArr5[ContactlessStatusTone.ALERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                iArr5[ContactlessStatusTone.SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused94) {
            }
            $EnumSwitchMapping$4 = iArr5;
            int[] iArr6 = new int[AmountInputResult.values().length];
            try {
                iArr6[AmountInputResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                iArr6[AmountInputResult.CANCEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                iArr6[AmountInputResult.TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                iArr6[AmountInputResult.INVALID_AMOUNT.ordinal()] = 4;
            } catch (NoSuchFieldError unused98) {
            }
            $EnumSwitchMapping$5 = iArr6;
            int[] iArr7 = new int[ManualPanEntryType.values().length];
            try {
                iArr7[ManualPanEntryType.MANUAL_PAN_ENTRY_TYPE_UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                iArr7[ManualPanEntryType.PAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                iArr7[ManualPanEntryType.CVV.ordinal()] = 3;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                iArr7[ManualPanEntryType.EXPIRY_DATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused102) {
            }
            $EnumSwitchMapping$6 = iArr7;
        }
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBtConnected(BluetoothDevice connectedDevice) {
        Intrinsics.checkNotNullParameter(connectedDevice, "connectedDevice");
        this.deviceListenerWrapper.onBtConnected(connectedDevice);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBtDisconnected() {
        this.deviceListenerWrapper.onBtDisconnected();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBtReturnScanResults(List<BluetoothDevice> foundDevices) {
        Intrinsics.checkNotNullParameter(foundDevices, "foundDevices");
        this.deviceListenerWrapper.onBtReturnScanResults(foundDevices);
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
    public void onUsbConnected() {
        this.deviceListenerWrapper.onUsbConnected();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onUsbDisconnected() {
        this.deviceListenerWrapper.onUsbDisconnected();
    }

    public BbposPaymentCollectionListener(DeviceListenerWrapper deviceListenerWrapper, Lazy<PaymentEventReceiver> lazyPaymentEventReceiver, Lazy<ManualEntryEventReceiver> lazyManualEntryEventReceiver, HealthLoggerBuilder healthLoggerBuilder, CardRemovalChecker cardRemovalChecker, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(deviceListenerWrapper, "deviceListenerWrapper");
        Intrinsics.checkNotNullParameter(lazyPaymentEventReceiver, "lazyPaymentEventReceiver");
        Intrinsics.checkNotNullParameter(lazyManualEntryEventReceiver, "lazyManualEntryEventReceiver");
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(cardRemovalChecker, "cardRemovalChecker");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.deviceListenerWrapper = deviceListenerWrapper;
        this.lazyPaymentEventReceiver = lazyPaymentEventReceiver;
        this.lazyManualEntryEventReceiver = lazyManualEntryEventReceiver;
        this.cardRemovalChecker = cardRemovalChecker;
        this.logger = logger;
        this.displayTextErrorMapping = MapsKt.mapOf(TuplesKt.to(DisplayText.CTL_TRANSACTION_LIMIT_EXCEEDED, IntermediateTransactionError.CONTACTLESS_LIMIT_EXCEEDED), TuplesKt.to(DisplayText.REFER_TO_YOUR_PAYMENT_DEVICE, IntermediateTransactionError.CHECK_MOBILE_DEVICE), TuplesKt.to(DisplayText.MULTIPLE_CARDS_DETECTED, IntermediateTransactionError.MULTIPLE_CARDS_DETECTED), TuplesKt.to(DisplayText.INSERT_SWIPE_OR_TRY_ANOTHER_CARD, IntermediateTransactionError.BAD_TAP_READ), TuplesKt.to(DisplayText.TOO_MANY_TAPS, IntermediateTransactionError.TOO_MANY_TAPS), TuplesKt.to(DisplayText.CARD_NOT_ADMITTED, IntermediateTransactionError.CARD_NOT_ADMITTED), TuplesKt.to(DisplayText.INVALID_TRANSACTION, IntermediateTransactionError.INVALID_TRANSACTION), TuplesKt.to(DisplayText.INVALID_CARD_NUMBER, IntermediateTransactionError.INVALID_CARD_NUMBER), TuplesKt.to(DisplayText.SYSTEM_MALFUNCTION, IntermediateTransactionError.SYSTEM_MALFUNCTION), TuplesKt.to(DisplayText.EXPIRED_CARD, IntermediateTransactionError.EXPIRED_CARD), TuplesKt.to(DisplayText.TRANSACTION_NOT_PERMITTED, IntermediateTransactionError.TRANSACTION_NOT_PERMITTED), TuplesKt.to(DisplayText.INVALID_FUNCTION, IntermediateTransactionError.INVALID_FUNCTION), TuplesKt.to(DisplayText.INVALID_CARD, IntermediateTransactionError.INVALID_CARD), TuplesKt.to(DisplayText.WRONG_CARD, IntermediateTransactionError.WRONG_CARD), TuplesKt.to(DisplayText.TERMINAL_NOT_PERMITTED, IntermediateTransactionError.TERMINAL_NOT_PERMITTED), TuplesKt.to(DisplayText.ORIGINAL_AMOUNT_INCORRECT, IntermediateTransactionError.ORIGINAL_AMOUNT_INCORRECT), TuplesKt.to(DisplayText.CARD_NOT_READABLE, IntermediateTransactionError.CARD_NOT_READABLE), TuplesKt.to(DisplayText.AUTHENTICATION_REQUIRED, IntermediateTransactionError.AUTHENTICATION_REQUIRED), TuplesKt.to(DisplayText.NOT_ACCEPTED_TRY_AGAIN, IntermediateTransactionError.NOT_ACCEPTED_TRY_AGAIN), TuplesKt.to(DisplayText.DECLINED_WITH_RESPONSE_CODE_05, IntermediateTransactionError.DECLINED_CODE_05), TuplesKt.to(DisplayText.CARD_ERROR_PLEASE_REMOVE_CARD, IntermediateTransactionError.CARD_ERROR), TuplesKt.to(DisplayText.NOT_ACCEPTED_PLEASE_REMOVE_CARD, IntermediateTransactionError.NOT_ACCEPTED), TuplesKt.to(DisplayText.PROCESSING_ERROR_PLEASE_REMOVE_CARD, IntermediateTransactionError.PROCESSING_ERROR));
        this.healthLogger = new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, BbposDomain.class, BbposDomain.Builder.class, new Function2<HealthMetric.Builder, BbposDomain, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener$healthLogger$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, BbposDomain bbposDomain) {
                invoke2(builder, bbposDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, BbposDomain domain) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(domain, "domain");
                withDomain.bbpos = domain;
            }
        }), PaymentsScope.class, PaymentsScope.Builder.class, new Function2<BbposDomain.Builder, PaymentsScope, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener$healthLogger$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(BbposDomain.Builder builder, PaymentsScope paymentsScope) {
                invoke2(builder, paymentsScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(BbposDomain.Builder withScope, PaymentsScope scope) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(scope, "scope");
                withScope.payments = scope;
            }
        }).build();
    }

    /* JADX INFO: compiled from: BbposPaymentCollectionListener.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B3\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ&\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u0014R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;", "", "lazyPaymentEventReceiver", "Ldagger/Lazy;", "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;", "lazyManualEntryEventReceiver", "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "cardRemovalChecker", "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;", "(Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;)V", "create", "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;", "deviceListenerWrapper", "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Factory {
        private final CardRemovalChecker cardRemovalChecker;
        private final HealthLoggerBuilder healthLoggerBuilder;
        private final Lazy<ManualEntryEventReceiver> lazyManualEntryEventReceiver;
        private final Lazy<PaymentEventReceiver> lazyPaymentEventReceiver;

        public Factory(Lazy<PaymentEventReceiver> lazyPaymentEventReceiver, Lazy<ManualEntryEventReceiver> lazyManualEntryEventReceiver, HealthLoggerBuilder healthLoggerBuilder, CardRemovalChecker cardRemovalChecker) {
            Intrinsics.checkNotNullParameter(lazyPaymentEventReceiver, "lazyPaymentEventReceiver");
            Intrinsics.checkNotNullParameter(lazyManualEntryEventReceiver, "lazyManualEntryEventReceiver");
            Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
            Intrinsics.checkNotNullParameter(cardRemovalChecker, "cardRemovalChecker");
            this.lazyPaymentEventReceiver = lazyPaymentEventReceiver;
            this.lazyManualEntryEventReceiver = lazyManualEntryEventReceiver;
            this.healthLoggerBuilder = healthLoggerBuilder;
            this.cardRemovalChecker = cardRemovalChecker;
        }

        public final BbposPaymentCollectionListener create(DeviceListenerWrapper deviceListenerWrapper, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
            Intrinsics.checkNotNullParameter(deviceListenerWrapper, "deviceListenerWrapper");
            Intrinsics.checkNotNullParameter(logger, "logger");
            return new BbposPaymentCollectionListener(deviceListenerWrapper, this.lazyPaymentEventReceiver, this.lazyManualEntryEventReceiver, this.healthLoggerBuilder, this.cardRemovalChecker, logger);
        }
    }

    public final Map<DisplayText, IntermediateTransactionError> getDisplayTextErrorMapping() {
        return this.displayTextErrorMapping;
    }

    private final PaymentEventReceiver getPaymentEventReceiver() {
        return this.lazyPaymentEventReceiver.get();
    }

    private final ManualEntryEventReceiver getManualEntryEventReceiver() {
        return this.lazyManualEntryEventReceiver.get();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onWaitingForCard(CheckCardMode checkCardMode) {
        Intrinsics.checkNotNullParameter(checkCardMode, "checkCardMode");
        this.deviceListenerWrapper.onWaitingForCard(checkCardMode);
        this.logger.i("onWaitingForCard " + checkCardMode, new Pair[0]);
        getPaymentEventReceiver().onReaderTypesChanged(CheckCardModeConverter.INSTANCE.toReaderConfiguration(checkCardMode));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnCancelCheckCardResult(boolean isSuccess) {
        this.deviceListenerWrapper.onReturnCancelCheckCardResult(isSuccess);
        this.logger.i("onReturnCancelCheckCardResult", new Pair[0]);
        getPaymentEventReceiver().onHardwareTransactionCanceled();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnCheckCardResult(CheckCardResult.Type checkCardResult, CardData cardData) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(checkCardResult, "checkCardResult");
        Intrinsics.checkNotNullParameter(cardData, "cardData");
        this.deviceListenerWrapper.onReturnCheckCardResult(checkCardResult, cardData);
        this.logger.i("onReturnCheckCardResult " + checkCardResult + " cardData " + cardData, new Pair[0]);
        this.cardRemovalChecker.onCheckCardResult(checkCardResult);
        if (checkCardResult != CheckCardResult.Type.NO_CARD) {
            HealthLogger<BbposDomain, BbposDomain.Builder, PaymentsScope, PaymentsScope.Builder> healthLogger = this.healthLogger;
            String lowerCase = checkCardResult.name().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            HealthLogger.incrementCounter$default(healthLogger, null, MapsKt.mapOf(TuplesKt.to("result", lowerCase)), null, new Function2<PaymentsScope.Builder, Counter, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener.onReturnCheckCardResult.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(PaymentsScope.Builder builder, Counter counter) {
                    invoke2(builder, counter);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(PaymentsScope.Builder incrementCounter, Counter event) {
                    Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                    Intrinsics.checkNotNullParameter(event, "event");
                    incrementCounter.on_return_check_card_result = event;
                }
            }, 5, null);
        }
        switch (WhenMappings.$EnumSwitchMapping$0[checkCardResult.ordinal()]) {
            case 1:
                getPaymentEventReceiver().onContactCardStateUpdate(ContactCardSlotState.EMPTY);
                break;
            case 2:
                getPaymentEventReceiver().onContactCardStateUpdate(ContactCardSlotState.CARD_INSERTED_CORRECTLY);
                break;
            case 3:
                getPaymentEventReceiver().onContactCardStateUpdate(ContactCardSlotState.CARD_INSERTED_INCORRECTLY);
                break;
            case 4:
                getPaymentEventReceiver().onCardSwiped(BbposTranslation.INSTANCE.extractMagStripeReadResult(cardData));
                getPaymentEventReceiver().onResetPaymentInterfaces();
                break;
            case 5:
                getPaymentEventReceiver().onCardSwiped(new MagStripeReadFailure(MagStripeReadFailure.FailureType.BAD_SWIPE));
                getPaymentEventReceiver().onResetPaymentInterfaces();
                break;
            case 6:
                getPaymentEventReceiver().onCardSwiped(new MagStripeReadFailure(MagStripeReadFailure.FailureType.BAD_SWIPE));
                getPaymentEventReceiver().onResetPaymentInterfaces();
                break;
            case 7:
                ManualEntryEventReceiver manualEntryEventReceiver = getManualEntryEventReceiver();
                if (manualEntryEventReceiver != null) {
                    String str = cardData.encCvv;
                    String str2 = str == null ? "" : str;
                    String str3 = cardData.encPan;
                    if (str3 == null) {
                        str3 = "";
                    }
                    String str4 = cardData.expiryDate;
                    if (str4 == null) {
                        str4 = "";
                    }
                    String str5 = cardData.maskedPan;
                    if (str5 == null) {
                        str5 = "";
                    }
                    String str6 = cardData.ksn;
                    if (str6 == null) {
                        str6 = "";
                    }
                    String str7 = cardData.posEntryMode;
                    manualEntryEventReceiver.onEncryptedDataCollected(str3, str4, str2, str5, str6, str7 == null ? "" : str7);
                }
                break;
        }
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestSelectApplication(List<String> appList) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(appList, "appList");
        this.deviceListenerWrapper.onRequestSelectApplication(appList);
        this.logger.i("onRequestSelectApplication", new Pair[0]);
        HealthLogger.recordGauge$default(this.healthLogger, appList.size(), null, null, null, new Function2<PaymentsScope.Builder, Gauge, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener.onRequestSelectApplication.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentsScope.Builder builder, Gauge gauge) {
                invoke2(builder, gauge);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentsScope.Builder recordGauge, Gauge event) {
                Intrinsics.checkNotNullParameter(recordGauge, "$this$recordGauge");
                Intrinsics.checkNotNullParameter(event, "event");
                recordGauge.on_request_select_application = event;
            }
        }, 14, null);
        getPaymentEventReceiver().onRequestSelectApplication(appList);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestSelectAccountType() throws IllegalAccessException, InstantiationException {
        this.deviceListenerWrapper.onRequestSelectAccountType();
        this.logger.i("onRequestSelectAccountType", new Pair[0]);
        HealthLogger.incrementCounter$default(this.healthLogger, null, null, null, new Function2<PaymentsScope.Builder, Counter, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener.onRequestSelectAccountType.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentsScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentsScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.on_request_select_account_type = event;
            }
        }, 7, null);
        getPaymentEventReceiver().onRequestSelectAccountType();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestFinalConfirm() throws IllegalAccessException, InstantiationException {
        this.deviceListenerWrapper.onRequestFinalConfirm();
        this.logger.i("onRequestFinalConfirm", new Pair[0]);
        HealthLogger.incrementCounter$default(this.healthLogger, null, null, null, new Function2<PaymentsScope.Builder, Counter, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener.onRequestFinalConfirm.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentsScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentsScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.on_request_final_confirm = event;
            }
        }, 7, null);
        getPaymentEventReceiver().onRequestFinalConfirm();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestOnlineProcess(String tlv) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        this.deviceListenerWrapper.onRequestOnlineProcess(tlv);
        this.logger.i("onRequestOnlineProcess", new Pair[0]);
        HealthLogger.incrementCounter$default(this.healthLogger, null, null, null, new Function2<PaymentsScope.Builder, Counter, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener.onRequestOnlineProcess.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentsScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentsScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.on_request_online_process = event;
            }
        }, 7, null);
        getPaymentEventReceiver().onRequestOnlineAuthorisation(tlv);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnBatchData(String tlv) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        this.deviceListenerWrapper.onReturnBatchData(tlv);
        this.logger.i("onReturnBatchData", new Pair[0]);
        HealthLogger.incrementCounter$default(this.healthLogger, null, null, null, new Function2<PaymentsScope.Builder, Counter, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener.onReturnBatchData.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentsScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentsScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.on_return_batch_data = event;
            }
        }, 7, null);
        if (tlv.length() > 0) {
            getPaymentEventReceiver().onReturnFinalTlvBlob(tlv);
        }
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnReversalData(String tlv) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        this.deviceListenerWrapper.onReturnReversalData(tlv);
        this.logger.i("onReturnReversalData", new Pair[0]);
        HealthLogger.incrementCounter$default(this.healthLogger, null, null, null, new Function2<PaymentsScope.Builder, Counter, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener.onReturnReversalData.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentsScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentsScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.on_return_reversal_data = event;
            }
        }, 7, null);
        if (tlv.length() > 0) {
            getPaymentEventReceiver().onReturnFinalTlvBlob(tlv);
        }
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnTransactionResult(TransactionResult.Type result) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(result, "result");
        this.deviceListenerWrapper.onReturnTransactionResult(result);
        this.logger.i("onReturnTransactionResult " + result, new Pair[0]);
        HealthLogger<BbposDomain, BbposDomain.Builder, PaymentsScope, PaymentsScope.Builder> healthLogger = this.healthLogger;
        String lowerCase = result.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        HealthLogger.incrementCounter$default(healthLogger, null, MapsKt.mapOf(TuplesKt.to("result", lowerCase)), null, new Function2<PaymentsScope.Builder, Counter, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener.onReturnTransactionResult.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentsScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentsScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.on_return_transaction_result = event;
            }
        }, 5, null);
        if (result == TransactionResult.Type.ICC_CARD_REMOVED) {
            getPaymentEventReceiver().onDisplayAdditionalMessage(ReaderDisplayMessage.CARD_REMOVED_TOO_EARLY);
            getPaymentEventReceiver().onContactCardStateUpdate(ContactCardSlotState.EMPTY);
        }
        if (result == TransactionResult.Type.NOT_ICC) {
            getPaymentEventReceiver().onChipCardInitializationFailed();
        }
        ManualEntryEventReceiver manualEntryEventReceiver = getManualEntryEventReceiver();
        if (manualEntryEventReceiver != null) {
            manualEntryEventReceiver.onReturnTransactionResult(BbposTranslation.INSTANCE.toTransactionResult(result));
        }
        getPaymentEventReceiver().onReturnTransactionResult(BbposTranslation.INSTANCE.toTransactionResult(result));
    }

    private final ReaderDisplayMessage toReaderDisplayMessage(DisplayText displayText) {
        switch (WhenMappings.$EnumSwitchMapping$1[displayText.ordinal()]) {
            case 1:
                return ReaderDisplayMessage.TRY_ANOTHER_CARD;
            case 2:
                return ReaderDisplayMessage.TRY_ANOTHER_READ_METHOD;
            case 3:
                return ReaderDisplayMessage.CHECK_MOBILE_DEVICE;
            case 4:
                return ReaderDisplayMessage.INSERT_OR_SWIPE_CARD;
            case 5:
                return ReaderDisplayMessage.TRY_ANOTHER_READ_METHOD;
            case 6:
                return ReaderDisplayMessage.TRY_ANOTHER_CARD;
            case 7:
                return ReaderDisplayMessage.MULTIPLE_CONTACTLESS_CARDS_DETECTED;
            case 8:
                return ReaderDisplayMessage.INSERT_CARD;
            case 9:
                return ReaderDisplayMessage.SWIPE_CARD;
            case 10:
                return ReaderDisplayMessage.RETRY_CARD;
            case 11:
                return ReaderDisplayMessage.REMOVE_CARD;
            case 12:
                return ReaderDisplayMessage.TRY_ANOTHER_CARD;
            case 13:
                return ReaderDisplayMessage.TRY_ANOTHER_READ_METHOD;
            default:
                return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d4  */
    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onRequestDisplayText(com.stripe.bbpos.sdk.DisplayText r10, java.lang.String r11) throws java.lang.IllegalAccessException, java.lang.InstantiationException {
        /*
            Method dump skipped, instruction units count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener.onRequestDisplayText(com.stripe.bbpos.sdk.DisplayText, java.lang.String):void");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestDisplayAsterisk(String unmaskedDigits, int numOfAsterisk) {
        Intrinsics.checkNotNullParameter(unmaskedDigits, "unmaskedDigits");
        this.deviceListenerWrapper.onRequestDisplayAsterisk(unmaskedDigits, numOfAsterisk);
        this.logger.i("onRequestDisplayAsterisk unmaskedDigits " + unmaskedDigits + " numOfAsterisk " + numOfAsterisk, new Pair[0]);
        getPaymentEventReceiver().onUpdatePinEntryAsteriskCount(numOfAsterisk);
        ManualEntryEventReceiver manualEntryEventReceiver = getManualEntryEventReceiver();
        if (manualEntryEventReceiver != null) {
            manualEntryEventReceiver.onRequestDisplayAsterisk(unmaskedDigits, numOfAsterisk);
        }
    }

    private final AccessiblePinPadTouchEvent.Type toReaderPinPadTouchEvent(PinPadTouchEvent pinPadTouchEvent) {
        switch (WhenMappings.$EnumSwitchMapping$2[pinPadTouchEvent.ordinal()]) {
            case 1:
                return AccessiblePinPadTouchEvent.Type.PIN_PAD_TOUCH_EVENT_UNKNOWN;
            case 2:
                return AccessiblePinPadTouchEvent.Type.OUT_OF_PIN_PAD;
            case 3:
                return AccessiblePinPadTouchEvent.Type.NEW_KEY_DETECTED;
            case 4:
                return AccessiblePinPadTouchEvent.Type.BACKSPACE_KEY_DETECTED;
            case 5:
                return AccessiblePinPadTouchEvent.Type.CLEAR_KEY_DETECTED;
            case 6:
                return AccessiblePinPadTouchEvent.Type.CANCEL_KEY_DETECTED;
            case 7:
                return AccessiblePinPadTouchEvent.Type.ENTER_KEY_DETECTED;
            case 8:
                return AccessiblePinPadTouchEvent.Type.ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnAccessiblePinPadTouchEvent(PinPadTouchEvent pinPadTouchEvent, UUID eventId) {
        Intrinsics.checkNotNullParameter(pinPadTouchEvent, "pinPadTouchEvent");
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        this.deviceListenerWrapper.onReturnAccessiblePinPadTouchEvent(pinPadTouchEvent, eventId);
        this.logger.i("onReturnAccessiblePinPadTouchEvent " + pinPadTouchEvent, new Pair[0]);
        PaymentEventReceiver paymentEventReceiver = getPaymentEventReceiver();
        AccessiblePinPadTouchEvent.Type readerPinPadTouchEvent = toReaderPinPadTouchEvent(pinPadTouchEvent);
        String string = eventId.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        paymentEventReceiver.onAccessiblePinPadEvent(new AccessiblePinPadTouchEvent(readerPinPadTouchEvent, string));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestPinEntry(PinEntrySource pinEntrySource) {
        Intrinsics.checkNotNullParameter(pinEntrySource, "pinEntrySource");
        this.deviceListenerWrapper.onRequestPinEntry(pinEntrySource);
        this.logger.i("onRequestPinEntry " + pinEntrySource, new Pair[0]);
        PaymentEventReceiver paymentEventReceiver = getPaymentEventReceiver();
        Intrinsics.checkNotNullExpressionValue(paymentEventReceiver, "<get-paymentEventReceiver>(...)");
        PaymentEventReceiver.onPinEntryStatusChange$default(paymentEventReceiver, PinEntryStatus.REQUESTED, null, null, 6, null);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnPinEntryResult(PinEntryResult.Type result, PinData pinData) {
        PinEntryStatus pinEntryStatus;
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(pinData, "pinData");
        this.deviceListenerWrapper.onReturnPinEntryResult(result, pinData);
        this.logger.i("onReturnPinEntryResult " + result, new Pair[0]);
        switch (WhenMappings.$EnumSwitchMapping$3[result.ordinal()]) {
            case 1:
                throw new IllegalArgumentException("Invalid PinEntryResult.Type");
            case 2:
                pinEntryStatus = PinEntryStatus.ENTERED;
                break;
            case 3:
                pinEntryStatus = PinEntryStatus.CANCEL;
                break;
            case 4:
                pinEntryStatus = PinEntryStatus.TIMEOUT;
                break;
            case 5:
                pinEntryStatus = PinEntryStatus.BYPASS;
                break;
            case 6:
                pinEntryStatus = PinEntryStatus.WRONG_PIN_LENGTH;
                break;
            case 7:
                pinEntryStatus = PinEntryStatus.INCORRECT_PIN;
                break;
            case 8:
                pinEntryStatus = PinEntryStatus.ICC_REMOVED;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        if (pinEntryStatus == PinEntryStatus.ICC_REMOVED) {
            getPaymentEventReceiver().onContactCardStateUpdate(ContactCardSlotState.EMPTY);
        }
        getPaymentEventReceiver().onPinEntryStatusChange(pinEntryStatus, pinData.epb, pinData.ksn);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestProduceAudioTone(ContactlessStatusTone tone) {
        AudioAlertType audioAlertType;
        Intrinsics.checkNotNullParameter(tone, "tone");
        this.deviceListenerWrapper.onRequestProduceAudioTone(tone);
        this.logger.i("onRequestProduceAudioTone " + tone, new Pair[0]);
        PaymentEventReceiver paymentEventReceiver = getPaymentEventReceiver();
        int i = WhenMappings.$EnumSwitchMapping$4[tone.ordinal()];
        if (i != 1) {
            if (i == 2) {
                audioAlertType = AudioAlertType.ALERT;
            } else {
                if (i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                audioAlertType = AudioAlertType.SUCCESS;
            }
            paymentEventReceiver.onRequestProduceAudioTone(audioAlertType);
            return;
        }
        throw new IllegalArgumentException("Invalid ContactlessStatusTone");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnSetPinPadButtonsResult(boolean isSuccess) {
        this.deviceListenerWrapper.onReturnSetPinPadButtonsResult(isSuccess);
        this.logger.i("onReturnSetPinPadButtonsResult " + isSuccess, new Pair[0]);
        getPaymentEventReceiver().onSetPinPadButtonsResult(isSuccess);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f1  */
    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    @com.stripe.jvmcore.dagger.BluetoothUsbPinPadReaders
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReturnAmount(com.stripe.core.bbpos.hardware.api.AmountInputResult r6, java.util.Map<java.lang.String, java.lang.String> r7) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener.onReturnAmount(com.stripe.core.bbpos.hardware.api.AmountInputResult, java.util.Map):void");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestManualPanEntry(ManualPanEntryType manualPanEntry) {
        ManualEntryType manualEntryType;
        Intrinsics.checkNotNullParameter(manualPanEntry, "manualPanEntry");
        this.deviceListenerWrapper.onRequestManualPanEntry(manualPanEntry);
        this.logger.i("onRequestManualPanEntry manualPanEntryType: " + manualPanEntry, new Pair[0]);
        ManualEntryEventReceiver manualEntryEventReceiver = getManualEntryEventReceiver();
        if (manualEntryEventReceiver != null) {
            int i = WhenMappings.$EnumSwitchMapping$6[manualPanEntry.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    manualEntryType = ManualEntryType.PAN_ENTRY;
                } else if (i == 3) {
                    manualEntryType = ManualEntryType.CVV_ENTRY;
                } else {
                    if (i != 4) {
                        throw new NoWhenBranchMatchedException();
                    }
                    manualEntryType = ManualEntryType.EXPIRY_DATE_ENTRY;
                }
                manualEntryEventReceiver.onRequestManualEntry(manualEntryType);
                return;
            }
            throw new IllegalArgumentException("Unknown Manual Pan Entry Type");
        }
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSerialDisconnected() {
        this.deviceListenerWrapper.onSerialDisconnected();
        this.logger.d("onSerialDisconnected", new Pair[0]);
        getPaymentEventReceiver().onReturnTransactionResult(TransactionResult.Result.DEVICE_FAILURE);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBatteryLow(BatteryStatus batteryStatus) {
        Intrinsics.checkNotNullParameter(batteryStatus, "batteryStatus");
        this.deviceListenerWrapper.onBatteryLow(batteryStatus);
        if (batteryStatus == BatteryStatus.CRITICALLY_LOW) {
            getPaymentEventReceiver().onBatteryCriticallyLow();
        }
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onError(Error error, String errorMessage) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.deviceListenerWrapper.onError(error, errorMessage);
        if (error == Error.DEVICE_BUSY && this.cardRemovalChecker.shouldFakeCardEmptyOnDeviceBusy()) {
            this.logger.e("Too many DEVICE_BUSY received when detecting card removal. Faking a card empty signal.", new Pair[0]);
            onReturnCheckCardResult(CheckCardResult.Type.NO_CARD, new CardData(null, null, null, null, null, null, null, null, null, 511, null));
        }
        if (error == Error.CMD_NOT_AVAILABLE && BbposControllerListener.BbposErrorMessage.INSTANCE.fromString(errorMessage) == BbposControllerListener.BbposErrorMessage.MISSING_ENCRYPTION_KEY) {
            this.logger.d("Missing Key: " + errorMessage, new Pair[0]);
            getPaymentEventReceiver().onDeviceMissingEncryptionKeys();
        }
    }
}
