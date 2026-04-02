.class public final Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;
.super Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;
.source "CrpcResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RpcError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;*>;>",
        "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse<",
        "TM;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000*\u0012\u0008\u0001\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B/\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0017\u001a\u00020\u0007H\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;",
        "M",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;",
        "code",
        "Lcom/stripe/proto/net/rpc/base/RpcEC;",
        "message",
        "",
        "durationMillis",
        "",
        "cause",
        "",
        "(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;)V",
        "getCause",
        "()Ljava/lang/Throwable;",
        "getCode",
        "()Lcom/stripe/proto/net/rpc/base/RpcEC;",
        "isNetworkError",
        "",
        "()Z",
        "isRetryable",
        "getMessage",
        "()Ljava/lang/String;",
        "toLogString",
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
.field private final cause:Ljava/lang/Throwable;

.field private final code:Lcom/stripe/proto/net/rpc/base/RpcEC;

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p3, v0}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;-><init>(Ljava/lang/Long;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 68
    iput-object p2, p0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->message:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 68
    const-string p2, ""

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 66
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;-><init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getCode()Lcom/stripe/proto/net/rpc/base/RpcEC;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final isNetworkError()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/proto/net/rpc/base/RpcEC;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isRetryable()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/proto/net/rpc/base/RpcEC;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 90
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toLogString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
