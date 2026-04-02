.class final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DefaultOfflineRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->updateOfflineConfirmRequestWithOnlineEntity(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.offlinemode.storage.DefaultOfflineRepository"
    f = "DefaultOfflineRepository.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x265,
        0x27d,
        0x251,
        0x251
    }
    m = "updateOfflineConfirmRequestWithOnlineEntity"
    n = {
        "this",
        "createRequest",
        "this_$iv",
        "errorMessage$iv",
        "entityId",
        "clientSecret",
        "url",
        "this",
        "createRequest",
        "this_$iv",
        "errorMessage$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->label:I

    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v0, v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->updateOfflineConfirmRequestWithOnlineEntity(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
