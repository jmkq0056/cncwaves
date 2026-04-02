.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;
.super Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;
.source "ConnectAndUpdateStates.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler$WhenMappings;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;",
        "readerConfigurationUpdateController",
        "Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;",
        "(Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;)V",
        "onEnter",
        "",
        "current",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;",
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
.field private final readerConfigurationUpdateController:Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;


# direct methods
.method public constructor <init>(Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "readerConfigurationUpdateController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->CHECK_FOR_UPDATE:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;-><init>(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V

    .line 113
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;->readerConfigurationUpdateController:Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V
    .locals 9

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->getUpdateSummary()Lcom/stripe/core/readerupdate/UpdateSummary;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateSummary;->getState()Lcom/stripe/core/readerupdate/UpdateState;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 118
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;->readerConfigurationUpdateController:Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v8}, Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;->readSettings$default(Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;ZZZZZILjava/lang/Object;)V

    return-void

    .line 125
    :cond_2
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->CANCELLED:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    const/4 v1, 0x2

    invoke-static {p1, v0, p2, v1, p2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;->onEnter(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V

    return-void
.end method
