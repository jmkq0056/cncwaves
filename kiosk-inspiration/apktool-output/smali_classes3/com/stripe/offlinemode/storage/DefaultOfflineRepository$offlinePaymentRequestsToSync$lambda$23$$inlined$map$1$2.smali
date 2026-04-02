.class public final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$wrapErrorsAsTerminalException$1\n*L\n1#1,218:1\n50#2:219\n424#3,2:220\n1016#3,7:222\n426#3:229\n1036#3:234\n1037#3:236\n1023#3,11:237\n428#3:248\n1549#4:230\n1620#4,3:231\n766#4:249\n857#4,2:250\n1549#4:252\n1620#4,3:253\n1018#5:235\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository\n*L\n425#1:222,7\n425#1:234\n425#1:236\n425#1:237,11\n426#1:230\n426#1:231,3\n428#1:249\n428#1:250,2\n428#1:252\n428#1:253,3\n425#1:235\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1",
        "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $errorMessage$inlined:Ljava/lang/String;

.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iput-object p3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2;->$errorMessage$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2$1;

    iget v1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 0
    iget v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 219
    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    check-cast p1, Ljava/util/List;

    .line 229
    :try_start_0
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    iget-object v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v4}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineApiRequestCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;

    move-result-object v4

    .line 230
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 231
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 232
    check-cast v7, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    .line 229
    check-cast v7, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v4, v7}, Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    .line 232
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_3
    check-cast v5, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    check-cast p1, Ljava/lang/Iterable;

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 250
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    .line 248
    invoke-virtual {v7}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getDeleted()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 250
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 251
    :cond_5
    check-cast v2, Ljava/util/List;

    .line 249
    check-cast v2, Ljava/lang/Iterable;

    .line 252
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 253
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 254
    check-cast v4, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    .line 248
    invoke-virtual {v4}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getEntityId()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 255
    :cond_6
    check-cast p1, Ljava/util/List;

    .line 252
    check-cast p1, Ljava/lang/Iterable;

    .line 248
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 220
    new-instance v2, Lcom/stripe/offlinemode/models/OfflineRequestsToSync;

    invoke-direct {v2, v5, p1}, Lcom/stripe/offlinemode/models/OfflineRequestsToSync;-><init>(Ljava/util/List;Ljava/util/Set;)V

    .line 219
    iput v3, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2$1;->label:I

    invoke-interface {p2, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 49
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p1

    .line 238
    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2;->$errorMessage$inlined:Ljava/lang/String;

    invoke-static {p1, v3, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 240
    instance-of p1, v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_9

    .line 241
    instance-of p1, v3, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_8

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_5

    .line 242
    :cond_8
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_5
    move-object v1, p1

    .line 244
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 246
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2;->$errorMessage$inlined:Ljava/lang/String;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 244
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 240
    :cond_9
    throw v3
.end method
