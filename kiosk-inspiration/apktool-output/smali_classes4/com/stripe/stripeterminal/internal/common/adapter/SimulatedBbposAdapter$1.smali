.class final Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SimulatedBbposAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;-><init>(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;


# direct methods
.method constructor <init>(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$1;->$applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$1;->$applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    invoke-interface {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;->get()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getShopifyReadersEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
