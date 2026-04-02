.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$updateSubscription$1;
.super Ljava/lang/Object;
.source "BbposAdapter.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/core/hardware/Optional;",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
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
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

.field final synthetic this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlinx/coroutines/channels/ProducerScope;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$updateSubscription$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$updateSubscription$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$updateSubscription$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$updateSubscription$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/stripe/core/hardware/Optional;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/Optional<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$updateSubscription$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getOperationInProgress(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    instance-of v0, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    if-eqz v0, :cond_1

    .line 820
    instance-of v0, p1, Lcom/stripe/core/hardware/Optional$Present;

    if-eqz v0, :cond_0

    .line 821
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$updateSubscription$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    check-cast p1, Lcom/stripe/core/hardware/Optional$Present;

    invoke-virtual {p1}, Lcom/stripe/core/hardware/Optional$Present;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/hardware/updates/ReaderVersion;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$updateSubscription$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;->create(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/core/hardware/updates/ReaderVersion;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    move-result-object p1

    .line 822
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$updateSubscription$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 825
    :cond_0
    instance-of p1, p1, Lcom/stripe/core/hardware/Optional$Absent;

    if-eqz p1, :cond_1

    .line 826
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$updateSubscription$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    .line 827
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 828
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 827
    const-string v2, "No target version returned"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 826
    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 835
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$updateSubscription$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p1, Lkotlinx/coroutines/channels/SendChannel;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 817
    check-cast p1, Lcom/stripe/core/hardware/Optional;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2$updateSubscription$1;->accept(Lcom/stripe/core/hardware/Optional;)V

    return-void
.end method
