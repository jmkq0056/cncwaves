.class public final Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;
.super Ljava/lang/Object;
.source "SimulatorConfigurationRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
        "",
        "()V",
        "simulatorConfiguration",
        "Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;",
        "getSimulatorConfiguration",
        "()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;",
        "setSimulatorConfiguration",
        "(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V",
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
.field private simulatorConfiguration:Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;-><init>(Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;Lcom/stripe/stripeterminal/external/models/SimulatedCard;Ljava/lang/Long;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;->simulatorConfiguration:Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    return-void
.end method


# virtual methods
.method public final getSimulatorConfiguration()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;->simulatorConfiguration:Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    return-object v0
.end method

.method public final setSimulatorConfiguration(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;->simulatorConfiguration:Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    return-void
.end method
