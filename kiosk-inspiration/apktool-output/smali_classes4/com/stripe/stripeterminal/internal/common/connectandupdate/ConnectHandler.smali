.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;
.super Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;
.source "ConnectAndUpdateStates.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\u001c\u0010\n\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;",
        "readerConnectionController",
        "Lcom/stripe/core/hardware/ReaderConnectionController;",
        "(Lcom/stripe/core/hardware/ReaderConnectionController;)V",
        "onConnectAndUpdateApplicationDataUpdate",
        "",
        "new",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;",
        "old",
        "onEnter",
        "current",
        "from",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;",
        "common_publish"
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
.field private final readerConnectionController:Lcom/stripe/core/hardware/ReaderConnectionController;


# direct methods
.method public constructor <init>(Lcom/stripe/core/hardware/ReaderConnectionController;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "readerConnectionController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->CONNECT:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;-><init>(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V

    .line 135
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;->readerConnectionController:Lcom/stripe/core/hardware/ReaderConnectionController;

    return-void
.end method


# virtual methods
.method public onConnectAndUpdateApplicationDataUpdate(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;)V
    .locals 3

    const-string p2, "new"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->getConnectionSummary()Lcom/stripe/core/readerconnection/ConnectionSummary;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/stripe/core/readerconnection/ConnectionSummary;->getState()Lcom/stripe/core/readerconnection/ConnectionState;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    sget-object v1, Lcom/stripe/core/readerconnection/ConnectionState;->FETCHING_INFO:Lcom/stripe/core/readerconnection/ConnectionState;

    const/4 v2, 0x2

    if-ne p2, v1, :cond_1

    .line 150
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->READER_INFO:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    invoke-static {p1, p2, v0, v2, v0}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->getConnectionSummary()Lcom/stripe/core/readerconnection/ConnectionSummary;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/stripe/core/readerconnection/ConnectionSummary;->getState()Lcom/stripe/core/readerconnection/ConnectionState;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    sget-object p2, Lcom/stripe/core/readerconnection/ConnectionState;->DISCONNECTING:Lcom/stripe/core/readerconnection/ConnectionState;

    if-ne p1, p2, :cond_3

    .line 152
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->DISCONNECT:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    invoke-static {p1, p2, v0, v2, v0}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onEnter(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V
    .locals 1

    .line 138
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->EMPTY:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->getConnectionSummary()Lcom/stripe/core/readerconnection/ConnectionSummary;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stripe/core/readerconnection/ConnectionSummary;->getDevice()Lcom/stripe/core/hardware/Reader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;->readerConnectionController:Lcom/stripe/core/hardware/ReaderConnectionController;

    invoke-interface {p2, p1}, Lcom/stripe/core/hardware/ReaderConnectionController;->connect(Lcom/stripe/core/hardware/Reader;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;->onEnter(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V

    return-void
.end method
