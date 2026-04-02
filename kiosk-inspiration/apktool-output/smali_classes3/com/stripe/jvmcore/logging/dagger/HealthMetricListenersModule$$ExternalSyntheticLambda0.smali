.class public final synthetic Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getHealthMetricListeners()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    invoke-static {v0}, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule;->$r8$lambda$HwywIrWckS-WBE9hIGvZW8ubQ0o(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
