.class public final Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;
.super Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;
.source "WaitForPosCommandEventLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u0006B1\u0012\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0008j\u0002`\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000eJ\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u000e\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u000eR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;",
        "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
        "Lcom/stripe/paymentcollection/metrics/PaymentCollectionStageEventLogger;",
        "logger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/paymentcollection/metrics/StageLogger;",
        "endToEndEventLogger",
        "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
        "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V",
        "pendingCommand",
        "Lcom/stripe/paymentcollection/metrics/PendingPosCommand;",
        "cleanUp",
        "",
        "closeLog",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "closingCommand",
        "getFailureReason",
        "Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;",
        "openLog",
        "command",
        "impl_release"
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
.field private pendingCommand:Lcom/stripe/paymentcollection/metrics/PendingPosCommand;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
            ">;",
            "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
            ")V"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endToEndEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-string v0, "PosCommand"

    .line 13
    sget-object v1, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->POS_COMMAND_DELAY:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    .line 9
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/lang/String;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V

    return-void
.end method

.method public static final synthetic access$getFailureReason(Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;->getFailureReason(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    move-result-object p0

    return-object p0
.end method

.method private final getFailureReason(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;
    .locals 2

    .line 66
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCancelReason()Lcom/stripe/paymentcollection/CancelReason;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/CancelReason;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_0
    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 69
    sget-object p1, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    return-object p1

    .line 70
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 68
    :cond_2
    sget-object p1, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    return-object p1

    .line 67
    :cond_3
    sget-object p1, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    return-object p1

    .line 70
    :cond_4
    sget-object p1, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    return-object p1

    .line 72
    :cond_5
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isTimedOut()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;->TIMED_OUT:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->cleanUp()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;->pendingCommand:Lcom/stripe/paymentcollection/metrics/PendingPosCommand;

    return-void
.end method

.method public final closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;->pendingCommand:Lcom/stripe/paymentcollection/metrics/PendingPosCommand;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;->cleanUp()V

    return-void

    .line 41
    :cond_2
    new-instance p2, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$closeLog$1;

    invoke-direct {p2, p0, p1, v0}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$closeLog$1;-><init>(Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;->closeLogHelper(Lcom/stripe/paymentcollection/PaymentCollectionData;Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;->pendingCommand:Lcom/stripe/paymentcollection/metrics/PendingPosCommand;

    return-void
.end method

.method public final openLog(Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V
    .locals 3

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;->pendingCommand:Lcom/stripe/paymentcollection/metrics/PendingPosCommand;

    .line 18
    move-object p1, p0

    check-cast p1, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;

    sget-object v0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$openLog$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$openLog$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->openLogHelper$default(Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method
