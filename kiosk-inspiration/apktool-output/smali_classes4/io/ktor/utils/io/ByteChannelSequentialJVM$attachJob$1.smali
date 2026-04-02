.class final Lio/ktor/utils/io/ByteChannelSequentialJVM$attachJob$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ByteChannelSequentialJVM.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteChannelSequentialJVM;->attachJob(Lkotlinx/coroutines/Job;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "cause",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/utils/io/ByteChannelSequentialJVM;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteChannelSequentialJVM;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM$attachJob$1;->this$0:Lio/ktor/utils/io/ByteChannelSequentialJVM;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialJVM$attachJob$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM$attachJob$1;->this$0:Lio/ktor/utils/io/ByteChannelSequentialJVM;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->access$setAttachedJob$p(Lio/ktor/utils/io/ByteChannelSequentialJVM;Lkotlinx/coroutines/Job;)V

    if-eqz p1, :cond_0

    .line 26
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialJVM$attachJob$1;->this$0:Lio/ktor/utils/io/ByteChannelSequentialJVM;

    invoke-static {p1}, Lio/ktor/utils/io/ExceptionUtilsKt;->unwrapCancellationException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/ktor/utils/io/ByteChannelSequentialJVM;->cancel(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method
