.class public final Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;
.super Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
.source "CrpcResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApplicationError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;*>;>",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
        "TM;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000*\u0012\u0008\u0001\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0013\u001a\u00020\u0007H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;",
        "M",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "code",
        "Lcom/stripe/proto/net/rpc/base/ApplicationEC;",
        "message",
        "",
        "durationMillis",
        "",
        "(Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Ljava/lang/Long;)V",
        "getCode",
        "()Lcom/stripe/proto/net/rpc/base/ApplicationEC;",
        "isAuthError",
        "",
        "()Z",
        "isCancellation",
        "getMessage",
        "()Ljava/lang/String;",
        "toLogString",
        "crpcclient"
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
.field private final code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p3, v0}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;-><init>(Ljava/lang/Long;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 36
    iput-object p2, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 36
    const-string p2, ""

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 34
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;-><init>(Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final getCode()Lcom/stripe/proto/net/rpc/base/ApplicationEC;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final isAuthError()Z
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public final isCancellation()Z
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ILLEGAL_STATE:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    if-ne v0, v1, :cond_3

    .line 53
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->message:Ljava/lang/String;

    .line 56
    sget-object v1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;->PAYMENT_CANCELED:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 57
    :cond_0
    sget-object v1, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;->ACTION_CANCELED:Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/QueryPaymentIntentNextActionsResponse$ActionStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    .line 58
    :cond_1
    sget-object v1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;->CANCELED:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_2

    .line 61
    :cond_2
    const-string v1, "Transaction is cancelled by the user."

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public toLogString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
