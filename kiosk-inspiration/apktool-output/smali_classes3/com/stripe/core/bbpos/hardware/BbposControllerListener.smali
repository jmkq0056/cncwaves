.class public final Lcom/stripe/core/bbpos/hardware/BbposControllerListener;
.super Ljava/lang/Object;
.source "BbposControllerListener.kt"

# interfaces
.implements Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;,
        Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Companion;,
        Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;,
        Lcom/stripe/core/bbpos/hardware/BbposControllerListener$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposControllerListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposControllerListener.kt\ncom/stripe/core/bbpos/hardware/BbposControllerListener\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,494:1\n187#2,3:495\n187#2,3:498\n*S KotlinDebug\n*F\n+ 1 BbposControllerListener.kt\ncom/stripe/core/bbpos/hardware/BbposControllerListener\n*L\n454#1:495,3\n476#1:498,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u0095\u00012\u00020\u0001:\u0006\u0094\u0001\u0095\u0001\u0096\u0001BE\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0012H\u0016J\u0016\u0010\u0019\u001a\u00020\u00122\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0017J\"\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\"2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\u0008\u0010+\u001a\u00020\u0012H\u0016J\u0008\u0010,\u001a\u00020\u0012H\u0016J\u0018\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020\'2\u0006\u0010/\u001a\u00020\"H\u0016J\u0018\u00100\u001a\u00020\u00122\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\'H\u0016J\u0008\u00104\u001a\u00020\u0012H\u0016J\u0010\u00105\u001a\u00020\u00122\u0006\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u00020\u00122\u0006\u00109\u001a\u00020\'H\u0016J\u0010\u0010:\u001a\u00020\u00122\u0006\u0010;\u001a\u00020<H\u0016J\u0010\u0010=\u001a\u00020\u00122\u0006\u0010>\u001a\u00020?H\u0016J\u0008\u0010@\u001a\u00020\u0012H\u0016J\u0016\u0010A\u001a\u00020\u00122\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\'0\u001bH\u0016J\u0018\u0010C\u001a\u00020\u00122\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u0016J$\u0010H\u001a\u00020\u00122\u0006\u0010)\u001a\u00020I2\u0012\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\'0KH\u0016J\u0010\u0010L\u001a\u00020\u00122\u0006\u00109\u001a\u00020\'H\u0016J\u0010\u0010M\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\nH\u0016J\u0018\u0010N\u001a\u00020\u00122\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020RH\u0016J\u001e\u0010S\u001a\u00020\u00122\u0014\u0010T\u001a\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020U\u0018\u00010KH\u0016J$\u0010V\u001a\u00020\u00122\u0006\u0010W\u001a\u00020X2\u0012\u0010Y\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\'0KH\u0016J\u0010\u0010Z\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\nH\u0016J$\u0010[\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\n2\u0012\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\'0KH\u0016J\u0018\u0010\\\u001a\u00020\u00122\u0006\u0010)\u001a\u00020]2\u0006\u0010^\u001a\u00020_H\u0016J\u001c\u0010`\u001a\u00020\u00122\u0012\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020U0KH\u0016J\u00d0\u0001\u0010a\u001a\u00020\u00122\u0006\u0010b\u001a\u00020c2\u0006\u0010d\u001a\u00020c2\u0006\u0010e\u001a\u00020c2\u0006\u0010f\u001a\u00020c2\u0006\u0010g\u001a\u00020c2\u0006\u0010h\u001a\u00020c2\u0006\u0010i\u001a\u00020c2\u0006\u0010j\u001a\u00020c2\u0006\u0010k\u001a\u00020c2\u0006\u0010l\u001a\u00020c2\u0006\u0010m\u001a\u00020c2\u0006\u0010n\u001a\u00020c2\u0006\u0010o\u001a\u00020c2\u0006\u0010p\u001a\u00020c2\u0006\u0010q\u001a\u00020c2\u0006\u0010r\u001a\u00020c2\u0006\u0010s\u001a\u00020c2\u0006\u0010t\u001a\u00020c2\u0006\u0010u\u001a\u00020c2\u0006\u0010v\u001a\u00020c2\u0006\u0010w\u001a\u00020c2\u0006\u0010x\u001a\u00020c2\u0006\u0010y\u001a\u00020c2\u0006\u0010z\u001a\u00020c2\u0006\u0010{\u001a\u00020cH\u0016J\u0010\u0010|\u001a\u00020\u00122\u0006\u00109\u001a\u00020\'H\u0016J\u0010\u0010}\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\nH\u0016J\u0010\u0010~\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u007fH\u0016J\u001e\u0010\u0080\u0001\u001a\u00020\u00122\u0013\u0010J\u001a\u000f\u0012\u0004\u0012\u00020\'\u0012\u0005\u0012\u00030\u0081\u00010KH\u0016J\u001a\u0010\u0082\u0001\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\n2\u0007\u0010\u0083\u0001\u001a\u00020\'H\u0016J\u0013\u0010\u0084\u0001\u001a\u00020\u00122\u0008\u0010\u0085\u0001\u001a\u00030\u0081\u0001H\u0016J\u001e\u0010\u0086\u0001\u001a\u00020\u00122\u0013\u0010J\u001a\u000f\u0012\u0004\u0012\u00020\'\u0012\u0005\u0012\u00030\u0081\u00010KH\u0016J\t\u0010\u0087\u0001\u001a\u00020\u0012H\u0016J\t\u0010\u0088\u0001\u001a\u00020\u0012H\u0016J\u001b\u0010\u0089\u0001\u001a\u00020\u00122\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u00012\u0006\u0010&\u001a\u00020\'H\u0016J\t\u0010\u008c\u0001\u001a\u00020\u0012H\u0016J\t\u0010\u008d\u0001\u001a\u00020\u0012H\u0016J\t\u0010\u008e\u0001\u001a\u00020\u0012H\u0016J\u0013\u0010\u008f\u0001\u001a\u00020\u00122\u0008\u0010\u0090\u0001\u001a\u00030\u0091\u0001H\u0016J\u0016\u0010\u0092\u0001\u001a\u00030\u0093\u0001*\u00020%2\u0006\u0010&\u001a\u00020\'H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0097\u0001"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/BbposControllerListener;",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "readerStatusListener",
        "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
        "configurationListener",
        "Lcom/stripe/hardware/emv/ConfigurationListener;",
        "bbposReaderInfoFactory",
        "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
        "debugLogsShouldBeSentToSplunk",
        "Ljavax/inject/Provider;",
        "",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/emv/ConfigurationListener;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Ljavax/inject/Provider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
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
        "toDisconnectCause",
        "Lcom/stripe/hardware/status/DisconnectCause;",
        "BbposErrorMessage",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Companion;

.field private static final MISSING_ENCRYPTION_KEY_EC:Ljava/lang/String; = "116"

.field private static final MISSING_ENCRYPTION_KEY_ERR_MSG:Ljava/lang/String; = "Missing encryption keys"


# instance fields
.field private final bbposReaderInfoFactory:Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

.field private final configurationListener:Lcom/stripe/hardware/emv/ConfigurationListener;

.field private final debugLogsShouldBeSentToSplunk:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
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

.field private final readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->Companion:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/emv/ConfigurationListener;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Ljavax/inject/Provider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            "Lcom/stripe/hardware/emv/ConfigurationListener;",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readerStatusListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbposReaderInfoFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugLogsShouldBeSentToSplunk"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 66
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->configurationListener:Lcom/stripe/hardware/emv/ConfigurationListener;

    .line 67
    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->bbposReaderInfoFactory:Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

    .line 68
    iput-object p4, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->debugLogsShouldBeSentToSplunk:Ljavax/inject/Provider;

    .line 69
    iput-object p5, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method private final toDisconnectCause(Lcom/stripe/bbpos/sdk/Error;Ljava/lang/String;)Lcom/stripe/hardware/status/DisconnectCause;
    .locals 4

    .line 118
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/Error;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "The reader is already connected to another device"

    packed-switch p1, :pswitch_data_0

    .line 139
    sget-object p1, Lcom/stripe/hardware/status/DisconnectCause;->UNKNOWN:Lcom/stripe/hardware/status/DisconnectCause;

    return-object p1

    .line 138
    :pswitch_0
    sget-object p1, Lcom/stripe/hardware/status/DisconnectCause;->COMM_LINK_UNINITIALIZED:Lcom/stripe/hardware/status/DisconnectCause;

    return-object p1

    .line 137
    :pswitch_1
    sget-object p1, Lcom/stripe/hardware/status/DisconnectCause;->USB_NOT_SUPPORTED:Lcom/stripe/hardware/status/DisconnectCause;

    return-object p1

    .line 136
    :pswitch_2
    sget-object p1, Lcom/stripe/hardware/status/DisconnectCause;->USB_DEVICE_PERMISSION_DENIED:Lcom/stripe/hardware/status/DisconnectCause;

    return-object p1

    .line 135
    :pswitch_3
    sget-object p1, Lcom/stripe/hardware/status/DisconnectCause;->USB_DEVICE_NOT_FOUND:Lcom/stripe/hardware/status/DisconnectCause;

    return-object p1

    .line 128
    :pswitch_4
    check-cast p2, Ljava/lang/CharSequence;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {p2, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    sget-object p1, Lcom/stripe/hardware/status/DisconnectCause;->CONNECTED_TO_ANOTHER_DEVICE:Lcom/stripe/hardware/status/DisconnectCause;

    return-object p1

    .line 131
    :cond_0
    sget-object p1, Lcom/stripe/hardware/status/DisconnectCause;->FAIL_TO_START_USB:Lcom/stripe/hardware/status/DisconnectCause;

    return-object p1

    .line 120
    :pswitch_5
    check-cast p2, Ljava/lang/CharSequence;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {p2, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    sget-object p1, Lcom/stripe/hardware/status/DisconnectCause;->CONNECTED_TO_ANOTHER_DEVICE:Lcom/stripe/hardware/status/DisconnectCause;

    return-object p1

    .line 123
    :cond_1
    sget-object p1, Lcom/stripe/hardware/status/DisconnectCause;->FAIL_TO_START_BLUETOOTH:Lcom/stripe/hardware/status/DisconnectCause;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onBatteryLow(Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;)V
    .locals 3

    const-string v0, "batteryStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBatteryLow batteryStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 148
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 152
    sget-object p1, Lcom/stripe/hardware/status/ReaderBatteryStatus;->NOT_CHARGING:Lcom/stripe/hardware/status/ReaderBatteryStatus;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 151
    :cond_1
    sget-object p1, Lcom/stripe/hardware/status/ReaderBatteryStatus;->CHARGING:Lcom/stripe/hardware/status/ReaderBatteryStatus;

    goto :goto_0

    .line 150
    :cond_2
    sget-object p1, Lcom/stripe/hardware/status/ReaderBatteryStatus;->CRITICALLY_LOW:Lcom/stripe/hardware/status/ReaderBatteryStatus;

    goto :goto_0

    .line 149
    :cond_3
    sget-object p1, Lcom/stripe/hardware/status/ReaderBatteryStatus;->LOW:Lcom/stripe/hardware/status/ReaderBatteryStatus;

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    invoke-interface {v0, p1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleLowBattery(Lcom/stripe/hardware/status/ReaderBatteryStatus;)V

    return-void
.end method

.method public onBtConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const-string v0, "connectedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onBtDisconnected()V
    .locals 0

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

    return-void
.end method

.method public onDeviceReset(ZLcom/stripe/core/bbpos/hardware/api/DeviceResetReason;)V
    .locals 3

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceReset isSuccess="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 225
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 230
    sget-object p2, Lcom/stripe/hardware/status/RebootCause;->WATCHDOG_TIMEOUT:Lcom/stripe/hardware/status/RebootCause;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 229
    :cond_1
    sget-object p2, Lcom/stripe/hardware/status/RebootCause;->RECOVERY_ATTEMPT:Lcom/stripe/hardware/status/RebootCause;

    goto :goto_0

    .line 228
    :cond_2
    sget-object p2, Lcom/stripe/hardware/status/RebootCause;->FIRMWARE_SELF_TEST:Lcom/stripe/hardware/status/RebootCause;

    goto :goto_0

    .line 227
    :cond_3
    sget-object p2, Lcom/stripe/hardware/status/RebootCause;->SDK_REQUESTED_REBOOT:Lcom/stripe/hardware/status/RebootCause;

    goto :goto_0

    .line 226
    :cond_4
    sget-object p2, Lcom/stripe/hardware/status/RebootCause;->UNKNOWN:Lcom/stripe/hardware/status/RebootCause;

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderRebootAttempt(ZLcom/stripe/hardware/status/RebootCause;)V

    return-void
.end method

.method public onDeviceResetAlert(I)V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceResetAlert timeBeforeReset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " minutes"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public onError(Lcom/stripe/bbpos/sdk/Error;Ljava/lang/String;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 162
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 188
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->Companion:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$Companion;

    invoke-virtual {v0, p2}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$Companion;->fromString(Ljava/lang/String;)Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/stripe/bbpos/sdk/Error;->INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE:Lcom/stripe/bbpos/sdk/Error;

    if-ne p1, v1, :cond_0

    .line 190
    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->USB_CONNECTION_WARNING_MSG:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    if-ne v0, v1, :cond_0

    .line 192
    iget-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", continue the flow and fire onUsbConnected()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Lkotlin/Pair;

    invoke-interface {p2, p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 193
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->onUsbConnected()V

    return-void

    .line 181
    :pswitch_0
    iget-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 182
    sget-object v0, Lcom/stripe/hardware/status/IntegrityCheckError;->Companion:Lcom/stripe/hardware/status/IntegrityCheckError$Companion;

    invoke-virtual {v0, p2}, Lcom/stripe/hardware/status/IntegrityCheckError$Companion;->fromErrorMessage(Ljava/lang/String;)Lcom/stripe/hardware/status/IntegrityCheckError;

    move-result-object p2

    check-cast p2, Lcom/stripe/hardware/status/ReaderException;

    .line 181
    invoke-interface {p1, p2}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderException(Lcom/stripe/hardware/status/ReaderException;)V

    return-void

    .line 179
    :pswitch_1
    iget-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    sget-object v0, Lcom/stripe/hardware/status/BbposTamper;->Companion:Lcom/stripe/hardware/status/BbposTamper$Companion;

    invoke-virtual {v0, p2}, Lcom/stripe/hardware/status/BbposTamper$Companion;->fromErrorMessage(Ljava/lang/String;)Lcom/stripe/hardware/status/BbposTamper;

    move-result-object p2

    check-cast p2, Lcom/stripe/hardware/status/ReaderException;

    invoke-interface {p1, p2}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderException(Lcom/stripe/hardware/status/ReaderException;)V

    return-void

    .line 177
    :pswitch_2
    iget-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    invoke-interface {p1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleDeviceBusy()V

    return-void

    .line 173
    :pswitch_3
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->toDisconnectCause(Lcom/stripe/bbpos/sdk/Error;Ljava/lang/String;)Lcom/stripe/hardware/status/DisconnectCause;

    move-result-object p1

    .line 173
    invoke-interface {v0, p1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderDisconnect(Lcom/stripe/hardware/status/DisconnectCause;)V

    return-void

    .line 194
    :cond_0
    sget-object v1, Lcom/stripe/bbpos/sdk/Error;->INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE:Lcom/stripe/bbpos/sdk/Error;

    if-ne p1, v1, :cond_1

    .line 195
    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->SERIAL_ALREADY_CONNECTED:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    if-ne v0, v1, :cond_1

    .line 197
    iget-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", continue the flow and fire onSerialConnected()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Lkotlin/Pair;

    invoke-interface {p2, p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 198
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->onSerialConnected()V

    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    new-instance v1, Lcom/stripe/hardware/status/ReaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/Error;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2, v2}, Lcom/stripe/hardware/status/ReaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderException(Lcom/stripe/hardware/status/ReaderException;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHardwareFunctionalTestResult(IILjava/lang/String;)V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Functional test result <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "> for index <"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ">. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public onPowerButtonPressed()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onPowerButtonPressed"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 238
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    sget-object v1, Lcom/stripe/hardware/status/ReaderPowerEvent;->POWER_BUTTON_PRESSED:Lcom/stripe/hardware/status/ReaderPowerEvent;

    invoke-interface {v0, v1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderPowerEvent(Lcom/stripe/hardware/status/ReaderPowerEvent;)V

    return-void
.end method

.method public onPowerDown()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onPowerDown"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 243
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    sget-object v1, Lcom/stripe/hardware/status/ReaderPowerEvent;->POWER_DOWN:Lcom/stripe/hardware/status/ReaderPowerEvent;

    invoke-interface {v0, v1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderPowerEvent(Lcom/stripe/hardware/status/ReaderPowerEvent;)V

    return-void
.end method

.method public onRequestDisplayAsterisk(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "unmaskedDigits"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestDisplayText(Lcom/stripe/bbpos/sdk/DisplayText;Ljava/lang/String;)V
    .locals 1

    const-string v0, "displayText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "displayTextLanguage"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestFinalConfirm()V
    .locals 0

    return-void
.end method

.method public onRequestManualPanEntry(Lcom/stripe/bbpos/sdk/ManualPanEntryType;)V
    .locals 1

    const-string v0, "manualPanEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestOnlineProcess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPinEntry(Lcom/stripe/bbpos/sdk/PinEntrySource;)V
    .locals 1

    const-string v0, "pinEntrySource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestProduceAudioTone(Lcom/stripe/bbpos/sdk/ContactlessStatusTone;)V
    .locals 1

    const-string v0, "tone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestSelectAccountType()V
    .locals 0

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

    return-void
.end method

.method public onReturnAccessiblePinPadTouchEvent(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;Ljava/util/UUID;)V
    .locals 1

    const-string v0, "pinPadTouchEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnBatchData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnCancelCheckCardResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnCheckCardResult(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;Lcom/stripe/bbpos/sdk/CardData;)V
    .locals 1

    const-string v0, "checkCardResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cardData"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnDebugLog(Ljava/util/Map;)V
    .locals 3
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

    .line 207
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;

    invoke-virtual {v0, p1}, Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;->toLogString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->debugLogsShouldBeSentToSplunk:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "onReturnDebugLog: "

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BbposControllerListener"

    invoke-virtual {v0, v1, p1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnDeviceInfo(Lcom/stripe/bbpos/sdk/DeviceInfo;Ljava/util/Map;)V
    .locals 23
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "deviceInfo"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "rawReaderData"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-object v3, v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onReturnDeviceInfo "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lkotlin/Pair;

    invoke-interface {v3, v4, v5}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 354
    iget-object v3, v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 355
    iget-object v4, v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->bbposReaderInfoFactory:Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

    .line 356
    iget-object v2, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->pinKsn:Ljava/lang/String;

    move-object v5, v4

    .line 357
    iget-object v4, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->macKsn:Ljava/lang/String;

    move-object v6, v3

    .line 358
    iget-object v3, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->emvKsn:Ljava/lang/String;

    move-object v7, v5

    .line 359
    iget-object v5, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->trackKsn:Ljava/lang/String;

    move-object v8, v6

    .line 360
    iget-object v6, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->batteryPercentage:Ljava/lang/String;

    move-object v9, v7

    .line 361
    iget-object v7, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->terminalSettingVersion:Ljava/lang/String;

    move-object v10, v8

    .line 362
    iget-object v8, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->deviceSettingVersion:Ljava/lang/String;

    move-object v11, v9

    .line 363
    iget-object v9, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->bootloaderVersion:Ljava/lang/String;

    move-object v12, v10

    .line 364
    iget-object v10, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->emvKeyProfileId:Ljava/lang/String;

    move-object v13, v11

    .line 365
    iget-object v11, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->firmwareVersion:Ljava/lang/String;

    move-object v14, v12

    .line 366
    iget-object v12, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->hardwareVersion:Ljava/lang/String;

    move-object v15, v13

    .line 367
    iget-object v13, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->macKeyProfileId:Ljava/lang/String;

    move-object/from16 v16, v14

    .line 368
    iget-object v14, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->pinKeyProfileId:Ljava/lang/String;

    move-object/from16 v17, v15

    .line 369
    iget-object v15, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->serialNumber:Ljava/lang/String;

    .line 370
    iget-object v0, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->trackKeyProfileId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 371
    iget-object v0, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->isCharging:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 374
    iget-object v0, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->firmwareId:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 375
    iget-object v0, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->coinCellBatteryVoltage:Ljava/lang/String;

    .line 376
    iget-object v1, v1, Lcom/stripe/bbpos/sdk/DeviceInfo;->isUsbConnected:Ljava/lang/String;

    move-object/from16 v22, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v19

    const/16 v19, 0x0

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v18

    move-object/from16 v18, p2

    .line 355
    invoke-interface/range {v1 .. v22}, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/hardware/status/ReaderInfo;

    move-result-object v1

    .line 354
    invoke-interface {v0, v1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleDeviceInfo(Lcom/stripe/hardware/status/ReaderInfo;)V

    return-void
.end method

.method public onReturnDisableInputAmountResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnEncryptDataResult(ZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnPinEntryResult(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pinData"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnReadAidResult(Ljava/util/Map;)V
    .locals 3
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

    .line 467
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onReturnReadAIDResult"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 469
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->configurationListener:Lcom/stripe/hardware/emv/ConfigurationListener;

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/stripe/hardware/emv/ConfigurationListener;->handleReaderAid(Ljava/util/Map;)V

    return-void
.end method

.method public onReturnReadTerminalSettingResult(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;)V
    .locals 40

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "acquirerIdentifier"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalCountryCode"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionCurrencyCode"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionCurrencyExponent"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchantNameAndLocation"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchantIdentifier"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalIdentification"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalCapabilities"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalType"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalTerminalCapabilities"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "normalModeTimeout"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "standbyModeTimeout"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bluetoothDiscoveryTimeout"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msrPinEntryTimeout"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firmwareFallbackEnabled"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customBluetoothNamePrefix"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customBluetoothSerialSuffix"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firmwareForceChipEnabled"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iccTransactionBeepEnabled"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keypadEventBeepEnabled"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spocModeEnabled"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domesticDebitAidList"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visaDynamicReaderLimit"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buzzerSoundEnabled"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configHash"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 408
    iget-object v15, v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v14, 0x0

    new-array v14, v14, [Lkotlin/Pair;

    const-string v13, "onReturnReadTerminalSettingResult"

    invoke-interface {v15, v13, v14}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 409
    iget-object v13, v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->configurationListener:Lcom/stripe/hardware/emv/ConfigurationListener;

    .line 410
    new-instance v14, Lcom/stripe/hardware/emv/ReaderSettings;

    .line 411
    iget-object v15, v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    .line 412
    iget-object v1, v2, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    .line 413
    iget-object v2, v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    .line 414
    iget-object v3, v4, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    .line 415
    iget-object v4, v5, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    .line 416
    iget-object v5, v6, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    .line 417
    iget-object v6, v7, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    .line 418
    iget-object v7, v8, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    .line 419
    iget-object v8, v9, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    .line 420
    iget-object v9, v10, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    .line 421
    iget-object v10, v11, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    .line 422
    iget-object v11, v12, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v12, p13

    .line 423
    iget-object v12, v12, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v0, p14

    .line 424
    iget-object v0, v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p15

    .line 425
    iget-object v0, v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p16

    .line 426
    iget-object v0, v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p17

    .line 427
    iget-object v0, v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p18

    .line 428
    iget-object v0, v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p19

    .line 429
    iget-object v0, v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p20

    .line 430
    iget-object v0, v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p21

    .line 431
    iget-object v0, v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p22

    .line 432
    iget-object v0, v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p23

    .line 433
    iget-object v0, v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p24

    .line 434
    iget-object v0, v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p25

    .line 435
    iget-object v0, v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hexadecimal:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    .line 410
    invoke-direct/range {v14 .. v39}, Lcom/stripe/hardware/emv/ReaderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-interface {v13, v14}, Lcom/stripe/hardware/emv/ConfigurationListener;->handleReaderSettings(Lcom/stripe/hardware/emv/ReaderSettings;)V

    return-void
.end method

.method public onReturnReversalData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnSetPinPadButtonsResult(Z)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReturnSetPinPadButtonsResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public onReturnTransactionResult(Lcom/stripe/bbpos/sdk/TransactionResult$Type;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnUpdateAidResult(Ljava/util/Map;)V
    .locals 4
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

    .line 473
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "onReturnUpdateAIDResult"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 476
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 498
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 476
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->SUCCESS:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    if-eq v0, v3, :cond_1

    :cond_2
    move v1, v2

    .line 477
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->configurationListener:Lcom/stripe/hardware/emv/ConfigurationListener;

    xor-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0}, Lcom/stripe/hardware/emv/ConfigurationListener;->handleUpdateReaderAidData(Z)V

    return-void
.end method

.method public onReturnUpdateDisplaySettingsResult(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    iget-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "onReturnUpdateDisplaySettingsResult"

    invoke-interface {p2, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 461
    iget-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->configurationListener:Lcom/stripe/hardware/emv/ConfigurationListener;

    invoke-interface {p2, p1}, Lcom/stripe/hardware/emv/ConfigurationListener;->handleDisplaySettings(Z)V

    return-void
.end method

.method public onReturnUpdateTerminalSettingResult(Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;)V
    .locals 4

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "onReturnUpdateTerminalSettingResult"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 445
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->configurationListener:Lcom/stripe/hardware/emv/ConfigurationListener;

    sget-object v2, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->SUCCESS:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0, v1}, Lcom/stripe/hardware/emv/ConfigurationListener;->handleUpdateReaderSettings(Z)V

    return-void
.end method

.method public onReturnUpdateTerminalSettingsResult(Ljava/util/Map;)V
    .locals 4
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

    .line 451
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "onReturnUpdateTerminalSettingsResult"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 454
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 495
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 454
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->SUCCESS:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    if-eq v0, v3, :cond_1

    :cond_2
    move v1, v2

    .line 455
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->configurationListener:Lcom/stripe/hardware/emv/ConfigurationListener;

    xor-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0}, Lcom/stripe/hardware/emv/ConfigurationListener;->handleUpdateReaderSettings(Z)V

    return-void
.end method

.method public onSerialConnected()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onSerialConnected"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 265
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    sget-object v1, Lcom/stripe/core/hardware/Reader$SerialReader;->INSTANCE:Lcom/stripe/core/hardware/Reader$SerialReader;

    check-cast v1, Lcom/stripe/core/hardware/Reader;

    invoke-interface {v0, v1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderConnect(Lcom/stripe/core/hardware/Reader;)V

    return-void
.end method

.method public onSerialDisconnected()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onSerialDisconnected"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 271
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderDisconnect$default(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/status/DisconnectCause;ILjava/lang/Object;)V

    return-void
.end method

.method public onSessionError(Lcom/stripe/core/bbpos/hardware/api/SessionError;Ljava/lang/String;)V
    .locals 3

    const-string v0, "sessionError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSessionError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 285
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    new-instance v1, Lcom/stripe/hardware/status/ReaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/stripe/core/bbpos/hardware/api/SessionError;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v2, 0x2

    invoke-direct {v1, p1, p2, v2, p2}, Lcom/stripe/hardware/status/ReaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleSessionException(Lcom/stripe/hardware/status/ReaderException;)V

    return-void
.end method

.method public onSessionInitialized()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onSessionInitialized"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 279
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    invoke-interface {v0}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleSessionInitialized()V

    return-void
.end method

.method public onUsbConnected()V
    .locals 0

    return-void
.end method

.method public onUsbDisconnected()V
    .locals 0

    return-void
.end method

.method public onWaitingForCard(Lcom/stripe/bbpos/sdk/CheckCardMode;)V
    .locals 1

    const-string v0, "checkCardMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
