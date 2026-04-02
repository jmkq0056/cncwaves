.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$registerReaderDisconnectHandler$1;
.super Ljava/lang/Object;
.source "BbposAdapter.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->registerReaderDisconnectHandler()V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/hardware/status/DisconnectCause;",
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

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$registerReaderDisconnectHandler$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/stripe/hardware/status/DisconnectCause;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$registerReaderDisconnectHandler$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getOperationInProgress(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    .line 423
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DisconnectReaderOperation;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DisconnectReaderOperation;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DisconnectReaderOperation;->onDisconnect()V

    return-void

    .line 424
    :cond_0
    instance-of v0, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;

    if-nez v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$registerReaderDisconnectHandler$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->onDisconnect(Lcom/stripe/hardware/status/DisconnectCause;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 420
    check-cast p1, Lcom/stripe/hardware/status/DisconnectCause;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$registerReaderDisconnectHandler$1;->accept(Lcom/stripe/hardware/status/DisconnectCause;)V

    return-void
.end method
