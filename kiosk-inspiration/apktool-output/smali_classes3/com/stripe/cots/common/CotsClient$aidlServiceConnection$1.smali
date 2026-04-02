.class public final Lcom/stripe/cots/common/CotsClient$aidlServiceConnection$1;
.super Ljava/lang/Object;
.source "CotsClient.kt"

# interfaces
.implements Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/cots/common/CotsClient;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/stripe/cots/common/CotsClient$aidlServiceConnection$1",
        "Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;",
        "onDisconnect",
        "",
        "unexpected",
        "",
        "common_release"
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
.field final synthetic this$0:Lcom/stripe/cots/common/CotsClient;


# direct methods
.method constructor <init>(Lcom/stripe/cots/common/CotsClient;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/cots/common/CotsClient$aidlServiceConnection$1;->this$0:Lcom/stripe/cots/common/CotsClient;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnect(Z)V
    .locals 3

    .line 81
    new-instance v0, Lcom/stripe/cots/common/CotsClient$aidlServiceConnection$1$onDisconnect$1;

    iget-object v1, p0, Lcom/stripe/cots/common/CotsClient$aidlServiceConnection$1;->this$0:Lcom/stripe/cots/common/CotsClient;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/stripe/cots/common/CotsClient$aidlServiceConnection$1$onDisconnect$1;-><init>(Lcom/stripe/cots/common/CotsClient;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v2, v0, p1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
