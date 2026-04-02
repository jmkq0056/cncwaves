.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;
.super Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;
.source "ConnectAndUpdateStates.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler$WhenMappings;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;",
        "()V",
        "onConnectAndUpdateApplicationDataUpdate",
        "",
        "new",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;",
        "old",
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


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 70
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->EMPTY:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;-><init>(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V

    return-void
.end method


# virtual methods
.method public onConnectAndUpdateApplicationDataUpdate(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;)V
    .locals 5

    const-string p2, "new"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->getUpdateSummary()Lcom/stripe/core/readerupdate/UpdateSummary;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/stripe/core/readerupdate/UpdateSummary;->getState()Lcom/stripe/core/readerupdate/UpdateState;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const/4 v1, -0x1

    if-nez p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/stripe/core/readerupdate/UpdateState;->ordinal()I

    move-result p2

    aget p2, v2, p2

    :goto_1
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_2

    goto :goto_2

    .line 77
    :cond_2
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->INSTALL_UPDATES:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    const-string v4, "Installing updates"

    invoke-virtual {p0, p2, v4}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 76
    :cond_3
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->CHECK_FOR_UPDATE:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    const-string v4, "Check for update requested"

    invoke-virtual {p0, p2, v4}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :goto_2
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->getConnectionSummary()Lcom/stripe/core/readerconnection/ConnectionSummary;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/stripe/core/readerconnection/ConnectionSummary;->getState()Lcom/stripe/core/readerconnection/ConnectionState;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/stripe/core/readerconnection/ConnectionState;->ordinal()I

    move-result p2

    aget v1, p1, p2

    :goto_3
    if-eq v1, v3, :cond_a

    if-eq v1, v2, :cond_9

    const/4 p1, 0x3

    if-eq v1, p1, :cond_8

    const/4 p1, 0x4

    if-eq v1, p1, :cond_7

    const/4 p1, 0x5

    if-eq v1, p1, :cond_6

    return-void

    .line 97
    :cond_6
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->DISCONNECT:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    const-string p2, "Disconnect requested"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_7
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->REBOOT:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    const-string p2, "Reboot requested"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_8
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->START_SESSION:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    const-string p2, "Start session requested"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_9
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->CONNECT:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    const-string p2, "Connect requested"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_a
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->DISCOVER:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    const-string p2, "Discovery requested"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
