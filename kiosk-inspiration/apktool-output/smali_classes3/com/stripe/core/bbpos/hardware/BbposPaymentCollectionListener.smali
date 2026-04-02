.class public final Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;
.super Ljava/lang/Object;
.source "BbposPaymentCollectionListener.kt"

# interfaces
.implements Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;,
        Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposPaymentCollectionListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposPaymentCollectionListener.kt\ncom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener\n+ 2 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder\n+ 3 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,670:1\n436#2,4:671\n457#3,4:675\n1#4:679\n429#5:680\n502#5,5:681\n*S KotlinDebug\n*F\n+ 1 BbposPaymentCollectionListener.kt\ncom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener\n*L\n111#1:671,4\n112#1:675,4\n578#1:680\n578#1:681,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0002\u00a9\u0001BS\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0016\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0016J\u0011\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020+H\u0096\u0001J\t\u0010,\u001a\u00020&H\u0096\u0001J\u0017\u0010-\u001a\u00020&2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020+0/H\u0096\u0001J\u0019\u00100\u001a\u00020&2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0096\u0001J\u0011\u00105\u001a\u00020&2\u0006\u00106\u001a\u000207H\u0096\u0001J\u0018\u00108\u001a\u00020&2\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0016J#\u0010=\u001a\u00020&2\u0006\u0010>\u001a\u0002072\u0006\u0010?\u001a\u0002072\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0096\u0001J\t\u0010@\u001a\u00020&H\u0096\u0001J\t\u0010A\u001a\u00020&H\u0096\u0001J\u0018\u0010B\u001a\u00020&2\u0006\u0010C\u001a\u00020<2\u0006\u0010D\u001a\u000207H\u0016J\u0018\u0010E\u001a\u00020&2\u0006\u0010F\u001a\u00020\u00142\u0006\u0010G\u001a\u00020<H\u0016J\u0008\u0010H\u001a\u00020&H\u0016J\u0010\u0010I\u001a\u00020&2\u0006\u0010J\u001a\u00020KH\u0016J\u0010\u0010L\u001a\u00020&2\u0006\u0010M\u001a\u00020<H\u0016J\u0010\u0010N\u001a\u00020&2\u0006\u0010O\u001a\u00020PH\u0016J\u0010\u0010Q\u001a\u00020&2\u0006\u0010R\u001a\u00020SH\u0016J\u0008\u0010T\u001a\u00020&H\u0016J\u0016\u0010U\u001a\u00020&2\u000c\u0010V\u001a\u0008\u0012\u0004\u0012\u00020<0/H\u0016J\u0018\u0010W\u001a\u00020&2\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020[H\u0016J$\u0010\\\u001a\u00020&2\u0006\u0010>\u001a\u00020]2\u0012\u0010^\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020<0\u0013H\u0017J\u0010\u0010_\u001a\u00020&2\u0006\u0010M\u001a\u00020<H\u0016J\u0010\u0010`\u001a\u00020&2\u0006\u00101\u001a\u000202H\u0016J\u0018\u0010a\u001a\u00020&2\u0006\u0010b\u001a\u00020c2\u0006\u0010d\u001a\u00020eH\u0016J\u001f\u0010f\u001a\u00020&2\u0014\u0010g\u001a\u0010\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020h\u0018\u00010\u0013H\u0096\u0001J%\u0010i\u001a\u00020&2\u0006\u0010j\u001a\u00020k2\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020<0\u0013H\u0096\u0001J\u0011\u0010m\u001a\u00020&2\u0006\u00101\u001a\u000202H\u0096\u0001J%\u0010n\u001a\u00020&2\u0006\u00101\u001a\u0002022\u0012\u0010^\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020<0\u0013H\u0096\u0001J\u0018\u0010o\u001a\u00020&2\u0006\u0010>\u001a\u00020p2\u0006\u0010q\u001a\u00020rH\u0016J\u001d\u0010s\u001a\u00020&2\u0012\u0010^\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020h0\u0013H\u0096\u0001J\u00e0\u0001\u0010t\u001a\u00020&2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020v2\u0006\u0010x\u001a\u00020v2\u0006\u0010y\u001a\u00020v2\u0006\u0010z\u001a\u00020v2\u0006\u0010{\u001a\u00020v2\u0006\u0010|\u001a\u00020v2\u0006\u0010}\u001a\u00020v2\u0006\u0010~\u001a\u00020v2\u0006\u0010\u007f\u001a\u00020v2\u0007\u0010\u0080\u0001\u001a\u00020v2\u0007\u0010\u0081\u0001\u001a\u00020v2\u0007\u0010\u0082\u0001\u001a\u00020v2\u0007\u0010\u0083\u0001\u001a\u00020v2\u0007\u0010\u0084\u0001\u001a\u00020v2\u0007\u0010\u0085\u0001\u001a\u00020v2\u0007\u0010\u0086\u0001\u001a\u00020v2\u0007\u0010\u0087\u0001\u001a\u00020v2\u0007\u0010\u0088\u0001\u001a\u00020v2\u0007\u0010\u0089\u0001\u001a\u00020v2\u0007\u0010\u008a\u0001\u001a\u00020v2\u0007\u0010\u008b\u0001\u001a\u00020v2\u0007\u0010\u008c\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020v2\u0007\u0010\u008e\u0001\u001a\u00020vH\u0096\u0001J\u0011\u0010\u008f\u0001\u001a\u00020&2\u0006\u0010M\u001a\u00020<H\u0016J\u0011\u0010\u0090\u0001\u001a\u00020&2\u0006\u00101\u001a\u000202H\u0016J\u0012\u0010\u0091\u0001\u001a\u00020&2\u0007\u0010>\u001a\u00030\u0092\u0001H\u0016J\u001f\u0010\u0093\u0001\u001a\u00020&2\u0013\u0010^\u001a\u000f\u0012\u0004\u0012\u00020<\u0012\u0005\u0012\u00030\u0094\u00010\u0013H\u0096\u0001J\u001b\u0010\u0095\u0001\u001a\u00020&2\u0006\u00101\u001a\u0002022\u0007\u0010\u0096\u0001\u001a\u00020<H\u0096\u0001J\u0014\u0010\u0097\u0001\u001a\u00020&2\u0008\u0010\u0098\u0001\u001a\u00030\u0094\u0001H\u0096\u0001J\u001f\u0010\u0099\u0001\u001a\u00020&2\u0013\u0010^\u001a\u000f\u0012\u0004\u0012\u00020<\u0012\u0005\u0012\u00030\u0094\u00010\u0013H\u0096\u0001J\n\u0010\u009a\u0001\u001a\u00020&H\u0096\u0001J\t\u0010\u009b\u0001\u001a\u00020&H\u0016J\u001c\u0010\u009c\u0001\u001a\u00020&2\u0008\u0010\u009d\u0001\u001a\u00030\u009e\u00012\u0006\u0010;\u001a\u00020<H\u0096\u0001J\n\u0010\u009f\u0001\u001a\u00020&H\u0096\u0001J\n\u0010\u00a0\u0001\u001a\u00020&H\u0096\u0001J\n\u0010\u00a1\u0001\u001a\u00020&H\u0096\u0001J\u0013\u0010\u00a2\u0001\u001a\u00020&2\u0008\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001H\u0016J\u0010\u0010\u00a5\u0001\u001a\u0005\u0018\u00010\u00a6\u0001*\u00020\u0014H\u0002J\u000e\u0010\u00a7\u0001\u001a\u00030\u00a8\u0001*\u00020YH\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R&\u0010\u0018\u001a\u001a\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\n \"*\u0004\u0018\u00010\u00050\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$\u00a8\u0006\u00aa\u0001"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "deviceListenerWrapper",
        "lazyPaymentEventReceiver",
        "Ldagger/Lazy;",
        "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
        "lazyManualEntryEventReceiver",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "cardRemovalChecker",
        "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "displayTextErrorMapping",
        "",
        "Lcom/stripe/bbpos/sdk/DisplayText;",
        "Lcom/stripe/hardware/emv/IntermediateTransactionError;",
        "getDisplayTextErrorMapping",
        "()Ljava/util/Map;",
        "healthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;",
        "manualEntryEventReceiver",
        "getManualEntryEventReceiver",
        "()Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
        "paymentEventReceiver",
        "kotlin.jvm.PlatformType",
        "getPaymentEventReceiver",
        "()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
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
        "toReaderDisplayMessage",
        "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
        "toReaderPinPadTouchEvent",
        "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;",
        "Factory",
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
.field private final cardRemovalChecker:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

.field private final deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

.field private final displayTextErrorMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/stripe/bbpos/sdk/DisplayText;",
            "Lcom/stripe/hardware/emv/IntermediateTransactionError;",
            ">;"
        }
    .end annotation
.end field

.field private final healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyManualEntryEventReceiver:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyPaymentEventReceiver:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            "Ldagger/Lazy<",
            "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
            ">;",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deviceListenerWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyPaymentEventReceiver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyManualEntryEventReceiver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "healthLoggerBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardRemovalChecker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    .line 57
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->lazyPaymentEventReceiver:Ldagger/Lazy;

    .line 58
    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->lazyManualEntryEventReceiver:Ldagger/Lazy;

    .line 60
    iput-object p5, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->cardRemovalChecker:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    .line 61
    iput-object p6, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/16 p1, 0x17

    .line 85
    new-array p1, p1, [Lkotlin/Pair;

    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->CTL_TRANSACTION_LIMIT_EXCEEDED:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 86
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->REFER_TO_YOUR_PAYMENT_DEVICE:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    .line 87
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p1, p3

    .line 88
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->INSERT_SWIPE_OR_TRY_ANOTHER_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->BAD_TAP_READ:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, p1, p3

    .line 89
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->TOO_MANY_TAPS:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->TOO_MANY_TAPS:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x4

    aput-object p2, p1, p3

    .line 90
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_NOT_ADMITTED:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CARD_NOT_ADMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, p1, p3

    .line 91
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_TRANSACTION:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_TRANSACTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x6

    aput-object p2, p1, p3

    .line 92
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_CARD_NUMBER:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_CARD_NUMBER:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x7

    aput-object p2, p1, p3

    .line 93
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->SYSTEM_MALFUNCTION:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->SYSTEM_MALFUNCTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x8

    aput-object p2, p1, p3

    .line 94
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->EXPIRED_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->EXPIRED_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x9

    aput-object p2, p1, p3

    .line 95
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->TRANSACTION_NOT_PERMITTED:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->TRANSACTION_NOT_PERMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0xa

    aput-object p2, p1, p3

    .line 96
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_FUNCTION:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_FUNCTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0xb

    aput-object p2, p1, p3

    .line 97
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0xc

    aput-object p2, p1, p3

    .line 98
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->WRONG_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->WRONG_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0xd

    aput-object p2, p1, p3

    .line 99
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->TERMINAL_NOT_PERMITTED:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->TERMINAL_NOT_PERMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0xe

    aput-object p2, p1, p3

    .line 100
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0xf

    aput-object p2, p1, p3

    .line 101
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_NOT_READABLE:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CARD_NOT_READABLE:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x10

    aput-object p2, p1, p3

    .line 102
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->AUTHENTICATION_REQUIRED:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->AUTHENTICATION_REQUIRED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x11

    aput-object p2, p1, p3

    .line 103
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x12

    aput-object p2, p1, p3

    .line 104
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->DECLINED_WITH_RESPONSE_CODE_05:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->DECLINED_CODE_05:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x13

    aput-object p2, p1, p3

    .line 105
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_ERROR_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CARD_ERROR:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x14

    aput-object p2, p1, p3

    .line 106
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->NOT_ACCEPTED_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->NOT_ACCEPTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x15

    aput-object p2, p1, p3

    .line 107
    sget-object p2, Lcom/stripe/bbpos/sdk/DisplayText;->PROCESSING_ERROR_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    sget-object p3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->PROCESSING_ERROR:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x16

    aput-object p2, p1, p3

    .line 84
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->displayTextErrorMapping:Ljava/util/Map;

    .line 111
    sget-object p1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$healthLogger$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$healthLogger$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 671
    new-instance p2, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class p3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    const-class p5, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;

    invoke-direct {p2, p4, p3, p5, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 112
    sget-object p1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$healthLogger$2;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$healthLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 675
    new-instance p3, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class p4, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;

    const-class p5, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;

    invoke-direct {p3, p2, p4, p5, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 113
    invoke-virtual {p3}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-void
.end method

.method private final getManualEntryEventReceiver()Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->lazyManualEntryEventReceiver:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;

    return-object v0
.end method

.method private final getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->lazyPaymentEventReceiver:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    return-object v0
.end method

.method private final toReaderDisplayMessage(Lcom/stripe/bbpos/sdk/DisplayText;)Lcom/stripe/hardware/status/ReaderDisplayMessage;
    .locals 1

    .line 286
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 331
    :pswitch_0
    sget-object p1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->TRY_ANOTHER_READ_METHOD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p1

    .line 330
    :pswitch_1
    sget-object p1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->TRY_ANOTHER_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p1

    .line 329
    :pswitch_2
    sget-object p1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->REMOVE_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p1

    .line 328
    :pswitch_3
    sget-object p1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->RETRY_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p1

    .line 327
    :pswitch_4
    sget-object p1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->SWIPE_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p1

    .line 326
    :pswitch_5
    sget-object p1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->INSERT_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p1

    .line 323
    :pswitch_6
    sget-object p1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->MULTIPLE_CONTACTLESS_CARDS_DETECTED:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p1

    .line 319
    :pswitch_7
    sget-object p1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->TRY_ANOTHER_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p1

    .line 310
    :pswitch_8
    sget-object p1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->TRY_ANOTHER_READ_METHOD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p1

    .line 303
    :pswitch_9
    sget-object p1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->INSERT_OR_SWIPE_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p1

    .line 299
    :pswitch_a
    sget-object p1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p1

    .line 292
    :pswitch_b
    sget-object p1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->TRY_ANOTHER_READ_METHOD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p1

    .line 288
    :pswitch_c
    sget-object p1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->TRY_ANOTHER_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final toReaderPinPadTouchEvent(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;)Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;
    .locals 1

    .line 484
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 493
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    return-object p1

    .line 491
    :pswitch_1
    sget-object p1, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->ENTER_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    return-object p1

    .line 490
    :pswitch_2
    sget-object p1, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->CANCEL_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    return-object p1

    .line 489
    :pswitch_3
    sget-object p1, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->CLEAR_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    return-object p1

    .line 488
    :pswitch_4
    sget-object p1, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->BACKSPACE_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    return-object p1

    .line 487
    :pswitch_5
    sget-object p1, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->NEW_KEY_DETECTED:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    return-object p1

    .line 486
    :pswitch_6
    sget-object p1, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->OUT_OF_PIN_PAD:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    return-object p1

    .line 485
    :pswitch_7
    sget-object p1, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;->PIN_PAD_TOUCH_EVENT_UNKNOWN:Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getDisplayTextErrorMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/stripe/bbpos/sdk/DisplayText;",
            "Lcom/stripe/hardware/emv/IntermediateTransactionError;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->displayTextErrorMapping:Ljava/util/Map;

    return-object v0
.end method

.method public onBatteryLow(Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;)V
    .locals 1

    const-string v0, "batteryStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onBatteryLow(Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;)V

    .line 651
    sget-object v0, Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;->CRITICALLY_LOW:Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;

    if-ne p1, v0, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onBatteryCriticallyLow()V

    :cond_0
    return-void
.end method

.method public onBtConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const-string v0, "connectedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onBtConnected(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public onBtDisconnected()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onBtDisconnected()V

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

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onBtReturnScanResults(Ljava/util/List;)V

    return-void
.end method

.method public onDeviceReset(ZLcom/stripe/core/bbpos/hardware/api/DeviceResetReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onDeviceReset(ZLcom/stripe/core/bbpos/hardware/api/DeviceResetReason;)V

    return-void
.end method

.method public onDeviceResetAlert(I)V
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onDeviceResetAlert(I)V

    return-void
.end method

.method public onError(Lcom/stripe/bbpos/sdk/Error;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "error"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "errorMessage"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    iget-object v3, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v3, v1, v2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onError(Lcom/stripe/bbpos/sdk/Error;Ljava/lang/String;)V

    .line 659
    sget-object v3, Lcom/stripe/bbpos/sdk/Error;->DEVICE_BUSY:Lcom/stripe/bbpos/sdk/Error;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    iget-object v3, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->cardRemovalChecker:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    invoke-virtual {v3}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->shouldFakeCardEmptyOnDeviceBusy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 660
    iget-object v3, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v5, "Too many DEVICE_BUSY received when detecting card removal. Faking a card empty signal."

    new-array v6, v4, [Lkotlin/Pair;

    invoke-interface {v3, v5, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 661
    sget-object v3, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->NO_CARD:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    new-instance v5, Lcom/stripe/bbpos/sdk/CardData;

    const/16 v15, 0x1ff

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v16}, Lcom/stripe/bbpos/sdk/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v3, v5}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->onReturnCheckCardResult(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;Lcom/stripe/bbpos/sdk/CardData;)V

    .line 664
    :cond_0
    sget-object v3, Lcom/stripe/bbpos/sdk/Error;->CMD_NOT_AVAILABLE:Lcom/stripe/bbpos/sdk/Error;

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->Companion:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$Companion;

    invoke-virtual {v1, v2}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$Companion;->fromString(Ljava/lang/String;)Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    move-result-object v1

    sget-object v3, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->MISSING_ENCRYPTION_KEY:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    if-ne v1, v3, :cond_1

    .line 665
    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Missing Key: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Lkotlin/Pair;

    invoke-interface {v1, v2, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 666
    invoke-direct {v0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onDeviceMissingEncryptionKeys()V

    :cond_1
    return-void
.end method

.method public onHardwareFunctionalTestResult(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onHardwareFunctionalTestResult(IILjava/lang/String;)V

    return-void
.end method

.method public onPowerButtonPressed()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onPowerButtonPressed()V

    return-void
.end method

.method public onPowerDown()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onPowerDown()V

    return-void
.end method

.method public onRequestDisplayAsterisk(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "unmaskedDigits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestDisplayAsterisk(Ljava/lang/String;I)V

    .line 478
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestDisplayAsterisk unmaskedDigits "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numOfAsterisk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 479
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onUpdatePinEntryAsteriskCount(I)V

    .line 480
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getManualEntryEventReceiver()Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;->onRequestDisplayAsterisk(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onRequestDisplayText(Lcom/stripe/bbpos/sdk/DisplayText;Ljava/lang/String;)V
    .locals 9

    const-string v0, "displayText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayTextLanguage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestDisplayText(Lcom/stripe/bbpos/sdk/DisplayText;Ljava/lang/String;)V

    .line 339
    iget-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRequestDisplayText "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p2, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 340
    iget-object v2, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 341
    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/DisplayText;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "toLowerCase(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 340
    sget-object p2, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onRequestDisplayText$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onRequestDisplayText$1;

    move-object v6, p2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->toReaderDisplayMessage(Lcom/stripe/bbpos/sdk/DisplayText;)Lcom/stripe/hardware/status/ReaderDisplayMessage;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onDisplayAdditionalMessage(Lcom/stripe/hardware/status/ReaderDisplayMessage;)V

    .line 349
    :cond_0
    sget-object p2, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    const/4 v0, 0x6

    if-eq p2, v0, :cond_3

    const/4 v0, 0x7

    if-eq p2, v0, :cond_5

    const/16 v0, 0xa

    if-eq p2, v0, :cond_2

    const/16 v0, 0xc

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 398
    :pswitch_0
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onShowThankYou()V

    goto :goto_0

    .line 394
    :pswitch_1
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p2

    sget-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->CARD_STILL_INSERTED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-interface {p2, v0}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onReturnTransactionResult(Lcom/stripe/hardware/emv/TransactionResult$Result;)V

    goto :goto_0

    .line 383
    :pswitch_2
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onReadingCard()V

    goto :goto_0

    .line 355
    :pswitch_3
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p2

    sget-object v0, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->CARD_INSERTED_CORRECTLY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    invoke-interface {p2, v0}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onContactCardStateUpdate(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    .line 356
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onReadingCard()V

    goto :goto_0

    .line 351
    :pswitch_4
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onReadingCard()V

    goto :goto_0

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getManualEntryEventReceiver()Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;->onInvalidInput()V

    goto :goto_0

    .line 379
    :cond_2
    :pswitch_5
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->waitForCardPresent()V

    goto :goto_0

    .line 374
    :cond_3
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onEmptyCandidateList()V

    goto :goto_0

    .line 360
    :cond_4
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p2

    sget-object v0, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->CARD_INSERTED_INCORRECTLY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    invoke-interface {p2, v0}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onContactCardStateUpdate(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    goto :goto_0

    .line 424
    :cond_5
    :pswitch_6
    iget-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->displayTextErrorMapping:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    if-eqz p2, :cond_6

    .line 425
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onIntermediateTransactionError(Lcom/stripe/hardware/emv/IntermediateTransactionError;)V

    .line 467
    :cond_6
    :goto_0
    sget-object p2, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/16 p2, 0x2e

    if-eq p1, p2, :cond_9

    const/16 p2, 0x2f

    if-eq p1, p2, :cond_8

    const/16 p2, 0x40

    if-eq p1, p2, :cond_7

    const/4 p1, 0x0

    goto :goto_1

    .line 470
    :cond_7
    sget-object p1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->CARD_ERROR:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    goto :goto_1

    .line 469
    :cond_8
    sget-object p1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->SUCCESS:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    goto :goto_1

    .line 468
    :cond_9
    sget-object p1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->INCORRECT_PIN:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    :goto_1
    move-object v1, p1

    if-eqz v1, :cond_a

    .line 472
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    const-string p1, "<get-paymentEventReceiver>(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onPinEntryStatusChange$default(Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public onRequestFinalConfirm()V
    .locals 10

    .line 223
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestFinalConfirm()V

    .line 224
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onRequestFinalConfirm"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 225
    iget-object v3, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onRequestFinalConfirm$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onRequestFinalConfirm$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 226
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onRequestFinalConfirm()V

    return-void
.end method

.method public onRequestManualPanEntry(Lcom/stripe/bbpos/sdk/ManualPanEntryType;)V
    .locals 3

    const-string v0, "manualPanEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestManualPanEntry(Lcom/stripe/bbpos/sdk/ManualPanEntryType;)V

    .line 625
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestManualPanEntry manualPanEntryType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 626
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getManualEntryEventReceiver()Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 627
    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/ManualPanEntryType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 634
    sget-object p1, Lcom/stripe/hardware/paymentcollection/ManualEntryType;->EXPIRY_DATE_ENTRY:Lcom/stripe/hardware/paymentcollection/ManualEntryType;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 633
    :cond_1
    sget-object p1, Lcom/stripe/hardware/paymentcollection/ManualEntryType;->CVV_ENTRY:Lcom/stripe/hardware/paymentcollection/ManualEntryType;

    goto :goto_0

    .line 632
    :cond_2
    sget-object p1, Lcom/stripe/hardware/paymentcollection/ManualEntryType;->PAN_ENTRY:Lcom/stripe/hardware/paymentcollection/ManualEntryType;

    .line 626
    :goto_0
    invoke-interface {v0, p1}, Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;->onRequestManualEntry(Lcom/stripe/hardware/paymentcollection/ManualEntryType;)V

    return-void

    .line 630
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown Manual Pan Entry Type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public onRequestOnlineProcess(Ljava/lang/String;)V
    .locals 10

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestOnlineProcess(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onRequestOnlineProcess"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 233
    iget-object v3, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onRequestOnlineProcess$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onRequestOnlineProcess$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 234
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onRequestOnlineAuthorisation(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPinEntry(Lcom/stripe/bbpos/sdk/PinEntrySource;)V
    .locals 8

    const-string v0, "pinEntrySource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestPinEntry(Lcom/stripe/bbpos/sdk/PinEntrySource;)V

    .line 515
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestPinEntry "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 516
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v2

    const-string p1, "<get-paymentEventReceiver>(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->REQUESTED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onPinEntryStatusChange$default(Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onRequestProduceAudioTone(Lcom/stripe/bbpos/sdk/ContactlessStatusTone;)V
    .locals 3

    const-string v0, "tone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestProduceAudioTone(Lcom/stripe/bbpos/sdk/ContactlessStatusTone;)V

    .line 546
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestProduceAudioTone "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 547
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    .line 548
    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/ContactlessStatusTone;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 554
    sget-object p1, Lcom/stripe/hardware/status/AudioAlertType;->SUCCESS:Lcom/stripe/hardware/status/AudioAlertType;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 553
    :cond_1
    sget-object p1, Lcom/stripe/hardware/status/AudioAlertType;->ALERT:Lcom/stripe/hardware/status/AudioAlertType;

    .line 547
    :goto_0
    invoke-interface {v0, p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onRequestProduceAudioTone(Lcom/stripe/hardware/status/AudioAlertType;)V

    return-void

    .line 551
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ContactlessStatusTone"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRequestSelectAccountType()V
    .locals 10

    .line 215
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestSelectAccountType()V

    .line 216
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onRequestSelectAccountType"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 217
    iget-object v3, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onRequestSelectAccountType$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onRequestSelectAccountType$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 218
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onRequestSelectAccountType()V

    return-void
.end method

.method public onRequestSelectApplication(Ljava/util/List;)V
    .locals 12
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

    .line 205
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestSelectApplication(Ljava/util/List;)V

    .line 206
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onRequestSelectApplication"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 207
    iget-object v3, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 208
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v4, v0

    .line 207
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onRequestSelectApplication$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onRequestSelectApplication$1;

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/16 v10, 0xe

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lcom/stripe/jvmcore/logging/HealthLogger;->recordGauge$default(Lcom/stripe/jvmcore/logging/HealthLogger;JLcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 210
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onRequestSelectApplication(Ljava/util/List;)V

    return-void
.end method

.method public onReturnAccessiblePinPadTouchEvent(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;Ljava/util/UUID;)V
    .locals 3

    const-string v0, "pinPadTouchEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnAccessiblePinPadTouchEvent(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;Ljava/util/UUID;)V

    .line 501
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReturnAccessiblePinPadTouchEvent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 502
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    .line 503
    new-instance v1, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;

    .line 504
    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->toReaderPinPadTouchEvent(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;)Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;

    move-result-object p1

    .line 505
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "toString(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    invoke-direct {v1, p1, p2}, Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;-><init>(Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;Ljava/lang/String;)V

    .line 502
    invoke-interface {v0, v1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onAccessiblePinPadEvent(Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;)V

    return-void
.end method

.method public onReturnAmount(Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;Ljava/util/Map;)V
    .locals 5
    .annotation runtime Lcom/stripe/jvmcore/dagger/BluetoothUsbPinPadReaders;
    .end annotation

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

    .line 572
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnAmount(Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;Ljava/util/Map;)V

    .line 573
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReturnAmount amountInputResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 575
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {p1}, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    return-void

    .line 615
    :cond_0
    new-instance p1, Lcom/stripe/hardware/tipping/TipSelectionFailure;

    .line 616
    sget-object p2, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->INVALID_AMOUNT:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    .line 615
    invoke-direct {p1, p2}, Lcom/stripe/hardware/tipping/TipSelectionFailure;-><init>(Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;)V

    .line 618
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p2

    check-cast p1, Lcom/stripe/hardware/tipping/TipSelectionResult;

    invoke-interface {p2, p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onKernelTippingSelectionResult(Lcom/stripe/hardware/tipping/TipSelectionResult;)V

    return-void

    .line 610
    :cond_1
    new-instance p1, Lcom/stripe/hardware/tipping/TipSelectionFailure;

    sget-object p2, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->TIMEOUT:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    invoke-direct {p1, p2}, Lcom/stripe/hardware/tipping/TipSelectionFailure;-><init>(Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;)V

    .line 611
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p2

    check-cast p1, Lcom/stripe/hardware/tipping/TipSelectionResult;

    invoke-interface {p2, p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onKernelTippingSelectionResult(Lcom/stripe/hardware/tipping/TipSelectionResult;)V

    return-void

    .line 605
    :cond_2
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p1

    sget-object p2, Lcom/stripe/hardware/tipping/NoTipSelected;->INSTANCE:Lcom/stripe/hardware/tipping/NoTipSelected;

    check-cast p2, Lcom/stripe/hardware/tipping/TipSelectionResult;

    invoke-interface {p1, p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onKernelTippingSelectionResult(Lcom/stripe/hardware/tipping/TipSelectionResult;)V

    return-void

    .line 577
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 578
    const-string p1, "tipsAmount"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 680
    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/Appendable;

    .line 681
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_5

    .line 682
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 578
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 683
    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    :cond_5
    check-cast v0, Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 578
    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 580
    :goto_1
    const-string v0, "tipSelectionType"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "03"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2

    .line 583
    :cond_7
    sget-object p2, Lcom/stripe/hardware/tipping/Custom;->INSTANCE:Lcom/stripe/hardware/tipping/Custom;

    check-cast p2, Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

    goto :goto_3

    .line 580
    :pswitch_1
    const-string v0, "02"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    .line 582
    :cond_8
    sget-object p2, Lcom/stripe/hardware/tipping/FixedAmount;->INSTANCE:Lcom/stripe/hardware/tipping/FixedAmount;

    check-cast p2, Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

    goto :goto_3

    .line 580
    :pswitch_2
    const-string v0, "01"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_2

    .line 581
    :cond_9
    sget-object p2, Lcom/stripe/hardware/tipping/Percentage;->INSTANCE:Lcom/stripe/hardware/tipping/Percentage;

    check-cast p2, Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

    goto :goto_3

    .line 584
    :cond_a
    :goto_2
    sget-object p2, Lcom/stripe/hardware/tipping/Unknown;->INSTANCE:Lcom/stripe/hardware/tipping/Unknown;

    check-cast p2, Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

    :goto_3
    if-nez p1, :cond_b

    .line 588
    new-instance p1, Lcom/stripe/hardware/tipping/TipSelectionFailure;

    .line 589
    sget-object p2, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->CALLBACK_NO_TIP_AMOUNT:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    .line 588
    invoke-direct {p1, p2}, Lcom/stripe/hardware/tipping/TipSelectionFailure;-><init>(Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;)V

    check-cast p1, Lcom/stripe/hardware/tipping/TipSelectionResult;

    goto :goto_4

    .line 592
    :cond_b
    new-instance v0, Lcom/stripe/hardware/tipping/TipSelected;

    .line 593
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 592
    invoke-direct {v0, v1, v2, p2}, Lcom/stripe/hardware/tipping/TipSelected;-><init>(JLcom/stripe/hardware/tipping/BbposSdkTipSelectionType;)V

    move-object p1, v0

    check-cast p1, Lcom/stripe/hardware/tipping/TipSelectionResult;

    goto :goto_4

    .line 598
    :cond_c
    new-instance p1, Lcom/stripe/hardware/tipping/TipSelectionFailure;

    sget-object p2, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->CALLBACK_NO_DATA:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    invoke-direct {p1, p2}, Lcom/stripe/hardware/tipping/TipSelectionFailure;-><init>(Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;)V

    check-cast p1, Lcom/stripe/hardware/tipping/TipSelectionResult;

    .line 601
    :goto_4
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onKernelTippingSelectionResult(Lcom/stripe/hardware/tipping/TipSelectionResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x601
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReturnBatchData(Ljava/lang/String;)V
    .locals 10

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnBatchData(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onReturnBatchData"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 241
    iget-object v3, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onReturnBatchData$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onReturnBatchData$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 243
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onReturnFinalTlvBlob(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReturnCancelCheckCardResult(Z)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnCancelCheckCardResult(Z)V

    .line 137
    iget-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "onReturnCancelCheckCardResult"

    invoke-interface {p1, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 138
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onHardwareTransactionCanceled()V

    return-void
.end method

.method public onReturnCheckCardResult(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;Lcom/stripe/bbpos/sdk/CardData;)V
    .locals 8

    const-string v0, "checkCardResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnCheckCardResult(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;Lcom/stripe/bbpos/sdk/CardData;)V

    .line 147
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReturnCheckCardResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cardData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 149
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->cardRemovalChecker:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;->onCheckCardResult(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;)V

    .line 151
    sget-object v0, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->NO_CARD:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    if-eq p1, v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 153
    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toLowerCase(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "result"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 152
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onReturnCheckCardResult$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onReturnCheckCardResult$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 157
    :cond_0
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 186
    :pswitch_0
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getManualEntryEventReceiver()Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 187
    iget-object p1, p2, Lcom/stripe/bbpos/sdk/CardData;->encCvv:Ljava/lang/String;

    const-string v1, ""

    if-nez p1, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 188
    :goto_0
    iget-object p1, p2, Lcom/stripe/bbpos/sdk/CardData;->encPan:Ljava/lang/String;

    if-nez p1, :cond_2

    move-object p1, v1

    .line 189
    :cond_2
    iget-object v2, p2, Lcom/stripe/bbpos/sdk/CardData;->expiryDate:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v1

    .line 190
    :cond_3
    iget-object v4, p2, Lcom/stripe/bbpos/sdk/CardData;->maskedPan:Ljava/lang/String;

    if-nez v4, :cond_4

    move-object v4, v1

    .line 191
    :cond_4
    iget-object v5, p2, Lcom/stripe/bbpos/sdk/CardData;->ksn:Ljava/lang/String;

    if-nez v5, :cond_5

    move-object v5, v1

    .line 192
    :cond_5
    iget-object p2, p2, Lcom/stripe/bbpos/sdk/CardData;->posEntryMode:Ljava/lang/String;

    if-nez p2, :cond_6

    move-object v6, v1

    goto :goto_1

    :cond_6
    move-object v6, p2

    :goto_1
    move-object v1, p1

    .line 186
    invoke-interface/range {v0 .. v6}, Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;->onEncryptedDataCollected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 181
    :pswitch_1
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p1

    new-instance p2, Lcom/stripe/hardware/magstripe/MagStripeReadFailure;

    sget-object v0, Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;->BAD_SWIPE:Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;

    invoke-direct {p2, v0}, Lcom/stripe/hardware/magstripe/MagStripeReadFailure;-><init>(Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;)V

    check-cast p2, Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    invoke-interface {p1, p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onCardSwiped(Lcom/stripe/hardware/magstripe/MagStripeReadResult;)V

    .line 182
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onResetPaymentInterfaces()V

    return-void

    .line 176
    :pswitch_2
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p1

    new-instance p2, Lcom/stripe/hardware/magstripe/MagStripeReadFailure;

    sget-object v0, Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;->BAD_SWIPE:Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;

    invoke-direct {p2, v0}, Lcom/stripe/hardware/magstripe/MagStripeReadFailure;-><init>(Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;)V

    check-cast p2, Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    invoke-interface {p1, p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onCardSwiped(Lcom/stripe/hardware/magstripe/MagStripeReadResult;)V

    .line 177
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onResetPaymentInterfaces()V

    return-void

    .line 171
    :pswitch_3
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p1

    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposTranslation;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposTranslation;

    invoke-virtual {v0, p2}, Lcom/stripe/core/bbpos/hardware/BbposTranslation;->extractMagStripeReadResult(Lcom/stripe/bbpos/sdk/CardData;)Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onCardSwiped(Lcom/stripe/hardware/magstripe/MagStripeReadResult;)V

    .line 172
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onResetPaymentInterfaces()V

    return-void

    .line 167
    :pswitch_4
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p1

    sget-object p2, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->CARD_INSERTED_INCORRECTLY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    invoke-interface {p1, p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onContactCardStateUpdate(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    return-void

    .line 163
    :pswitch_5
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p1

    sget-object p2, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->CARD_INSERTED_CORRECTLY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    invoke-interface {p1, p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onContactCardStateUpdate(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    return-void

    .line 159
    :pswitch_6
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object p1

    sget-object p2, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    invoke-interface {p1, p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onContactCardStateUpdate(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnDebugLog(Ljava/util/Map;)V

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

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnDeviceInfo(Lcom/stripe/bbpos/sdk/DeviceInfo;Ljava/util/Map;)V

    return-void
.end method

.method public onReturnDisableInputAmountResult(Z)V
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnDisableInputAmountResult(Z)V

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

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnEncryptDataResult(ZLjava/util/Map;)V

    return-void
.end method

.method public onReturnPinEntryResult(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnPinEntryResult(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;)V

    .line 525
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReturnPinEntryResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 527
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 535
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ICC_REMOVED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    goto :goto_0

    .line 534
    :pswitch_1
    sget-object p1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->INCORRECT_PIN:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    goto :goto_0

    .line 533
    :pswitch_2
    sget-object p1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->WRONG_PIN_LENGTH:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    goto :goto_0

    .line 532
    :pswitch_3
    sget-object p1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->BYPASS:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    goto :goto_0

    .line 531
    :pswitch_4
    sget-object p1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->TIMEOUT:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    goto :goto_0

    .line 530
    :pswitch_5
    sget-object p1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->CANCEL:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    goto :goto_0

    .line 529
    :pswitch_6
    sget-object p1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ENTERED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    .line 538
    :goto_0
    sget-object v0, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ICC_REMOVED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    if-ne p1, v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    invoke-interface {v0, v1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onContactCardStateUpdate(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    iget-object v1, p2, Lcom/stripe/bbpos/sdk/PinData;->epb:Ljava/lang/String;

    iget-object p2, p2, Lcom/stripe/bbpos/sdk/PinData;->ksn:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onPinEntryStatusChange(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 528
    :pswitch_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid PinEntryResult.Type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnReadAidResult(Ljava/util/Map;)V

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

    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

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

    invoke-interface/range {v1 .. v26}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnReadTerminalSettingResult(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;)V

    return-void
.end method

.method public onReturnReversalData(Ljava/lang/String;)V
    .locals 10

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnReversalData(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onReturnReversalData"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 252
    iget-object v3, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onReturnReversalData$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onReturnReversalData$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 254
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onReturnFinalTlvBlob(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReturnSetPinPadButtonsResult(Z)V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnSetPinPadButtonsResult(Z)V

    .line 562
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReturnSetPinPadButtonsResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 563
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onSetPinPadButtonsResult(Z)V

    return-void
.end method

.method public onReturnTransactionResult(Lcom/stripe/bbpos/sdk/TransactionResult$Type;)V
    .locals 11

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v1, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnTransactionResult(Lcom/stripe/bbpos/sdk/TransactionResult$Type;)V

    .line 262
    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReturnTransactionResult "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/Pair;

    invoke-interface {v1, v2, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 263
    iget-object v4, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 264
    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    .line 263
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onReturnTransactionResult$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$onReturnTransactionResult$1;

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 267
    sget-object v0, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->ICC_CARD_REMOVED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    if-ne p1, v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->CARD_REMOVED_TOO_EARLY:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    invoke-interface {v0, v1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onDisplayAdditionalMessage(Lcom/stripe/hardware/status/ReaderDisplayMessage;)V

    .line 269
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    invoke-interface {v0, v1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onContactCardStateUpdate(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V

    .line 272
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->NOT_ICC:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    if-ne p1, v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onChipCardInitializationFailed()V

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getManualEntryEventReceiver()Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 277
    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposTranslation;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposTranslation;

    invoke-virtual {v1, p1}, Lcom/stripe/core/bbpos/hardware/BbposTranslation;->toTransactionResult(Lcom/stripe/bbpos/sdk/TransactionResult$Type;)Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v1

    .line 276
    invoke-interface {v0, v1}, Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;->onReturnTransactionResult(Lcom/stripe/hardware/emv/TransactionResult$Result;)V

    .line 280
    :cond_2
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    .line 281
    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposTranslation;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposTranslation;

    invoke-virtual {v1, p1}, Lcom/stripe/core/bbpos/hardware/BbposTranslation;->toTransactionResult(Lcom/stripe/bbpos/sdk/TransactionResult$Type;)Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object p1

    .line 280
    invoke-interface {v0, p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onReturnTransactionResult(Lcom/stripe/hardware/emv/TransactionResult$Result;)V

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

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnUpdateAidResult(Ljava/util/Map;)V

    return-void
.end method

.method public onReturnUpdateDisplaySettingsResult(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnUpdateDisplaySettingsResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onReturnUpdateTerminalSettingResult(Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnUpdateTerminalSettingResult(Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;)V

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

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnUpdateTerminalSettingsResult(Ljava/util/Map;)V

    return-void
.end method

.method public onSerialConnected()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onSerialConnected()V

    return-void
.end method

.method public onSerialDisconnected()V
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onSerialDisconnected()V

    .line 641
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onSerialDisconnected"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 645
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-interface {v0, v1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onReturnTransactionResult(Lcom/stripe/hardware/emv/TransactionResult$Result;)V

    return-void
.end method

.method public onSessionError(Lcom/stripe/core/bbpos/hardware/api/SessionError;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sessionError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onSessionError(Lcom/stripe/core/bbpos/hardware/api/SessionError;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionInitialized()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onSessionInitialized()V

    return-void
.end method

.method public onUsbConnected()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onUsbConnected()V

    return-void
.end method

.method public onUsbDisconnected()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onUsbDisconnected()V

    return-void
.end method

.method public onWaitingForCard(Lcom/stripe/bbpos/sdk/CheckCardMode;)V
    .locals 3

    const-string v0, "checkCardMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->deviceListenerWrapper:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onWaitingForCard(Lcom/stripe/bbpos/sdk/CheckCardMode;)V

    .line 125
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWaitingForCard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 126
    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;->getPaymentEventReceiver()Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    move-result-object v0

    sget-object v1, Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;->INSTANCE:Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;

    invoke-virtual {v1, p1}, Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;->toReaderConfiguration(Lcom/stripe/bbpos/sdk/CheckCardMode;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;->onReaderTypesChanged(Ljava/util/Set;)V

    return-void
.end method
