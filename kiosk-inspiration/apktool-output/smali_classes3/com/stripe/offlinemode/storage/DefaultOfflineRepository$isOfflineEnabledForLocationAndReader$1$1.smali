.class final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultOfflineRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->isOfflineEnabledForLocationAndReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1085:1\n1#2:1086\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1"
    f = "DefaultOfflineRepository.kt"
    i = {
        0x0,
        0x2
    }
    l = {
        0x337,
        0x33a,
        0x33d,
        0x34c
    }
    m = "invokeSuspend"
    n = {
        "$this$runBlocking",
        "offlineReader"
    }
    s = {
        "L$0",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $accountId:Ljava/lang/String;

.field final synthetic $locationId:Ljava/lang/String;

.field final synthetic $readerSerial:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->$locationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iput-object p3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->$readerSerial:Ljava/lang/String;

    iput-object p4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->$accountId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->$locationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->$readerSerial:Ljava/lang/String;

    iget-object v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->$accountId:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;-><init>(Ljava/lang/String;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 817
    iget v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v7, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 819
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->$locationId:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v7, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->$readerSerial:Ljava/lang/String;

    iget-object v8, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->$accountId:Ljava/lang/String;

    .line 823
    invoke-static {v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    move-result-object v9

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$1:Ljava/lang/Object;

    iput-object v7, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$2:Ljava/lang/Object;

    iput-object v8, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$3:Ljava/lang/Object;

    iput v5, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->label:I

    invoke-interface {v9, v1, p0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->getByStripeLocationId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto/16 :goto_3

    :cond_5
    move-object v5, v2

    move-object v2, v7

    move-object v1, v8

    .line 817
    :goto_0
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    if-eqz p1, :cond_6

    .line 824
    invoke-static {v5}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    move-result-object v7

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v7, p1}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    if-eqz p1, :cond_6

    goto/16 :goto_5

    .line 826
    :cond_6
    invoke-static {v5}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineReaderDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    move-result-object p1

    iput-object v5, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$2:Ljava/lang/Object;

    iput-object v6, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$3:Ljava/lang/Object;

    iput v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->label:I

    invoke-interface {p1, v2, v1, p0}, Lcom/stripe/offlinemode/storage/OfflineReaderDao;->getBySerialAndAccount(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto/16 :goto_3

    :cond_7
    move-object v1, v2

    move-object v2, v5

    :goto_1
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 827
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 829
    :cond_8
    invoke-static {v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineConnectionDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    move-result-object v4

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getId()J

    move-result-wide v5

    iput-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->label:I

    invoke-interface {v4, v5, v6, p0}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao;->getMostRecentConnectionForReader(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_9

    goto/16 :goto_3

    :cond_9
    move-object v0, p1

    move-object p1, v3

    :goto_2
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    const/16 v3, 0x2e

    if-eqz p1, :cond_b

    .line 836
    invoke-static {v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineReaderCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;

    move-result-object v4

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v4, v0}, Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    .line 837
    invoke-static {v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineConnectionCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;

    move-result-object v4

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v4, p1}, Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    .line 835
    invoke-static {v2, v0, p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$extractEmbeddedOfflineLocation(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object p1

    if-eqz p1, :cond_a

    goto :goto_5

    .line 839
    :cond_a
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-object p1, v1

    .line 840
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to find location record for saved reader "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 839
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_b
    move-object p1, v1

    .line 830
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 831
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Failed to find connection record for saved reader "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 830
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 844
    :cond_c
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->$readerSerial:Ljava/lang/String;

    iget-object v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->$accountId:Ljava/lang/String;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v6, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$2:Ljava/lang/Object;

    iput-object v6, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->L$3:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;->label:I

    invoke-static {p1, v1, v3, v4}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationForReader(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    :goto_3
    return-object v0

    .line 817
    :cond_d
    :goto_4
    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    .line 846
    :goto_5
    iget-boolean p1, p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->offline_enabled:Z

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
