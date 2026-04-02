.class public final Lcom/stripe/paymentcollection/metrics/DefaultOnlineAuthStateLogger;
.super Ljava/lang/Object;
.source "DefaultOnlineAuthStateLogger.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/DefaultOnlineAuthStateLogger;",
        "Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;",
        "stageEventLogger",
        "Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
        "(Lcom/stripe/paymentcollection/metrics/StageEventLogger;)V",
        "updateOnlineAuthState",
        "",
        "state",
        "Lcom/stripe/paymentcollection/OnlineAuthState;",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
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
.field private final stageEventLogger:Lcom/stripe/paymentcollection/metrics/StageEventLogger;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/metrics/StageEventLogger;)V
    .locals 1

    const-string v0, "stageEventLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultOnlineAuthStateLogger;->stageEventLogger:Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    return-void
.end method


# virtual methods
.method public updateOnlineAuthState(Lcom/stripe/paymentcollection/OnlineAuthState;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/OnlineAuthState;->getOnlineAuthType()Lcom/stripe/paymentcollection/OnlineAuthType;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/stripe/paymentcollection/OnlineAuthState$ReadyToStartConfirmation;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$ReadyToStartConfirmation;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultOnlineAuthStateLogger;->stageEventLogger:Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    sget-object p2, Lcom/stripe/paymentcollection/metrics/PendingPosCommand;->PROCESS_PAYMENT:Lcom/stripe/paymentcollection/metrics/PendingPosCommand;

    invoke-interface {p1, p2}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->openWaitForPosCommandLog(Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V

    return-void

    .line 25
    :cond_0
    sget-object v1, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    iget-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultOnlineAuthStateLogger;->stageEventLogger:Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/PendingPosCommand;->PROCESS_PAYMENT:Lcom/stripe/paymentcollection/metrics/PendingPosCommand;

    invoke-interface {p1, p2, v1}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closeWaitForPosCommandLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V

    .line 27
    iget-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultOnlineAuthStateLogger;->stageEventLogger:Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    invoke-interface {p1, v0}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->openOnlineAuthenticationLog(Lcom/stripe/paymentcollection/OnlineAuthType;)V

    return-void

    .line 29
    :cond_1
    sget-object v1, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcStarted;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcStarted;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    iget-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultOnlineAuthStateLogger;->stageEventLogger:Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    invoke-interface {p1, v0}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->openOnlineAuthenticationLog(Lcom/stripe/paymentcollection/OnlineAuthType;)V

    return-void

    .line 32
    :cond_2
    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthState$Cancelled;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$Cancelled;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 33
    :cond_3
    instance-of v0, p1, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$NeedSecondGenAc;

    :goto_0
    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    .line 34
    :cond_4
    instance-of v0, p1, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Success;

    :goto_1
    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_2

    .line 35
    :cond_5
    instance-of v0, p1, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;

    :goto_2
    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_3

    .line 36
    :cond_6
    instance-of v0, p1, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;

    :goto_3
    if-eqz v0, :cond_7

    goto :goto_4

    .line 37
    :cond_7
    instance-of v1, p1, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Success;

    :goto_4
    if-eqz v1, :cond_b

    .line 40
    instance-of v0, p1, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;->getReason()Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    move-result-object v0

    sget-object v1, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->SCA_NEEDED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    if-eq v0, v1, :cond_9

    .line 41
    :cond_8
    instance-of v0, p1, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;->getReason()Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    move-result-object v0

    sget-object v1, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->SCA_NEEDED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    if-ne v0, v1, :cond_a

    .line 43
    :cond_9
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultOnlineAuthStateLogger;->stageEventLogger:Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/PendingPosCommand;->RESUME_PAYMENT:Lcom/stripe/paymentcollection/metrics/PendingPosCommand;

    invoke-interface {v0, v1}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->openWaitForPosCommandLog(Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V

    .line 45
    :cond_a
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultOnlineAuthStateLogger;->stageEventLogger:Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    invoke-interface {v0, p2, p1}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closeOnlineAuthenticationLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/OnlineAuthState;)V

    :cond_b
    return-void
.end method
