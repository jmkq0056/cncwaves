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
import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.core.stripeterminal.log.AndroidLog;
import com.stripe.hardware.emv.ConfigurationListener;
import com.stripe.hardware.emv.ReaderSettings;
import com.stripe.hardware.status.BbposTamper;
import com.stripe.hardware.status.DisconnectCause;
import com.stripe.hardware.status.IntegrityCheckError;
import com.stripe.hardware.status.ReaderBatteryStatus;
import com.stripe.hardware.status.ReaderException;
import com.stripe.hardware.status.ReaderPowerEvent;
import com.stripe.hardware.status.RebootCause;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: BbposControllerListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u0095\u00012\u00020\u0001:\u0006\u0094\u0001\u0095\u0001\u0096\u0001BE\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000f¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0012H\u0016J\u0016\u0010\u0019\u001a\u00020\u00122\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00170\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0017J\"\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\"2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\b\u0010+\u001a\u00020\u0012H\u0016J\b\u0010,\u001a\u00020\u0012H\u0016J\u0018\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020'2\u0006\u0010/\u001a\u00020\"H\u0016J\u0018\u00100\u001a\u00020\u00122\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020'H\u0016J\b\u00104\u001a\u00020\u0012H\u0016J\u0010\u00105\u001a\u00020\u00122\u0006\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u00020\u00122\u0006\u00109\u001a\u00020'H\u0016J\u0010\u0010:\u001a\u00020\u00122\u0006\u0010;\u001a\u00020<H\u0016J\u0010\u0010=\u001a\u00020\u00122\u0006\u0010>\u001a\u00020?H\u0016J\b\u0010@\u001a\u00020\u0012H\u0016J\u0016\u0010A\u001a\u00020\u00122\f\u0010B\u001a\b\u0012\u0004\u0012\u00020'0\u001bH\u0016J\u0018\u0010C\u001a\u00020\u00122\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u0016J$\u0010H\u001a\u00020\u00122\u0006\u0010)\u001a\u00020I2\u0012\u0010J\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020'0KH\u0016J\u0010\u0010L\u001a\u00020\u00122\u0006\u00109\u001a\u00020'H\u0016J\u0010\u0010M\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\nH\u0016J\u0018\u0010N\u001a\u00020\u00122\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020RH\u0016J\u001e\u0010S\u001a\u00020\u00122\u0014\u0010T\u001a\u0010\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020U\u0018\u00010KH\u0016J$\u0010V\u001a\u00020\u00122\u0006\u0010W\u001a\u00020X2\u0012\u0010Y\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020'0KH\u0016J\u0010\u0010Z\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\nH\u0016J$\u0010[\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\n2\u0012\u0010J\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020'0KH\u0016J\u0018\u0010\\\u001a\u00020\u00122\u0006\u0010)\u001a\u00020]2\u0006\u0010^\u001a\u00020_H\u0016J\u001c\u0010`\u001a\u00020\u00122\u0012\u0010J\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020U0KH\u0016JÐ\u0001\u0010a\u001a\u00020\u00122\u0006\u0010b\u001a\u00020c2\u0006\u0010d\u001a\u00020c2\u0006\u0010e\u001a\u00020c2\u0006\u0010f\u001a\u00020c2\u0006\u0010g\u001a\u00020c2\u0006\u0010h\u001a\u00020c2\u0006\u0010i\u001a\u00020c2\u0006\u0010j\u001a\u00020c2\u0006\u0010k\u001a\u00020c2\u0006\u0010l\u001a\u00020c2\u0006\u0010m\u001a\u00020c2\u0006\u0010n\u001a\u00020c2\u0006\u0010o\u001a\u00020c2\u0006\u0010p\u001a\u00020c2\u0006\u0010q\u001a\u00020c2\u0006\u0010r\u001a\u00020c2\u0006\u0010s\u001a\u00020c2\u0006\u0010t\u001a\u00020c2\u0006\u0010u\u001a\u00020c2\u0006\u0010v\u001a\u00020c2\u0006\u0010w\u001a\u00020c2\u0006\u0010x\u001a\u00020c2\u0006\u0010y\u001a\u00020c2\u0006\u0010z\u001a\u00020c2\u0006\u0010{\u001a\u00020cH\u0016J\u0010\u0010|\u001a\u00020\u00122\u0006\u00109\u001a\u00020'H\u0016J\u0010\u0010}\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\nH\u0016J\u0010\u0010~\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u007fH\u0016J\u001e\u0010\u0080\u0001\u001a\u00020\u00122\u0013\u0010J\u001a\u000f\u0012\u0004\u0012\u00020'\u0012\u0005\u0012\u00030\u0081\u00010KH\u0016J\u001a\u0010\u0082\u0001\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\n2\u0007\u0010\u0083\u0001\u001a\u00020'H\u0016J\u0013\u0010\u0084\u0001\u001a\u00020\u00122\b\u0010\u0085\u0001\u001a\u00030\u0081\u0001H\u0016J\u001e\u0010\u0086\u0001\u001a\u00020\u00122\u0013\u0010J\u001a\u000f\u0012\u0004\u0012\u00020'\u0012\u0005\u0012\u00030\u0081\u00010KH\u0016J\t\u0010\u0087\u0001\u001a\u00020\u0012H\u0016J\t\u0010\u0088\u0001\u001a\u00020\u0012H\u0016J\u001b\u0010\u0089\u0001\u001a\u00020\u00122\b\u0010\u008a\u0001\u001a\u00030\u008b\u00012\u0006\u0010&\u001a\u00020'H\u0016J\t\u0010\u008c\u0001\u001a\u00020\u0012H\u0016J\t\u0010\u008d\u0001\u001a\u00020\u0012H\u0016J\t\u0010\u008e\u0001\u001a\u00020\u0012H\u0016J\u0013\u0010\u008f\u0001\u001a\u00020\u00122\b\u0010\u0090\u0001\u001a\u00030\u0091\u0001H\u0016J\u0016\u0010\u0092\u0001\u001a\u00030\u0093\u0001*\u00020%2\u0006\u0010&\u001a\u00020'H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0097\u0001"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposControllerListener;", "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;", "readerStatusListener", "Lcom/stripe/core/hardware/status/ReaderStatusListener;", "configurationListener", "Lcom/stripe/hardware/emv/ConfigurationListener;", "bbposReaderInfoFactory", "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;", "debugLogsShouldBeSentToSplunk", "Ljavax/inject/Provider;", "", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/emv/ConfigurationListener;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Ljavax/inject/Provider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "onBatteryLow", "", "batteryStatus", "Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;", "onBtConnected", "connectedDevice", "Landroid/bluetooth/BluetoothDevice;", "onBtDisconnected", "onBtReturnScanResults", "foundDevices", "", "onDeviceReset", "isSuccess", "reason", "Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;", "onDeviceResetAlert", "timeBeforeReset", "", "onError", "error", "Lcom/stripe/bbpos/sdk/Error;", "errorMessage", "", "onHardwareFunctionalTestResult", "result", "itemIndex", "onPowerButtonPressed", "onPowerDown", "onRequestDisplayAsterisk", "unmaskedDigits", "numOfAsterisk", "onRequestDisplayText", "displayText", "Lcom/stripe/bbpos/sdk/DisplayText;", "displayTextLanguage", "onRequestFinalConfirm", "onRequestManualPanEntry", "manualPanEntry", "Lcom/stripe/bbpos/sdk/ManualPanEntryType;", "onRequestOnlineProcess", "tlv", "onRequestPinEntry", "pinEntrySource", "Lcom/stripe/bbpos/sdk/PinEntrySource;", "onRequestProduceAudioTone", "tone", "Lcom/stripe/bbpos/sdk/ContactlessStatusTone;", "onRequestSelectAccountType", "onRequestSelectApplication", "appList", "onReturnAccessiblePinPadTouchEvent", "pinPadTouchEvent", "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;", "eventId", "Ljava/util/UUID;", "onReturnAmount", "Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;", "data", "", "onReturnBatchData", "onReturnCancelCheckCardResult", "onReturnCheckCardResult", "checkCardResult", "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;", "cardData", "Lcom/stripe/bbpos/sdk/CardData;", "onReturnDebugLog", "debugLog", "", "onReturnDeviceInfo", "deviceInfo", "Lcom/stripe/bbpos/sdk/DeviceInfo;", "rawReaderData", "onReturnDisableInputAmountResult", "onReturnEncryptDataResult", "onReturnPinEntryResult", "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;", "pinData", "Lcom/stripe/bbpos/sdk/PinData;", "onReturnReadAidResult", "onReturnReadTerminalSettingResult", "acquirerIdentifier", "Lcom/stripe/bbpos/sdk/TerminalSettingValue;", "terminalCountryCode", "transactionCurrencyCode", "transactionCurrencyExponent", "merchantNameAndLocation", "merchantIdentifier", "terminalIdentification", BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME, "terminalType", "additionalTerminalCapabilities", "normalModeTimeout", "standbyModeTimeout", "bluetoothDiscoveryTimeout", "msrPinEntryTimeout", "firmwareFallbackEnabled", "customBluetoothNamePrefix", "customBluetoothSerialSuffix", "firmwareForceChipEnabled", "iccTransactionBeepEnabled", "keypadEventBeepEnabled", "spocModeEnabled", "domesticDebitAidList", "visaDynamicReaderLimit", "buzzerSoundEnabled", "configHash", "onReturnReversalData", "onReturnSetPinPadButtonsResult", "onReturnTransactionResult", "Lcom/stripe/bbpos/sdk/TransactionResult$Type;", "onReturnUpdateAidResult", "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;", "onReturnUpdateDisplaySettingsResult", "message", "onReturnUpdateTerminalSettingResult", NotificationCompat.CATEGORY_STATUS, "onReturnUpdateTerminalSettingsResult", "onSerialConnected", "onSerialDisconnected", "onSessionError", "sessionError", "Lcom/stripe/core/bbpos/hardware/api/SessionError;", "onSessionInitialized", "onUsbConnected", "onUsbDisconnected", "onWaitingForCard", BbposDeviceControllerImpl.CHECK_CARD_MODE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/CheckCardMode;", "toDisconnectCause", "Lcom/stripe/hardware/status/DisconnectCause;", "BbposErrorMessage", "Companion", "Factory", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposControllerListener implements DeviceListenerWrapper {
    private static final String MISSING_ENCRYPTION_KEY_EC = "116";
    private static final String MISSING_ENCRYPTION_KEY_ERR_MSG = "Missing encryption keys";
    private final BbposReaderInfoFactory bbposReaderInfoFactory;
    private final ConfigurationListener configurationListener;
    private final Provider<Boolean> debugLogsShouldBeSentToSplunk;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final ReaderStatusListener readerStatusListener;

    /* JADX INFO: compiled from: BbposControllerListener.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[Error.values().length];
            try {
                iArr[Error.FAIL_TO_START_BT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Error.FAIL_TO_START_USB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Error.USB_DEVICE_NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Error.USB_DEVICE_PERMISSION_DENIED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Error.USB_NOT_SUPPORTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Error.COMM_LINK_UNINITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Error.AUDIO_PERMISSION_DENIED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Error.FAIL_TO_START_AUDIO.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[Error.FAIL_TO_START_SERIAL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[Error.SERIAL_PERMISSION_DENIED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[Error.DEVICE_BUSY.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[Error.TAMPER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[Error.INTEGRITY_CHECK_ERROR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[BatteryStatus.values().length];
            try {
                iArr2[BatteryStatus.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr2[BatteryStatus.CRITICALLY_LOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr2[BatteryStatus.CHARGING.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr2[BatteryStatus.NOT_CHARGING.ordinal()] = 4;
            } catch (NoSuchFieldError unused17) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[DeviceResetReason.values().length];
            try {
                iArr3[DeviceResetReason.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr3[DeviceResetReason.APP_RESET_DEVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr3[DeviceResetReason.FIRMWARE_SELF_TEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr3[DeviceResetReason.RECOVERY_ATTEMPT.ordinal()] = 4;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr3[DeviceResetReason.WATCHDOG_TIMEOUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused22) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBtConnected(BluetoothDevice connectedDevice) {
        Intrinsics.checkNotNullParameter(connectedDevice, "connectedDevice");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBtDisconnected() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBtReturnScanResults(List<BluetoothDevice> foundDevices) {
        Intrinsics.checkNotNullParameter(foundDevices, "foundDevices");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestDisplayAsterisk(String unmaskedDigits, int numOfAsterisk) {
        Intrinsics.checkNotNullParameter(unmaskedDigits, "unmaskedDigits");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestDisplayText(DisplayText displayText, String displayTextLanguage) {
        Intrinsics.checkNotNullParameter(displayText, "displayText");
        Intrinsics.checkNotNullParameter(displayTextLanguage, "displayTextLanguage");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestFinalConfirm() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestManualPanEntry(ManualPanEntryType manualPanEntry) {
        Intrinsics.checkNotNullParameter(manualPanEntry, "manualPanEntry");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestOnlineProcess(String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestPinEntry(PinEntrySource pinEntrySource) {
        Intrinsics.checkNotNullParameter(pinEntrySource, "pinEntrySource");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestProduceAudioTone(ContactlessStatusTone tone) {
        Intrinsics.checkNotNullParameter(tone, "tone");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestSelectAccountType() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onRequestSelectApplication(List<String> appList) {
        Intrinsics.checkNotNullParameter(appList, "appList");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnAccessiblePinPadTouchEvent(PinPadTouchEvent pinPadTouchEvent, UUID eventId) {
        Intrinsics.checkNotNullParameter(pinPadTouchEvent, "pinPadTouchEvent");
        Intrinsics.checkNotNullParameter(eventId, "eventId");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnAmount(AmountInputResult result, Map<String, String> data) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(data, "data");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnBatchData(String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnCancelCheckCardResult(boolean isSuccess) {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnCheckCardResult(CheckCardResult.Type checkCardResult, CardData cardData) {
        Intrinsics.checkNotNullParameter(checkCardResult, "checkCardResult");
        Intrinsics.checkNotNullParameter(cardData, "cardData");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnDisableInputAmountResult(boolean isSuccess) {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnEncryptDataResult(boolean isSuccess, Map<String, String> data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnPinEntryResult(PinEntryResult.Type result, PinData pinData) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(pinData, "pinData");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnReversalData(String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnTransactionResult(TransactionResult.Type result) {
        Intrinsics.checkNotNullParameter(result, "result");
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onUsbConnected() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onUsbDisconnected() {
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onWaitingForCard(CheckCardMode checkCardMode) {
        Intrinsics.checkNotNullParameter(checkCardMode, "checkCardMode");
    }

    public BbposControllerListener(ReaderStatusListener readerStatusListener, ConfigurationListener configurationListener, BbposReaderInfoFactory bbposReaderInfoFactory, Provider<Boolean> debugLogsShouldBeSentToSplunk, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(configurationListener, "configurationListener");
        Intrinsics.checkNotNullParameter(bbposReaderInfoFactory, "bbposReaderInfoFactory");
        Intrinsics.checkNotNullParameter(debugLogsShouldBeSentToSplunk, "debugLogsShouldBeSentToSplunk");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.readerStatusListener = readerStatusListener;
        this.configurationListener = configurationListener;
        this.bbposReaderInfoFactory = bbposReaderInfoFactory;
        this.debugLogsShouldBeSentToSplunk = debugLogsShouldBeSentToSplunk;
        this.logger = logger;
    }

    /* JADX INFO: compiled from: BbposControllerListener.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000bJ\u001e\u0010\f\u001a\u00020\r2\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fj\u0002`\u0012R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;", "", "readerStatusListener", "Lcom/stripe/core/hardware/status/ReaderStatusListener;", "configurationListener", "Lcom/stripe/hardware/emv/ConfigurationListener;", "bbposReaderInfoFactory", "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;", "debugLogsShouldBeSentToSplunk", "Ljavax/inject/Provider;", "", "(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/emv/ConfigurationListener;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Ljavax/inject/Provider;)V", "create", "Lcom/stripe/core/bbpos/hardware/BbposControllerListener;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Factory {
        private final BbposReaderInfoFactory bbposReaderInfoFactory;
        private final ConfigurationListener configurationListener;
        private final Provider<Boolean> debugLogsShouldBeSentToSplunk;
        private final ReaderStatusListener readerStatusListener;

        public Factory(ReaderStatusListener readerStatusListener, ConfigurationListener configurationListener, BbposReaderInfoFactory bbposReaderInfoFactory, Provider<Boolean> debugLogsShouldBeSentToSplunk) {
            Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
            Intrinsics.checkNotNullParameter(configurationListener, "configurationListener");
            Intrinsics.checkNotNullParameter(bbposReaderInfoFactory, "bbposReaderInfoFactory");
            Intrinsics.checkNotNullParameter(debugLogsShouldBeSentToSplunk, "debugLogsShouldBeSentToSplunk");
            this.readerStatusListener = readerStatusListener;
            this.configurationListener = configurationListener;
            this.bbposReaderInfoFactory = bbposReaderInfoFactory;
            this.debugLogsShouldBeSentToSplunk = debugLogsShouldBeSentToSplunk;
        }

        public final BbposControllerListener create(SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
            Intrinsics.checkNotNullParameter(logger, "logger");
            return new BbposControllerListener(this.readerStatusListener, this.configurationListener, this.bbposReaderInfoFactory, this.debugLogsShouldBeSentToSplunk, logger);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BbposControllerListener.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;", "", NotificationCompat.CATEGORY_MESSAGE, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getMsg", "()Ljava/lang/String;", "matches", "", "errMsg", "USB_CONNECTION_WARNING_MSG", "SERIAL_ALREADY_CONNECTED", "MISSING_ENCRYPTION_KEY", "Companion", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class BbposErrorMessage {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ BbposErrorMessage[] $VALUES;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        private final String msg;
        public static final BbposErrorMessage USB_CONNECTION_WARNING_MSG = new BbposErrorMessage("USB_CONNECTION_WARNING_MSG", 0, "Cannot start USB again while USB is connected");
        public static final BbposErrorMessage SERIAL_ALREADY_CONNECTED = new BbposErrorMessage("SERIAL_ALREADY_CONNECTED", 1, "Cannot start serial again while serial is connected");
        public static final BbposErrorMessage MISSING_ENCRYPTION_KEY = new MISSING_ENCRYPTION_KEY("MISSING_ENCRYPTION_KEY", 2);

        private static final /* synthetic */ BbposErrorMessage[] $values() {
            return new BbposErrorMessage[]{USB_CONNECTION_WARNING_MSG, SERIAL_ALREADY_CONNECTED, MISSING_ENCRYPTION_KEY};
        }

        public /* synthetic */ BbposErrorMessage(String str, int i, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i, str2);
        }

        public static EnumEntries<BbposErrorMessage> getEntries() {
            return $ENTRIES;
        }

        public static BbposErrorMessage valueOf(String str) {
            return (BbposErrorMessage) Enum.valueOf(BbposErrorMessage.class, str);
        }

        public static BbposErrorMessage[] values() {
            return (BbposErrorMessage[]) $VALUES.clone();
        }

        private BbposErrorMessage(String str, int i, String str2) {
            this.msg = str2;
        }

        public final String getMsg() {
            return this.msg;
        }

        static {
            BbposErrorMessage[] bbposErrorMessageArr$values = $values();
            $VALUES = bbposErrorMessageArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(bbposErrorMessageArr$values);
            INSTANCE = new Companion(null);
        }

        /* JADX INFO: compiled from: BbposControllerListener.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$MISSING_ENCRYPTION_KEY;", "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;", "matches", "", "errMsg", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        static final class MISSING_ENCRYPTION_KEY extends BbposErrorMessage {
            MISSING_ENCRYPTION_KEY(String str, int i) {
                super(str, i, "Error Code 116 - Missing encryption keys", null);
            }

            @Override // com.stripe.core.bbpos.hardware.BbposControllerListener.BbposErrorMessage
            public boolean matches(String errMsg) {
                Intrinsics.checkNotNullParameter(errMsg, "errMsg");
                String str = errMsg;
                return StringsKt.contains$default((CharSequence) str, (CharSequence) BbposControllerListener.MISSING_ENCRYPTION_KEY_EC, false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) BbposControllerListener.MISSING_ENCRYPTION_KEY_ERR_MSG, false, 2, (Object) null);
            }
        }

        public boolean matches(String errMsg) {
            Intrinsics.checkNotNullParameter(errMsg, "errMsg");
            return StringsKt.equals(this.msg, errMsg, true);
        }

        /* JADX INFO: compiled from: BbposControllerListener.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$Companion;", "", "()V", "fromString", "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;", NotificationCompat.CATEGORY_MESSAGE, "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final BbposErrorMessage fromString(String msg) {
                BbposErrorMessage next;
                Intrinsics.checkNotNullParameter(msg, "msg");
                Iterator<BbposErrorMessage> it = BbposErrorMessage.getEntries().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (next.matches(msg)) {
                        break;
                    }
                }
                return next;
            }
        }
    }

    private final DisconnectCause toDisconnectCause(Error error, String str) {
        switch (WhenMappings.$EnumSwitchMapping$0[error.ordinal()]) {
            case 1:
                if (StringsKt.contains$default((CharSequence) str, (CharSequence) "The reader is already connected to another device", false, 2, (Object) null)) {
                    return DisconnectCause.CONNECTED_TO_ANOTHER_DEVICE;
                }
                return DisconnectCause.FAIL_TO_START_BLUETOOTH;
            case 2:
                if (StringsKt.contains$default((CharSequence) str, (CharSequence) "The reader is already connected to another device", false, 2, (Object) null)) {
                    return DisconnectCause.CONNECTED_TO_ANOTHER_DEVICE;
                }
                return DisconnectCause.FAIL_TO_START_USB;
            case 3:
                return DisconnectCause.USB_DEVICE_NOT_FOUND;
            case 4:
                return DisconnectCause.USB_DEVICE_PERMISSION_DENIED;
            case 5:
                return DisconnectCause.USB_NOT_SUPPORTED;
            case 6:
                return DisconnectCause.COMM_LINK_UNINITIALIZED;
            default:
                return DisconnectCause.UNKNOWN;
        }
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onBatteryLow(BatteryStatus batteryStatus) {
        ReaderBatteryStatus readerBatteryStatus;
        Intrinsics.checkNotNullParameter(batteryStatus, "batteryStatus");
        this.logger.i("onBatteryLow batteryStatus=" + batteryStatus, new Pair[0]);
        int i = WhenMappings.$EnumSwitchMapping$1[batteryStatus.ordinal()];
        if (i == 1) {
            readerBatteryStatus = ReaderBatteryStatus.LOW;
        } else if (i == 2) {
            readerBatteryStatus = ReaderBatteryStatus.CRITICALLY_LOW;
        } else if (i == 3) {
            readerBatteryStatus = ReaderBatteryStatus.CHARGING;
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            readerBatteryStatus = ReaderBatteryStatus.NOT_CHARGING;
        }
        this.readerStatusListener.handleLowBattery(readerBatteryStatus);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onError(Error error, String errorMessage) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.logger.i("onError " + error + ", " + errorMessage, new Pair[0]);
        switch (WhenMappings.$EnumSwitchMapping$0[error.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                this.readerStatusListener.handleReaderDisconnect(toDisconnectCause(error, errorMessage));
                break;
            case 11:
                this.readerStatusListener.handleDeviceBusy();
                break;
            case 12:
                this.readerStatusListener.handleReaderException(BbposTamper.INSTANCE.fromErrorMessage(errorMessage));
                break;
            case 13:
                this.readerStatusListener.handleReaderException(IntegrityCheckError.INSTANCE.fromErrorMessage(errorMessage));
                break;
            default:
                BbposErrorMessage bbposErrorMessageFromString = BbposErrorMessage.INSTANCE.fromString(errorMessage);
                if (error == Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE && bbposErrorMessageFromString == BbposErrorMessage.USB_CONNECTION_WARNING_MSG) {
                    this.logger.i(error + ", continue the flow and fire onUsbConnected()", new Pair[0]);
                    onUsbConnected();
                } else if (error == Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE && bbposErrorMessageFromString == BbposErrorMessage.SERIAL_ALREADY_CONNECTED) {
                    this.logger.i(error + ", continue the flow and fire onSerialConnected()", new Pair[0]);
                    onSerialConnected();
                } else {
                    this.readerStatusListener.handleReaderException(new ReaderException(error.name() + ": " + errorMessage, null, 2, null));
                }
                break;
        }
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnDebugLog(Map<String, ? extends Object> debugLog) {
        String logString = BBPOSLogHelper.INSTANCE.toLogString(debugLog);
        Boolean bool = this.debugLogsShouldBeSentToSplunk.get();
        Intrinsics.checkNotNullExpressionValue(bool, "get(...)");
        if (bool.booleanValue()) {
            this.logger.i("onReturnDebugLog: " + logString, new Pair[0]);
        } else {
            AndroidLog.INSTANCE.d("BbposControllerListener", "onReturnDebugLog: " + logString);
        }
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onDeviceResetAlert(int timeBeforeReset) {
        this.logger.i("onDeviceResetAlert timeBeforeReset=" + timeBeforeReset + " minutes", new Pair[0]);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onDeviceReset(boolean isSuccess, DeviceResetReason reason) {
        RebootCause rebootCause;
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.logger.i("onDeviceReset isSuccess=" + isSuccess + " reason=" + reason, new Pair[0]);
        int i = WhenMappings.$EnumSwitchMapping$2[reason.ordinal()];
        if (i == 1) {
            rebootCause = RebootCause.UNKNOWN;
        } else if (i == 2) {
            rebootCause = RebootCause.SDK_REQUESTED_REBOOT;
        } else if (i == 3) {
            rebootCause = RebootCause.FIRMWARE_SELF_TEST;
        } else if (i == 4) {
            rebootCause = RebootCause.RECOVERY_ATTEMPT;
        } else {
            if (i != 5) {
                throw new NoWhenBranchMatchedException();
            }
            rebootCause = RebootCause.WATCHDOG_TIMEOUT;
        }
        this.readerStatusListener.handleReaderRebootAttempt(isSuccess, rebootCause);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onPowerButtonPressed() {
        this.logger.i("onPowerButtonPressed", new Pair[0]);
        this.readerStatusListener.handleReaderPowerEvent(ReaderPowerEvent.POWER_BUTTON_PRESSED);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onPowerDown() {
        this.logger.i("onPowerDown", new Pair[0]);
        this.readerStatusListener.handleReaderPowerEvent(ReaderPowerEvent.POWER_DOWN);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSerialConnected() {
        this.logger.i("onSerialConnected", new Pair[0]);
        this.readerStatusListener.handleReaderConnect(Reader.SerialReader.INSTANCE);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSerialDisconnected() {
        this.logger.i("onSerialDisconnected", new Pair[0]);
        ReaderStatusListener.handleReaderDisconnect$default(this.readerStatusListener, null, 1, null);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSessionInitialized() {
        this.logger.i("onSessionInitialized", new Pair[0]);
        this.readerStatusListener.handleSessionInitialized();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onSessionError(SessionError sessionError, String errorMessage) {
        Intrinsics.checkNotNullParameter(sessionError, "sessionError");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.logger.i("onSessionError " + sessionError + ", " + errorMessage, new Pair[0]);
        this.readerStatusListener.handleSessionException(new ReaderException(sessionError.name() + ": " + errorMessage, null, 2, null));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnSetPinPadButtonsResult(boolean isSuccess) {
        this.logger.i("onReturnSetPinPadButtonsResult " + isSuccess, new Pair[0]);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnDeviceInfo(DeviceInfo deviceInfo, Map<String, String> rawReaderData) {
        Intrinsics.checkNotNullParameter(deviceInfo, "deviceInfo");
        Intrinsics.checkNotNullParameter(rawReaderData, "rawReaderData");
        this.logger.i("onReturnDeviceInfo " + rawReaderData, new Pair[0]);
        this.readerStatusListener.handleDeviceInfo(this.bbposReaderInfoFactory.create(deviceInfo.pinKsn, deviceInfo.emvKsn, deviceInfo.macKsn, deviceInfo.trackKsn, deviceInfo.batteryPercentage, deviceInfo.terminalSettingVersion, deviceInfo.deviceSettingVersion, deviceInfo.bootloaderVersion, deviceInfo.emvKeyProfileId, deviceInfo.firmwareVersion, deviceInfo.hardwareVersion, deviceInfo.macKeyProfileId, deviceInfo.pinKeyProfileId, deviceInfo.serialNumber, deviceInfo.trackKeyProfileId, deviceInfo.isCharging, rawReaderData, null, deviceInfo.firmwareId, deviceInfo.coinCellBatteryVoltage, deviceInfo.isUsbConnected));
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
        this.logger.i("onReturnReadTerminalSettingResult", new Pair[0]);
        this.configurationListener.handleReaderSettings(new ReaderSettings(acquirerIdentifier.hexadecimal, terminalCountryCode.hexadecimal, transactionCurrencyCode.hexadecimal, transactionCurrencyExponent.hexadecimal, merchantNameAndLocation.hexadecimal, merchantIdentifier.hexadecimal, terminalIdentification.hexadecimal, terminalCapabilities.hexadecimal, terminalType.hexadecimal, additionalTerminalCapabilities.hexadecimal, normalModeTimeout.hexadecimal, standbyModeTimeout.hexadecimal, bluetoothDiscoveryTimeout.hexadecimal, msrPinEntryTimeout.hexadecimal, firmwareFallbackEnabled.hexadecimal, customBluetoothNamePrefix.hexadecimal, customBluetoothSerialSuffix.hexadecimal, firmwareForceChipEnabled.hexadecimal, iccTransactionBeepEnabled.hexadecimal, keypadEventBeepEnabled.hexadecimal, spocModeEnabled.hexadecimal, domesticDebitAidList.hexadecimal, visaDynamicReaderLimit.hexadecimal, buzzerSoundEnabled.hexadecimal, configHash.hexadecimal));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnUpdateTerminalSettingResult(TerminalSettingStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.logger.i("onReturnUpdateTerminalSettingResult", new Pair[0]);
        this.configurationListener.handleUpdateReaderSettings(status == TerminalSettingStatus.SUCCESS);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnUpdateTerminalSettingsResult(Map<String, ? extends TerminalSettingStatus> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        boolean z = false;
        this.logger.i("onReturnUpdateTerminalSettingsResult", new Pair[0]);
        if (data.isEmpty()) {
            z = true;
            break;
        } else if (!data.isEmpty()) {
            Iterator<Map.Entry<String, ? extends TerminalSettingStatus>> it = data.entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue() != TerminalSettingStatus.SUCCESS) {
                    z = true;
                    break;
                }
            }
        }
        this.configurationListener.handleUpdateReaderSettings(!z);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnUpdateDisplaySettingsResult(boolean isSuccess, String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.logger.i("onReturnUpdateDisplaySettingsResult", new Pair[0]);
        this.configurationListener.handleDisplaySettings(isSuccess);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnReadAidResult(Map<String, ? extends Object> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.logger.i("onReturnReadAIDResult", new Pair[0]);
        this.configurationListener.handleReaderAid(MapsKt.toMap(data));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onReturnUpdateAidResult(Map<String, ? extends TerminalSettingStatus> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        boolean z = false;
        this.logger.i("onReturnUpdateAIDResult", new Pair[0]);
        if (data.isEmpty()) {
            z = true;
            break;
        } else if (!data.isEmpty()) {
            Iterator<Map.Entry<String, ? extends TerminalSettingStatus>> it = data.entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue() != TerminalSettingStatus.SUCCESS) {
                    z = true;
                    break;
                }
            }
        }
        this.configurationListener.handleUpdateReaderAidData(!z);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper
    public void onHardwareFunctionalTestResult(int result, int itemIndex, String errorMessage) {
        SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger = this.logger;
        StringBuilder sbAppend = new StringBuilder("Functional test result <").append(result).append("> for index <").append(itemIndex).append(">. ");
        if (errorMessage == null) {
            errorMessage = "";
        }
        simpleLogger.d(sbAppend.append(errorMessage).toString(), new Pair[0]);
    }
}
