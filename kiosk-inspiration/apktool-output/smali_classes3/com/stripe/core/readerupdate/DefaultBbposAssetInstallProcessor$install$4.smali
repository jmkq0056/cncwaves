.class final Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposAssetInstallProcessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->install(Lcom/stripe/core/readerupdate/Update$Settings;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Ljava/lang/Float;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
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
    c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$install$4"
    f = "BbposAssetInstallProcessor.kt"
    i = {
        0x0
    }
    l = {
        0x65
    }
    m = "invokeSuspend"
    n = {
        "$this$callbackFlow"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $configurationHandler:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

.field final synthetic $settings:Lcom/stripe/core/readerupdate/Update$Settings;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;


# direct methods
.method constructor <init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/core/readerupdate/Update$Settings;Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            "Lcom/stripe/core/readerupdate/Update$Settings;",
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->$configurationHandler:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    iput-object p2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->$settings:Lcom/stripe/core/readerupdate/Update$Settings;

    iput-object p3, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->$configurationHandler:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    iget-object v2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->$settings:Lcom/stripe/core/readerupdate/Update$Settings;

    iget-object v3, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;-><init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/core/readerupdate/Update$Settings;Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 100
    iget v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 101
    iget-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->$configurationHandler:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    iget-object v3, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->$settings:Lcom/stripe/core/readerupdate/Update$Settings;

    invoke-virtual {v3}, Lcom/stripe/core/readerupdate/Update$Settings;->getConfig()Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->$settings:Lcom/stripe/core/readerupdate/Update$Settings;

    invoke-virtual {v4}, Lcom/stripe/core/readerupdate/Update$Settings;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4$1;

    iget-object v6, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-direct {v5, p1, v6}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$install$4;->label:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->installConfig(Lcom/stripe/proto/model/config/MobileClientConfig;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 115
    :goto_0
    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    const/4 p1, 0x0

    invoke-static {v0, p1, v2, p1}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 116
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
