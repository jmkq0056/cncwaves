.class public final Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;
.super Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
.source "CrpcResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
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
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0018\u0000*\u0012\u0008\u0001\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0019\u0012\u0006\u0010\u0004\u001a\u00028\u0001\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u0013\u0010\u0004\u001a\u00028\u0001\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;",
        "M",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "response",
        "durationMillis",
        "",
        "(Lcom/squareup/wire/Message;Ljava/lang/Long;)V",
        "getResponse",
        "()Lcom/squareup/wire/Message;",
        "Lcom/squareup/wire/Message;",
        "toLogString",
        "",
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
.field private final response:Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/wire/Message;Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p2, v0}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;-><init>(Ljava/lang/Long;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    iput-object p1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;->response:Lcom/squareup/wire/Message;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/squareup/wire/Message;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 24
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;-><init>(Lcom/squareup/wire/Message;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final getResponse()Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;->response:Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public toLogString()Ljava/lang/String;
    .locals 6

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/stripe/jvmcore/redaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/redaction/Extensions;

    iget-object v2, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;->response:Lcom/squareup/wire/Message;

    sget-object v3, Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;->INSTANCE:Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;

    check-cast v3, Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    invoke-static {}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;->access$getMoshi$cp()Lcom/squareup/moshi/Moshi;

    move-result-object v4

    const-string v5, "access$getMoshi$cp(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/stripe/jvmcore/redaction/Extensions;->toLogJson(Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/squareup/moshi/Moshi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
