.class public final Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;
.super Lcom/stripe/jvmcore/restclient/RestResponse;
.source "RestResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/restclient/RestResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseError"
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
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000*\u0012\u0008\u0002\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u0002*\u0012\u0008\u0003\u0010\u0003*\u000c\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\u0008\u00030\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004B=\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u000e\u00a2\u0006\u0002\u0010\u000fJ\t\u0010\u001b\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u0015\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u000eH\u00c6\u0003J\\\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0014\u0008\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u000eH\u00c6\u0001\u00a2\u0006\u0002\u0010!J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u00d6\u0003J\t\u0010&\u001a\u00020\'H\u00d6\u0001J\u0008\u0010(\u001a\u00020\u0008H\u0016R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\t\u001a\u0004\u0018\u00010\nX\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R \u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006)"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;",
        "M",
        "Lcom/squareup/wire/Message;",
        "E",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "statusCode",
        "Lcom/stripe/proto/model/rest/StatusCode;",
        "url",
        "",
        "durationMillis",
        "",
        "customMessageRedactor",
        "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
        "headers",
        "Ljava/util/TreeMap;",
        "(Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)V",
        "getCustomMessageRedactor",
        "()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
        "getDurationMillis",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getHeaders",
        "()Ljava/util/TreeMap;",
        "getStatusCode",
        "()Lcom/stripe/proto/model/rest/StatusCode;",
        "getUrl",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;",
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

.field private final statusCode:Lcom/stripe/proto/model/rest/StatusCode;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/rest/StatusCode;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/restclient/RestResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    .line 97
    iput-object p2, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->url:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->durationMillis:Ljava/lang/Long;

    .line 99
    iput-object p4, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    .line 100
    iput-object p5, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->headers:Ljava/util/TreeMap;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->url:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->durationMillis:Ljava/lang/Long;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->headers:Ljava/util/TreeMap;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->copy(Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/proto/model/rest/StatusCode;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->durationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final component4()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    return-object v0
.end method

.method public final component5()Ljava/util/TreeMap;
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

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->headers:Ljava/util/TreeMap;

    return-object v0
.end method

.method public final copy(Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/rest/StatusCode;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/jvmcore/restclient/RestResponse$ParseError<",
            "TM;TE;>;"
        }
    .end annotation

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;-><init>(Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    iget-object v3, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->durationMillis:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->durationMillis:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    iget-object v3, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->headers:Ljava/util/TreeMap;

    iget-object p1, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->headers:Ljava/util/TreeMap;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getCustomMessageRedactor()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    return-object v0
.end method

.method public getDurationMillis()Ljava/lang/Long;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->durationMillis:Ljava/lang/Long;

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

    .line 100
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->headers:Ljava/util/TreeMap;

    return-object v0
.end method

.method public getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->statusCode:Lcom/stripe/proto/model/rest/StatusCode;

    invoke-virtual {v0}, Lcom/stripe/proto/model/rest/StatusCode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->durationMillis:Ljava/lang/Long;

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

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->customMessageRedactor:Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->headers:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toLogString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;->getHeaders()Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
