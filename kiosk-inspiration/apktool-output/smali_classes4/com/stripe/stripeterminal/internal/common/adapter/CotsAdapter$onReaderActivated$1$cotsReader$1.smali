.class final Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CotsAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->onReaderActivated(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/stripe/cots/common/CotsClientInterface;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/stripe/cots/aidlservice/CotsReader;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/cots/aidlservice/CotsReader;",
        "Lcom/stripe/cots/common/CotsClientInterface;"
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
    c = "com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$onReaderActivated$1$cotsReader$1"
    f = "CotsAdapter.kt"
    i = {}
    l = {
        0x1dd
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $countryCode:Ljava/lang/String;

.field final synthetic $response:Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

.field final synthetic $this_runCatching:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->$response:Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->$this_runCatching:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->$countryCode:Ljava/lang/String;

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

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->$response:Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->$this_runCatching:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->$countryCode:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;-><init>(Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/stripe/cots/common/CotsClientInterface;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/cots/common/CotsClientInterface;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/aidlservice/CotsReader;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/stripe/cots/common/CotsClientInterface;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->invoke(Lcom/stripe/cots/common/CotsClientInterface;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 476
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/stripe/cots/common/CotsClientInterface;

    .line 478
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->$response:Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->getStripeSessionToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-nez p1, :cond_2

    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v4, p1

    .line 479
    :goto_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->$response:Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->getRpcSessionToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    move-object v5, v1

    goto :goto_1

    :cond_3
    move-object v5, p1

    .line 480
    :goto_1
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->$this_runCatching:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->access$getAppInfo(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getClientType()Ljava/lang/String;

    move-result-object v6

    .line 481
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->$this_runCatching:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->access$getAppInfo(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getClientVersion()Ljava/lang/String;

    move-result-object v7

    .line 482
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->$this_runCatching:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->access$getAppInfo(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/terminal/appinfo/DeviceUuid;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 483
    iget-object v9, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->$countryCode:Ljava/lang/String;

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    .line 477
    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;->label:I

    invoke-interface/range {v3 .. v10}, Lcom/stripe/cots/common/CotsClientInterface;->activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    return-object p1
.end method
