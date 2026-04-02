.class public final Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule;
.super Ljava/lang/Object;
.source "EmptyHealthMetricsListenerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule;",
        "",
        "()V",
        "provideHealthMetricListenersProvider",
        "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;",
        "logging"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule;


# direct methods
.method public static synthetic $r8$lambda$k1ert0TT1aH2UgXdvs3FW9J9Css()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule;->provideHealthMetricListenersProvider$lambda$0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule;->INSTANCE:Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final provideHealthMetricListenersProvider$lambda$0()Ljava/util/List;
    .locals 1

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final provideHealthMetricListenersProvider()Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method
