.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$15;
.super Ljava/lang/Object;
.source "BbposAdapter.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->register(Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$15$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/hardware/status/ReaderRebootAttempt;",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$15;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/stripe/hardware/status/ReaderRebootAttempt;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$15;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getDisconnectReasonRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    move-result-object v0

    .line 525
    invoke-virtual {p1}, Lcom/stripe/hardware/status/ReaderRebootAttempt;->getCause()Lcom/stripe/hardware/status/RebootCause;

    move-result-object p1

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$15$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/status/RebootCause;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 530
    sget-object p1, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 529
    :cond_1
    sget-object p1, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    goto :goto_0

    .line 528
    :cond_2
    sget-object p1, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    goto :goto_0

    .line 527
    :cond_3
    sget-object p1, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->SECURITY_REBOOT:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    goto :goto_0

    .line 526
    :cond_4
    sget-object p1, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->REBOOT_REQUESTED:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    .line 524
    :goto_0
    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->setDisconnectReason(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 522
    check-cast p1, Lcom/stripe/hardware/status/ReaderRebootAttempt;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$15;->accept(Lcom/stripe/hardware/status/ReaderRebootAttempt;)V

    return-void
.end method
