.class public final Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;
.super Ljava/lang/Object;
.source "BbposDeviceControllerImpl.kt"

# interfaces
.implements Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/BbposDeviceControllerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposDeviceControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposDeviceControllerImpl.kt\ncom/stripe/core/bbpos/BbposDeviceControllerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,597:1\n1#2:598\n37#3,2:599\n37#3,2:601\n37#3,2:603\n*S KotlinDebug\n*F\n+ 1 BbposDeviceControllerImpl.kt\ncom/stripe/core/bbpos/BbposDeviceControllerImpl\n*L\n330#1:599,2\n494#1:601,2\n516#1:603,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008%\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u008f\u00012\u00020\u0001:\u0002\u008f\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000c\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u000fH\u0016J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u000fH\u0017J\u0008\u0010\u001c\u001a\u00020\u000fH\u0016J\u0008\u0010\u001d\u001a\u00020\u000fH\u0016J(\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0017J\u0018\u0010&\u001a\u00020\u000f2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0016J\u0008\u0010+\u001a\u00020\u000fH\u0016J\u0016\u0010,\u001a\u00020\u000f2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020(0.H\u0016J\u0010\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u00020(H\u0016J\u0010\u00101\u001a\u00020\u000f2\u0006\u00102\u001a\u00020(H\u0016J\u00d0\u0001\u00103\u001a\u00020\u000f2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002052\u0006\u00107\u001a\u0002052\u0006\u00108\u001a\u0002052\u0006\u00109\u001a\u0002052\u0006\u0010:\u001a\u0002052\u0006\u0010;\u001a\u0002052\u0006\u0010<\u001a\u0002052\u0006\u0010=\u001a\u0002052\u0006\u0010>\u001a\u0002052\u0006\u0010?\u001a\u0002052\u0006\u0010@\u001a\u0002052\u0006\u0010A\u001a\u0002052\u0006\u0010B\u001a\u0002052\u0006\u0010C\u001a\u0002052\u0006\u0010D\u001a\u0002052\u0006\u0010E\u001a\u0002052\u0006\u0010F\u001a\u0002052\u0006\u0010G\u001a\u0002052\u0006\u0010H\u001a\u0002052\u0006\u0010I\u001a\u0002052\u0006\u0010J\u001a\u0002052\u0006\u0010K\u001a\u0002052\u0006\u0010L\u001a\u0002052\u0006\u0010M\u001a\u000205H\u0016J\u0008\u0010N\u001a\u00020\u000fH\u0016J\u0010\u0010O\u001a\u00020\u000f2\u0006\u0010P\u001a\u00020\u0017H\u0016J\u0010\u0010Q\u001a\u00020\u000f2\u0006\u0010R\u001a\u00020\u0017H\u0016J\u0010\u0010S\u001a\u00020\u000f2\u0006\u0010T\u001a\u000205H\u0016J\u0012\u0010U\u001a\u00020\u000f2\u0008\u0010V\u001a\u0004\u0018\u00010(H\u0016J\u0010\u0010W\u001a\u00020\u000f2\u0006\u0010X\u001a\u000205H\u0016Jp\u0010Y\u001a\u00020\u000f2\u0006\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020[2\u0006\u0010^\u001a\u00020[2\u0006\u0010_\u001a\u00020[2\u0006\u0010`\u001a\u00020[2\u0006\u0010a\u001a\u00020[2\u0006\u0010b\u001a\u00020[2\u0006\u0010c\u001a\u00020[2\u0006\u0010d\u001a\u00020[2\u0006\u0010e\u001a\u00020[2\u0006\u0010f\u001a\u00020[2\u0006\u0010g\u001a\u00020[H\u0016J \u0010h\u001a\u00020\u000f2\u000e\u0010i\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010.2\u0006\u0010j\u001a\u00020\u0017H\u0016J\u00a8\u0001\u0010k\u001a\u00020\u000f2\u0006\u0010l\u001a\u00020m2\u0006\u0010n\u001a\u00020\u00152\u0006\u0010o\u001a\u00020p2\u0006\u0010q\u001a\u0002052\u0006\u0010r\u001a\u00020\u00172\u0006\u0010s\u001a\u00020\u00172\u0006\u0010t\u001a\u00020(2\u0006\u0010u\u001a\u00020(2\u0006\u0010v\u001a\u00020\u00172\u0006\u0010w\u001a\u00020\u00172\u0006\u0010x\u001a\u00020\u00172\u0006\u0010y\u001a\u00020\u00172\u0008\u0010z\u001a\u0004\u0018\u00010(2\u0008\u0010{\u001a\u0004\u0018\u00010|2\u0008\u0010}\u001a\u0004\u0018\u00010~2\u0006\u0010\u007f\u001a\u0002052\u0007\u0010\u0080\u0001\u001a\u0002052\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0003\u0010\u0082\u0001J#\u0010\u0083\u0001\u001a\u00020\u000f2\u0007\u0010\u0080\u0001\u001a\u0002052\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0003\u0010\u0084\u0001J\t\u0010\u0085\u0001\u001a\u00020\u000fH\u0016J\t\u0010\u0086\u0001\u001a\u00020\u000fH\u0016J\u0011\u0010\u0087\u0001\u001a\u00020\u000f2\u0006\u0010i\u001a\u00020(H\u0016J\t\u0010\u0088\u0001\u001a\u00020\u000fH\u0016J\t\u0010\u0089\u0001\u001a\u00020\u000fH\u0016J\u001e\u0010\u008a\u0001\u001a\u00020\u000f2\u0013\u0010\'\u001a\u000f\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020(0\u008b\u0001H\u0016J\u001f\u0010\u008c\u0001\u001a\u00020\u000f2\u0014\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020(\u0012\u0005\u0012\u00030\u008d\u00010\u008b\u0001H\u0016J\u0011\u0010\u008e\u0001\u001a\u00020\u000f2\u0006\u0010V\u001a\u00020(H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0090\u0001"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "controller",
        "Lcom/bbpos/bbdevice/BBDeviceController;",
        "deviceInfoCache",
        "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/bbpos/bbdevice/BBDeviceController;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "cancelCheckCard",
        "",
        "cancelPinEntry",
        "cancelSelectAccountType",
        "cancelSelectApplication",
        "checkCard",
        "mode",
        "Lcom/stripe/bbpos/sdk/CheckCardMode;",
        "timeout",
        "",
        "connectBt",
        "bluetoothDevice",
        "Landroid/bluetooth/BluetoothDevice;",
        "disableInputAmount",
        "disconnectBt",
        "disconnectSerial",
        "enableInputAmount",
        "setAmountTimeout",
        "amountInputType",
        "Lcom/stripe/bbpos/sdk/AmountInputType;",
        "otherAmountOption",
        "Lcom/stripe/bbpos/sdk/OtherAmountOption;",
        "tippingOption",
        "Lcom/stripe/core/bbpos/hardware/api/TippingOption;",
        "encryptDataWithSettings",
        "data",
        "",
        "encryptionMethod",
        "Lcom/stripe/bbpos/sdk/EncryptionMethod;",
        "getDeviceInfo",
        "getDeviceInfoByKeys",
        "keys",
        "",
        "initSession",
        "vendorToken",
        "readAid",
        "appIndex",
        "readTerminalSetting",
        "acquirerIdentifier",
        "",
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
        "resetDevice",
        "selectAccountType",
        "type",
        "selectApplication",
        "index",
        "sendFinalConfirmResult",
        "confirm",
        "sendOnlineProcessResult",
        "tlv",
        "setDebugLogEnabled",
        "enabled",
        "setPinPadButtons",
        "zero",
        "Landroid/graphics/Rect;",
        "one",
        "two",
        "three",
        "four",
        "five",
        "six",
        "seven",
        "eight",
        "nine",
        "backspace",
        "cancel",
        "enter",
        "startBtScan",
        "deviceName",
        "scanTimeout",
        "startEmv",
        "transactionType",
        "Lcom/stripe/bbpos/sdk/TransactionType;",
        "checkCardMode",
        "quickChipOption",
        "Lcom/stripe/bbpos/sdk/QuickChipOption;",
        "disableQuickChip",
        "currencyCode",
        "currencyExponent",
        "amount",
        "terminalTime",
        "checkCardTimeout",
        "selectApplicationTimeout",
        "selectAccountTypeTimeout",
        "onlineProcessTimeout",
        "terminalCapabilitiesOverride",
        "domesticDebitPriority",
        "Lcom/stripe/bbpos/sdk/DomesticDebitPriority;",
        "contactlessOnlinePinOption",
        "Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;",
        "forcePinEntry",
        "isAccessiblePinPad",
        "pinEntryTimeoutInSeconds",
        "(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;Lcom/stripe/bbpos/sdk/QuickChipOption;ZIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;)V",
        "startPinEntry",
        "(ZLjava/lang/Integer;)V",
        "startSerial",
        "startUsb",
        "startUsbWithDeviceName",
        "stopBtScan",
        "stopUsb",
        "updateAid",
        "",
        "updateDisplaySettings",
        "",
        "updateTerminalSettings",
        "Companion",
        "sdk_release"
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
.field public static final AMOUNT_PARAM_NAME:Ljava/lang/String; = "amount"

.field public static final CHECK_CARD_MODE_PARAM_NAME:Ljava/lang/String; = "checkCardMode"

.field public static final CHECK_CARD_TIMEOUT_PARAM_NAME:Ljava/lang/String; = "checkCardTimeout"

.field public static final CONTACTLESS_ONLINE_PIN_OPTION_PARAM_NAME:Ljava/lang/String; = "contactlessOnlinePINOption"

.field public static final CURRENCY_CHARACTERS_PARAM_NAME:Ljava/lang/String; = "currencyCharacters"

.field public static final CURRENCY_CODE_PARAM_NAME:Ljava/lang/String; = "currencyCode"

.field public static final CURRENCY_EXPONENT_PARAM_NAME:Ljava/lang/String; = "currencyExponent"

.field public static final Companion:Lcom/stripe/core/bbpos/BbposDeviceControllerImpl$Companion;

.field public static final DISABLE_QUICK_CHIP_PARAM_NAME:Ljava/lang/String; = "disableQuickChip"

.field public static final DOMESTIC_DEBIT_PRIORITY_PARAM_NAME:Ljava/lang/String; = "domesticDebitPriority"

.field public static final FORCE_PIN_ENTRY:Ljava/lang/String; = "forcePinEntry"

.field public static final IS_ACCESSIBLE_PIN_PAD_PARAM_NAME:Ljava/lang/String; = "isAccessiblePINPad"

.field public static final ONLINE_PROCESS_TIMEOUT_PARAM_NAME:Ljava/lang/String; = "onlineProcessTimeout"

.field public static final PIN_ENTRY_TIMEOUT:Ljava/lang/String; = "pinEntryTimeout"

.field public static final QUICK_CHIP_OPTION_PARAM_NAME:Ljava/lang/String; = "quickChipOption"

.field public static final SELECT_ACCOUNT_TYPE_PARAM_NAME:Ljava/lang/String; = "selectAccountTypeTimeout"

.field public static final SELECT_APPLICATION_TIMEOUT_PARAM_NAME:Ljava/lang/String; = "selectApplicationTimeout"

.field public static final TERMINAL_CAPABILITIES_PARAM_NAME:Ljava/lang/String; = "terminalCapabilities"

.field public static final TERMINAL_TIME_PARAM_NAME:Ljava/lang/String; = "terminalTime"

.field public static final TRANSACTION_TYPE_PARAM_NAME:Ljava/lang/String; = "transactionType"


# instance fields
.field private final appScope:Lkotlinx/coroutines/CoroutineScope;

.field private final controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

.field private final deviceInfoCache:Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;

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
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->Companion:Lcom/stripe/core/bbpos/BbposDeviceControllerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController;",
            "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    .line 54
    iput-object p2, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->deviceInfoCache:Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;

    .line 55
    iput-object p3, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->appScope:Lkotlinx/coroutines/CoroutineScope;

    .line 56
    iput-object p4, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method


# virtual methods
.method public cancelCheckCard()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelCheckCard"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 63
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->cancelCheckCard()V

    return-void
.end method

.method public cancelPinEntry()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelPinEntry"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 71
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->cancelPinEntry()V

    return-void
.end method

.method public cancelSelectAccountType()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelSelectAccountType"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 79
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->cancelSelectAccountType()V

    return-void
.end method

.method public cancelSelectApplication()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelSelectApplication"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 87
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->cancelSelectApplication()V

    return-void
.end method

.method public checkCard(Lcom/stripe/bbpos/sdk/CheckCardMode;I)V
    .locals 3

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "checkCard"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 95
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 96
    invoke-static {p1}, Lcom/stripe/core/bbpos/mappers/CheckCardModeMapperKt;->convert(Lcom/stripe/bbpos/sdk/CheckCardMode;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "checkCardMode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 99
    const-string p2, "checkCardTimeout"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object p1, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2, v0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->checkCard(Ljava/util/Hashtable;)V

    return-void

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid CheckCardMode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connectBt(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const-string v0, "bluetoothDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "connectBT"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 110
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->connectBT(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public disableInputAmount()V
    .locals 3
    .annotation runtime Lcom/stripe/jvmcore/dagger/BluetoothUsbPinPadReaders;
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "disableInputAmount"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 556
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->disableInputAmount()V

    return-void
.end method

.method public disconnectBt()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "disconnectBT"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 118
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->disconnectBT()V

    return-void
.end method

.method public disconnectSerial()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "disconnectSerial"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 126
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->stopSerial()V

    return-void
.end method

.method public enableInputAmount(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/core/bbpos/hardware/api/TippingOption;)V
    .locals 17
    .annotation runtime Lcom/stripe/jvmcore/dagger/BluetoothUsbPinPadReaders;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "amountInputType"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "otherAmountOption"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "tippingOption"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v6, Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 482
    const-string v8, "setAmountTimeout"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/AmountInputTypeMapperKt;->convert(Lcom/stripe/bbpos/sdk/AmountInputType;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/OtherAmountOptionMapperKt;->convert(Lcom/stripe/bbpos/sdk/OtherAmountOption;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$OtherAmountOption;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    instance-of v4, v3, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;

    const-string v7, ", currencyExponent="

    const-string v9, ", currencyCode="

    const-string v10, ", amount="

    const-string v11, "currencyCharacters"

    const-string v12, ", otherAmountOption="

    const-string v13, ", amountInputType="

    const-string v14, "enableInputAmount parameters. setAmountTimeout="

    const-string v15, "currencyExponent"

    const-string v5, "currencyCode"

    move/from16 v16, v4

    const-string v4, "amount"

    if-eqz v16, :cond_0

    move-object/from16 v16, p4

    check-cast v16, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;->unbox-impl()Lcom/stripe/bbpos/sdk/PercentageTips;

    move-result-object v3

    move-object/from16 v16, v7

    .line 490
    iget-object v7, v3, Lcom/stripe/bbpos/sdk/PercentageTips;->amount:Ljava/lang/String;

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget v7, v3, Lcom/stripe/bbpos/sdk/PercentageTips;->currencyCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget v7, v3, Lcom/stripe/bbpos/sdk/PercentageTips;->currencyExponent:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget v7, v3, Lcom/stripe/bbpos/sdk/PercentageTips;->currencyCode:I

    invoke-static {v7}, Lcom/stripe/core/bbpos/mappers/CurrencyCodeMapperKt;->convert(I)[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-result-object v7

    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v7, v3, Lcom/stripe/bbpos/sdk/PercentageTips;->tipsPercentageOptions:Ljava/util/List;

    check-cast v7, Ljava/util/Collection;

    move-object/from16 p4, v3

    const/4 v11, 0x0

    .line 602
    new-array v3, v11, [Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 494
    const-string v7, "tipsPercentageOptions"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v3, v0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 499
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 499
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 503
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 499
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 504
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 499
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v7, v16

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 499
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    const-string v2, ", tipsPercentageOptions="

    .line 499
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p4

    .line 506
    iget-object v2, v2, Lcom/stripe/bbpos/sdk/PercentageTips;->tipsPercentageOptions:Ljava/util/List;

    .line 499
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    new-array v2, v11, [Lkotlin/Pair;

    .line 498
    invoke-interface {v3, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    goto/16 :goto_0

    :cond_0
    move-object/from16 v3, p4

    move-object/from16 v16, v7

    .line 511
    instance-of v7, v3, Lcom/stripe/core/bbpos/hardware/api/TippingOption$FixedAmount;

    if-eqz v7, :cond_1

    check-cast v3, Lcom/stripe/core/bbpos/hardware/api/TippingOption$FixedAmount;

    invoke-virtual {v3}, Lcom/stripe/core/bbpos/hardware/api/TippingOption$FixedAmount;->unbox-impl()Lcom/stripe/bbpos/sdk/FixedAmountTips;

    move-result-object v3

    .line 512
    iget-object v7, v3, Lcom/stripe/bbpos/sdk/FixedAmountTips;->amount:Ljava/lang/String;

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget v7, v3, Lcom/stripe/bbpos/sdk/FixedAmountTips;->currencyCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget v7, v3, Lcom/stripe/bbpos/sdk/FixedAmountTips;->currencyExponent:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget v7, v3, Lcom/stripe/bbpos/sdk/FixedAmountTips;->currencyCode:I

    invoke-static {v7}, Lcom/stripe/core/bbpos/mappers/CurrencyCodeMapperKt;->convert(I)[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-result-object v7

    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v7, v3, Lcom/stripe/bbpos/sdk/FixedAmountTips;->tipsAmountOptions:Ljava/util/List;

    check-cast v7, Ljava/util/Collection;

    move-object/from16 p4, v3

    const/4 v11, 0x0

    .line 604
    new-array v3, v11, [Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 516
    const-string v7, "tipsAmountOptions"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v3, v0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 521
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 521
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 525
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 521
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 526
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 521
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v7, v16

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 527
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 521
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 527
    const-string v2, ", tipsAmountOptions="

    .line 521
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p4

    .line 528
    iget-object v2, v2, Lcom/stripe/bbpos/sdk/FixedAmountTips;->tipsAmountOptions:Ljava/util/List;

    .line 521
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    new-array v2, v11, [Lkotlin/Pair;

    .line 520
    invoke-interface {v3, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_0

    .line 534
    :cond_1
    instance-of v3, v3, Lcom/stripe/core/bbpos/hardware/api/TippingOption$None;

    if-eqz v3, :cond_2

    .line 537
    iget-object v3, v0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 541
    const-string v2, ", "

    .line 538
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    new-array v2, v11, [Lkotlin/Pair;

    .line 537
    invoke-interface {v3, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 547
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2, v6}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->enableInputAmount(Ljava/util/Hashtable;)V

    return-void

    .line 486
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid OtherAmountOption"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 484
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid AmountInputType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encryptDataWithSettings(Ljava/lang/String;Lcom/stripe/bbpos/sdk/EncryptionMethod;)V
    .locals 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "encryptionMethod"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "encryptDataWithSettings"

    invoke-interface {v2, v4, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 301
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 302
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-static {p2}, Lcom/stripe/core/bbpos/mappers/EncryptionMethodMapperKt;->convert(Lcom/stripe/bbpos/sdk/EncryptionMethod;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object p1, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2, v2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->encryptDataWithSettings(Ljava/util/Hashtable;)V

    return-void

    .line 304
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid Encryption Method"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDeviceInfo()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "getDeviceInfo"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 137
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->deviceInfoCache:Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;

    invoke-static {v0}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->getDeviceInfoFields(Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/ReaderInfoHelper;->INSTANCE:Lcom/stripe/core/bbpos/hardware/ReaderInfoHelper;

    invoke-virtual {v1}, Lcom/stripe/core/bbpos/hardware/ReaderInfoHelper;->getRawReaderInfoFields()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->getDeviceInfoByKeys(Ljava/util/List;)V

    return-void
.end method

.method public getDeviceInfoByKeys(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    new-instance v1, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getDeviceInfo(Ljava/util/ArrayList;)V

    return-void
.end method

.method public initSession(Ljava/lang/String;)V
    .locals 3

    const-string v0, "vendorToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "initSession"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 419
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->initSession(Ljava/lang/String;)V

    return-void
.end method

.method public readAid(Ljava/lang/String;)V
    .locals 3

    const-string v0, "appIndex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "readAID"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 149
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->readAID(Ljava/lang/String;)V

    return-void
.end method

.method public readTerminalSetting(ZZZZZZZZZZZZZZZZZZZZZZZZZ)V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "readTerminalSetting"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/16 v0, 0x19

    .line 185
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string p1, "9F01"

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    aput-object p1, v0, v1

    if-eqz p2, :cond_1

    .line 186
    const-string p1, "9F1A"

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    const/4 p2, 0x1

    aput-object p1, v0, p2

    if-eqz p3, :cond_2

    .line 187
    const-string p1, "5F2A"

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    const/4 p2, 0x2

    aput-object p1, v0, p2

    if-eqz p4, :cond_3

    .line 188
    const-string p1, "5F36"

    goto :goto_3

    :cond_3
    move-object p1, v2

    :goto_3
    const/4 p2, 0x3

    aput-object p1, v0, p2

    if-eqz p5, :cond_4

    .line 189
    const-string p1, "9F4E"

    goto :goto_4

    :cond_4
    move-object p1, v2

    :goto_4
    const/4 p2, 0x4

    aput-object p1, v0, p2

    if-eqz p6, :cond_5

    .line 190
    const-string p1, "9F16"

    goto :goto_5

    :cond_5
    move-object p1, v2

    :goto_5
    const/4 p2, 0x5

    aput-object p1, v0, p2

    if-eqz p7, :cond_6

    .line 191
    const-string p1, "9F1C"

    goto :goto_6

    :cond_6
    move-object p1, v2

    :goto_6
    const/4 p2, 0x6

    aput-object p1, v0, p2

    if-eqz p8, :cond_7

    .line 192
    const-string p1, "9F33"

    goto :goto_7

    :cond_7
    move-object p1, v2

    :goto_7
    const/4 p2, 0x7

    aput-object p1, v0, p2

    if-eqz p9, :cond_8

    .line 193
    const-string p1, "9F35"

    goto :goto_8

    :cond_8
    move-object p1, v2

    :goto_8
    const/16 p2, 0x8

    aput-object p1, v0, p2

    if-eqz p10, :cond_9

    .line 194
    const-string p1, "9F40"

    goto :goto_9

    :cond_9
    move-object p1, v2

    :goto_9
    const/16 p2, 0x9

    aput-object p1, v0, p2

    if-eqz p11, :cond_a

    .line 195
    const-string p1, "DF8370"

    goto :goto_a

    :cond_a
    move-object p1, v2

    :goto_a
    const/16 p2, 0xa

    aput-object p1, v0, p2

    if-eqz p12, :cond_b

    .line 196
    const-string p1, "DF8367"

    goto :goto_b

    :cond_b
    move-object p1, v2

    :goto_b
    const/16 p2, 0xb

    aput-object p1, v0, p2

    if-eqz p13, :cond_c

    .line 197
    const-string p1, "DF837B"

    goto :goto_c

    :cond_c
    move-object p1, v2

    :goto_c
    const/16 p2, 0xc

    aput-object p1, v0, p2

    if-eqz p14, :cond_d

    .line 198
    const-string p1, "DF8403"

    goto :goto_d

    :cond_d
    move-object p1, v2

    :goto_d
    const/16 p2, 0xd

    aput-object p1, v0, p2

    if-eqz p15, :cond_e

    .line 199
    const-string p1, "DF8407"

    goto :goto_e

    :cond_e
    move-object p1, v2

    :goto_e
    const/16 p2, 0xe

    aput-object p1, v0, p2

    if-eqz p16, :cond_f

    .line 200
    const-string p1, "DF8408"

    goto :goto_f

    :cond_f
    move-object p1, v2

    :goto_f
    const/16 p2, 0xf

    aput-object p1, v0, p2

    if-eqz p17, :cond_10

    .line 201
    const-string p1, "DF8409"

    goto :goto_10

    :cond_10
    move-object p1, v2

    :goto_10
    const/16 p2, 0x10

    aput-object p1, v0, p2

    if-eqz p18, :cond_11

    .line 202
    const-string p1, "DF840D"

    goto :goto_11

    :cond_11
    move-object p1, v2

    :goto_11
    const/16 p2, 0x11

    aput-object p1, v0, p2

    if-eqz p19, :cond_12

    .line 203
    const-string p1, "DF8421"

    goto :goto_12

    :cond_12
    move-object p1, v2

    :goto_12
    const/16 p2, 0x12

    aput-object p1, v0, p2

    if-eqz p20, :cond_13

    .line 204
    const-string p1, "DF842C"

    goto :goto_13

    :cond_13
    move-object p1, v2

    :goto_13
    const/16 p2, 0x13

    aput-object p1, v0, p2

    if-eqz p21, :cond_14

    .line 205
    const-string p1, "DF866B"

    goto :goto_14

    :cond_14
    move-object p1, v2

    :goto_14
    const/16 p2, 0x14

    aput-object p1, v0, p2

    if-eqz p22, :cond_15

    .line 206
    const-string p1, "DF8926"

    goto :goto_15

    :cond_15
    move-object p1, v2

    :goto_15
    const/16 p2, 0x15

    aput-object p1, v0, p2

    if-eqz p23, :cond_16

    .line 207
    const-string p1, "DFDF09"

    goto :goto_16

    :cond_16
    move-object p1, v2

    :goto_16
    const/16 p2, 0x16

    aput-object p1, v0, p2

    if-eqz p24, :cond_17

    .line 208
    const-string p1, "DF8424"

    goto :goto_17

    :cond_17
    move-object p1, v2

    :goto_17
    const/16 p2, 0x17

    aput-object p1, v0, p2

    if-eqz p25, :cond_18

    .line 209
    const-string v2, "DF8438"

    :cond_18
    const/16 p1, 0x18

    aput-object v2, v0, p1

    .line 184
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/Iterable;

    .line 210
    const-string p1, ""

    move-object p3, p1

    check-cast p3, Ljava/lang/CharSequence;

    const/16 p1, 0x3e

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move p9, p1

    move-object p10, p4

    move-object p4, p5

    move-object p5, p6

    move p6, v0

    move-object p7, v1

    move-object p8, v2

    invoke-static/range {p2 .. p10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 212
    iget-object p2, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->readTerminalSetting(Ljava/lang/String;)V

    return-void
.end method

.method public resetDevice()V
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "resetDevice"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 564
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->resetDevice()V

    return-void
.end method

.method public selectAccountType(I)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "selectAccountType"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 235
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->selectAccountType(I)V

    return-void
.end method

.method public selectApplication(I)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "selectApplication"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 224
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->selectApplication(I)V

    return-void
.end method

.method public sendFinalConfirmResult(Z)V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "sendFinalConfirmResult"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 244
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->sendFinalConfirmResult(Z)V

    return-void
.end method

.method public sendOnlineProcessResult(Ljava/lang/String;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "sendOnlineProcessResult"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 255
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->sendOnlineProcessResult(Ljava/lang/String;)V

    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 6

    .line 314
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->appScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl$setDebugLogEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl$setDebugLogEnabled$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public setPinPadButtons(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18

    move-object/from16 v0, p0

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

    const-string v14, "zero"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "one"

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "two"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "three"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "four"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "five"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "six"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "seven"

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "eight"

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "nine"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "backspace"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "cancel"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "enter"

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v12

    .line 276
    iget-object v12, v0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v0, 0x0

    new-array v13, v0, [Lkotlin/Pair;

    move/from16 v17, v0

    const-string v0, "setPinPadButtons"

    invoke-interface {v12, v0, v13}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/16 v0, 0xd

    .line 278
    new-array v0, v0, [Lkotlin/Pair;

    const-string v12, "key0"

    invoke-static {v12, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v17

    .line 279
    const-string v1, "key1"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 280
    const-string v1, "key2"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 281
    const-string v1, "key3"

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 282
    const-string v1, "key4"

    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 283
    const-string v1, "key5"

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 284
    const-string v1, "key6"

    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 285
    const-string v1, "key7"

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 286
    const-string v1, "key8"

    invoke-static {v1, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 287
    const-string v1, "key9"

    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0xa

    .line 288
    invoke-static {v14, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    move-object/from16 v12, p12

    .line 289
    invoke-static {v15, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    move-object/from16 v13, p13

    move-object/from16 v2, v16

    .line 290
    invoke-static {v2, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 277
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v1, p0

    .line 292
    iget-object v2, v1, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3, v0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->setPinPadButtons(Ljava/util/Hashtable;)V

    return-void
.end method

.method public startBtScan(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "startBTScan"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 330
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/Collection;

    .line 600
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 330
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->startBTScan([Ljava/lang/String;I)V

    return-void
.end method

.method public startEmv(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;Lcom/stripe/bbpos/sdk/QuickChipOption;ZIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;)V
    .locals 12

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v2, p13

    const-string v3, "transactionType"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "checkCardMode"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "quickChipOption"

    move-object v6, p3

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "amount"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "terminalTime"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iget-object v9, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v10, 0x0

    new-array v10, v10, [Lkotlin/Pair;

    const-string v11, "startEmv"

    invoke-interface {v9, v11, v10}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 358
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v9, Ljava/util/Map;

    .line 359
    invoke-static {p1}, Lcom/stripe/core/bbpos/mappers/TransactionTypeMapperKt;->convert(Lcom/stripe/bbpos/sdk/TransactionType;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {v9, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-static {p2}, Lcom/stripe/core/bbpos/mappers/CheckCardModeMapperKt;->convert(Lcom/stripe/bbpos/sdk/CheckCardMode;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {v9, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string p1, "currencyCharacters"

    invoke-static/range {p5 .. p5}, Lcom/stripe/core/bbpos/mappers/CurrencyCodeMapperKt;->convert(I)[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-result-object v3

    invoke-interface {v9, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string p1, "currencyCode"

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 365
    const-string v3, "currencyExponent"

    invoke-interface {v9, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-interface {v9, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 367
    const-string v0, "checkCardTimeout"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 368
    const-string v0, "selectApplicationTimeout"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 369
    const-string v0, "selectAccountTypeTimeout"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 370
    const-string v0, "onlineProcessTimeout"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-interface {v9, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 373
    const-string p1, "terminalCapabilities"

    invoke-interface {v9, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_0
    invoke-static {p3}, Lcom/stripe/core/bbpos/mappers/QuickChipOptionMapperKt;->convert(Lcom/stripe/bbpos/sdk/QuickChipOption;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 376
    invoke-interface {v9, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 378
    const-string v0, "disableQuickChip"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p14, :cond_2

    .line 380
    invoke-static/range {p14 .. p14}, Lcom/stripe/core/bbpos/mappers/DomesticDebitPriorityMapperKt;->convert(Lcom/stripe/bbpos/sdk/DomesticDebitPriority;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 381
    const-string v0, "domesticDebitPriority"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p15, :cond_3

    .line 384
    invoke-static/range {p15 .. p15}, Lcom/stripe/core/bbpos/mappers/ContactlessOnlinePinOptionMapperKt;->convert(Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 385
    const-string v0, "contactlessOnlinePINOption"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_3
    invoke-static/range {p17 .. p17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 388
    const-string v0, "isAccessiblePINPad"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p18, :cond_4

    .line 389
    move-object/from16 p1, p18

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 598
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 389
    const-string v0, "pinEntryTimeout"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static/range {p16 .. p16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 391
    const-string v0, "forcePinEntry"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object p1, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v9}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->startEmv(Ljava/util/Hashtable;)V

    return-void

    .line 362
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid CheckCardMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid TransactionType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startPinEntry(ZLjava/lang/Integer;)V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "startPinEntry"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 409
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 411
    const-string v1, "isAccessiblePINPad"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 412
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 598
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 412
    const-string p2, "pinEntryTimeout"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2, v0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->startPinEntry(Ljava/util/Hashtable;)V

    return-void
.end method

.method public startSerial()V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "startSerial"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 401
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->startSerial()V

    return-void
.end method

.method public startUsb()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "startUsb"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 424
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->startUsb()V

    return-void
.end method

.method public startUsbWithDeviceName(Ljava/lang/String;)V
    .locals 3

    const-string v0, "deviceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "startUsbWithDeviceName"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 429
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->startUsbWithDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method public stopBtScan()V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "stopBTScan"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 437
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->stopBTScan()V

    return-void
.end method

.method public stopUsb()V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "stopUsb"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 442
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->stopUsb()V

    return-void
.end method

.method public updateAid(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "updateAID"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 450
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, p1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->updateAID(Ljava/util/Hashtable;)V

    return-void
.end method

.method public updateDisplaySettings(Ljava/util/Map;)V
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

    .line 457
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "updateDisplaySettings"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 458
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, p1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->updateDisplaySettings(Ljava/util/Hashtable;)V

    return-void
.end method

.method public updateTerminalSettings(Ljava/lang/String;)V
    .locals 3

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "updateTerminalSettings"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 467
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;->controller:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->updateTerminalSettings(Ljava/lang/String;)V

    return-void
.end method
