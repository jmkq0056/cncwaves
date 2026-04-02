.class public final Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;
.super Ljava/lang/Object;
.source "BbposPaymentCollectionListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B3\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ&\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u0014R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;",
        "",
        "lazyPaymentEventReceiver",
        "Ldagger/Lazy;",
        "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
        "lazyManualEntryEventReceiver",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "cardRemovalChecker",
        "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
        "(Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;)V",
        "create",
        "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;",
        "deviceListenerWrapper",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
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


# instance fields
.field private final cardRemovalChecker:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

.field private final healthLoggerBuilder:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

.field private final lazyManualEntryEventReceiver:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyPaymentEventReceiver:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;)V
    .locals 1
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
            ")V"
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

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;->lazyPaymentEventReceiver:Ldagger/Lazy;

    .line 66
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;->lazyManualEntryEventReceiver:Ldagger/Lazy;

    .line 67
    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;->healthLoggerBuilder:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    .line 68
    iput-object p4, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;->cardRemovalChecker:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    return-void
.end method


# virtual methods
.method public final create(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)",
            "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;"
        }
    .end annotation

    const-string v0, "deviceListenerWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;

    .line 75
    iget-object v3, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;->lazyPaymentEventReceiver:Ldagger/Lazy;

    .line 76
    iget-object v4, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;->lazyManualEntryEventReceiver:Ldagger/Lazy;

    .line 77
    iget-object v5, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;->healthLoggerBuilder:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    .line 78
    iget-object v6, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;->cardRemovalChecker:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    move-object v2, p1

    move-object v7, p2

    .line 73
    invoke-direct/range {v1 .. v7}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;-><init>(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v1
.end method
