.class public final Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;
.super Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
.source "CrpcLogPointInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J[\u0010\u0007\u001a\u00020\u0008\"\u0012\u0008\u0000\u0010\t*\u000c\u0012\u0004\u0012\u0002H\t\u0012\u0002\u0008\u00030\n\"\u0012\u0008\u0001\u0010\u000b*\u000c\u0012\u0004\u0012\u0002H\u000b\u0012\u0002\u0008\u00030\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u0002H\u000b2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0012H\u0016\u00a2\u0006\u0002\u0010\u0013J9\u0010\u0014\u001a\u00020\u0008\"\u0012\u0008\u0000\u0010\t*\u000c\u0012\u0004\u0012\u0002H\t\u0012\u0002\u0008\u00030\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u0002H\tH\u0016\u00a2\u0006\u0002\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;",
        "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
        "()V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "postCallAction",
        "",
        "M",
        "Lcom/squareup/wire/Message;",
        "RE",
        "okHttpRequest",
        "Lokhttp3/Request;",
        "rpcRequest",
        "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
        "apiRequest",
        "crpcResponse",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)V",
        "preCallAction",
        "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;)V",
        "Companion",
        "common_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CUSTOM_INTERCEPTOR_NAME:Ljava/lang/String; = "CrpcLogPointInterceptor"

.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;->Companion:Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor$Companion;

    .line 22
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;-><init>()V

    .line 26
    const-string v0, "CrpcLogPointInterceptor"

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public postCallAction(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;RE:",
            "Lcom/squareup/wire/Message<",
            "TRE;*>;>(",
            "Lokhttp3/Request;",
            "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
            "TRE;",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TM;>;)V"
        }
    .end annotation

    const-string v0, "okHttpRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rpcRequest"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "apiRequest"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "crpcResponse"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p2}, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->getTraceLogLevel(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object p1

    sget-object p3, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->NONE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    check-cast p3, Ljava/lang/Enum;

    invoke-virtual {p1, p3}, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-lez p1, :cond_0

    .line 45
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v0, 0x2e

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p2, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p3, 0x20

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p4}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;->toLogString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Lkotlin/Pair;

    invoke-virtual {p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_0
    return-void
.end method

.method public preCallAction(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;>(",
            "Lokhttp3/Request;",
            "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
            "TM;)V"
        }
    .end annotation

    const-string v0, "okHttpRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rpcRequest"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "apiRequest"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p2}, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->getTraceLogLevel(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object p1

    sget-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->NONE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p1, v0}, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-lez p1, :cond_0

    .line 34
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p2, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " request="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lcom/stripe/jvmcore/redaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/redaction/Extensions;

    sget-object v1, Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;->INSTANCE:Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;

    move-object v2, v1

    check-cast v2, Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/stripe/jvmcore/redaction/Extensions;->toLogJson$default(Lcom/stripe/jvmcore/redaction/Extensions;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/squareup/moshi/Moshi;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Lkotlin/Pair;

    invoke-virtual {p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_0
    return-void
.end method
