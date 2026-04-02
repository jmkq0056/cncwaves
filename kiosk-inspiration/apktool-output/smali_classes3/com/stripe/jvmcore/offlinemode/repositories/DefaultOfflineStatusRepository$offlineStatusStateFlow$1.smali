.class final Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultOfflineStatusRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;-><init>(Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatus;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatus;",
        "readerOfflineStatus",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
        "sdkOfflineStatus"
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
    c = "com.stripe.jvmcore.offlinemode.repositories.DefaultOfflineStatusRepository$offlineStatusStateFlow$1"
    f = "DefaultOfflineStatusRepository.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;->this$0:Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
            "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/OfflineStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;

    iget-object v1, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;->this$0:Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;

    invoke-direct {v0, v1, p3}, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;-><init>(Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    check-cast p2, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;->invoke(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 26
    iget v0, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    .line 27
    new-instance v1, Lcom/stripe/stripeterminal/external/models/OfflineStatus;

    .line 29
    iget-object v2, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;->this$0:Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;

    invoke-static {v2, v0}, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->access$orDefault(Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    move-result-object v0

    .line 27
    invoke-direct {v1, p1, v0}, Lcom/stripe/stripeterminal/external/models/OfflineStatus;-><init>(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)V

    return-object v1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
