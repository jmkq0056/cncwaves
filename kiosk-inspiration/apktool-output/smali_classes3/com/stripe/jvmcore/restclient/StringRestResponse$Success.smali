.class public final Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;
.super Lcom/stripe/jvmcore/restclient/StringRestResponse;
.source "RestResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/restclient/StringRestResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
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
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000*\u0012\u0008\u0001\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B;\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0010\u001a\u00020\u0008H\u0016R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;",
        "E",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/StringRestResponse;",
        "wireResponse",
        "Lcom/stripe/jvmcore/restclient/RestResponse$Success;",
        "Lcom/squareup/wire/AnyMessage;",
        "response",
        "",
        "headers",
        "Ljava/util/TreeMap;",
        "(Lcom/stripe/jvmcore/restclient/RestResponse$Success;Ljava/lang/String;Ljava/util/TreeMap;)V",
        "getHeaders",
        "()Ljava/util/TreeMap;",
        "getResponse",
        "()Ljava/lang/String;",
        "toLogString",
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
.field private final headers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final response:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/restclient/RestResponse$Success;Ljava/lang/String;Ljava/util/TreeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse$Success<",
            "Lcom/squareup/wire/AnyMessage;",
            "TE;>;",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "wireResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/restclient/StringRestResponse;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 210
    iput-object p2, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;->response:Ljava/lang/String;

    .line 211
    iput-object p3, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;->headers:Ljava/util/TreeMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/jvmcore/restclient/RestResponse$Success;Ljava/lang/String;Ljava/util/TreeMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p2

    check-cast p2, Lcom/squareup/wire/AnyMessage;

    sget-object p5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p2, p5}, Lcom/squareup/wire/AnyMessage;->unpack(Lcom/squareup/wire/ProtoAdapter;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 211
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getHeaders()Ljava/util/TreeMap;

    move-result-object p3

    .line 208
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse$Success;Ljava/lang/String;Ljava/util/TreeMap;)V

    return-void
.end method


# virtual methods
.method public final getHeaders()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;->headers:Ljava/util/TreeMap;

    return-object v0
.end method

.method public final getResponse()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;->response:Ljava/lang/String;

    return-object v0
.end method

.method public toLogString()Ljava/lang/String;
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;->headers:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
