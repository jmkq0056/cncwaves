.class public final Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;
.super Ljava/lang/Object;
.source "OfflineConnectivityModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineConnectivityModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineConnectivityModule.kt\ncom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,57:1\n49#2:58\n51#2:62\n46#3:59\n51#3:61\n105#4:60\n*S KotlinDebug\n*F\n+ 1 OfflineConnectivityModule.kt\ncom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion\n*L\n28#1:58\n28#1:62\n28#1:59\n28#1:61\n28#1:60\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0014\u0010\u0008\u001a\u00020\t2\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;",
        "",
        "()V",
        "provideNetworkStatusFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "stripeConnectivityRepository",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
        "provideSdkStatusRepository",
        "Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;",
        "embeddedAdapter",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "provideStripeNetworkStatus",
        "sdkmanager_publish"
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
.field static final synthetic $$INSTANCE:Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;->$$INSTANCE:Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideNetworkStatusFlow(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;"
        }
    .end annotation

    const-string v0, "stripeConnectivityRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->currentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 60
    new-instance v0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion$provideNetworkStatusFlow$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion$provideNetworkStatusFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final provideSdkStatusRepository(Lcom/stripe/stripeterminal/internal/common/Adapter;)Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;
    .locals 1
    .param p1    # Lcom/stripe/stripeterminal/internal/common/Adapter;
        .annotation runtime Lcom/stripe/stripeterminal/dagger/EmbeddedAdapter;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/repositories/DefaultSdkStatusRepository;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/repositories/DefaultSdkStatusRepository;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;

    return-object v0
.end method

.method public final provideStripeNetworkStatus(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;)Lcom/stripe/stripeterminal/external/models/NetworkStatus;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "stripeConnectivityRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->networkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object p1

    return-object p1
.end method
