.class final Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "JackrabbitClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->collectInputsPollForResult(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.stripe.kmpcore.jackrabbitclient.JackrabbitClient"
    f = "JackrabbitClient.kt"
    i = {
        0x0
    }
    l = {
        0xb7
    }
    m = "collectInputsPollForResult"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;


# direct methods
.method constructor <init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;->label:I

    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    const/4 v10, 0x0

    move-object v11, p0

    check-cast v11, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v11}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->collectInputsPollForResult(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
