.class public abstract Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;
.super Lcom/stripe/statemachine/StateMachine$StateHandler;
.source "ManualEntryStates.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/statemachine/StateMachine$StateHandler<",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0014J\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003J\u0008\u0010\u000f\u001a\u00020\u000bH\u0004R\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;",
        "Lcom/stripe/statemachine/StateMachine$StateHandler;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;",
        "state",
        "eventDelegate",
        "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
        "(Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;)V",
        "getEventDelegate",
        "()Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
        "onProcessDataUpdate",
        "",
        "new",
        "old",
        "onUpdate",
        "sendStartPinEvent",
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
.field private final eventDelegate:Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/manualentry/ManualEntryState;Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/stripe/statemachine/StateMachine$StateHandler;-><init>(Ljava/lang/Object;)V

    .line 19
    iput-object p2, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;->eventDelegate:Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

    return-void
.end method


# virtual methods
.method protected final getEventDelegate()Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;->eventDelegate:Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

    return-object v0
.end method

.method protected onProcessDataUpdate(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V
    .locals 0

    const-string p2, "new"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onUpdate(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V
    .locals 3

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-super {p0, p1, p2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->onUpdate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getCollectionResult()Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 26
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->FINISHED:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {p1, p2, v2, v1, v2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getEncryptedData()Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getZipCode()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 28
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ZIP_CODE:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {p1, p2, v2, v1, v2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getEncryptedData()Lcom/stripe/paymentcollection/manualentry/ManualEntryEncryptedData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getZipCode()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getUserConfirmed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CONFIRM_DETAILS:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {p1, p2, v2, v1, v2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 33
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;->onProcessDataUpdate(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V

    return-void
.end method

.method public bridge synthetic onUpdate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    check-cast p2, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;->onUpdate(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V

    return-void
.end method

.method protected final sendStartPinEvent()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/stripe/paymentcollection/manualentry/ManualEntryHandler;->eventDelegate:Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

    sget-object v1, Lcom/stripe/paymentcollection/StartPinEntryEvent;->INSTANCE:Lcom/stripe/paymentcollection/StartPinEntryEvent;

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-interface {v0, v1}, Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;->onHandlePaymentCollectionEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method
