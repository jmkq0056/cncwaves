.class final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultOfflineRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getOfflineLocationForConnection(Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
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
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1085:1\n1#2:1086\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
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
    c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$getOfflineLocationForConnection$1$1"
    f = "DefaultOfflineRepository.kt"
    i = {
        0x0
    }
    l = {
        0x1f4,
        0x1f7
    }
    m = "invokeSuspend"
    n = {
        "$this$runBlocking"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->$offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->$offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    invoke-direct {v0, v1, v2, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 499
    iget v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 500
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    move-result-object v1

    iget-object v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->$offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-wide v4, v4, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->label:I

    invoke-interface {v1, v4, v5, v6}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->getById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 499
    :cond_3
    :goto_0
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    if-eqz p1, :cond_4

    .line 501
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    move-result-object v1

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v1, p1}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    if-eqz p1, :cond_4

    return-object p1

    .line 502
    :cond_4
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->$offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    .line 503
    invoke-static {v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineReaderDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    move-result-object v3

    iget-wide v4, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    iput-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->label:I

    invoke-interface {v3, v4, v5, p0}, Lcom/stripe/offlinemode/storage/OfflineReaderDao;->getByReaderId(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    move-object v0, p1

    move-object p1, v2

    .line 499
    :goto_2
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    if-eqz p1, :cond_7

    .line 504
    invoke-static {v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineReaderCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;

    move-result-object v2

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v2, p1}, Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    if-eqz p1, :cond_7

    .line 510
    invoke-static {v1, p1, v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$extractEmbeddedOfflineLocation(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object p1

    if-eqz p1, :cond_6

    return-object p1

    .line 512
    :cond_6
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 513
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Finding offline location with ID "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;->$offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-wide v2, v2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " returned null."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 512
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 505
    :cond_7
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 506
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 507
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to fetch reader with ID "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 505
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method
