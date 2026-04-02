.class public final synthetic Lcom/stripe/stripeterminal/dagger/CotsModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/stripe/cots/common/SimulatedEmvBlobProvider;


# instance fields
.field public final synthetic f$0:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/CotsModule$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    return-void
.end method


# virtual methods
.method public final getSimsulatedEmvBlob()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/CotsModule$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/CotsModule;->$r8$lambda$nnbILdjQDfnJrAtq5UYwXX7fcI0(Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
