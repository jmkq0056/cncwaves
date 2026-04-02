.class public final Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;
.super Ljava/lang/Object;
.source "ContentNegotiation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;,
        Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Plugin;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentNegotiation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentNegotiation.kt\nio/ktor/client/plugins/contentnegotiation/ContentNegotiation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,274:1\n1855#2,2:275\n1747#2,3:277\n766#2:280\n857#2,2:281\n766#2:284\n857#2,2:285\n1549#2:287\n1620#2,3:288\n1#3:283\n*S KotlinDebug\n*F\n+ 1 ContentNegotiation.kt\nio/ktor/client/plugins/contentnegotiation/ContentNegotiation\n*L\n141#1:275,2\n148#1:277,3\n166#1:280\n166#1:281,2\n221#1:284\n221#1:285,2\n222#1:287\n222#1:288,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000  2\u00020\u0001:\u0002\u001f B\'\u0008\u0000\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J%\u0010\r\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0001H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012JC\u0010\u0013\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u000c\u0008\u0002\u0010\u001a\u001a\u00060\u001bj\u0002`\u001cH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u001e\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;",
        "",
        "registrations",
        "",
        "Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;",
        "ignoredTypes",
        "",
        "Lkotlin/reflect/KClass;",
        "(Ljava/util/List;Ljava/util/Set;)V",
        "getIgnoredTypes$ktor_client_content_negotiation",
        "()Ljava/util/Set;",
        "getRegistrations$ktor_client_content_negotiation",
        "()Ljava/util/List;",
        "convertRequest",
        "request",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        "body",
        "convertRequest$ktor_client_content_negotiation",
        "(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "convertResponse",
        "requestUrl",
        "Lio/ktor/http/Url;",
        "info",
        "Lio/ktor/util/reflect/TypeInfo;",
        "responseContentType",
        "Lio/ktor/http/ContentType;",
        "charset",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "convertResponse$ktor_client_content_negotiation",
        "(Lio/ktor/http/Url;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Config",
        "Plugin",
        "ktor-client-content-negotiation"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Plugin:Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Plugin;

.field private static final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ignoredTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final registrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Plugin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->Plugin:Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Plugin;

    .line 244
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "ContentNegotiation"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "registrations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ignoredTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->registrations:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->ignoredTypes:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 42
    sget-object v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static synthetic convertResponse$ktor_client_content_negotiation$default(Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;Lio/ktor/http/Url;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    .line 206
    sget-object p5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 201
    invoke-virtual/range {v0 .. v6}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->convertResponse$ktor_client_content_negotiation(Lio/ktor/http/Url;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final convertRequest$ktor_client_content_negotiation(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;

    iget v1, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;-><init>(Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 140
    iget v2, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;

    iget-object p2, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->L$4:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v5, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/ContentType;

    iget-object v6, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->L$1:Ljava/lang/Object;

    iget-object v7, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lio/ktor/client/request/HttpRequestBuilder;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v0

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    iget-object p3, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->registrations:Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    .line 275
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;

    .line 142
    invoke-static {}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiationKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Adding Accept="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;->getContentTypeToSend()Lio/ktor/http/ContentType;

    move-result-object v7

    invoke-virtual {v7}, Lio/ktor/http/ContentType;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " header for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v5

    sget-object v6, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v6}, Lio/ktor/http/HttpHeaders;->getAccept()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;->getContentTypeToSend()Lio/ktor/http/ContentType;

    move-result-object v7

    invoke-virtual {v7}, Lio/ktor/http/ContentType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/ktor/http/HeadersBuilder;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 145
    move-object v5, p1

    check-cast v5, Lio/ktor/http/HttpMessageBuilder;

    invoke-virtual {v2}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;->getContentTypeToSend()Lio/ktor/http/ContentType;

    move-result-object v2

    invoke-static {v5, v2}, Lio/ktor/client/request/UtilsKt;->accept(Lio/ktor/http/HttpMessageBuilder;Lio/ktor/http/ContentType;)V

    goto :goto_1

    .line 148
    :cond_4
    instance-of p3, p2, Lio/ktor/http/content/OutgoingContent;

    const/16 v2, 0x2e

    if-nez p3, :cond_16

    iget-object p3, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->ignoredTypes:Ljava/util/Set;

    check-cast p3, Ljava/lang/Iterable;

    .line 277
    instance-of v5, p3, Ljava/util/Collection;

    if-eqz v5, :cond_5

    move-object v5, p3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 278
    :cond_5
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/KClass;

    .line 148
    invoke-interface {v5, p2}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_9

    .line 155
    :cond_7
    :goto_2
    move-object p3, p1

    check-cast p3, Lio/ktor/http/HttpMessageBuilder;

    invoke-static {p3}, Lio/ktor/http/HttpMessagePropertiesKt;->contentType(Lio/ktor/http/HttpMessageBuilder;)Lio/ktor/http/ContentType;

    move-result-object p3

    if-nez p3, :cond_8

    move-object p2, p0

    check-cast p2, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;

    .line 156
    invoke-static {}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiationKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Request doesn\'t have Content-Type header. Skipping ContentNegotiation for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v4

    .line 160
    :cond_8
    instance-of v5, p2, Lkotlin/Unit;

    if-eqz v5, :cond_9

    .line 161
    invoke-static {}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiationKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Sending empty body for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object p1

    sget-object p2, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {p2}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/ktor/http/HeadersBuilder;->remove(Ljava/lang/String;)V

    .line 163
    sget-object p1, Lio/ktor/client/utils/EmptyContent;->INSTANCE:Lio/ktor/client/utils/EmptyContent;

    return-object p1

    .line 166
    :cond_9
    iget-object v5, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->registrations:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    .line 280
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 281
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;

    .line 166
    invoke-virtual {v8}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;->getContentTypeMatcher()Lio/ktor/http/ContentTypeMatcher;

    move-result-object v8

    invoke-interface {v8, p3}, Lio/ktor/http/ContentTypeMatcher;->contains(Lio/ktor/http/ContentType;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 281
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 282
    :cond_b
    check-cast v6, Ljava/util/List;

    .line 167
    move-object v5, v6

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_4

    :cond_c
    move-object v6, v4

    :goto_4
    if-nez v6, :cond_d

    move-object p2, p0

    check-cast p2, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;

    .line 168
    invoke-static {}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiationKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object p2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "None of the registered converters match request Content-Type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ". Skipping ContentNegotiation for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 170
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object p1

    .line 169
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v4

    .line 174
    :cond_d
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getBodyType()Lio/ktor/util/reflect/TypeInfo;

    move-result-object v5

    if-nez v5, :cond_e

    .line 175
    invoke-static {}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiationKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Request has unknown body type. Skipping ContentNegotiation for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v4

    .line 178
    :cond_e
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v2

    sget-object v5, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v5}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lio/ktor/http/HeadersBuilder;->remove(Ljava/lang/String;)V

    .line 181
    move-object v2, v6

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v10, p3

    move-object p3, p2

    move-object p2, v2

    move-object v2, v6

    move-object v6, v10

    move-object v10, v0

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;

    .line 182
    invoke-virtual {v0}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;->getConverter()Lio/ktor/serialization/ContentConverter;

    move-result-object v5

    .line 184
    move-object v7, v6

    check-cast v7, Lio/ktor/http/HeaderValueWithParameters;

    invoke-static {v7}, Lio/ktor/http/ContentTypesKt;->charset(Lio/ktor/http/HeaderValueWithParameters;)Ljava/nio/charset/Charset;

    move-result-object v7

    if-nez v7, :cond_f

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 185
    :cond_f
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getBodyType()Lio/ktor/util/reflect/TypeInfo;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 186
    sget-object v9, Lio/ktor/http/content/NullBody;->INSTANCE:Lio/ktor/http/content/NullBody;

    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    move-object v9, p3

    goto :goto_6

    :cond_10
    move-object v9, v4

    .line 182
    :goto_6
    iput-object p1, v10, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->L$0:Ljava/lang/Object;

    iput-object p3, v10, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->L$2:Ljava/lang/Object;

    iput-object v2, v10, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->L$3:Ljava/lang/Object;

    iput-object p2, v10, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->L$4:Ljava/lang/Object;

    iput-object v0, v10, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->L$5:Ljava/lang/Object;

    iput v3, v10, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$1;->label:I

    invoke-interface/range {v5 .. v10}, Lio/ktor/serialization/ContentConverter;->serializeNullable(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_11

    return-object v1

    :cond_11
    move-object v7, v6

    move-object v6, p3

    move-object p3, v5

    move-object v5, v7

    move-object v7, p1

    move-object p1, v0

    .line 140
    :goto_7
    check-cast p3, Lio/ktor/http/content/OutgoingContent;

    if-eqz p3, :cond_12

    .line 189
    invoke-static {}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiationKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Converted request body using "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;->getConverter()Lio/ktor/serialization/ContentConverter;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v8, " for "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v7}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_12
    if-eqz p3, :cond_13

    move-object v4, p3

    move-object p3, v6

    move-object v6, v5

    goto :goto_8

    :cond_13
    move-object p3, v6

    move-object p1, v7

    move-object v6, v5

    goto :goto_5

    :cond_14
    :goto_8
    if-eqz v4, :cond_15

    return-object v4

    .line 192
    :cond_15
    new-instance p1, Lio/ktor/client/plugins/contentnegotiation/ContentConverterException;

    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t convert "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " with contentType "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " using converters "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 194
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    sget-object p3, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$serializedContent$2;->INSTANCE:Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertRequest$serializedContent$2;

    move-object v9, p3

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 193
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 192
    invoke-direct {p1, p2}, Lio/ktor/client/plugins/contentnegotiation/ContentConverterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_16
    :goto_9
    invoke-static {}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiationKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object p3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Body type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is in ignored types. Skipping ContentNegotiation for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 151
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object p1

    .line 150
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-interface {p3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v4
.end method

.method public final convertResponse$ktor_client_content_negotiation(Lio/ktor/http/Url;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/Url;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Ljava/lang/Object;",
            "Lio/ktor/http/ContentType;",
            "Ljava/nio/charset/Charset;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertResponse$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertResponse$1;

    iget v1, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertResponse$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p6, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertResponse$1;->label:I

    sub-int/2addr p6, v2

    iput p6, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertResponse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertResponse$1;

    invoke-direct {v0, p0, p6}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertResponse$1;-><init>(Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p6, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertResponse$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 201
    iget v2, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertResponse$1;->label:I

    const/4 v3, 0x1

    const/16 v4, 0x2e

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertResponse$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/Url;

    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 208
    instance-of p6, p3, Lio/ktor/utils/io/ByteReadChannel;

    const/4 v2, 0x0

    if-nez p6, :cond_3

    .line 209
    invoke-static {}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiationKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Response body is already transformed. Skipping ContentNegotiation for "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v2

    .line 212
    :cond_3
    iget-object p6, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->ignoredTypes:Ljava/util/Set;

    invoke-virtual {p2}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {p6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_4

    .line 213
    invoke-static {}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiationKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object p3

    .line 214
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Response body type "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " is in ignored types. Skipping ContentNegotiation for "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-interface {p3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v2

    .line 220
    :cond_4
    iget-object p6, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->registrations:Ljava/util/List;

    check-cast p6, Ljava/lang/Iterable;

    .line 284
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 285
    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :cond_5
    :goto_1
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;

    .line 221
    invoke-virtual {v7}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;->getContentTypeMatcher()Lio/ktor/http/ContentTypeMatcher;

    move-result-object v7

    invoke-interface {v7, p4}, Lio/ktor/http/ContentTypeMatcher;->contains(Lio/ktor/http/ContentType;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 285
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    :cond_6
    check-cast v5, Ljava/util/List;

    .line 221
    check-cast v5, Ljava/lang/Iterable;

    .line 287
    new-instance p6, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {p6, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p6, Ljava/util/Collection;

    .line 288
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 289
    check-cast v6, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;

    .line 222
    invoke-virtual {v6}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;->getConverter()Lio/ktor/serialization/ContentConverter;

    move-result-object v6

    .line 289
    invoke-interface {p6, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 290
    :cond_7
    check-cast p6, Ljava/util/List;

    .line 223
    move-object v5, p6

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    move-object p6, v2

    :goto_3
    if-nez p6, :cond_9

    .line 224
    move-object p2, p0

    check-cast p2, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;

    .line 225
    invoke-static {}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiationKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object p2

    .line 226
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "None of the registered converters match response with Content-Type="

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ". Skipping ContentNegotiation for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v2

    .line 232
    :cond_9
    check-cast p3, Lio/ktor/utils/io/ByteReadChannel;

    iput-object p1, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertResponse$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$convertResponse$1;->label:I

    invoke-static {p6, p3, p2, p5, v0}, Lio/ktor/serialization/ContentConverterKt;->deserialize(Ljava/util/List;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/util/reflect/TypeInfo;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_a

    return-object v1

    .line 233
    :cond_a
    :goto_4
    instance-of p2, p6, Lio/ktor/utils/io/ByteReadChannel;

    if-nez p2, :cond_b

    .line 234
    invoke-static {}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiationKt;->access$getLOGGER$p()Lorg/slf4j/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Response body was converted to "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_b
    return-object p6
.end method

.method public final getIgnoredTypes$ktor_client_content_negotiation()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->ignoredTypes:Ljava/util/Set;

    return-object v0
.end method

.method public final getRegistrations$ktor_client_content_negotiation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;->registrations:Ljava/util/List;

    return-object v0
.end method
