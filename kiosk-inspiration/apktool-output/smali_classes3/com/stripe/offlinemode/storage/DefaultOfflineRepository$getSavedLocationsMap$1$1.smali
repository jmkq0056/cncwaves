.class final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultOfflineRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getSavedLocationsMap(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1085:1\n819#2:1086\n847#2,2:1087\n1549#2:1089\n1620#2,3:1090\n1603#2,9:1093\n1855#2:1102\n1856#2:1105\n1612#2:1106\n1#3:1103\n1#3:1104\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1\n*L\n792#1:1086\n792#1:1087,2\n793#1:1089\n793#1:1090,3\n796#1:1093,9\n796#1:1102\n796#1:1105\n796#1:1106\n796#1:1104\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
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
    c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$getSavedLocationsMap$1$1"
    f = "DefaultOfflineRepository.kt"
    i = {
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x316,
        0x31d,
        0x31e
    }
    m = "invokeSuspend"
    n = {
        "destination$iv$iv",
        "offlineReader",
        "destination$iv$iv",
        "offlineReader"
    }
    s = {
        "L$1",
        "L$3",
        "L$1",
        "L$3"
    }
.end annotation


# instance fields
.field final synthetic $accountId:Ljava/lang/String;

.field final synthetic $serials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->$accountId:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->$serials:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->$accountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->$serials:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 788
    iget v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v5, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v5, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 790
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineReaderDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    move-result-object p1

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->$accountId:Ljava/lang/String;

    iget-object v6, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->$serials:Ljava/util/List;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->label:I

    invoke-interface {p1, v1, v6, v7}, Lcom/stripe/offlinemode/storage/OfflineReaderDao;->getBySerialsForAccount(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto/16 :goto_5

    .line 788
    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 792
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    .line 1086
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 1087
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    .line 792
    invoke-static {v1, v7}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$isExpired(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/offlinemode/storage/OfflineReaderEntity;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1087
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1088
    :cond_6
    check-cast v5, Ljava/util/List;

    .line 1086
    check-cast v5, Ljava/lang/Iterable;

    .line 793
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineReaderCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;

    move-result-object p1

    .line 1089
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1090
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1091
    check-cast v6, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    .line 793
    check-cast v6, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {p1, v6}, Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v6

    check-cast v6, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    .line 1091
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1092
    :cond_7
    check-cast v1, Ljava/util/List;

    .line 1089
    check-cast v1, Ljava/lang/Iterable;

    .line 796
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    .line 1093
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 1102
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1101
    check-cast v6, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    .line 797
    invoke-static {p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineConnectionDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    move-result-object v7

    iget-wide v8, v6, Lcom/stripe/proto/model/offline_mode/OfflineReader;->id:J

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$2:Ljava/lang/Object;

    iput-object v6, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$3:Ljava/lang/Object;

    iput v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->label:I

    invoke-interface {v7, v8, v9, p0}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao;->getMostRecentConnectionForReader(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_8

    goto :goto_5

    :cond_8
    move-object v11, v7

    move-object v7, p1

    move-object p1, v11

    move-object v11, v5

    move-object v5, v1

    move-object v1, v6

    move-object v6, v11

    .line 788
    :goto_4
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    if-eqz p1, :cond_b

    .line 798
    invoke-static {v7}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    move-result-object v8

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getLocationId()J

    move-result-wide v9

    iput-object v7, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->L$3:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;->label:I

    invoke-interface {v8, v9, v10, p0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->getById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    :goto_5
    return-object v0

    :cond_9
    :goto_6
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    if-eqz p1, :cond_b

    .line 799
    invoke-static {v7}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    move-result-object v8

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v8, p1}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    if-eqz p1, :cond_b

    .line 800
    iget-boolean v8, p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->offline_enabled:Z

    if-eqz v8, :cond_a

    goto :goto_7

    :cond_a
    move-object p1, v2

    :goto_7
    if-eqz p1, :cond_b

    .line 801
    iget-object p1, p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz p1, :cond_b

    .line 802
    iget-object v1, v1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_8

    :cond_b
    move-object p1, v2

    :goto_8
    move-object v1, v5

    move-object v5, v6

    if-eqz p1, :cond_c

    .line 1101
    invoke-interface {v5, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object p1, v7

    goto :goto_3

    .line 1106
    :cond_d
    check-cast v5, Ljava/util/List;

    .line 1093
    check-cast v5, Ljava/lang/Iterable;

    .line 804
    invoke-static {v5}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
