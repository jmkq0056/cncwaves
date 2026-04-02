.class final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DefaultOfflineForwardingApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->retrieveSetupIntent(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient"
    f = "DefaultOfflineForwardingApiClient.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x8c,
        0x91,
        0x97
    }
    m = "retrieveSetupIntent"
    n = {
        "this",
        "id",
        "offlineReader",
        "offlineConnection",
        "offlineLocation",
        "this",
        "id",
        "offlineReader",
        "offlineConnection",
        "offlineLocation"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->label:I

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    const/4 v4, 0x0

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->retrieveSetupIntent(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
