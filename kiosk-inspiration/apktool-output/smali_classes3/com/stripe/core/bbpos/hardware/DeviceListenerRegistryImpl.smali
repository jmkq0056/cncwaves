.class public final Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;
.super Ljava/lang/Object;
.source "DeviceListenerRegistryImpl.kt"

# interfaces
.implements Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;
.implements Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceListenerRegistryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceListenerRegistryImpl.kt\ncom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,283:1\n49#1:284\n49#1:285\n51#1:286\n1855#2,2:287\n*S KotlinDebug\n*F\n+ 1 DeviceListenerRegistryImpl.kt\ncom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl\n*L\n53#1:284\n57#1:285\n61#1:286\n62#1:287,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B=\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u0002`\u000b\u00a2\u0006\u0002\u0010\u000cJ\u001c\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00120\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0012H\u0016J\u0016\u0010\u001c\u001a\u00020\u00122\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u001eH\u0016J\u0018\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u0010\'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\"\u0010,\u001a\u00020\u00122\u0006\u0010-\u001a\u00020&2\u0006\u0010.\u001a\u00020&2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0008\u0010/\u001a\u00020\u0012H\u0016J\u0008\u00100\u001a\u00020\u0012H\u0016J\u0018\u00101\u001a\u00020\u00122\u0006\u00102\u001a\u00020+2\u0006\u00103\u001a\u00020&H\u0016J\u0018\u00104\u001a\u00020\u00122\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u00020+H\u0016J\u0008\u00108\u001a\u00020\u0012H\u0016J\u0010\u00109\u001a\u00020\u00122\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u0010<\u001a\u00020\u00122\u0006\u0010=\u001a\u00020+H\u0016J\u0010\u0010>\u001a\u00020\u00122\u0006\u0010?\u001a\u00020@H\u0016J\u0010\u0010A\u001a\u00020\u00122\u0006\u0010B\u001a\u00020CH\u0016J\u0008\u0010D\u001a\u00020\u0012H\u0016J\u0016\u0010E\u001a\u00020\u00122\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020+0\u001eH\u0016J\u0018\u0010G\u001a\u00020\u00122\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020KH\u0016J$\u0010L\u001a\u00020\u00122\u0006\u0010-\u001a\u00020M2\u0012\u0010N\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020+0OH\u0016J\u0010\u0010P\u001a\u00020\u00122\u0006\u0010=\u001a\u00020+H\u0016J\u0010\u0010Q\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J\u0018\u0010R\u001a\u00020\u00122\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020VH\u0016J\u001e\u0010W\u001a\u00020\u00122\u0014\u0010X\u001a\u0010\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020Y\u0018\u00010OH\u0016J$\u0010Z\u001a\u00020\u00122\u0006\u0010[\u001a\u00020\\2\u0012\u0010]\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020+0OH\u0016J\u0010\u0010^\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J$\u0010_\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!2\u0012\u0010N\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020+0OH\u0016J\u0018\u0010`\u001a\u00020\u00122\u0006\u0010-\u001a\u00020a2\u0006\u0010b\u001a\u00020cH\u0016J\u001c\u0010d\u001a\u00020\u00122\u0012\u0010N\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020Y0OH\u0016J\u00d0\u0001\u0010e\u001a\u00020\u00122\u0006\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020g2\u0006\u0010i\u001a\u00020g2\u0006\u0010j\u001a\u00020g2\u0006\u0010k\u001a\u00020g2\u0006\u0010l\u001a\u00020g2\u0006\u0010m\u001a\u00020g2\u0006\u0010n\u001a\u00020g2\u0006\u0010o\u001a\u00020g2\u0006\u0010p\u001a\u00020g2\u0006\u0010q\u001a\u00020g2\u0006\u0010r\u001a\u00020g2\u0006\u0010s\u001a\u00020g2\u0006\u0010t\u001a\u00020g2\u0006\u0010u\u001a\u00020g2\u0006\u0010v\u001a\u00020g2\u0006\u0010w\u001a\u00020g2\u0006\u0010x\u001a\u00020g2\u0006\u0010y\u001a\u00020g2\u0006\u0010z\u001a\u00020g2\u0006\u0010{\u001a\u00020g2\u0006\u0010|\u001a\u00020g2\u0006\u0010}\u001a\u00020g2\u0006\u0010~\u001a\u00020g2\u0006\u0010\u007f\u001a\u00020gH\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\u00122\u0006\u0010=\u001a\u00020+H\u0016J\u0011\u0010\u0081\u0001\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J\u0012\u0010\u0082\u0001\u001a\u00020\u00122\u0007\u0010-\u001a\u00030\u0083\u0001H\u0016J\u001e\u0010\u0084\u0001\u001a\u00020\u00122\u0013\u0010N\u001a\u000f\u0012\u0004\u0012\u00020+\u0012\u0005\u0012\u00030\u0085\u00010OH\u0016J\u001a\u0010\u0086\u0001\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!2\u0007\u0010\u0087\u0001\u001a\u00020+H\u0016J\u0013\u0010\u0088\u0001\u001a\u00020\u00122\u0008\u0010\u0089\u0001\u001a\u00030\u0085\u0001H\u0016J\u001e\u0010\u008a\u0001\u001a\u00020\u00122\u0013\u0010N\u001a\u000f\u0012\u0004\u0012\u00020+\u0012\u0005\u0012\u00030\u0085\u00010OH\u0016J\t\u0010\u008b\u0001\u001a\u00020\u0012H\u0016J\t\u0010\u008c\u0001\u001a\u00020\u0012H\u0016J\u001b\u0010\u008d\u0001\u001a\u00020\u00122\u0008\u0010\u008e\u0001\u001a\u00030\u008f\u00012\u0006\u0010*\u001a\u00020+H\u0016J\t\u0010\u0090\u0001\u001a\u00020\u0012H\u0016J\t\u0010\u0091\u0001\u001a\u00020\u0012H\u0016J\t\u0010\u0092\u0001\u001a\u00020\u0012H\u0016J\u0013\u0010\u0093\u0001\u001a\u00020\u00122\u0008\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0016J\u0012\u0010\u0096\u0001\u001a\u00020\u00122\u0007\u0010\u0097\u0001\u001a\u00020\u0001H\u0016J\u0012\u0010\u0098\u0001\u001a\u00020\u00122\u0007\u0010\u0097\u0001\u001a\u00020\u0001H\u0016J\u001a\u0010\u0099\u0001\u001a\u00020\u00122\u000e\u0010\u009a\u0001\u001a\t\u0012\u0004\u0012\u00020\u00120\u009b\u0001H\u0082\u0008J\u001a\u0010\u009c\u0001\u001a\u00020\u00122\u000e\u0010\u009a\u0001\u001a\t\u0012\u0004\u0012\u00020\u00120\u009b\u0001H\u0082\u0008R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u0002`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u009d\u0001"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;",
        "encryptionHandler",
        "observabilityHandler",
        "missingKeyHandler",
        "readerStatusHandler",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "listeners",
        "",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "notifyAll",
        "",
        "callback",
        "Lkotlin/Function1;",
        "onBatteryLow",
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
        "registerListener",
        "listenerWrapper",
        "unregisterListener",
        "withReadLock",
        "block",
        "Lkotlin/Function0;",
        "withWriteLock",
        "hardware_release"
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
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

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


# direct methods
.method public constructor <init>(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "encryptionHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observabilityHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingKeyHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerStatusHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p5, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 44
    new-instance p5, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p5, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 46
    filled-new-array {p1, p2, p3, p4}, [Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    move-result-object p1

    .line 45
    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 47
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->listeners:Ljava/util/Set;

    return-void
.end method

.method private final notifyAll(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    const-string v1, "readLock(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->listeners:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    .line 287
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    .line 62
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private final withReadLock(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    const-string v1, "readLock(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private final withWriteLock(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    const-string v1, "writeLock(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method


# virtual methods
.method public onBatteryLow(Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;)V
    .locals 1

    const-string v0, "batteryStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onBatteryLow$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onBatteryLow$1;-><init>(Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onBtConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const-string v0, "connectedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onBtConnected$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onBtConnected$1;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onBtDisconnected()V
    .locals 1

    .line 75
    sget-object v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onBtDisconnected$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onBtDisconnected$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onBtReturnScanResults(Ljava/util/List;)V
    .locals 1
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

    .line 69
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onBtReturnScanResults$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onBtReturnScanResults$1;-><init>(Ljava/util/List;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onDeviceReset(ZLcom/stripe/core/bbpos/hardware/api/DeviceResetReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onDeviceReset$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onDeviceReset$1;-><init>(ZLcom/stripe/core/bbpos/hardware/api/DeviceResetReason;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onDeviceResetAlert(I)V
    .locals 1

    .line 270
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onDeviceResetAlert$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onDeviceResetAlert$1;-><init>(I)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onError(Lcom/stripe/bbpos/sdk/Error;Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onError$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onError$1;-><init>(Lcom/stripe/bbpos/sdk/Error;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onHardwareFunctionalTestResult(IILjava/lang/String;)V
    .locals 1

    .line 267
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onHardwareFunctionalTestResult$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onHardwareFunctionalTestResult$1;-><init>(IILjava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onPowerButtonPressed()V
    .locals 1

    .line 278
    sget-object v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onPowerButtonPressed$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onPowerButtonPressed$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onPowerDown()V
    .locals 1

    .line 281
    sget-object v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onPowerDown$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onPowerDown$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onRequestDisplayAsterisk(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "unmaskedDigits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestDisplayAsterisk$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestDisplayAsterisk$1;-><init>(Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onRequestDisplayText(Lcom/stripe/bbpos/sdk/DisplayText;Ljava/lang/String;)V
    .locals 1

    const-string v0, "displayText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayTextLanguage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestDisplayText$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestDisplayText$1;-><init>(Lcom/stripe/bbpos/sdk/DisplayText;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onRequestFinalConfirm()V
    .locals 1

    .line 244
    sget-object v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestFinalConfirm$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestFinalConfirm$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onRequestManualPanEntry(Lcom/stripe/bbpos/sdk/ManualPanEntryType;)V
    .locals 1

    const-string v0, "manualPanEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestManualPanEntry$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestManualPanEntry$1;-><init>(Lcom/stripe/bbpos/sdk/ManualPanEntryType;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onRequestOnlineProcess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestOnlineProcess$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestOnlineProcess$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onRequestPinEntry(Lcom/stripe/bbpos/sdk/PinEntrySource;)V
    .locals 1

    const-string v0, "pinEntrySource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestPinEntry$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestPinEntry$1;-><init>(Lcom/stripe/bbpos/sdk/PinEntrySource;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onRequestProduceAudioTone(Lcom/stripe/bbpos/sdk/ContactlessStatusTone;)V
    .locals 1

    const-string v0, "tone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestProduceAudioTone$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestProduceAudioTone$1;-><init>(Lcom/stripe/bbpos/sdk/ContactlessStatusTone;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onRequestSelectAccountType()V
    .locals 1

    .line 209
    sget-object v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestSelectAccountType$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestSelectAccountType$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

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

    .line 206
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestSelectApplication$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onRequestSelectApplication$1;-><init>(Ljava/util/List;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onReturnAccessiblePinPadTouchEvent(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;Ljava/util/UUID;)V
    .locals 1

    const-string v0, "pinPadTouchEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnAccessiblePinPadTouchEvent$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnAccessiblePinPadTouchEvent$1;-><init>(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;Ljava/util/UUID;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

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

    .line 128
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnAmount$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnAmount$1;-><init>(Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;Ljava/util/Map;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onReturnBatchData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnBatchData$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnBatchData$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onReturnCancelCheckCardResult(Z)V
    .locals 1

    .line 99
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnCancelCheckCardResult$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnCancelCheckCardResult$1;-><init>(Z)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onReturnCheckCardResult(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;Lcom/stripe/bbpos/sdk/CardData;)V
    .locals 1

    const-string v0, "checkCardResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnCheckCardResult$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnCheckCardResult$1;-><init>(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;Lcom/stripe/bbpos/sdk/CardData;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

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

    .line 261
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnDebugLog$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnDebugLog$1;-><init>(Ljava/util/Map;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

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

    .line 104
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnDeviceInfo$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnDeviceInfo$1;-><init>(Lcom/stripe/bbpos/sdk/DeviceInfo;Ljava/util/Map;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onReturnDisableInputAmountResult(Z)V
    .locals 1

    .line 200
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnDisableInputAmountResult$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnDisableInputAmountResult$1;-><init>(Z)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

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

    .line 203
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnEncryptDataResult$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnEncryptDataResult$1;-><init>(ZLjava/util/Map;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onReturnPinEntryResult(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnPinEntryResult$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnPinEntryResult$1;-><init>(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

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

    .line 140
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadAidResult$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadAidResult$1;-><init>(Ljava/util/Map;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

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

    .line 169
    new-instance v1, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;

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

    invoke-direct/range {v1 .. v26}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;-><init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onReturnReversalData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReversalData$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReversalData$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onReturnSetPinPadButtonsResult(Z)V
    .locals 1

    .line 218
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnSetPinPadButtonsResult$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnSetPinPadButtonsResult$1;-><init>(Z)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onReturnTransactionResult(Lcom/stripe/bbpos/sdk/TransactionResult$Type;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnTransactionResult$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnTransactionResult$1;-><init>(Lcom/stripe/bbpos/sdk/TransactionResult$Type;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

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

    .line 131
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnUpdateAidResult$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnUpdateAidResult$1;-><init>(Ljava/util/Map;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onReturnUpdateDisplaySettingsResult(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnUpdateDisplaySettingsResult$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnUpdateDisplaySettingsResult$1;-><init>(ZLjava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onReturnUpdateTerminalSettingResult(Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnUpdateTerminalSettingResult$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnUpdateTerminalSettingResult$1;-><init>(Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

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

    .line 137
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnUpdateTerminalSettingsResult$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnUpdateTerminalSettingsResult$1;-><init>(Ljava/util/Map;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onSerialConnected()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onSerialConnected()"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 85
    sget-object v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onSerialConnected$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onSerialConnected$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onSerialDisconnected()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onSerialDisconnected"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 90
    sget-object v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onSerialDisconnected$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onSerialDisconnected$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onSessionError(Lcom/stripe/core/bbpos/hardware/api/SessionError;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sessionError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onSessionError$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onSessionError$1;-><init>(Lcom/stripe/core/bbpos/hardware/api/SessionError;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onSessionInitialized()V
    .locals 1

    .line 253
    sget-object v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onSessionInitialized$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onSessionInitialized$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onUsbConnected()V
    .locals 1

    .line 78
    sget-object v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onUsbConnected$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onUsbConnected$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onUsbDisconnected()V
    .locals 1

    .line 81
    sget-object v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onUsbDisconnected$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onUsbDisconnected$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onWaitingForCard(Lcom/stripe/bbpos/sdk/CheckCardMode;)V
    .locals 1

    const-string v0, "checkCardMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onWaitingForCard$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onWaitingForCard$1;-><init>(Lcom/stripe/bbpos/sdk/CheckCardMode;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public registerListener(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;)V
    .locals 2

    const-string v0, "listenerWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    const-string v1, "writeLock(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public unregisterListener(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;)V
    .locals 2

    const-string v0, "listenerWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    const-string v1, "writeLock(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 59
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
