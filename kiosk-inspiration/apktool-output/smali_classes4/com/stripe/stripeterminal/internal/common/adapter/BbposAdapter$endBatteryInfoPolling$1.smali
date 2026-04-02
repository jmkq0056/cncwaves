.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$endBatteryInfoPolling$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BbposAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;-><init>(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$endBatteryInfoPolling$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$endBatteryInfoPolling$1;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$endBatteryInfoPolling$1;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$endBatteryInfoPolling$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$endBatteryInfoPolling$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$endBatteryInfoPolling$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 0

    return-void
.end method
