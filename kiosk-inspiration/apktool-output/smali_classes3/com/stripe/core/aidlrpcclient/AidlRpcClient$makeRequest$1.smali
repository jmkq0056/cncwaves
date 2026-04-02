.class final Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AidlRpcClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/stripe/core/aidlrpc/AidlRpcListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/core/aidlrpc/AidlRpc;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/core/aidlrpc/AidlRpc;",
        "invoke"
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
.field final synthetic $listener:Lcom/stripe/core/aidlrpc/AidlRpcListener;

.field final synthetic $message:Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/Message<",
            "**>;"
        }
    .end annotation
.end field

.field final synthetic $method:Ljava/lang/String;

.field final synthetic $service:Ljava/lang/String;

.field final synthetic this$0:Lcom/stripe/core/aidlrpcclient/AidlRpcClient;


# direct methods
.method constructor <init>(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;Lcom/squareup/wire/Message;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/aidlrpc/AidlRpcListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/aidlrpcclient/AidlRpcClient;",
            "Lcom/squareup/wire/Message<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/core/aidlrpc/AidlRpcListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->this$0:Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

    iput-object p2, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->$message:Lcom/squareup/wire/Message;

    iput-object p3, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->$service:Ljava/lang/String;

    iput-object p4, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->$listener:Lcom/stripe/core/aidlrpc/AidlRpcListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, Lcom/stripe/core/aidlrpc/AidlRpc;

    invoke-virtual {p0, p1}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->invoke(Lcom/stripe/core/aidlrpc/AidlRpc;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/core/aidlrpc/AidlRpc;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v2, v0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->this$0:Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

    invoke-static {v2}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->access$getRequestId$p(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-static {v2, v6, v7}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->access$setRequestId$p(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;J)V

    .line 90
    iget-object v2, v0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->$message:Lcom/squareup/wire/Message;

    invoke-virtual {v2}, Lcom/squareup/wire/Message;->encodeByteString()Lokio/ByteString;

    move-result-object v8

    .line 91
    iget-object v2, v0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->this$0:Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

    invoke-static {v2}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->access$getCrpcRequestContextProvider$p(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getSessionToken()Ljava/lang/String;

    move-result-object v13

    .line 92
    iget-object v2, v0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->this$0:Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

    invoke-static {v2}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->access$getCrpcRequestContextProvider$p(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getLocalIp()Ljava/lang/String;

    move-result-object v12

    .line 93
    iget-object v2, v0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->this$0:Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

    invoke-static {v2}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->access$getCrpcRequestContextProvider$p(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v16

    .line 94
    iget-object v2, v0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->this$0:Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

    invoke-static {v2}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->access$getCrpcRequestContextProvider$p(Lcom/stripe/core/aidlrpcclient/AidlRpcClient;)Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v15

    .line 86
    new-instance v3, Lcom/stripe/proto/net/rpc/base/RpcRequest;

    .line 88
    iget-object v6, v0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->$service:Ljava/lang/String;

    .line 89
    iget-object v7, v0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->$method:Ljava/lang/String;

    const/16 v20, 0x1930

    const/16 v21, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    .line 86
    invoke-direct/range {v3 .. v21}, Lcom/stripe/proto/net/rpc/base/RpcRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    invoke-virtual {v3}, Lcom/stripe/proto/net/rpc/base/RpcRequest;->encode()[B

    move-result-object v2

    iget-object v3, v0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient$makeRequest$1;->$listener:Lcom/stripe/core/aidlrpc/AidlRpcListener;

    invoke-interface {v1, v2, v3}, Lcom/stripe/core/aidlrpc/AidlRpc;->makeRequest([BLcom/stripe/core/aidlrpc/AidlRpcListener;)V

    return-void
.end method
