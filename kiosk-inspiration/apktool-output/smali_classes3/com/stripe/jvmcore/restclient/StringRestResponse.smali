.class public abstract Lcom/stripe/jvmcore/restclient/StringRestResponse;
.super Ljava/lang/Object;
.source "RestResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/restclient/StringRestResponse$ParseError;,
        Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;,
        Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/squareup/wire/Message<",
        "TE;*>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0012\u0008\u0000\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u00022\u00020\u0003:\u0003\u0017\u0018\u0019B\u001b\u0008\u0004\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0015\u001a\u00020\u0012H&J\u0008\u0010\u0016\u001a\u00020\u0012H\u0016R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u0082\u0001\u0003\u001a\u001b\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/StringRestResponse;",
        "E",
        "Lcom/squareup/wire/Message;",
        "",
        "wireResponse",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Lcom/squareup/wire/AnyMessage;",
        "(Lcom/stripe/jvmcore/restclient/RestResponse;)V",
        "durationMillis",
        "",
        "getDurationMillis",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "statusCode",
        "Lcom/stripe/proto/model/rest/StatusCode;",
        "getStatusCode",
        "()Lcom/stripe/proto/model/rest/StatusCode;",
        "url",
        "",
        "getUrl",
        "()Ljava/lang/String;",
        "toLogString",
        "toString",
        "ParseError",
        "ServerError",
        "Success",
        "Lcom/stripe/jvmcore/restclient/StringRestResponse$ParseError;",
        "Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;",
        "Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;",
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
.field private final durationMillis:Ljava/lang/Long;

.field private final statusCode:Lcom/stripe/proto/model/rest/StatusCode;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/stripe/jvmcore/restclient/RestResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/squareup/wire/AnyMessage;",
            "TE;>;)V"
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    .line 200
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse;->url:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getDurationMillis()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse;->durationMillis:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/restclient/StringRestResponse;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse;)V

    return-void
.end method


# virtual methods
.method public final getDurationMillis()Ljava/lang/Long;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse;->durationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public abstract toLogString()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/StringRestResponse;->toLogString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
