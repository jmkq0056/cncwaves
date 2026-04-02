.class final synthetic Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$fetchNextToForward$2$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "DefaultOfflineRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;
.implements Lkotlin/coroutines/jvm/internal/SuspendFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->fetchNextToForward(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
        "Ljava/lang/Long;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
        ">;",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/coroutines/jvm/internal/SuspendFunction;"
    }
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    const-string v5, "getOfflineConnectionAndReaderForPaymentRequest(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v6, 0x0

    const/4 v1, 0x3

    const-string v4, "getOfflineConnectionAndReaderForPaymentRequest"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$fetchNextToForward$2$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineConnectionAndReaderForPaymentRequest(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 541
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$fetchNextToForward$2$1;->invoke(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
