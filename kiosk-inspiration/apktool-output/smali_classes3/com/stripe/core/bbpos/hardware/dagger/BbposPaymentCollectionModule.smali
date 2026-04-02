.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule;
.super Ljava/lang/Object;
.source "BbposPaymentCollectionModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule;",
        "",
        "()V",
        "provideBbposPaymentCollectionListenerFactory",
        "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;",
        "lazyPaymentEventReceiver",
        "Ldagger/Lazy;",
        "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
        "lazyManualEntryEventReceiver",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "cardRemovalChecker",
        "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
        "hardware_release"
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
.field public static final INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule;-><init>()V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideBbposPaymentCollectionListenerFactory(Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;)Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
            ">;",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
            ")",
            "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;"
        }
    .end annotation

    const-string v0, "lazyPaymentEventReceiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyManualEntryEventReceiver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "healthLoggerBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardRemovalChecker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;-><init>(Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;)V

    return-object v0
.end method
