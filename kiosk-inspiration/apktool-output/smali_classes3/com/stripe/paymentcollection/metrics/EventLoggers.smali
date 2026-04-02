.class public final Lcom/stripe/paymentcollection/metrics/EventLoggers;
.super Ljava/lang/Object;
.source "EventLoggers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
        "",
        "endToEndEventLogger",
        "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
        "stageEventLogger",
        "Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
        "discreteEventLogger",
        "Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;",
        "onlineAuthStateLogger",
        "Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;",
        "tippingLogger",
        "Lcom/stripe/paymentcollection/metrics/TippingLogger;",
        "(Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;Lcom/stripe/paymentcollection/metrics/TippingLogger;)V",
        "getDiscreteEventLogger",
        "()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;",
        "getEndToEndEventLogger",
        "()Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
        "getOnlineAuthStateLogger",
        "()Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;",
        "getStageEventLogger",
        "()Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
        "getTippingLogger",
        "()Lcom/stripe/paymentcollection/metrics/TippingLogger;",
        "public_release"
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
.field private final discreteEventLogger:Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

.field private final endToEndEventLogger:Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

.field private final onlineAuthStateLogger:Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;

.field private final stageEventLogger:Lcom/stripe/paymentcollection/metrics/StageEventLogger;

.field private final tippingLogger:Lcom/stripe/paymentcollection/metrics/TippingLogger;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;Lcom/stripe/paymentcollection/metrics/TippingLogger;)V
    .locals 1

    const-string v0, "endToEndEventLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stageEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discreteEventLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onlineAuthStateLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tippingLogger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/EventLoggers;->endToEndEventLogger:Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    .line 5
    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/EventLoggers;->stageEventLogger:Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    .line 6
    iput-object p3, p0, Lcom/stripe/paymentcollection/metrics/EventLoggers;->discreteEventLogger:Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

    .line 7
    iput-object p4, p0, Lcom/stripe/paymentcollection/metrics/EventLoggers;->onlineAuthStateLogger:Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;

    .line 8
    iput-object p5, p0, Lcom/stripe/paymentcollection/metrics/EventLoggers;->tippingLogger:Lcom/stripe/paymentcollection/metrics/TippingLogger;

    return-void
.end method


# virtual methods
.method public final getDiscreteEventLogger()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/EventLoggers;->discreteEventLogger:Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

    return-object v0
.end method

.method public final getEndToEndEventLogger()Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/EventLoggers;->endToEndEventLogger:Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    return-object v0
.end method

.method public final getOnlineAuthStateLogger()Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/EventLoggers;->onlineAuthStateLogger:Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;

    return-object v0
.end method

.method public final getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/EventLoggers;->stageEventLogger:Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    return-object v0
.end method

.method public final getTippingLogger()Lcom/stripe/paymentcollection/metrics/TippingLogger;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/EventLoggers;->tippingLogger:Lcom/stripe/paymentcollection/metrics/TippingLogger;

    return-object v0
.end method
