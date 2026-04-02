.class public final Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;
.super Lcom/stripe/jvmcore/restclient/RestResponse;
.source "RestResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/restclient/RestResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;*>;E:",
        "Lcom/squareup/wire/Message<",
        "TE;*>;>",
        "Lcom/stripe/jvmcore/restclient/RestResponse<",
        "TM;TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000*\u0012\u0008\u0002\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u0002*\u0012\u0008\u0003\u0010\u0003*\u000c\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\u0008\u00030\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004BM\u0012\u0006\u0010\u0005\u001a\u00028\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0011\u00a2\u0006\u0002\u0010\u0012J\u000e\u0010#\u001a\u00028\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001dJ\t\u0010$\u001a\u00020\u0007H\u00c6\u0003J\t\u0010%\u001a\u00020\tH\u00c6\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\t\u0010\'\u001a\u00020\rH\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u0015\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0011H\u00c6\u0003Jp\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00028\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0011H\u00c6\u0001\u00a2\u0006\u0002\u0010+J\u0013\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u00d6\u0003J\t\u00100\u001a\u000201H\u00d6\u0001J\u0008\u00102\u001a\u00020\tH\u0016R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R \u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u0005\u001a\u00028\u0003\u00a2\u0006\n\n\u0002\u0010\u001e\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u00063"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;",
        "M",
        "Lcom/squareup/wire/Message;",
        "E",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "response",
        "statusCode",
        "Lcom/stripe/proto/model/rest/StatusCode;",
        "url",
        "",
        "durationMillis",
        "",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "customMessageRedactor",
        "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
        "headers",
        "Ljava/util/TreeMap;",
        "(Lcom/squareup/wire/Message;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)V",
        "getCustomMessageRedactor",
        "()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
        "getDurationMillis",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getHeaders",
        "()Ljava/util/TreeMap;",
        "getMoshi",
        "()Lcom/squareup/moshi/Moshi;",
        "getResponse",
        "()Lcom/squareup/wire/Message;",
        "Lcom/squareup/wire/Message;",
        "getStatusCode",
        "()Lcom/stripe/proto/model/rest/StatusCode;",
        "getUrl",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "(Lcom/squareup/wire/Message;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

.field private final durationMillis:Ljava/lang/Long;

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

.field private final moshi:Lcom/squareup/moshi/Moshi;

.field private final response:Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final statusCode:Lcom/stripe/proto/model/rest/StatusCode;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/squareup/wire/Message;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/stripe/proto/model/rest/StatusCode;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcom/squareup/moshi/Moshi;",
            "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshi"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/restclient/RestResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->response:Lcom/squareup/wire/Message;

    .line 82
    iput-object p2, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    .line 83
    iput-object p3, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->url:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->durationMillis:Ljava/lang/Long;

    .line 85
    iput-object p5, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->moshi:Lcom/squareup/moshi/Moshi;

    .line 86
    iput-object p6, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    .line 87
    iput-object p7, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->headers:Ljava/util/TreeMap;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;Lcom/squareup/wire/Message;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->response:Lcom/squareup/wire/Message;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->url:Ljava/lang/String;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-object p4, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->durationMillis:Ljava/lang/Long;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->moshi:Lcom/squareup/moshi/Moshi;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget-object p6, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-object p7, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->headers:Ljava/util/TreeMap;

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->copy(Lcom/squareup/wire/Message;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->response:Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public final component2()Lcom/stripe/proto/model/rest/StatusCode;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->durationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final component5()Lcom/squareup/moshi/Moshi;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->moshi:Lcom/squareup/moshi/Moshi;

    return-object v0
.end method

.method public final component6()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    return-object v0
.end method

.method public final component7()Ljava/util/TreeMap;
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

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->headers:Ljava/util/TreeMap;

    return-object v0
.end method

.method public final copy(Lcom/squareup/wire/Message;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/stripe/proto/model/rest/StatusCode;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcom/squareup/moshi/Moshi;",
            "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/jvmcore/restclient/RestResponse$ServerError<",
            "TM;TE;>;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshi"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;-><init>(Lcom/squareup/wire/Message;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->response:Lcom/squareup/wire/Message;

    iget-object v3, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->response:Lcom/squareup/wire/Message;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    iget-object v3, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->durationMillis:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->durationMillis:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->moshi:Lcom/squareup/moshi/Moshi;

    iget-object v3, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->moshi:Lcom/squareup/moshi/Moshi;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    iget-object v3, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->headers:Ljava/util/TreeMap;

    iget-object p1, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->headers:Ljava/util/TreeMap;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getCustomMessageRedactor()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    return-object v0
.end method

.method public getDurationMillis()Ljava/lang/Long;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->durationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getHeaders()Ljava/util/TreeMap;
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

    .line 87
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->headers:Ljava/util/TreeMap;

    return-object v0
.end method

.method public final getMoshi()Lcom/squareup/moshi/Moshi;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->moshi:Lcom/squareup/moshi/Moshi;

    return-object v0
.end method

.method public final getResponse()Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->response:Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->response:Lcom/squareup/wire/Message;

    invoke-virtual {v0}, Lcom/squareup/wire/Message;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/StatusCode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->durationMillis:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->moshi:Lcom/squareup/moshi/Moshi;

    invoke-virtual {v1}, Lcom/squareup/moshi/Moshi;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->headers:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toLogString()Ljava/lang/String;
    .locals 5

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getHeaders()Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/stripe/jvmcore/redaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/redaction/Extensions;

    iget-object v2, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->response:Lcom/squareup/wire/Message;

    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getCustomMessageRedactor()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    move-result-object v3

    iget-object v4, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->moshi:Lcom/squareup/moshi/Moshi;

    invoke-virtual {v1, v2, v3, v4}, Lcom/stripe/jvmcore/redaction/Extensions;->toLogJson(Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/squareup/moshi/Moshi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
