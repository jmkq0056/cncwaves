.class final Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "KmpCrpcClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;->post(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;*>;RE:",
        "Lcom/squareup/wire/Message<",
        "TRE;*>;>",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.kmpcore.jackrabbitclient.KmpCrpcClient"
    f = "KmpCrpcClient.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x6f,
        0x40
    }
    m = "post"
    n = {
        "responseProtoAdapter",
        "crpcRequest"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;


# direct methods
.method constructor <init>(Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->result:Ljava/lang/Object;

    iget v1, v0, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->label:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->label:I

    iget-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    const/4 v15, 0x0

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v2 .. v16}, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;->post(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
