package com.stripe.core.bbpos;

import android.bluetooth.BluetoothDevice;
import android.graphics.Rect;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.bbpos.sdk.AmountInputType;
import com.stripe.bbpos.sdk.CheckCardMode;
import com.stripe.bbpos.sdk.ContactlessOnlinePinOption;
import com.stripe.bbpos.sdk.DomesticDebitPriority;
import com.stripe.bbpos.sdk.EncryptionMethod;
import com.stripe.bbpos.sdk.FixedAmountTips;
import com.stripe.bbpos.sdk.OtherAmountOption;
import com.stripe.bbpos.sdk.PercentageTips;
import com.stripe.bbpos.sdk.QuickChipOption;
import com.stripe.bbpos.sdk.TransactionType;
import com.stripe.core.bbpos.hardware.ReaderInfoHelper;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.bbpos.hardware.api.TippingOption;
import com.stripe.core.bbpos.mappers.AmountInputTypeMapperKt;
import com.stripe.core.bbpos.mappers.CheckCardModeMapperKt;
import com.stripe.core.bbpos.mappers.ContactlessOnlinePinOptionMapperKt;
import com.stripe.core.bbpos.mappers.CurrencyCodeMapperKt;
import com.stripe.core.bbpos.mappers.DeviceInfoCache;
import com.stripe.core.bbpos.mappers.DeviceInfoMapperKt;
import com.stripe.core.bbpos.mappers.DomesticDebitPriorityMapperKt;
import com.stripe.core.bbpos.mappers.EncryptionMethodMapperKt;
import com.stripe.core.bbpos.mappers.OtherAmountOptionMapperKt;
import com.stripe.core.bbpos.mappers.QuickChipOptionMapperKt;
import com.stripe.core.bbpos.mappers.TransactionTypeMapperKt;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.jvmcore.dagger.BluetoothUsbPinPadReaders;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Hashtable;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: compiled from: BbposDeviceControllerImpl.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u0000 \u008f\u00012\u00020\u0001:\u0002\u008f\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\f¢\u0006\u0002\u0010\rJ\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0011\u001a\u00020\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u000fH\u0016J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u000fH\u0017J\b\u0010\u001c\u001a\u00020\u000fH\u0016J\b\u0010\u001d\u001a\u00020\u000fH\u0016J(\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0017J\u0018\u0010&\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020\u000fH\u0016J\u0016\u0010,\u001a\u00020\u000f2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020(0.H\u0016J\u0010\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u00020(H\u0016J\u0010\u00101\u001a\u00020\u000f2\u0006\u00102\u001a\u00020(H\u0016JÐ\u0001\u00103\u001a\u00020\u000f2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002052\u0006\u00107\u001a\u0002052\u0006\u00108\u001a\u0002052\u0006\u00109\u001a\u0002052\u0006\u0010:\u001a\u0002052\u0006\u0010;\u001a\u0002052\u0006\u0010<\u001a\u0002052\u0006\u0010=\u001a\u0002052\u0006\u0010>\u001a\u0002052\u0006\u0010?\u001a\u0002052\u0006\u0010@\u001a\u0002052\u0006\u0010A\u001a\u0002052\u0006\u0010B\u001a\u0002052\u0006\u0010C\u001a\u0002052\u0006\u0010D\u001a\u0002052\u0006\u0010E\u001a\u0002052\u0006\u0010F\u001a\u0002052\u0006\u0010G\u001a\u0002052\u0006\u0010H\u001a\u0002052\u0006\u0010I\u001a\u0002052\u0006\u0010J\u001a\u0002052\u0006\u0010K\u001a\u0002052\u0006\u0010L\u001a\u0002052\u0006\u0010M\u001a\u000205H\u0016J\b\u0010N\u001a\u00020\u000fH\u0016J\u0010\u0010O\u001a\u00020\u000f2\u0006\u0010P\u001a\u00020\u0017H\u0016J\u0010\u0010Q\u001a\u00020\u000f2\u0006\u0010R\u001a\u00020\u0017H\u0016J\u0010\u0010S\u001a\u00020\u000f2\u0006\u0010T\u001a\u000205H\u0016J\u0012\u0010U\u001a\u00020\u000f2\b\u0010V\u001a\u0004\u0018\u00010(H\u0016J\u0010\u0010W\u001a\u00020\u000f2\u0006\u0010X\u001a\u000205H\u0016Jp\u0010Y\u001a\u00020\u000f2\u0006\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020[2\u0006\u0010^\u001a\u00020[2\u0006\u0010_\u001a\u00020[2\u0006\u0010`\u001a\u00020[2\u0006\u0010a\u001a\u00020[2\u0006\u0010b\u001a\u00020[2\u0006\u0010c\u001a\u00020[2\u0006\u0010d\u001a\u00020[2\u0006\u0010e\u001a\u00020[2\u0006\u0010f\u001a\u00020[2\u0006\u0010g\u001a\u00020[H\u0016J \u0010h\u001a\u00020\u000f2\u000e\u0010i\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010.2\u0006\u0010j\u001a\u00020\u0017H\u0016J¨\u0001\u0010k\u001a\u00020\u000f2\u0006\u0010l\u001a\u00020m2\u0006\u0010n\u001a\u00020\u00152\u0006\u0010o\u001a\u00020p2\u0006\u0010q\u001a\u0002052\u0006\u0010r\u001a\u00020\u00172\u0006\u0010s\u001a\u00020\u00172\u0006\u0010t\u001a\u00020(2\u0006\u0010u\u001a\u00020(2\u0006\u0010v\u001a\u00020\u00172\u0006\u0010w\u001a\u00020\u00172\u0006\u0010x\u001a\u00020\u00172\u0006\u0010y\u001a\u00020\u00172\b\u0010z\u001a\u0004\u0018\u00010(2\b\u0010{\u001a\u0004\u0018\u00010|2\b\u0010}\u001a\u0004\u0018\u00010~2\u0006\u0010\u007f\u001a\u0002052\u0007\u0010\u0080\u0001\u001a\u0002052\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0003\u0010\u0082\u0001J#\u0010\u0083\u0001\u001a\u00020\u000f2\u0007\u0010\u0080\u0001\u001a\u0002052\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0003\u0010\u0084\u0001J\t\u0010\u0085\u0001\u001a\u00020\u000fH\u0016J\t\u0010\u0086\u0001\u001a\u00020\u000fH\u0016J\u0011\u0010\u0087\u0001\u001a\u00020\u000f2\u0006\u0010i\u001a\u00020(H\u0016J\t\u0010\u0088\u0001\u001a\u00020\u000fH\u0016J\t\u0010\u0089\u0001\u001a\u00020\u000fH\u0016J\u001e\u0010\u008a\u0001\u001a\u00020\u000f2\u0013\u0010'\u001a\u000f\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020(0\u008b\u0001H\u0016J\u001f\u0010\u008c\u0001\u001a\u00020\u000f2\u0014\u0010'\u001a\u0010\u0012\u0004\u0012\u00020(\u0012\u0005\u0012\u00030\u008d\u00010\u008b\u0001H\u0016J\u0011\u0010\u008e\u0001\u001a\u00020\u000f2\u0006\u0010V\u001a\u00020(H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0090\u0001"}, d2 = {"Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "controller", "Lcom/bbpos/bbdevice/BBDeviceController;", "deviceInfoCache", "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/bbpos/bbdevice/BBDeviceController;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "cancelCheckCard", "", "cancelPinEntry", "cancelSelectAccountType", "cancelSelectApplication", "checkCard", "mode", "Lcom/stripe/bbpos/sdk/CheckCardMode;", "timeout", "", "connectBt", "bluetoothDevice", "Landroid/bluetooth/BluetoothDevice;", "disableInputAmount", "disconnectBt", "disconnectSerial", "enableInputAmount", "setAmountTimeout", "amountInputType", "Lcom/stripe/bbpos/sdk/AmountInputType;", "otherAmountOption", "Lcom/stripe/bbpos/sdk/OtherAmountOption;", "tippingOption", "Lcom/stripe/core/bbpos/hardware/api/TippingOption;", "encryptDataWithSettings", "data", "", "encryptionMethod", "Lcom/stripe/bbpos/sdk/EncryptionMethod;", "getDeviceInfo", "getDeviceInfoByKeys", UserMetadata.KEYDATA_FILENAME, "", "initSession", "vendorToken", "readAid", "appIndex", "readTerminalSetting", "acquirerIdentifier", "", "terminalCountryCode", "transactionCurrencyCode", "transactionCurrencyExponent", "merchantNameAndLocation", "merchantIdentifier", "terminalIdentification", BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME, "terminalType", "additionalTerminalCapabilities", "normalModeTimeout", "standbyModeTimeout", "bluetoothDiscoveryTimeout", "msrPinEntryTimeout", "firmwareFallbackEnabled", "customBluetoothNamePrefix", "customBluetoothSerialSuffix", "firmwareForceChipEnabled", "iccTransactionBeepEnabled", "keypadEventBeepEnabled", "spocModeEnabled", "domesticDebitAidList", "visaDynamicReaderLimit", "buzzerSoundEnabled", "configHash", "resetDevice", "selectAccountType", "type", "selectApplication", FirebaseAnalytics.Param.INDEX, "sendFinalConfirmResult", "confirm", "sendOnlineProcessResult", "tlv", "setDebugLogEnabled", "enabled", "setPinPadButtons", "zero", "Landroid/graphics/Rect;", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "backspace", "cancel", "enter", "startBtScan", "deviceName", "scanTimeout", "startEmv", BbposDeviceControllerImpl.TRANSACTION_TYPE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/TransactionType;", BbposDeviceControllerImpl.CHECK_CARD_MODE_PARAM_NAME, BbposDeviceControllerImpl.QUICK_CHIP_OPTION_PARAM_NAME, "Lcom/stripe/bbpos/sdk/QuickChipOption;", BbposDeviceControllerImpl.DISABLE_QUICK_CHIP_PARAM_NAME, BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, BbposDeviceControllerImpl.CURRENCY_EXPONENT_PARAM_NAME, BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, BbposDeviceControllerImpl.TERMINAL_TIME_PARAM_NAME, BbposDeviceControllerImpl.CHECK_CARD_TIMEOUT_PARAM_NAME, BbposDeviceControllerImpl.SELECT_APPLICATION_TIMEOUT_PARAM_NAME, BbposDeviceControllerImpl.SELECT_ACCOUNT_TYPE_PARAM_NAME, BbposDeviceControllerImpl.ONLINE_PROCESS_TIMEOUT_PARAM_NAME, "terminalCapabilitiesOverride", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/bbpos/sdk/DomesticDebitPriority;", "contactlessOnlinePinOption", "Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "isAccessiblePinPad", "pinEntryTimeoutInSeconds", "(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;Lcom/stripe/bbpos/sdk/QuickChipOption;ZIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;)V", "startPinEntry", "(ZLjava/lang/Integer;)V", "startSerial", "startUsb", "startUsbWithDeviceName", "stopBtScan", "stopUsb", "updateAid", "", "updateDisplaySettings", "", "updateTerminalSettings", "Companion", "sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposDeviceControllerImpl implements DeviceControllerWrapper {
    public static final String AMOUNT_PARAM_NAME = "amount";
    public static final String CHECK_CARD_MODE_PARAM_NAME = "checkCardMode";
    public static final String CHECK_CARD_TIMEOUT_PARAM_NAME = "checkCardTimeout";
    public static final String CONTACTLESS_ONLINE_PIN_OPTION_PARAM_NAME = "contactlessOnlinePINOption";
    public static final String CURRENCY_CHARACTERS_PARAM_NAME = "currencyCharacters";
    public static final String CURRENCY_CODE_PARAM_NAME = "currencyCode";
    public static final String CURRENCY_EXPONENT_PARAM_NAME = "currencyExponent";
    public static final String DISABLE_QUICK_CHIP_PARAM_NAME = "disableQuickChip";
    public static final String DOMESTIC_DEBIT_PRIORITY_PARAM_NAME = "domesticDebitPriority";
    public static final String FORCE_PIN_ENTRY = "forcePinEntry";
    public static final String IS_ACCESSIBLE_PIN_PAD_PARAM_NAME = "isAccessiblePINPad";
    public static final String ONLINE_PROCESS_TIMEOUT_PARAM_NAME = "onlineProcessTimeout";
    public static final String PIN_ENTRY_TIMEOUT = "pinEntryTimeout";
    public static final String QUICK_CHIP_OPTION_PARAM_NAME = "quickChipOption";
    public static final String SELECT_ACCOUNT_TYPE_PARAM_NAME = "selectAccountTypeTimeout";
    public static final String SELECT_APPLICATION_TIMEOUT_PARAM_NAME = "selectApplicationTimeout";
    public static final String TERMINAL_CAPABILITIES_PARAM_NAME = "terminalCapabilities";
    public static final String TERMINAL_TIME_PARAM_NAME = "terminalTime";
    public static final String TRANSACTION_TYPE_PARAM_NAME = "transactionType";
    private final CoroutineScope appScope;
    private final BBDeviceController controller;
    private final DeviceInfoCache deviceInfoCache;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    public BbposDeviceControllerImpl(BBDeviceController controller, DeviceInfoCache deviceInfoCache, CoroutineScope appScope, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(controller, "controller");
        Intrinsics.checkNotNullParameter(deviceInfoCache, "deviceInfoCache");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.controller = controller;
        this.deviceInfoCache = deviceInfoCache;
        this.appScope = appScope;
        this.logger = logger;
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void cancelCheckCard() {
        this.logger.d("cancelCheckCard", new Pair[0]);
        this.controller.cancelCheckCard();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void cancelPinEntry() {
        this.logger.d("cancelPinEntry", new Pair[0]);
        this.controller.cancelPinEntry();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void cancelSelectAccountType() {
        this.logger.d("cancelSelectAccountType", new Pair[0]);
        this.controller.cancelSelectAccountType();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void cancelSelectApplication() {
        this.logger.d("cancelSelectApplication", new Pair[0]);
        this.controller.cancelSelectApplication();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void checkCard(CheckCardMode mode, int timeout) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.logger.d("checkCard", new Pair[0]);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        BBDeviceController.CheckCardMode checkCardModeConvert = CheckCardModeMapperKt.convert(mode);
        if (checkCardModeConvert == null) {
            throw new IllegalArgumentException("Invalid CheckCardMode");
        }
        linkedHashMap.put(CHECK_CARD_MODE_PARAM_NAME, checkCardModeConvert);
        linkedHashMap.put(CHECK_CARD_TIMEOUT_PARAM_NAME, Integer.valueOf(timeout));
        this.controller.checkCard(new Hashtable<>(linkedHashMap));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void connectBt(BluetoothDevice bluetoothDevice) {
        Intrinsics.checkNotNullParameter(bluetoothDevice, "bluetoothDevice");
        this.logger.d("connectBT", new Pair[0]);
        this.controller.connectBT(bluetoothDevice);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void disconnectBt() {
        this.logger.d("disconnectBT", new Pair[0]);
        this.controller.disconnectBT();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void disconnectSerial() {
        this.logger.d("disconnectSerial", new Pair[0]);
        this.controller.stopSerial();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void getDeviceInfo() {
        this.logger.d("getDeviceInfo", new Pair[0]);
        getDeviceInfoByKeys(CollectionsKt.plus((Collection) DeviceInfoMapperKt.getDeviceInfoFields(this.deviceInfoCache), (Iterable) ReaderInfoHelper.INSTANCE.getRawReaderInfoFields()));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void getDeviceInfoByKeys(List<String> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        this.controller.getDeviceInfo(new ArrayList<>(keys));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void readAid(String appIndex) {
        Intrinsics.checkNotNullParameter(appIndex, "appIndex");
        this.logger.d("readAID", new Pair[0]);
        this.controller.readAID(appIndex);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void readTerminalSetting(boolean acquirerIdentifier, boolean terminalCountryCode, boolean transactionCurrencyCode, boolean transactionCurrencyExponent, boolean merchantNameAndLocation, boolean merchantIdentifier, boolean terminalIdentification, boolean terminalCapabilities, boolean terminalType, boolean additionalTerminalCapabilities, boolean normalModeTimeout, boolean standbyModeTimeout, boolean bluetoothDiscoveryTimeout, boolean msrPinEntryTimeout, boolean firmwareFallbackEnabled, boolean customBluetoothNamePrefix, boolean customBluetoothSerialSuffix, boolean firmwareForceChipEnabled, boolean iccTransactionBeepEnabled, boolean keypadEventBeepEnabled, boolean spocModeEnabled, boolean domesticDebitAidList, boolean visaDynamicReaderLimit, boolean buzzerSoundEnabled, boolean configHash) {
        this.logger.d("readTerminalSetting", new Pair[0]);
        String[] strArr = new String[25];
        strArr[0] = acquirerIdentifier ? TlvMap.TAG_ACQUIRER_IDENTIFIER : null;
        strArr[1] = terminalCountryCode ? TlvMap.TAG_TERMINAL_COUNTRY_CODE : null;
        strArr[2] = transactionCurrencyCode ? TlvMap.TAG_TRANSACTION_CURRENCY_CODE : null;
        strArr[3] = transactionCurrencyExponent ? TlvMap.TAG_TRANSACTION_CURRENCY_EXPONENT : null;
        strArr[4] = merchantNameAndLocation ? TlvMap.TAG_MERCHANT_NAME : null;
        strArr[5] = merchantIdentifier ? TlvMap.TAG_MERCHANT_IDENTIFIER : null;
        strArr[6] = terminalIdentification ? TlvMap.TAG_TERMINAL_IDENTIFICATION : null;
        strArr[7] = terminalCapabilities ? TlvMap.TAG_TERMINAL_CAPABILITIES : null;
        strArr[8] = terminalType ? TlvMap.TAG_TERMINAL_TYPE : null;
        strArr[9] = additionalTerminalCapabilities ? TlvMap.TAG_ADDITIONAL_TERMINAL_CAPABILITIES : null;
        strArr[10] = normalModeTimeout ? TlvMap.TAG_NORMAL_MODE_TIMEOUT : null;
        strArr[11] = standbyModeTimeout ? TlvMap.TAG_STANDBY_MODE_TIMEOUT : null;
        strArr[12] = bluetoothDiscoveryTimeout ? TlvMap.TAG_BLUETOOTH_DISCOVERY_TIMEOUT : null;
        strArr[13] = msrPinEntryTimeout ? TlvMap.TAG_MSR_PIN_ENTRY_TIMEOUT : null;
        strArr[14] = firmwareFallbackEnabled ? TlvMap.TAG_FIRMWARE_FALLBACK_ENABLED : null;
        strArr[15] = customBluetoothNamePrefix ? TlvMap.TAG_CUSTOM_BLUETOOTH_NAME_PREFIX : null;
        strArr[16] = customBluetoothSerialSuffix ? TlvMap.TAG_CUSTOM_BLUETOOTH_SERIAL_SUFFIX : null;
        strArr[17] = firmwareForceChipEnabled ? TlvMap.TAG_FIRMWARE_FORCE_CHIP_ENABLED : null;
        strArr[18] = iccTransactionBeepEnabled ? TlvMap.TAG_ICC_TRANSACTION_BEEP_ENABLED : null;
        strArr[19] = keypadEventBeepEnabled ? TlvMap.TAG_KEYPAD_EVENT_BEEP_ENABLED : null;
        strArr[20] = spocModeEnabled ? TlvMap.TAG_SPOC_MODE_ENABLED : null;
        strArr[21] = domesticDebitAidList ? TlvMap.TAG_DOMESTIC_DEBIT_AID_LIST : null;
        strArr[22] = visaDynamicReaderLimit ? TlvMap.TAG_VISA_DYNAMIC_READER_LIMIT : null;
        strArr[23] = buzzerSoundEnabled ? TlvMap.TAG_BUZZER_SOUND_ENABLED : null;
        strArr[24] = configHash ? TlvMap.TAG_CONFIG_HASH : null;
        this.controller.readTerminalSetting(CollectionsKt.joinToString$default(CollectionsKt.listOfNotNull((Object[]) strArr), "", null, null, 0, null, null, 62, null));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void selectApplication(int index) {
        this.logger.d("selectApplication", new Pair[0]);
        this.controller.selectApplication(index);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void selectAccountType(int type) {
        this.logger.d("selectAccountType", new Pair[0]);
        this.controller.selectAccountType(type);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void sendFinalConfirmResult(boolean confirm) {
        this.logger.d("sendFinalConfirmResult", new Pair[0]);
        this.controller.sendFinalConfirmResult(confirm);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void sendOnlineProcessResult(String tlv) {
        this.logger.d("sendOnlineProcessResult", new Pair[0]);
        this.controller.sendOnlineProcessResult(tlv);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void setPinPadButtons(Rect zero, Rect one, Rect two, Rect three, Rect four, Rect five, Rect six, Rect seven, Rect eight, Rect nine, Rect backspace, Rect cancel, Rect enter) {
        Intrinsics.checkNotNullParameter(zero, "zero");
        Intrinsics.checkNotNullParameter(one, "one");
        Intrinsics.checkNotNullParameter(two, "two");
        Intrinsics.checkNotNullParameter(three, "three");
        Intrinsics.checkNotNullParameter(four, "four");
        Intrinsics.checkNotNullParameter(five, "five");
        Intrinsics.checkNotNullParameter(six, "six");
        Intrinsics.checkNotNullParameter(seven, "seven");
        Intrinsics.checkNotNullParameter(eight, "eight");
        Intrinsics.checkNotNullParameter(nine, "nine");
        Intrinsics.checkNotNullParameter(backspace, "backspace");
        Intrinsics.checkNotNullParameter(cancel, "cancel");
        Intrinsics.checkNotNullParameter(enter, "enter");
        this.logger.d("setPinPadButtons", new Pair[0]);
        this.controller.setPinPadButtons(new Hashtable<>(MapsKt.mutableMapOf(TuplesKt.to("key0", zero), TuplesKt.to("key1", one), TuplesKt.to("key2", two), TuplesKt.to("key3", three), TuplesKt.to("key4", four), TuplesKt.to("key5", five), TuplesKt.to("key6", six), TuplesKt.to("key7", seven), TuplesKt.to("key8", eight), TuplesKt.to("key9", nine), TuplesKt.to("backspace", backspace), TuplesKt.to("cancel", cancel), TuplesKt.to("enter", enter))));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void encryptDataWithSettings(String data, EncryptionMethod encryptionMethod) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(encryptionMethod, "encryptionMethod");
        this.logger.d("encryptDataWithSettings", new Pair[0]);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("data", data);
        BBDeviceController.EncryptionMethod encryptionMethodConvert = EncryptionMethodMapperKt.convert(encryptionMethod);
        if (encryptionMethodConvert == null) {
            throw new IllegalArgumentException("Invalid Encryption Method");
        }
        linkedHashMap.put("encryptionMethod", encryptionMethodConvert);
        this.controller.encryptDataWithSettings(new Hashtable<>(linkedHashMap));
    }

    /* JADX INFO: renamed from: com.stripe.core.bbpos.BbposDeviceControllerImpl$setDebugLogEnabled$1, reason: invalid class name */
    /* JADX INFO: compiled from: BbposDeviceControllerImpl.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.bbpos.BbposDeviceControllerImpl$setDebugLogEnabled$1", f = "BbposDeviceControllerImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $enabled;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$enabled = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$enabled, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            BBDeviceController.setDebugLogEnabled(this.$enabled);
            BBDeviceOTAController.setDebugLogEnabled(this.$enabled);
            return Unit.INSTANCE;
        }
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void setDebugLogEnabled(boolean enabled) {
        BuildersKt__Builders_commonKt.launch$default(this.appScope, null, null, new AnonymousClass1(enabled, null), 3, null);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void startBtScan(List<String> deviceName, int scanTimeout) {
        this.logger.d("startBTScan", new Pair[0]);
        this.controller.startBTScan(deviceName != null ? (String[]) deviceName.toArray(new String[0]) : null, scanTimeout);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void startEmv(TransactionType transactionType, CheckCardMode checkCardMode, QuickChipOption quickChipOption, boolean disableQuickChip, int currencyCode, int currencyExponent, String amount, String terminalTime, int checkCardTimeout, int selectApplicationTimeout, int selectAccountTypeTimeout, int onlineProcessTimeout, String terminalCapabilitiesOverride, DomesticDebitPriority domesticDebitPriority, ContactlessOnlinePinOption contactlessOnlinePinOption, boolean forcePinEntry, boolean isAccessiblePinPad, Integer pinEntryTimeoutInSeconds) {
        Integer numConvert;
        Integer numConvert2;
        Intrinsics.checkNotNullParameter(transactionType, "transactionType");
        Intrinsics.checkNotNullParameter(checkCardMode, "checkCardMode");
        Intrinsics.checkNotNullParameter(quickChipOption, "quickChipOption");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(terminalTime, "terminalTime");
        this.logger.d("startEmv", new Pair[0]);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        BBDeviceController.TransactionType transactionTypeConvert = TransactionTypeMapperKt.convert(transactionType);
        if (transactionTypeConvert == null) {
            throw new IllegalArgumentException("Invalid TransactionType");
        }
        linkedHashMap.put(TRANSACTION_TYPE_PARAM_NAME, transactionTypeConvert);
        BBDeviceController.CheckCardMode checkCardModeConvert = CheckCardModeMapperKt.convert(checkCardMode);
        if (checkCardModeConvert == null) {
            throw new IllegalArgumentException("Invalid CheckCardMode");
        }
        linkedHashMap.put(CHECK_CARD_MODE_PARAM_NAME, checkCardModeConvert);
        linkedHashMap.put(CURRENCY_CHARACTERS_PARAM_NAME, CurrencyCodeMapperKt.convert(currencyCode));
        linkedHashMap.put(CURRENCY_CODE_PARAM_NAME, String.valueOf(currencyCode));
        linkedHashMap.put(CURRENCY_EXPONENT_PARAM_NAME, Integer.valueOf(currencyExponent));
        linkedHashMap.put(AMOUNT_PARAM_NAME, amount);
        linkedHashMap.put(CHECK_CARD_TIMEOUT_PARAM_NAME, Integer.valueOf(checkCardTimeout));
        linkedHashMap.put(SELECT_APPLICATION_TIMEOUT_PARAM_NAME, Integer.valueOf(selectApplicationTimeout));
        linkedHashMap.put(SELECT_ACCOUNT_TYPE_PARAM_NAME, Integer.valueOf(selectAccountTypeTimeout));
        linkedHashMap.put(ONLINE_PROCESS_TIMEOUT_PARAM_NAME, Integer.valueOf(onlineProcessTimeout));
        linkedHashMap.put(TERMINAL_TIME_PARAM_NAME, terminalTime);
        if (terminalCapabilitiesOverride != null) {
            linkedHashMap.put(TERMINAL_CAPABILITIES_PARAM_NAME, terminalCapabilitiesOverride);
        }
        Integer numConvert3 = QuickChipOptionMapperKt.convert(quickChipOption);
        if (numConvert3 != null) {
            linkedHashMap.put(QUICK_CHIP_OPTION_PARAM_NAME, Integer.valueOf(numConvert3.intValue()));
        }
        linkedHashMap.put(DISABLE_QUICK_CHIP_PARAM_NAME, Boolean.valueOf(disableQuickChip));
        if (domesticDebitPriority != null && (numConvert2 = DomesticDebitPriorityMapperKt.convert(domesticDebitPriority)) != null) {
            linkedHashMap.put(DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, Integer.valueOf(numConvert2.intValue()));
        }
        if (contactlessOnlinePinOption != null && (numConvert = ContactlessOnlinePinOptionMapperKt.convert(contactlessOnlinePinOption)) != null) {
            linkedHashMap.put(CONTACTLESS_ONLINE_PIN_OPTION_PARAM_NAME, Integer.valueOf(numConvert.intValue()));
        }
        linkedHashMap.put(IS_ACCESSIBLE_PIN_PAD_PARAM_NAME, Boolean.valueOf(isAccessiblePinPad));
        if (pinEntryTimeoutInSeconds != null) {
            linkedHashMap.put(PIN_ENTRY_TIMEOUT, Integer.valueOf(pinEntryTimeoutInSeconds.intValue()));
        }
        linkedHashMap.put(FORCE_PIN_ENTRY, Boolean.valueOf(forcePinEntry));
        this.controller.startEmv(new Hashtable<>(linkedHashMap));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void startSerial() {
        this.logger.d("startSerial", new Pair[0]);
        this.controller.startSerial();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void startPinEntry(boolean isAccessiblePinPad, Integer pinEntryTimeoutInSeconds) {
        this.logger.d("startPinEntry", new Pair[0]);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(IS_ACCESSIBLE_PIN_PAD_PARAM_NAME, Boolean.valueOf(isAccessiblePinPad));
        if (pinEntryTimeoutInSeconds != null) {
            linkedHashMap.put(PIN_ENTRY_TIMEOUT, Integer.valueOf(pinEntryTimeoutInSeconds.intValue()));
        }
        this.controller.startPinEntry(new Hashtable<>(linkedHashMap));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void initSession(String vendorToken) {
        Intrinsics.checkNotNullParameter(vendorToken, "vendorToken");
        this.logger.d("initSession", new Pair[0]);
        this.controller.initSession(vendorToken);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void startUsb() {
        this.logger.d("startUsb", new Pair[0]);
        this.controller.startUsb();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void startUsbWithDeviceName(String deviceName) {
        Intrinsics.checkNotNullParameter(deviceName, "deviceName");
        this.logger.d("startUsbWithDeviceName", new Pair[0]);
        this.controller.startUsbWithDeviceName(deviceName);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void stopBtScan() {
        this.logger.d("stopBTScan", new Pair[0]);
        this.controller.stopBTScan();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void stopUsb() {
        this.logger.d("stopUsb", new Pair[0]);
        this.controller.stopUsb();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void updateAid(Map<String, String> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.logger.d("updateAID", new Pair[0]);
        this.controller.updateAID(new Hashtable<>(data));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void updateDisplaySettings(Map<String, ? extends Object> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.logger.d("updateDisplaySettings", new Pair[0]);
        this.controller.updateDisplaySettings(new Hashtable<>(data));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void updateTerminalSettings(String tlv) {
        Intrinsics.checkNotNullParameter(tlv, "tlv");
        this.logger.d("updateTerminalSettings", new Pair[0]);
        this.controller.updateTerminalSettings(tlv);
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    @BluetoothUsbPinPadReaders
    public void enableInputAmount(int setAmountTimeout, AmountInputType amountInputType, OtherAmountOption otherAmountOption, TippingOption tippingOption) {
        Intrinsics.checkNotNullParameter(amountInputType, "amountInputType");
        Intrinsics.checkNotNullParameter(otherAmountOption, "otherAmountOption");
        Intrinsics.checkNotNullParameter(tippingOption, "tippingOption");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("setAmountTimeout", Integer.valueOf(setAmountTimeout));
        BBDeviceController.AmountInputType amountInputTypeConvert = AmountInputTypeMapperKt.convert(amountInputType);
        if (amountInputTypeConvert == null) {
            throw new IllegalArgumentException("Invalid AmountInputType");
        }
        linkedHashMap.put("amountInputType", amountInputTypeConvert);
        BBDeviceController.OtherAmountOption otherAmountOptionConvert = OtherAmountOptionMapperKt.convert(otherAmountOption);
        if (otherAmountOptionConvert == null) {
            throw new IllegalArgumentException("Invalid OtherAmountOption");
        }
        linkedHashMap.put("otherAmountOption", otherAmountOptionConvert);
        if (tippingOption instanceof TippingOption.Percentage) {
            PercentageTips percentageTipsM456unboximpl = ((TippingOption.Percentage) tippingOption).m456unboximpl();
            linkedHashMap.put(AMOUNT_PARAM_NAME, percentageTipsM456unboximpl.amount);
            linkedHashMap.put(CURRENCY_CODE_PARAM_NAME, String.valueOf(percentageTipsM456unboximpl.currencyCode));
            linkedHashMap.put(CURRENCY_EXPONENT_PARAM_NAME, Integer.valueOf(percentageTipsM456unboximpl.currencyExponent));
            linkedHashMap.put(CURRENCY_CHARACTERS_PARAM_NAME, CurrencyCodeMapperKt.convert(percentageTipsM456unboximpl.currencyCode));
            linkedHashMap.put("tipsPercentageOptions", percentageTipsM456unboximpl.tipsPercentageOptions.toArray(new String[0]));
            this.logger.i("enableInputAmount parameters. setAmountTimeout=" + linkedHashMap.get("setAmountTimeout") + ", amountInputType=" + amountInputType + ", otherAmountOption=" + otherAmountOption + ", amount=" + linkedHashMap.get(AMOUNT_PARAM_NAME) + ", currencyCode=" + linkedHashMap.get(CURRENCY_CODE_PARAM_NAME) + ", currencyExponent=" + linkedHashMap.get(CURRENCY_EXPONENT_PARAM_NAME) + ", tipsPercentageOptions=" + percentageTipsM456unboximpl.tipsPercentageOptions + AbstractJsonLexerKt.COMMA, new Pair[0]);
        } else if (tippingOption instanceof TippingOption.FixedAmount) {
            FixedAmountTips fixedAmountTipsM449unboximpl = ((TippingOption.FixedAmount) tippingOption).m449unboximpl();
            linkedHashMap.put(AMOUNT_PARAM_NAME, fixedAmountTipsM449unboximpl.amount);
            linkedHashMap.put(CURRENCY_CODE_PARAM_NAME, String.valueOf(fixedAmountTipsM449unboximpl.currencyCode));
            linkedHashMap.put(CURRENCY_EXPONENT_PARAM_NAME, Integer.valueOf(fixedAmountTipsM449unboximpl.currencyExponent));
            linkedHashMap.put(CURRENCY_CHARACTERS_PARAM_NAME, CurrencyCodeMapperKt.convert(fixedAmountTipsM449unboximpl.currencyCode));
            linkedHashMap.put("tipsAmountOptions", fixedAmountTipsM449unboximpl.tipsAmountOptions.toArray(new String[0]));
            this.logger.i("enableInputAmount parameters. setAmountTimeout=" + linkedHashMap.get("setAmountTimeout") + ", amountInputType=" + amountInputType + ", otherAmountOption=" + otherAmountOption + ", amount=" + linkedHashMap.get(AMOUNT_PARAM_NAME) + ", currencyCode=" + linkedHashMap.get(CURRENCY_CODE_PARAM_NAME) + ", currencyExponent=" + linkedHashMap.get(CURRENCY_EXPONENT_PARAM_NAME) + ", tipsAmountOptions=" + fixedAmountTipsM449unboximpl.tipsAmountOptions + AbstractJsonLexerKt.COMMA, new Pair[0]);
        } else if (tippingOption instanceof TippingOption.None) {
            this.logger.i("enableInputAmount parameters. setAmountTimeout=" + linkedHashMap.get("setAmountTimeout") + ", amountInputType=" + amountInputType + ", otherAmountOption=" + otherAmountOption + ", ", new Pair[0]);
        }
        this.controller.enableInputAmount(new Hashtable<>(linkedHashMap));
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    @BluetoothUsbPinPadReaders
    public void disableInputAmount() {
        this.logger.d("disableInputAmount", new Pair[0]);
        this.controller.disableInputAmount();
    }

    @Override // com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper
    public void resetDevice() {
        this.logger.d("resetDevice", new Pair[0]);
        this.controller.resetDevice();
    }
}
