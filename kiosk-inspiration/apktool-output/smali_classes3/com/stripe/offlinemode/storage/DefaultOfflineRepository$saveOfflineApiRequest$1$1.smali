.class final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultOfflineRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->saveOfflineApiRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$saveOfflineApiRequest$1$1"
    f = "DefaultOfflineRepository.kt"
    i = {}
    l = {
        0x18c,
        0x199
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->$offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->$offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    invoke-direct {p1, v0, v1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 395
    iget v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

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

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 396
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->$offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->label:I

    invoke-static {p1, v1, v4}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$validatePendingCreateRequirement(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 409
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineApiRequestDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    move-result-object p1

    .line 410
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineApiRequestCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;

    move-result-object v1

    iget-object v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->$offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    check-cast v3, Lcom/squareup/wire/Message;

    invoke-virtual {v1, v3}, Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;->encrypt(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;

    move-result-object v1

    check-cast v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 409
    iput v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;->label:I

    invoke-interface {p1, v1, v3}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->insert(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    return-object p1

    .line 403
    :cond_5
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 404
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENT_INTENT_NOT_FOUND:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 403
    const-string v3, "Cannot confirm offline payment without a corresponding create request."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method
