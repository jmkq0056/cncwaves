.class public final Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule;
.super Ljava/lang/Object;
.source "HealthMetricListenersModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u00020\u00042\u0011\u0010\u0005\u001a\r\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule;",
        "",
        "()V",
        "provideHealthMetricListenersProvider",
        "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;",
        "healthMetricListeners",
        "",
        "Lcom/stripe/jvmcore/logging/HealthMetricListener;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule;


# direct methods
.method public static synthetic $r8$lambda$HwywIrWckS-WBE9hIGvZW8ubQ0o(Ljava/util/Set;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule;->provideHealthMetricListenersProvider$lambda$0(Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule;->INSTANCE:Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final provideHealthMetricListenersProvider$lambda$0(Ljava/util/Set;)Ljava/util/List;
    .locals 1

    const-string v0, "$healthMetricListeners"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final provideHealthMetricListenersProvider(Ljava/util/Set;)Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/logging/HealthMetricListener;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "healthMetricListeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
