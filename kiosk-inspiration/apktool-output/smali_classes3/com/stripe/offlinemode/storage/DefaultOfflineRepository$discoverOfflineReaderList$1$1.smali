.class final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultOfflineRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->discoverOfflineReaderList(Ljava/lang/String;)Ljava/util/List;
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
        "Ljava/util/List<",
        "+",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1085:1\n1549#2:1086\n1620#2,3:1087\n766#2:1090\n857#2,2:1091\n1549#2:1093\n1620#2,3:1094\n1549#2:1097\n1620#2,3:1098\n1549#2:1101\n1620#2,2:1102\n1622#2:1105\n1559#2:1106\n1590#2,4:1107\n1#3:1104\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1\n*L\n355#1:1086\n355#1:1087,3\n357#1:1090\n357#1:1091,2\n361#1:1093\n361#1:1094,3\n362#1:1097\n362#1:1098,3\n365#1:1101\n365#1:1102,2\n365#1:1105\n373#1:1106\n373#1:1107,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
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
    c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$discoverOfflineReaderList$1$1"
    f = "DefaultOfflineRepository.kt"
    i = {
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x162,
        0x16b,
        0x16e
    }
    m = "invokeSuspend"
    n = {
        "offlineReaders",
        "serials",
        "deviceTypes",
        "destination$iv$iv",
        "offlineReaders",
        "serials",
        "deviceTypes",
        "locations",
        "destination$iv$iv",
        "it"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$5",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$5",
        "L$7"
    }
.end annotation


# instance fields
.field final synthetic $accountId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->$accountId:Ljava/lang/String;

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

    new-instance p1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->$accountId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 56

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 353
    iget v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0xa

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$8:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$7:Ljava/lang/Object;

    check-cast v6, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$6:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v9, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$5:Ljava/lang/Object;

    check-cast v9, Ljava/util/Collection;

    iget-object v10, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v11, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v14, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_8

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$7:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$6:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v9, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$5:Ljava/lang/Object;

    check-cast v9, Ljava/util/Collection;

    iget-object v10, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v12, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v14, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v7

    move-object v7, v9

    move-object/from16 v9, p1

    goto/16 :goto_5

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 354
    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v9, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->$accountId:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineReaders(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->label:I

    invoke-static {v2, v9}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto/16 :goto_7

    .line 353
    :cond_4
    :goto_0
    check-cast v2, Ljava/util/List;

    .line 355
    move-object v7, v2

    check-cast v7, Ljava/lang/Iterable;

    .line 1086
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 1087
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1088
    check-cast v10, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    .line 356
    iget-object v10, v10, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    .line 1088
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1089
    :cond_5
    check-cast v9, Ljava/util/List;

    .line 1086
    check-cast v9, Ljava/lang/Iterable;

    .line 1090
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 1091
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .line 358
    check-cast v11, Ljava/lang/CharSequence;

    const-string v12, "SIMULATOR"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v4, v6, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1091
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1092
    :cond_7
    check-cast v7, Ljava/util/List;

    .line 361
    move-object v9, v7

    check-cast v9, Ljava/lang/Iterable;

    sget-object v10, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;

    .line 1093
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v9, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v11, Ljava/util/Collection;

    .line 1094
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1095
    check-cast v13, Ljava/lang/String;

    .line 361
    invoke-virtual {v10, v13}, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;->fromSerial(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v13

    .line 1095
    invoke-interface {v11, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1096
    :cond_8
    check-cast v11, Ljava/util/List;

    .line 362
    iget-object v10, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v12, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->$accountId:Ljava/lang/String;

    .line 1097
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v9, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v13, Ljava/util/Collection;

    .line 1098
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v14, v11

    move-object v11, v10

    move-object v10, v12

    move-object v12, v14

    move-object v14, v2

    move-object v2, v13

    move-object v13, v7

    move-object v7, v9

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1099
    check-cast v9, Ljava/lang/String;

    .line 363
    iput-object v14, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$1:Ljava/lang/Object;

    iput-object v12, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$2:Ljava/lang/Object;

    iput-object v11, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$3:Ljava/lang/Object;

    iput-object v10, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$5:Ljava/lang/Object;

    iput-object v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$6:Ljava/lang/Object;

    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$7:Ljava/lang/Object;

    iput v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->label:I

    invoke-static {v11, v9, v10, v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationForReader(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_9

    goto/16 :goto_7

    :cond_9
    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v7

    move-object v7, v2

    :goto_5
    check-cast v9, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    .line 1099
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v7

    move-object v7, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    goto :goto_4

    .line 1100
    :cond_a
    check-cast v2, Ljava/util/List;

    .line 365
    move-object v6, v14

    check-cast v6, Ljava/lang/Iterable;

    iget-object v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    .line 1101
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 1102
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v11, v2

    move-object v10, v7

    move-object v7, v6

    :goto_6
    move-object v2, v9

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1103
    check-cast v6, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    .line 366
    invoke-static {v10}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineConnectionDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    move-result-object v9

    iget-wide v3, v6, Lcom/stripe/proto/model/offline_mode/OfflineReader;->id:J

    iput-object v14, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$1:Ljava/lang/Object;

    iput-object v12, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$2:Ljava/lang/Object;

    iput-object v11, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$3:Ljava/lang/Object;

    iput-object v10, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$5:Ljava/lang/Object;

    iput-object v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$6:Ljava/lang/Object;

    iput-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$7:Ljava/lang/Object;

    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->L$8:Ljava/lang/Object;

    iput v5, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;->label:I

    invoke-interface {v9, v3, v4, v0}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao;->getMostRecentConnectionForReader(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_b

    :goto_7
    return-object v1

    :cond_b
    move-object v9, v2

    .line 353
    :goto_8
    check-cast v3, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    if-eqz v3, :cond_c

    .line 367
    invoke-static {v10}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineConnectionCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;

    move-result-object v4

    check-cast v3, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v4, v3}, Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    if-eqz v3, :cond_c

    .line 1103
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_6

    .line 368
    :cond_c
    new-instance v17, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 369
    sget-object v18, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find connection record for saved reader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0xc

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 368
    invoke-direct/range {v17 .. v23}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v17

    .line 1105
    :cond_d
    check-cast v2, Ljava/util/List;

    .line 373
    check-cast v13, Ljava/lang/Iterable;

    .line 1106
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v13, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1108
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_e

    .line 1109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_e
    move-object/from16 v23, v5

    check-cast v23, Ljava/lang/String;

    .line 375
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v5, v5, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    .line 376
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v7, v7, Lcom/stripe/proto/model/offline_mode/OfflineReader;->label:Ljava/lang/String;

    .line 378
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    iget-object v8, v8, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v8, :cond_f

    sget-object v9, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v9, v8}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkLocation(Lcom/stripe/proto/model/merchant/ApiLocationPb;)Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v8

    move-object/from16 v31, v8

    goto :goto_a

    :cond_f
    const/16 v31, 0x0

    .line 379
    :goto_a
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 380
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-object v8, v8, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->ip_address:Ljava/lang/String;

    .line 381
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-object v4, v4, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->base_url:Ljava/lang/String;

    .line 382
    sget-object v22, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    .line 374
    new-instance v16, Lcom/stripe/stripeterminal/external/models/Reader;

    const/16 v54, 0xf

    const/16 v55, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, -0x46ea

    move-object/from16 v26, v4

    move-object/from16 v20, v5

    move-object/from16 v24, v7

    move-object/from16 v27, v8

    invoke-direct/range {v16 .. v55}, Lcom/stripe/stripeterminal/external/models/Reader;-><init>(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Lcom/stripe/stripeterminal/external/models/LocationStatus;Ljava/lang/String;ZLcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/Location;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v16

    .line 1109
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto/16 :goto_9

    .line 1110
    :cond_10
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
