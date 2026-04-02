.class public final Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;
.super Ljava/lang/Object;
.source "TerminalSdkDeviceListenerWrapper.kt"

# interfaces
.implements Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalSdkDeviceListenerWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalSdkDeviceListenerWrapper.kt\ncom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1603#2,9:62\n1855#2:71\n1856#2:73\n1612#2:74\n1#3:72\n1#3:75\n*S KotlinDebug\n*F\n+ 1 TerminalSdkDeviceListenerWrapper.kt\ncom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper\n*L\n25#1:62,9\n25#1:71\n25#1:73\n25#1:74\n25#1:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00fc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000c\u00a2\u0006\u0002\u0010\rJ\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0096\u0001J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u000fH\u0016J\u0016\u0010\u0016\u001a\u00020\u000f2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0018H\u0016J\u0019\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0096\u0001J\u0011\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 H\u0096\u0001J\u0019\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0096\u0001J#\u0010&\u001a\u00020\u000f2\u0006\u0010\'\u001a\u00020 2\u0006\u0010(\u001a\u00020 2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0001J\t\u0010)\u001a\u00020\u000fH\u0096\u0001J\t\u0010*\u001a\u00020\u000fH\u0096\u0001J\u0019\u0010+\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020%2\u0006\u0010-\u001a\u00020 H\u0096\u0001J\u0019\u0010.\u001a\u00020\u000f2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020%H\u0096\u0001J\t\u00102\u001a\u00020\u000fH\u0096\u0001J\u0011\u00103\u001a\u00020\u000f2\u0006\u00104\u001a\u000205H\u0096\u0001J\u0011\u00106\u001a\u00020\u000f2\u0006\u00107\u001a\u00020%H\u0096\u0001J\u0011\u00108\u001a\u00020\u000f2\u0006\u00109\u001a\u00020:H\u0096\u0001J\u0011\u0010;\u001a\u00020\u000f2\u0006\u0010<\u001a\u00020=H\u0096\u0001J\t\u0010>\u001a\u00020\u000fH\u0096\u0001J\u0017\u0010?\u001a\u00020\u000f2\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00020%0\u0018H\u0096\u0001J\u0019\u0010A\u001a\u00020\u000f2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020EH\u0096\u0001J%\u0010F\u001a\u00020\u000f2\u0006\u0010\'\u001a\u00020G2\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%0IH\u0096\u0001J\u0011\u0010J\u001a\u00020\u000f2\u0006\u00107\u001a\u00020%H\u0096\u0001J\u0011\u0010K\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0096\u0001J\u0019\u0010L\u001a\u00020\u000f2\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020PH\u0096\u0001J\u001f\u0010Q\u001a\u00020\u000f2\u0014\u0010R\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020S\u0018\u00010IH\u0096\u0001J%\u0010T\u001a\u00020\u000f2\u0006\u0010U\u001a\u00020V2\u0012\u0010W\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%0IH\u0096\u0001J\u0011\u0010X\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0096\u0001J%\u0010Y\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%0IH\u0096\u0001J\u0019\u0010Z\u001a\u00020\u000f2\u0006\u0010\'\u001a\u00020[2\u0006\u0010\\\u001a\u00020]H\u0096\u0001J\u001d\u0010^\u001a\u00020\u000f2\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020S0IH\u0096\u0001J\u00d1\u0001\u0010_\u001a\u00020\u000f2\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020a2\u0006\u0010c\u001a\u00020a2\u0006\u0010d\u001a\u00020a2\u0006\u0010e\u001a\u00020a2\u0006\u0010f\u001a\u00020a2\u0006\u0010g\u001a\u00020a2\u0006\u0010h\u001a\u00020a2\u0006\u0010i\u001a\u00020a2\u0006\u0010j\u001a\u00020a2\u0006\u0010k\u001a\u00020a2\u0006\u0010l\u001a\u00020a2\u0006\u0010m\u001a\u00020a2\u0006\u0010n\u001a\u00020a2\u0006\u0010o\u001a\u00020a2\u0006\u0010p\u001a\u00020a2\u0006\u0010q\u001a\u00020a2\u0006\u0010r\u001a\u00020a2\u0006\u0010s\u001a\u00020a2\u0006\u0010t\u001a\u00020a2\u0006\u0010u\u001a\u00020a2\u0006\u0010v\u001a\u00020a2\u0006\u0010w\u001a\u00020a2\u0006\u0010x\u001a\u00020a2\u0006\u0010y\u001a\u00020aH\u0096\u0001J\u0011\u0010z\u001a\u00020\u000f2\u0006\u00107\u001a\u00020%H\u0096\u0001J\u0011\u0010{\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0096\u0001J\u0011\u0010|\u001a\u00020\u000f2\u0006\u0010\'\u001a\u00020}H\u0096\u0001J\u001d\u0010~\u001a\u00020\u000f2\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u007f0IH\u0096\u0001J\u001b\u0010\u0080\u0001\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0007\u0010\u0081\u0001\u001a\u00020%H\u0096\u0001J\u0013\u0010\u0082\u0001\u001a\u00020\u000f2\u0007\u0010\u0083\u0001\u001a\u00020\u007fH\u0096\u0001J\u001e\u0010\u0084\u0001\u001a\u00020\u000f2\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u007f0IH\u0096\u0001J\n\u0010\u0085\u0001\u001a\u00020\u000fH\u0096\u0001J\n\u0010\u0086\u0001\u001a\u00020\u000fH\u0096\u0001J\u001c\u0010\u0087\u0001\u001a\u00020\u000f2\u0008\u0010\u0088\u0001\u001a\u00030\u0089\u00012\u0006\u0010$\u001a\u00020%H\u0096\u0001J\n\u0010\u008a\u0001\u001a\u00020\u000fH\u0096\u0001J\t\u0010\u008b\u0001\u001a\u00020\u000fH\u0016J\t\u0010\u008c\u0001\u001a\u00020\u000fH\u0016J\u0014\u0010\u008d\u0001\u001a\u00020\u000f2\u0008\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u0096\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0090\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "deviceListenerWrapper",
        "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;",
        "readerStatusListener",
        "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
        "discoveryFilter",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "onBatteryLow",
        "",
        "batteryStatus",
        "Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;",
        "onBtConnected",
        "connectedDevice",
        "Landroid/bluetooth/BluetoothDevice;",
        "onBtDisconnected",
        "onBtReturnScanResults",
        "foundDevices",
        "",
        "onDeviceReset",
        "isSuccess",
        "",
        "reason",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;",
        "onDeviceResetAlert",
        "timeBeforeReset",
        "",
        "onError",
        "error",
        "Lcom/stripe/bbpos/sdk/Error;",
        "errorMessage",
        "",
        "onHardwareFunctionalTestResult",
        "result",
        "itemIndex",
        "onPowerButtonPressed",
        "onPowerDown",
        "onRequestDisplayAsterisk",
        "unmaskedDigits",
        "numOfAsterisk",
        "onRequestDisplayText",
        "displayText",
        "Lcom/stripe/bbpos/sdk/DisplayText;",
        "displayTextLanguage",
        "onRequestFinalConfirm",
        "onRequestManualPanEntry",
        "manualPanEntry",
        "Lcom/stripe/bbpos/sdk/ManualPanEntryType;",
        "onRequestOnlineProcess",
        "tlv",
        "onRequestPinEntry",
        "pinEntrySource",
        "Lcom/stripe/bbpos/sdk/PinEntrySource;",
        "onRequestProduceAudioTone",
        "tone",
        "Lcom/stripe/bbpos/sdk/ContactlessStatusTone;",
        "onRequestSelectAccountType",
        "onRequestSelectApplication",
        "appList",
        "onReturnAccessiblePinPadTouchEvent",
        "pinPadTouchEvent",
        "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;",
        "eventId",
        "Ljava/util/UUID;",
        "onReturnAmount",
        "Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;",
        "data",
        "",
        "onReturnBatchData",
        "onReturnCancelCheckCardResult",
        "onReturnCheckCardResult",
        "checkCardResult",
        "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;",
        "cardData",
        "Lcom/stripe/bbpos/sdk/CardData;",
        "onReturnDebugLog",
        "debugLog",
        "",
        "onReturnDeviceInfo",
        "deviceInfo",
        "Lcom/stripe/bbpos/sdk/DeviceInfo;",
        "rawReaderData",
        "onReturnDisableInputAmountResult",
        "onReturnEncryptDataResult",
        "onReturnPinEntryResult",
        "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;",
        "pinData",
        "Lcom/stripe/bbpos/sdk/PinData;",
        "onReturnReadAidResult",
        "onReturnReadTerminalSettingResult",
        "acquirerIdentifier",
        "Lcom/stripe/bbpos/sdk/TerminalSettingValue;",
        "terminalCountryCode",
        "transactionCurrencyCode",
        "transactionCurrencyExponent",
        "merchantNameAndLocation",
        "merchantIdentifier",
        "terminalIdentification",
        "terminalCapabilities",
        "terminalType",
        "additionalTerminalCapabilities",
        "normalModeTimeout",
        "standbyModeTimeout",
        "bluetoothDiscoveryTimeout",
        "msrPinEntryTimeout",
        "firmwareFallbackEnabled",
        "customBluetoothNamePrefix",
        "customBluetoothSerialSuffix",
        "firmwareForceChipEnabled",
        "iccTransactionBeepEnabled",
        "keypadEventBeepEnabled",
        "spocModeEnabled",
        "domesticDebitAidList",
        "visaDynamicReaderLimit",
        "buzzerSoundEnabled",
        "configHash",
        "onReturnReversalData",
        "onReturnSetPinPadButtonsResult",
        "onReturnTransactionResult",
        "Lcom/stripe/bbpos/sdk/TransactionResult$Type;",
        "onReturnUpdateAidResult",
        "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;",
        "onReturnUpdateDisplaySettingsResult",
        "message",
        "onReturnUpdateTerminalSettingResult",
        "status",
        "onReturnUpdateTerminalSettingsResult",
        "onSerialConnected",
        "onSerialDisconnected",
        "onSessionError",
        "sessionError",
        "Lcom/stripe/core/bbpos/hardware/api/SessionError;",
        "onSessionInitialized",
        "onUsbConnected",
        "onUsbDisconnected",
        "onWaitingForCard",
        "checkCardMode",
        "Lcom/stripe/bbpos/sdk/CheckCardMode;",
        "adapter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

.field private final discoveryFilter:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;


# direct methods
.method public constructor <init>(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deviceListenerWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerStatusListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discoveryFilter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    .line 14
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 15
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->discoveryFilter:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;

    .line 16
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method


# virtual methods
.method public onBatteryLow(Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;)V
    .locals 1

    const-string v0, "batteryStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onBatteryLow(Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;)V

    return-void
.end method

.method public onBtConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const-string v0, "connectedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onBtConnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 32
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onBTConnected"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 34
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->fromBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/stripe/core/hardware/Reader$BluetoothReader;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    check-cast p1, Lcom/stripe/core/hardware/Reader;

    invoke-interface {v0, p1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderConnect(Lcom/stripe/core/hardware/Reader;)V

    return-void
.end method

.method public onBtDisconnected()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onBtDisconnected()V

    .line 40
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onBTDisconnected"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderDisconnect$default(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/status/DisconnectCause;ILjava/lang/Object;)V

    return-void
.end method

.method public onBtReturnScanResults(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    const-string v0, "foundDevices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onBtReturnScanResults(Ljava/util/List;)V

    .line 23
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 24
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->discoveryFilter:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;

    .line 25
    check-cast p1, Ljava/lang/Iterable;

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 71
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 70
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 25
    invoke-virtual {v2, v4}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->fromBluetoothDeviceOrNull(Landroid/bluetooth/BluetoothDevice;)Lcom/stripe/core/hardware/Reader$BluetoothReader;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 70
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 24
    invoke-virtual {v1, v3}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;->filterDevices(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 26
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderDiscovery(Ljava/util/Set;)V

    return-void
.end method

.method public onDeviceReset(ZLcom/stripe/core/bbpos/hardware/api/DeviceResetReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onDeviceReset(ZLcom/stripe/core/bbpos/hardware/api/DeviceResetReason;)V

    return-void
.end method

.method public onDeviceResetAlert(I)V
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onDeviceResetAlert(I)V

    return-void
.end method

.method public onError(Lcom/stripe/bbpos/sdk/Error;Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onError(Lcom/stripe/bbpos/sdk/Error;Ljava/lang/String;)V

    return-void
.end method

.method public onHardwareFunctionalTestResult(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onHardwareFunctionalTestResult(IILjava/lang/String;)V

    return-void
.end method

.method public onPowerButtonPressed()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onPowerButtonPressed()V

    return-void
.end method

.method public onPowerDown()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onPowerDown()V

    return-void
.end method

.method public onRequestDisplayAsterisk(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "unmaskedDigits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onRequestDisplayAsterisk(Ljava/lang/String;I)V

    return-void
.end method

.method public onRequestDisplayText(Lcom/stripe/bbpos/sdk/DisplayText;Ljava/lang/String;)V
    .locals 1

    const-string v0, "displayText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayTextLanguage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onRequestDisplayText(Lcom/stripe/bbpos/sdk/DisplayText;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestFinalConfirm()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onRequestFinalConfirm()V

    return-void
.end method

.method public onRequestManualPanEntry(Lcom/stripe/bbpos/sdk/ManualPanEntryType;)V
    .locals 1

    const-string v0, "manualPanEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onRequestManualPanEntry(Lcom/stripe/bbpos/sdk/ManualPanEntryType;)V

    return-void
.end method

.method public onRequestOnlineProcess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onRequestOnlineProcess(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPinEntry(Lcom/stripe/bbpos/sdk/PinEntrySource;)V
    .locals 1

    const-string v0, "pinEntrySource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onRequestPinEntry(Lcom/stripe/bbpos/sdk/PinEntrySource;)V

    return-void
.end method

.method public onRequestProduceAudioTone(Lcom/stripe/bbpos/sdk/ContactlessStatusTone;)V
    .locals 1

    const-string v0, "tone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onRequestProduceAudioTone(Lcom/stripe/bbpos/sdk/ContactlessStatusTone;)V

    return-void
.end method

.method public onRequestSelectAccountType()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onRequestSelectAccountType()V

    return-void
.end method

.method public onRequestSelectApplication(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onRequestSelectApplication(Ljava/util/List;)V

    return-void
.end method

.method public onReturnAccessiblePinPadTouchEvent(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;Ljava/util/UUID;)V
    .locals 1

    const-string v0, "pinPadTouchEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnAccessiblePinPadTouchEvent(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;Ljava/util/UUID;)V

    return-void
.end method

.method public onReturnAmount(Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnAmount(Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;Ljava/util/Map;)V

    return-void
.end method

.method public onReturnBatchData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnBatchData(Ljava/lang/String;)V

    return-void
.end method

.method public onReturnCancelCheckCardResult(Z)V
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnCancelCheckCardResult(Z)V

    return-void
.end method

.method public onReturnCheckCardResult(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;Lcom/stripe/bbpos/sdk/CardData;)V
    .locals 1

    const-string v0, "checkCardResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnCheckCardResult(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;Lcom/stripe/bbpos/sdk/CardData;)V

    return-void
.end method

.method public onReturnDebugLog(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnDebugLog(Ljava/util/Map;)V

    return-void
.end method

.method public onReturnDeviceInfo(Lcom/stripe/bbpos/sdk/DeviceInfo;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/sdk/DeviceInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deviceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawReaderData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnDeviceInfo(Lcom/stripe/bbpos/sdk/DeviceInfo;Ljava/util/Map;)V

    return-void
.end method

.method public onReturnDisableInputAmountResult(Z)V
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnDisableInputAmountResult(Z)V

    return-void
.end method

.method public onReturnEncryptDataResult(ZLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnEncryptDataResult(ZLjava/util/Map;)V

    return-void
.end method

.method public onReturnPinEntryResult(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnPinEntryResult(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;)V

    return-void
.end method

.method public onReturnReadAidResult(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnReadAidResult(Ljava/util/Map;)V

    return-void
.end method

.method public onReturnReadTerminalSettingResult(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;)V
    .locals 27

    const-string v0, "acquirerIdentifier"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalCountryCode"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionCurrencyCode"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionCurrencyExponent"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchantNameAndLocation"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchantIdentifier"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalIdentification"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalCapabilities"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalType"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalTerminalCapabilities"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "normalModeTimeout"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "standbyModeTimeout"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bluetoothDiscoveryTimeout"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msrPinEntryTimeout"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firmwareFallbackEnabled"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customBluetoothNamePrefix"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customBluetoothSerialSuffix"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firmwareForceChipEnabled"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iccTransactionBeepEnabled"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keypadEventBeepEnabled"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spocModeEnabled"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domesticDebitAidList"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visaDynamicReaderLimit"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buzzerSoundEnabled"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configHash"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    invoke-virtual/range {v1 .. v26}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnReadTerminalSettingResult(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;)V

    return-void
.end method

.method public onReturnReversalData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnReversalData(Ljava/lang/String;)V

    return-void
.end method

.method public onReturnSetPinPadButtonsResult(Z)V
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnSetPinPadButtonsResult(Z)V

    return-void
.end method

.method public onReturnTransactionResult(Lcom/stripe/bbpos/sdk/TransactionResult$Type;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnTransactionResult(Lcom/stripe/bbpos/sdk/TransactionResult$Type;)V

    return-void
.end method

.method public onReturnUpdateAidResult(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnUpdateAidResult(Ljava/util/Map;)V

    return-void
.end method

.method public onReturnUpdateDisplaySettingsResult(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnUpdateDisplaySettingsResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onReturnUpdateTerminalSettingResult(Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnUpdateTerminalSettingResult(Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;)V

    return-void
.end method

.method public onReturnUpdateTerminalSettingsResult(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnUpdateTerminalSettingsResult(Ljava/util/Map;)V

    return-void
.end method

.method public onSerialConnected()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onSerialConnected()V

    return-void
.end method

.method public onSerialDisconnected()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onSerialDisconnected()V

    return-void
.end method

.method public onSessionError(Lcom/stripe/core/bbpos/hardware/api/SessionError;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sessionError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onSessionError(Lcom/stripe/core/bbpos/hardware/api/SessionError;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionInitialized()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onSessionInitialized()V

    return-void
.end method

.method public onUsbConnected()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onUsbConnected()V

    .line 49
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onUsbConnected"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 51
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    sget-object v1, Lcom/stripe/core/hardware/Reader$UsbReader$UnspecifiedUsbReader;->INSTANCE:Lcom/stripe/core/hardware/Reader$UsbReader$UnspecifiedUsbReader;

    check-cast v1, Lcom/stripe/core/hardware/Reader;

    invoke-interface {v0, v1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderConnect(Lcom/stripe/core/hardware/Reader;)V

    return-void
.end method

.method public onUsbDisconnected()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onUsbDisconnected()V

    .line 56
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onUsbDisconnected"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 58
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderDisconnect$default(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/status/DisconnectCause;ILjava/lang/Object;)V

    return-void
.end method

.method public onWaitingForCard(Lcom/stripe/bbpos/sdk/CheckCardMode;)V
    .locals 1

    const-string v0, "checkCardMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onWaitingForCard(Lcom/stripe/bbpos/sdk/CheckCardMode;)V

    return-void
.end method
