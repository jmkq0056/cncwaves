.class public final Lcom/stripe/jvmcore/clientlogger/ClientLoggerDispatchersKt;
.super Ljava/lang/Object;
.source "ClientLoggerDispatchers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u00020\u0001\"\u0012\u0008\u0000\u0010\u0002*\u000c\u0012\u0004\u0012\u0002H\u0002\u0012\u0002\u0008\u00030\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "toResult",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;",
        "M",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "clientlogger"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$toResult(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerDispatchersKt;->toResult(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;

    move-result-object p0

    return-object p0
.end method

.method private static final toResult(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;>(",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TM;>;)",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;"
        }
    .end annotation

    .line 141
    instance-of v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Success;->INSTANCE:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Success;

    check-cast p0, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;

    return-object p0

    .line 142
    :cond_0
    instance-of v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Retry;->INSTANCE:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Retry;

    check-cast p0, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;

    return-object p0

    .line 143
    :cond_1
    instance-of p0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Retry;->INSTANCE:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Retry;

    check-cast p0, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;

    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
