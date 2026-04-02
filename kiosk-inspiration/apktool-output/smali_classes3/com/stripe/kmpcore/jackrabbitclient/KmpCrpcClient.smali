.class public final Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;
.super Ljava/lang/Object;
.source "KmpCrpcClient.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKmpCrpcClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KmpCrpcClient.kt\ncom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n+ 3 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,90:1\n233#2:91\n109#2,2:109\n22#2:111\n16#3,4:92\n21#3,10:99\n17#4,3:96\n*S KotlinDebug\n*F\n+ 1 KmpCrpcClient.kt\ncom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient\n*L\n60#1:91\n60#1:109,2\n60#1:111\n62#1:92,4\n62#1:99,10\n62#1:96,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u00b0\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0012\u0008\u0000\u0010\u0007*\u000c\u0012\u0004\u0012\u0002H\u0007\u0012\u0002\u0008\u00030\u0008\"\u0012\u0008\u0001\u0010\t*\u000c\u0012\u0004\u0012\u0002H\t\u0012\u0002\u0008\u00030\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u0002H\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u00112\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0086@\u00a2\u0006\u0002\u0010\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;",
        "",
        "()V",
        "requestId",
        "",
        "post",
        "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;",
        "M",
        "Lcom/squareup/wire/Message;",
        "RE",
        "httpClient",
        "Lio/ktor/client/HttpClient;",
        "service",
        "",
        "method",
        "message",
        "requestProtoAdapter",
        "Lcom/squareup/wire/ProtoAdapter;",
        "responseProtoAdapter",
        "sessionToken",
        "localIpAddress",
        "deviceInfo",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "versionInfo",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "baseUrl",
        "urlPort",
        "",
        "urlProtocol",
        "Lio/ktor/http/URLProtocol;",
        "(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "jackrabbitclient_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private requestId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final post(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;RE:",
            "Lcom/squareup/wire/Message<",
            "TRE;*>;>(",
            "Lio/ktor/client/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TRE;",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TRE;>;",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Ljava/lang/String;",
            "I",
            "Lio/ktor/http/URLProtocol;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse<",
            "TM;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p14

    instance-of v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;

    iget v3, v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;

    invoke-direct {v2, v1, v0}, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 24
    iget v4, v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->label:I

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/stripe/proto/net/rpc/base/RpcRequest;

    iget-object v8, v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/squareup/wire/ProtoAdapter;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v4

    move-object v4, v8

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    iget-wide v10, v1, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;->requestId:J

    const-wide/16 v12, 0x1

    add-long/2addr v12, v10

    iput-wide v12, v1, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;->requestId:J

    .line 43
    sget-object v14, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    move-object/from16 v0, p4

    move-object/from16 v4, p5

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->encode(Ljava/lang/Object;)[B

    move-result-object v15

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lokio/ByteString$Companion;->of$default(Lokio/ByteString$Companion;[BIIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v14

    .line 39
    new-instance v9, Lcom/stripe/proto/net/rpc/base/RpcRequest;

    const/16 v26, 0x1930

    const/16 v27, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v19, p7

    move-object/from16 v18, p8

    move-object/from16 v22, p9

    move-object/from16 v21, p10

    invoke-direct/range {v9 .. v27}, Lcom/stripe/proto/net/rpc/base/RpcRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    new-instance v10, Lio/ktor/http/URLBuilder;

    const/16 v20, 0x1ff

    const/16 v21, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v21}, Lio/ktor/http/URLBuilder;-><init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/Parameters;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p13

    .line 51
    invoke-virtual {v10, v0}, Lio/ktor/http/URLBuilder;->setProtocol(Lio/ktor/http/URLProtocol;)V

    move-object/from16 v0, p11

    .line 52
    invoke-virtual {v10, v0}, Lio/ktor/http/URLBuilder;->setHost(Ljava/lang/String;)V

    .line 53
    new-array v0, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v11, "rpcservice"

    aput-object v11, v0, v4

    aput-object p2, v0, v8

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lio/ktor/http/URLBuilder;->setPathSegments(Ljava/util/List;)V

    move/from16 v0, p12

    .line 54
    invoke-virtual {v10, v0}, Lio/ktor/http/URLBuilder;->setPort(I)V

    .line 55
    invoke-virtual {v10}, Lio/ktor/http/URLBuilder;->build()Lio/ktor/http/Url;

    move-result-object v0

    .line 57
    sget-object v4, Lcom/stripe/proto/net/rpc/base/RpcRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v9}, Lcom/squareup/wire/ProtoAdapter;->encode(Ljava/lang/Object;)[B

    move-result-object v4

    .line 91
    :try_start_2
    new-instance v10, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-direct {v10}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 61
    invoke-static {v10, v0}, Lio/ktor/client/request/BuildersWithUrlKt;->url(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/http/Url;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    const-class v0, [B

    if-nez v4, :cond_4

    .line 94
    :try_start_3
    sget-object v4, Lio/ktor/http/content/NullBody;->INSTANCE:Lio/ktor/http/content/NullBody;

    invoke-virtual {v10, v4}, Lio/ktor/client/request/HttpRequestBuilder;->setBody(Ljava/lang/Object;)V

    .line 95
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    .line 97
    invoke-static {v4}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v11

    .line 98
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v11, v0, v4}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v0

    .line 95
    invoke-virtual {v10, v0}, Lio/ktor/client/request/HttpRequestBuilder;->setBodyType(Lio/ktor/util/reflect/TypeInfo;)V

    goto :goto_1

    .line 99
    :cond_4
    instance-of v11, v4, Lio/ktor/http/content/OutgoingContent;

    if-eqz v11, :cond_5

    .line 100
    invoke-virtual {v10, v4}, Lio/ktor/client/request/HttpRequestBuilder;->setBody(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v10, v6}, Lio/ktor/client/request/HttpRequestBuilder;->setBodyType(Lio/ktor/util/reflect/TypeInfo;)V

    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {v10, v4}, Lio/ktor/client/request/HttpRequestBuilder;->setBody(Ljava/lang/Object;)V

    .line 105
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    .line 97
    invoke-static {v4}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v11

    .line 98
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v11, v0, v4}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v0

    .line 105
    invoke-virtual {v10, v0}, Lio/ktor/client/request/HttpRequestBuilder;->setBodyType(Lio/ktor/util/reflect/TypeInfo;)V

    .line 109
    :goto_1
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getPost()Lio/ktor/http/HttpMethod;

    move-result-object v0

    invoke-virtual {v10, v0}, Lio/ktor/client/request/HttpRequestBuilder;->setMethod(Lio/ktor/http/HttpMethod;)V

    .line 111
    new-instance v0, Lio/ktor/client/statement/HttpStatement;

    move-object/from16 v4, p1

    invoke-direct {v0, v10, v4}, Lio/ktor/client/statement/HttpStatement;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V

    move-object/from16 v4, p6

    iput-object v4, v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->L$1:Ljava/lang/Object;

    iput v8, v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->label:I

    invoke-virtual {v0, v2}, Lio/ktor/client/statement/HttpStatement;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    goto :goto_3

    .line 60
    :cond_6
    :goto_2
    check-cast v0, Lio/ktor/client/statement/HttpResponse;

    .line 65
    iget-wide v8, v9, Lcom/stripe/proto/net/rpc/base/RpcRequest;->id:J

    .line 64
    iput-object v6, v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->L$1:Ljava/lang/Object;

    iput v7, v2, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient$post$1;->label:I

    invoke-static {v0, v8, v9, v4, v2}, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt;->toCrpcResponse(Lio/ktor/client/statement/HttpResponse;JLcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    :goto_3
    return-object v3

    :cond_7
    :goto_4
    check-cast v0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    .line 80
    :goto_5
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;

    .line 81
    sget-object v3, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_ERROR:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    move-object v5, v4

    :goto_6
    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p5, v0

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p6, v4

    move-object/from16 p3, v5

    move-object/from16 p7, v6

    move-object/from16 p4, v7

    .line 80
    invoke-direct/range {p1 .. p7}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;-><init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p1

    move-object v2, v0

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    goto :goto_9

    .line 72
    :goto_7
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;

    .line 73
    sget-object v3, Lcom/stripe/proto/net/rpc/base/RpcEC;->SERVER_UNREACHABLE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 74
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_8

    :cond_9
    move-object v5, v4

    .line 75
    :goto_8
    check-cast v0, Ljava/lang/Throwable;

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p5, v0

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p6, v4

    move-object/from16 p3, v5

    move-object/from16 p7, v6

    move-object/from16 p4, v7

    .line 72
    invoke-direct/range {p1 .. p7}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;-><init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p1

    move-object v2, v0

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    :goto_9
    return-object v2
.end method
