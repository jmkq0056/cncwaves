.class final Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposAssetInstallProcessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->install(Lcom/stripe/core/readerupdate/Update$Config;Lcom/stripe/core/hardware/Reader;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$install$2"
    f = "BbposAssetInstallProcessor.kt"
    i = {}
    l = {
        0x4b,
        0x4e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $config:Lcom/stripe/core/readerupdate/Update$Config;

.field label:I

.field final synthetic this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;


# direct methods
.method constructor <init>(Lcom/stripe/core/readerupdate/Update$Config;Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/Update$Config;",
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;->$config:Lcom/stripe/core/readerupdate/Update$Config;

    iput-object p2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;->$config:Lcom/stripe/core/readerupdate/Update$Config;

    iget-object v2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-direct {v0, v1, v2, p1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;-><init>(Lcom/stripe/core/readerupdate/Update$Config;Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 72
    iget v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;->$config:Lcom/stripe/core/readerupdate/Update$Config;

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/Update$Config;->getRemoteUpdate()Lcom/stripe/core/readerupdate/RemoteUpdate;

    move-result-object p1

    .line 74
    instance-of v1, p1, Lcom/stripe/core/readerupdate/RemoteUpdate$Ota;

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-static {v1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getUpdateController$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/core/hardware/updates/ReaderUpdateController;

    move-result-object v4

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/RemoteUpdate;->getVersion()Ljava/lang/String;

    move-result-object v5

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;->label:I

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/stripe/core/hardware/updates/ReaderUpdateController;->installConfig$default(Lcom/stripe/core/hardware/updates/ReaderUpdateController;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 77
    :cond_3
    instance-of v1, p1, Lcom/stripe/core/readerupdate/RemoteUpdate$Local;

    if-eqz v1, :cond_4

    .line 78
    iget-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-static {v1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getUpdateController$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/core/hardware/updates/ReaderUpdateController;

    move-result-object v3

    check-cast p1, Lcom/stripe/core/readerupdate/RemoteUpdate$Local;

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/RemoteUpdate$Local;->getHex()Ljava/lang/String;

    move-result-object v5

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$2;->label:I

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/stripe/core/hardware/updates/ReaderUpdateController;->installConfig$default(Lcom/stripe/core/hardware/updates/ReaderUpdateController;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    .line 80
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
