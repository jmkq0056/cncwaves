.class final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultOfflineRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getOfflineConnectionEntitiesIfSaved(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;)Lkotlin/Triple;
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
        "Lkotlin/Triple<",
        "+",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "+",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "+",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1085:1\n1603#2,9:1086\n1855#2:1095\n1856#2:1097\n1612#2:1098\n819#2:1099\n847#2,2:1100\n1#3:1096\n1#3:1102\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1\n*L\n731#1:1086,9\n731#1:1095\n731#1:1097\n731#1:1098\n745#1:1099\n745#1:1100,2\n731#1:1096\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0001*\u00020\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Triple;",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
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
    c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1"
    f = "DefaultOfflineRepository.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x2da,
        0x2f5,
        0x2fe
    }
    m = "invokeSuspend"
    n = {
        "$this$runBlocking",
        "$this$runBlocking",
        "offlineReader",
        "$this$runBlocking",
        "offlineReader",
        "offlineConnection"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $accountId:Ljava/lang/String;

.field final synthetic $reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->$accountId:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

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

    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->$accountId:Ljava/lang/String;

    iget-object v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Triple<",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 728
    iget v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x2e

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 730
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineReaderDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    move-result-object v0

    iget-object v6, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->$accountId:Ljava/lang/String;

    invoke-interface {v0, v6}, Lcom/stripe/offlinemode/storage/OfflineReaderDao;->getByAccountId(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->label:I

    invoke-static {v0, v6}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    goto/16 :goto_6

    :cond_4
    move-object v4, p1

    move-object p1, v0

    .line 728
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 731
    iget-object v6, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 1086
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    check-cast v7, Ljava/util/Collection;

    .line 1095
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1094
    move-object v9, v0

    check-cast v9, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    .line 734
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 735
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;

    invoke-virtual {v9}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getSerialNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;->fromSerial(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    .line 734
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 737
    :goto_2
    sget-object v10, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v0, v10

    :cond_6
    check-cast v0, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 738
    invoke-virtual {v6}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v10

    if-ne v0, v10, :cond_7

    move-object v8, v9

    :cond_7
    if-eqz v8, :cond_5

    .line 1094
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1098
    :cond_8
    check-cast v7, Ljava/util/List;

    .line 745
    check-cast v7, Ljava/lang/Iterable;

    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    .line 1099
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 1100
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    .line 745
    invoke-static {p1, v10}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$isExpired(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/offlinemode/storage/OfflineReaderEntity;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1100
    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1101
    :cond_a
    check-cast v0, Ljava/util/List;

    .line 745
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_14

    .line 752
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    .line 753
    invoke-virtual {v7}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_4

    :cond_c
    move-object v6, v8

    .line 752
    :goto_4
    check-cast v6, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    if-eqz v6, :cond_13

    .line 754
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineReaderCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;

    move-result-object p1

    check-cast v6, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {p1, v6}, Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    if-eqz p1, :cond_13

    .line 757
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineConnectionDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    move-result-object v0

    iget-wide v6, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->id:J

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->label:I

    invoke-interface {v0, v6, v7, v8}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao;->getMostRecentConnectionForReader(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_d

    goto :goto_6

    :cond_d
    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    move-object v3, v4

    .line 728
    :goto_5
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    if-eqz p1, :cond_12

    .line 758
    iget-object v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v4}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineConnectionCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;

    move-result-object v4

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v4, p1}, Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    if-eqz p1, :cond_12

    .line 766
    iget-object v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v4}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    move-result-object v4

    iget-wide v6, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$0:Ljava/lang/Object;

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->label:I

    invoke-interface {v4, v6, v7, v8}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->getById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_e

    :goto_6
    return-object v1

    :cond_e
    move-object v1, v0

    move-object v0, p1

    move-object p1, v2

    :goto_7
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    if-eqz p1, :cond_f

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    move-result-object v2

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v2, p1}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    if-nez p1, :cond_10

    .line 767
    :cond_f
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 768
    invoke-static {p1, v1, v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$extractEmbeddedOfflineLocation(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 776
    :cond_10
    new-instance v2, Lkotlin/Triple;

    invoke-direct {v2, v1, v0, p1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 771
    :cond_11
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 772
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 773
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to find location record for saved reader "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 771
    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 759
    :cond_12
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    move p1, v5

    .line 760
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to find connection record for saved reader "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 759
    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4

    :cond_13
    return-object v8

    :cond_14
    move p1, v5

    .line 746
    new-instance v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 747
    sget-object v6, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_CONNECTION_NOT_AVAILABLE_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No saved offline readers of this type found for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;->$accountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 746
    invoke-direct/range {v5 .. v11}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v5
.end method
