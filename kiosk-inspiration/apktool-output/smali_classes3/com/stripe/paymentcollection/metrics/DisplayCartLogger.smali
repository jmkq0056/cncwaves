.class public final Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;
.super Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;
.source "DisplayCartLogger.kt"


# annotations
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u0006B1\u0012\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0008j\u0002`\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;",
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
        "closeLog",
        "",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "displayCartResult",
        "Lcom/stripe/paymentcollection/metrics/DisplayCartResult;",
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


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V
    .locals 8
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

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 8
    const-string v3, "DisplayCart"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/lang/String;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/LatencyCategory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/DisplayCartResult;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayCartResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/stripe/paymentcollection/metrics/DisplayCartLogger$closeLog$1;

    invoke-direct {v0, p2}, Lcom/stripe/paymentcollection/metrics/DisplayCartLogger$closeLog$1;-><init>(Lcom/stripe/paymentcollection/metrics/DisplayCartResult;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;->closeLogHelper(Lcom/stripe/paymentcollection/PaymentCollectionData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final openLog()V
    .locals 4

    .line 15
    move-object v0, p0

    check-cast v0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/DisplayCartLogger$openLog$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DisplayCartLogger$openLog$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->openLogHelper$default(Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method
