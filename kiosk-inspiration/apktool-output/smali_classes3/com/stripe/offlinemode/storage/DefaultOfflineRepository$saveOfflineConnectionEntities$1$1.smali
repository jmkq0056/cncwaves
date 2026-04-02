.class final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultOfflineRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->saveOfflineConnectionEntities(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;)J
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
    c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$saveOfflineConnectionEntities$1$1"
    f = "DefaultOfflineRepository.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x6,
        0x7,
        0x7,
        0x7
    }
    l = {
        0x11b,
        0x121,
        0x125,
        0x132,
        0x134,
        0x136,
        0x143,
        0x145,
        0x148
    }
    m = "invokeSuspend"
    n = {
        "$this$runBlocking",
        "$this$runBlocking",
        "$this$runBlocking",
        "oldReaderEntity",
        "$this$runBlocking",
        "stripeLocationId",
        "readerId",
        "$this$runBlocking",
        "stripeLocationId",
        "readerId",
        "$this$runBlocking",
        "stripeLocationId",
        "savedLocationEntity",
        "readerId",
        "$this$runBlocking",
        "stripeLocationId",
        "readerId",
        "locationId",
        "$this$runBlocking",
        "readerId",
        "locationId"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "J$0",
        "L$0",
        "L$1",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "J$0",
        "L$0",
        "L$1",
        "J$0",
        "J$1",
        "L$0",
        "J$0",
        "J$1"
    }
.end annotation


# instance fields
.field final synthetic $offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

.field final synthetic $offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

.field final synthetic $offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

.field J$0:J

.field J$1:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iput-object p3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    iput-object p4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

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

    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    iget-object v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 281
    iget v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_e

    :pswitch_1
    iget-wide v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$1:J

    iget-wide v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$0:J

    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v8, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    iget-object v9, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v8

    move-object/from16 v8, p1

    goto/16 :goto_a

    :pswitch_2
    iget-wide v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$1:J

    iget-wide v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$0:J

    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v8, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    goto/16 :goto_9

    :pswitch_3
    iget-wide v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$0:J

    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    iget-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_4
    iget-wide v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$0:J

    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    goto/16 :goto_6

    :pswitch_5
    iget-wide v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$0:J

    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v2

    move-object v2, v7

    move-object/from16 v7, p1

    goto/16 :goto_5

    :pswitch_6
    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    iget-object v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_7
    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_1

    :pswitch_8
    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_0

    :pswitch_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 283
    iget-object v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v4}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineReaderDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    move-result-object v4

    .line 284
    iget-object v5, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v5, v5, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    .line 285
    iget-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v6, v6, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    .line 283
    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->label:I

    invoke-interface {v4, v5, v6, v7}, Lcom/stripe/offlinemode/storage/OfflineReaderDao;->getBySerialAndAccount(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_0

    goto/16 :goto_d

    .line 281
    :cond_0
    :goto_0
    check-cast v4, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    if-nez v4, :cond_2

    .line 289
    iget-object v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v4}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineReaderDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    move-result-object v4

    iget-object v5, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v5}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineReaderCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;

    move-result-object v5

    iget-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    check-cast v6, Lcom/squareup/wire/Message;

    invoke-virtual {v5, v6}, Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;->encrypt(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;

    move-result-object v5

    check-cast v5, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->label:I

    invoke-interface {v4, v5, v6}, Lcom/stripe/offlinemode/storage/OfflineReaderDao;->insert(Lcom/stripe/offlinemode/storage/OfflineReaderEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_1

    goto/16 :goto_d

    :cond_1
    :goto_1
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_3

    .line 293
    :cond_2
    iget-object v5, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v5}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineReaderDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    move-result-object v5

    .line 294
    iget-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v6}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineReaderCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;

    move-result-object v6

    .line 295
    iget-object v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    .line 296
    invoke-virtual {v4}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getId()J

    move-result-wide v13

    .line 297
    invoke-virtual {v4}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getCreated()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    const/16 v20, 0x1cf

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 295
    invoke-static/range {v7 .. v21}, Lcom/stripe/proto/model/offline_mode/OfflineReader;->copy$default(Lcom/stripe/proto/model/offline_mode/OfflineReader;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineReader;

    move-result-object v7

    check-cast v7, Lcom/squareup/wire/Message;

    .line 294
    invoke-virtual {v6, v7}, Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;->encrypt(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;

    move-result-object v6

    check-cast v6, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    .line 293
    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->label:I

    invoke-interface {v5, v6, v7}, Lcom/stripe/offlinemode/storage/OfflineReaderDao;->update(Lcom/stripe/offlinemode/storage/OfflineReaderEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_3

    goto/16 :goto_d

    :cond_3
    move-object/from16 v30, v4

    move-object v4, v2

    move-object/from16 v2, v30

    .line 301
    :goto_2
    invoke-virtual {v2}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getId()J

    move-result-wide v5

    move-object v2, v4

    move-wide v4, v5

    .line 304
    :goto_3
    iget-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    iget-object v6, v6, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, v3

    .line 306
    :goto_4
    iget-object v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v7}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$1:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$0:J

    const/4 v9, 0x4

    iput v9, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->label:I

    invoke-interface {v7, v6, v8}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->getByStripeLocationId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    goto/16 :goto_d

    .line 281
    :cond_5
    :goto_5
    check-cast v7, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    if-nez v7, :cond_7

    .line 308
    iget-object v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v7}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    move-result-object v7

    iget-object v8, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v8}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    move-result-object v8

    iget-object v9, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    check-cast v9, Lcom/squareup/wire/Message;

    invoke-virtual {v8, v9}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->encrypt(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;

    move-result-object v8

    check-cast v8, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$1:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$0:J

    const/4 v10, 0x5

    iput v10, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->label:I

    invoke-interface {v7, v8, v9}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->insert(Lcom/stripe/offlinemode/storage/OfflineLocationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_6

    goto/16 :goto_d

    :cond_6
    move-object/from16 v30, v6

    move-object v6, v2

    move-object/from16 v2, v30

    :goto_6
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    goto :goto_8

    .line 310
    :cond_7
    iget-object v8, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v8}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    move-result-object v8

    .line 311
    iget-object v9, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v9}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    move-result-object v9

    .line 312
    iget-object v10, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    .line 313
    invoke-virtual {v7}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getId()J

    move-result-wide v11

    .line 314
    invoke-virtual {v7}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getCreated()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const/16 v24, 0x3fa

    const/16 v25, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 312
    invoke-static/range {v10 .. v25}, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->copy$default(Lcom/stripe/proto/model/offline_mode/OfflineLocation;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/model/merchant/ApiLocationPb;ZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object v10

    check-cast v10, Lcom/squareup/wire/Message;

    .line 311
    invoke-virtual {v9, v10}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->encrypt(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;

    move-result-object v9

    check-cast v9, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/Continuation;

    .line 310
    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$2:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$0:J

    const/4 v11, 0x6

    iput v11, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->label:I

    invoke-interface {v8, v9, v10}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->update(Lcom/stripe/offlinemode/storage/OfflineLocationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_8

    goto/16 :goto_d

    :cond_8
    move-object/from16 v30, v7

    move-object v7, v2

    move-object/from16 v2, v30

    .line 318
    :goto_7
    invoke-virtual {v2}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getId()J

    move-result-wide v8

    move-object v2, v6

    move-object v6, v7

    move-wide v7, v8

    .line 323
    :goto_8
    iget-object v9, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v9}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineConnectionDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    move-result-object v9

    iget-object v10, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-wide v10, v10, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->id:J

    move-object v12, v0

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$2:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$0:J

    iput-wide v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$1:J

    const/4 v13, 0x7

    iput v13, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->label:I

    invoke-interface {v9, v10, v11, v12}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao;->getById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_9

    goto/16 :goto_d

    :cond_9
    move-wide/from16 v30, v7

    move-object v8, v6

    move-wide v6, v4

    move-wide/from16 v4, v30

    .line 281
    :goto_9
    check-cast v9, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    if-eqz v9, :cond_d

    .line 324
    iget-object v10, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    .line 325
    invoke-static {v10}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    move-result-object v10

    invoke-virtual {v9}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getLocationId()J

    move-result-wide v11

    iput-object v8, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$2:Ljava/lang/Object;

    iput-wide v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$0:J

    iput-wide v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->J$1:J

    const/16 v8, 0x8

    iput v8, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->label:I

    invoke-interface {v10, v11, v12, v0}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->getById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_a

    goto/16 :goto_d

    :cond_a
    :goto_a
    check-cast v8, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getStripeLocationId()Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :cond_b
    move-object v8, v3

    :goto_b
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_c

    :cond_c
    move-object v9, v3

    :goto_c
    if-eqz v9, :cond_d

    .line 326
    invoke-virtual {v9}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getId()J

    move-result-wide v1

    goto/16 :goto_f

    :cond_d
    move-wide/from16 v21, v4

    move-wide v11, v6

    .line 327
    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->$offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    .line 328
    invoke-static {v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineConnectionDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    move-result-object v5

    .line 329
    invoke-static {v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineConnectionCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;

    move-result-object v2

    const v26, 0x1dfcf

    const/16 v27, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v13, v9

    const-wide/16 v9, 0x0

    move-object v15, v13

    const-wide/16 v13, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x0

    move-object/from16 v23, v20

    const/16 v20, 0x0

    move-object/from16 v24, v23

    const/16 v23, 0x0

    move-object/from16 v25, v24

    const/16 v24, 0x0

    move-object/from16 v28, v25

    const/16 v25, 0x0

    move-object/from16 v29, v28

    .line 330
    invoke-static/range {v4 .. v27}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->copy$default(Lcom/stripe/proto/model/offline_mode/OfflineConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    move-result-object v4

    check-cast v4, Lcom/squareup/wire/Message;

    .line 329
    invoke-virtual {v2, v4}, Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;->encrypt(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;

    move-result-object v2

    check-cast v2, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    .line 328
    iput-object v3, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->L$2:Ljava/lang/Object;

    const/16 v3, 0x9

    iput v3, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;->label:I

    move-object/from16 v6, v29

    invoke-interface {v6, v2, v0}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao;->insert(Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_e

    :goto_d
    return-object v1

    :cond_e
    :goto_e
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 327
    :goto_f
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
