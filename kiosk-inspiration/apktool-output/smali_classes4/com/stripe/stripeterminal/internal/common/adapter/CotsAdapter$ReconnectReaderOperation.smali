.class final Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;
.super Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;
.source "CotsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReconnectReaderOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;",
        "",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V",
        "cancel",
        "execute",
        "adapter_release"
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
.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ")V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    .line 782
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    .line 781
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 809
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;->execute()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public execute()V
    .locals 9

    .line 785
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->access$getLastActivateReaderResponse$p(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    .line 786
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;

    .line 787
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v1, v2, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->onReaderActivated(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V

    .line 788
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 786
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 788
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 791
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableDeferred;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 793
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation$execute$1$3;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation$execute$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->access$callAidlWithExceptionConverted(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 796
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v4, "ReconnectReader was canceled by the user"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 789
    :cond_1
    throw v0

    .line 798
    :cond_2
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation$execute$2;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation$execute$2;

    return-void
.end method
