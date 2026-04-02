.class final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultOfflineRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->setAccountOfflineConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1085:1\n1#2:1086\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$accountOfflineConfig$2"
    f = "DefaultOfflineRepository.kt"
    i = {
        0x0
    }
    l = {
        0xd0,
        0xd8
    }
    m = "invokeSuspend"
    n = {
        "$this$launch"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $value:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->$value:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

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

    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->$value:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    invoke-direct {v0, v1, v2, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 204
    iget v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 206
    :try_start_2
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineAccountConfigDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

    move-result-object v1

    iget-object v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-virtual {v4}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getActiveAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;->getForAccountId(Ljava/lang/String;)Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 207
    iget-object v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v4}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineAccountConfigCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;

    move-result-object v4

    check-cast v1, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v4, v1}, Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v8, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->$value:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    .line 208
    invoke-static {v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineAccountConfigDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

    move-result-object v2

    .line 209
    invoke-static {v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineAccountConfigCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;

    move-result-object v1

    const/16 v10, 0xb

    const/4 v11, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 210
    invoke-static/range {v4 .. v11}, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;->copy$default(Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;JLjava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;

    move-result-object v4

    check-cast v4, Lcom/squareup/wire/Message;

    .line 209
    invoke-virtual {v1, v4}, Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;->encrypt(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;

    move-result-object v1

    check-cast v1, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    .line 208
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->label:I

    invoke-interface {v2, v1, p0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;->update(Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_0

    .line 215
    :cond_3
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v7, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->$value:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    .line 216
    invoke-static {p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineAccountConfigDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

    move-result-object v1

    invoke-static {p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineAccountConfigCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;

    move-result-object v11

    .line 217
    new-instance v3, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;

    .line 218
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getActiveAccountId()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x9

    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 217
    invoke-direct/range {v3 .. v10}, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;-><init>(JLjava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lcom/squareup/wire/Message;

    .line 216
    invoke-virtual {v11, v3}, Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;->encrypt(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->label:I

    invoke-interface {v1, p1, p0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;->insert(Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_0
    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 224
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getLogger$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure when setting OfflineAccountConfig: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 226
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
