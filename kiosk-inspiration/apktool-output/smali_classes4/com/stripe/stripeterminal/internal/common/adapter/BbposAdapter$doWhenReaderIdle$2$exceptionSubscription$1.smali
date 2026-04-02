.class public final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$exceptionSubscription$1;
.super Ljava/lang/Object;
.source "BbposAdapter.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$exceptionSubscription$1\n*L\n1#1,1324:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "it",
        "Lcom/stripe/hardware/status/ReaderException;",
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
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult<",
            "+TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$exceptionSubscription$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/stripe/hardware/status/ReaderException;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$exceptionSubscription$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;

    invoke-direct {v1, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult$ReaderFailed;-><init>(Lcom/stripe/hardware/status/ReaderException;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 702
    check-cast p1, Lcom/stripe/hardware/status/ReaderException;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$exceptionSubscription$1;->accept(Lcom/stripe/hardware/status/ReaderException;)V

    return-void
.end method
