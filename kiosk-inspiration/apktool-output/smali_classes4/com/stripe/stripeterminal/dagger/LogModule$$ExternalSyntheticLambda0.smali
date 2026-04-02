.class public final synthetic Lcom/stripe/stripeterminal/dagger/LogModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;


# instance fields
.field public final synthetic f$0:Lcom/stripe/jvmcore/environment/EnvironmentProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/LogModule$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/jvmcore/environment/EnvironmentProvider;

    return-void
.end method


# virtual methods
.method public final getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/LogModule$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/jvmcore/environment/EnvironmentProvider;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/LogModule;->$r8$lambda$ELfbh-AE2nRtndOH4ccCUFjY6g0(Lcom/stripe/jvmcore/environment/EnvironmentProvider;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
