.class final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultOfflineForwardingApiClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->retrieveSetupIntent(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "it",
        "Lcom/stripe/proto/model/rest/ErrorResponse;"
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
    c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$retrieveSetupIntent$2"
    f = "DefaultOfflineForwardingApiClient.kt"
    i = {}
    l = {
        0x99
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field final synthetic $offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

.field final synthetic $offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

.field final synthetic $offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->$offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iput-object p4, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->$offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iput-object p5, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->$offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;

    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    iget-object v2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->$offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v4, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->$offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-object v5, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->$offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/stripe/proto/model/rest/ErrorResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/rest/ErrorResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorResponse;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->invoke(Lcom/stripe/proto/model/rest/ErrorResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 151
    iget v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    invoke-virtual {p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->clearStoredCredentials()V

    .line 153
    iget-object v3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    .line 154
    iget-object v4, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->$id:Ljava/lang/String;

    .line 155
    iget-object v5, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->$offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    .line 156
    iget-object v6, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->$offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    .line 157
    iget-object v7, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->$offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    .line 153
    iput v2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;->label:I

    invoke-virtual/range {v3 .. v8}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->retrieveSetupIntent(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
