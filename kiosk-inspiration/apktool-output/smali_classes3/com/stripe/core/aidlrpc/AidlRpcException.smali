.class public final Lcom/stripe/core/aidlrpc/AidlRpcException;
.super Ljava/lang/Exception;
.source "AidlRpcException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/core/aidlrpc/AidlRpcException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "errorCode",
        "Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;",
        "message",
        "",
        "cause",
        "",
        "(Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V",
        "getErrorCode",
        "()Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;",
        "aidlrpc_release"
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
.field private final errorCode:Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;


# direct methods
.method public constructor <init>(Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iput-object p1, p0, Lcom/stripe/core/aidlrpc/AidlRpcException;->errorCode:Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/core/aidlrpc/AidlRpcException;-><init>(Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getErrorCode()Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/core/aidlrpc/AidlRpcException;->errorCode:Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;

    return-object v0
.end method
