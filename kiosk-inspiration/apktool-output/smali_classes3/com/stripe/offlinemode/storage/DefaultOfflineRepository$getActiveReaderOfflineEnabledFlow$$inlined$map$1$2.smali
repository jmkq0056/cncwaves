.class public final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n50#2:219\n911#3:220\n912#3,8:222\n1#4:221\n*E\n"
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
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2$1;

    iget v1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 0
    iget v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2$1;->label:I

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
    iget-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 219
    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 220
    iget-object v4, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v4}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineLocationCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v4, v5}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 222
    iget-boolean v6, v4, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->offline_enabled:Z

    goto :goto_2

    :cond_4
    move v6, v5

    .line 223
    :goto_2
    iget-object v7, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v7}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getLogger$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    move-result-object v7

    const/4 v8, 0x3

    .line 225
    new-array v8, v8, [Lkotlin/Pair;

    new-instance v9, Lkotlin/Pair;

    const-string v10, "isOfflineEnabled"

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v8, v5

    .line 226
    new-instance v5, Lkotlin/Pair;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v2

    :goto_3
    const-string v9, "locationDatabaseId"

    invoke-direct {v5, v9, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v8, v3

    .line 227
    new-instance p1, Lkotlin/Pair;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v4, :cond_6

    iget-object v2, v4, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    :cond_6
    const-string v4, "locationStripeId"

    invoke-direct {p1, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object p1, v8, v2

    .line 223
    const-string p1, "Updated offline enabled state for active reader."

    invoke-interface {v7, p1, v8}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 229
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 219
    iput v3, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1$2$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 49
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
