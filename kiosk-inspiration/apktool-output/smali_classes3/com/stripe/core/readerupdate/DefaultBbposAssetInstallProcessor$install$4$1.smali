.class final Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BbposAssetInstallProcessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposAssetInstallProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposAssetInstallProcessor.kt\ncom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,366:1\n556#2,5:367\n*S KotlinDebug\n*F\n+ 1 BbposAssetInstallProcessor.kt\ncom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4$1\n*L\n103#1:367,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4$1;->invoke(F)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(F)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    .line 370
    instance-of v1, p1, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    if-eqz v1, :cond_1

    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 105
    invoke-static {v0}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getLogger$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const-string v3, "installSettings() channel closed with exception"

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v3, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {v0}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getLogger$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    .line 109
    new-instance v1, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v3, "installSettings() channel closed normally"

    invoke-direct {v1, v3}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    new-array v2, v2, [Lkotlin/Pair;

    .line 107
    invoke-interface {v0, v3, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 113
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    return-void
.end method
