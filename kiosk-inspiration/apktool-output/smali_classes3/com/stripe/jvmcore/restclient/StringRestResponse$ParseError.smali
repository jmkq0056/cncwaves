.class public final Lcom/stripe/jvmcore/restclient/StringRestResponse$ParseError;
.super Lcom/stripe/jvmcore/restclient/StringRestResponse;
.source "RestResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/restclient/StringRestResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseError"
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u0000*\u0012\u0008\u0001\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/StringRestResponse$ParseError;",
        "E",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/StringRestResponse;",
        "wireResponse",
        "Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;",
        "Lcom/squareup/wire/AnyMessage;",
        "(Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;)V",
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


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse$ParseError<",
            "Lcom/squareup/wire/AnyMessage;",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "wireResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/restclient/StringRestResponse;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public toLogString()Ljava/lang/String;
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/StringRestResponse$ParseError;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
