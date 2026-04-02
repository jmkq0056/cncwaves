.class public final Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;
.super Lcom/stripe/jvmcore/restclient/StringRestResponse;
.source "RestResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/restclient/StringRestResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/squareup/wire/Message<",
        "TE;*>;>",
        "Lcom/stripe/jvmcore/restclient/StringRestResponse<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\u0018\u0000*\u0012\u0008\u0001\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B#\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000c\u001a\u00020\rH\u0016R\u0013\u0010\u0007\u001a\u00028\u0001\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;",
        "E",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/StringRestResponse;",
        "wireResponse",
        "Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;",
        "Lcom/squareup/wire/AnyMessage;",
        "response",
        "(Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;Lcom/squareup/wire/Message;)V",
        "getResponse",
        "()Lcom/squareup/wire/Message;",
        "Lcom/squareup/wire/Message;",
        "toLogString",
        "",
        "base"
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
            "TE;"
        }
    .end annotation
.end field

.field private final wireResponse:Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/restclient/RestResponse$ServerError<",
            "Lcom/squareup/wire/AnyMessage;",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;Lcom/squareup/wire/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse$ServerError<",
            "Lcom/squareup/wire/AnyMessage;",
            "TE;>;TE;)V"
        }
    .end annotation

    const-string v0, "wireResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    move-object v0, p1

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestResponse;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/stripe/jvmcore/restclient/StringRestResponse;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 220
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;->wireResponse:Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    .line 221
    iput-object p2, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;->response:Lcom/squareup/wire/Message;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;Lcom/squareup/wire/Message;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p2

    .line 219
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;Lcom/squareup/wire/Message;)V

    return-void
.end method


# virtual methods
.method public final getResponse()Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;->response:Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public toLogString()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;->response:Lcom/squareup/wire/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
