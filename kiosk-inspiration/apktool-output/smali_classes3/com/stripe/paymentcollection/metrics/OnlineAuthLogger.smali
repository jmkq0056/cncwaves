.class public final Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;
.super Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;
.source "OnlineAuthLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$WhenMappings;
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
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u0006B1\u0012\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0008j\u0002`\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0018\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u001e\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u001e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u000e\u0010 \u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000eR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;",
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
        "authType",
        "Lcom/stripe/paymentcollection/OnlineAuthType;",
        "getAuthType",
        "()Lcom/stripe/paymentcollection/OnlineAuthType;",
        "setAuthType",
        "(Lcom/stripe/paymentcollection/OnlineAuthType;)V",
        "closeLog",
        "",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "authState",
        "Lcom/stripe/paymentcollection/OnlineAuthState;",
        "getMetricReason",
        "Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;",
        "failureReason",
        "Lcom/stripe/paymentcollection/OnlineAuthFailureReason;",
        "getResult",
        "Lkotlin/Pair;",
        "Lcom/stripe/paymentcollection/metrics/Result;",
        "openLog",
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
.field private authType:Lcom/stripe/paymentcollection/OnlineAuthType;


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

    .line 15
    const-string v0, "OnlineAuth"

    .line 17
    sget-object v1, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->NETWORK_PROCESSING:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    .line 13
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/lang/String;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V

    return-void
.end method

.method public static final synthetic access$getResult(Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;Lcom/stripe/paymentcollection/OnlineAuthState;)Lkotlin/Pair;
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;->getResult(Lcom/stripe/paymentcollection/OnlineAuthState;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final getMetricReason(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;)Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;
    .locals 1

    .line 80
    sget-object v0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 83
    sget-object p1, Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;->UNKNOWN_NETWORK_FAILURE:Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 82
    :cond_1
    sget-object p1, Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;->SCA_NEEDED:Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    return-object p1

    .line 81
    :cond_2
    sget-object p1, Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;->DECLINED:Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    return-object p1
.end method

.method private final getResult(Lcom/stripe/paymentcollection/OnlineAuthState;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/OnlineAuthState;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/stripe/paymentcollection/metrics/Result;",
            "Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthState$Cancelled;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$Cancelled;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 61
    :cond_0
    instance-of v0, p1, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    check-cast p1, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;->getReason()Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;->getMetricReason(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;)Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 64
    :cond_1
    instance-of v0, p1, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;

    if-eqz v0, :cond_2

    .line 65
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    check-cast p1, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->getReason()Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;->getMetricReason(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;)Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 67
    :cond_2
    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 68
    :cond_3
    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthState$ReadyToStartConfirmation;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$ReadyToStartConfirmation;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    .line 69
    :cond_4
    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcStarted;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcStarted;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_5

    .line 71
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 73
    :cond_5
    instance-of v0, p1, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$NeedSecondGenAc;

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_2

    .line 74
    :cond_6
    instance-of v0, p1, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Success;

    :goto_2
    if-eqz v0, :cond_7

    goto :goto_3

    .line 75
    :cond_7
    instance-of v1, p1, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Success;

    :goto_3
    if-eqz v1, :cond_8

    .line 76
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/OnlineAuthState;)V
    .locals 2

    const-string v0, "authState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;->authType:Lcom/stripe/paymentcollection/OnlineAuthType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 28
    :cond_1
    new-instance v1, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;

    invoke-direct {v1, p1, p0, p2, v0}, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;Lcom/stripe/paymentcollection/OnlineAuthState;Lcom/stripe/paymentcollection/OnlineAuthType;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v1}, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;->closeLogHelper(Lcom/stripe/paymentcollection/PaymentCollectionData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getAuthType()Lcom/stripe/paymentcollection/OnlineAuthType;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;->authType:Lcom/stripe/paymentcollection/OnlineAuthType;

    return-object v0
.end method

.method public final openLog(Lcom/stripe/paymentcollection/OnlineAuthType;)V
    .locals 3

    const-string v0, "authType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;->authType:Lcom/stripe/paymentcollection/OnlineAuthType;

    .line 22
    move-object p1, p0

    check-cast p1, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;

    sget-object v0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$openLog$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$openLog$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->openLogHelper$default(Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final setAuthType(Lcom/stripe/paymentcollection/OnlineAuthType;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;->authType:Lcom/stripe/paymentcollection/OnlineAuthType;

    return-void
.end method
