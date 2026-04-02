.class public final Lio/ktor/client/plugins/json/JsonPlugin;
.super Ljava/lang/Object;
.source "JsonPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/json/JsonPlugin$Config;,
        Lio/ktor/client/plugins/json/JsonPlugin$Plugin;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonPlugin.kt\nio/ktor/client/plugins/json/JsonPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,236:1\n1747#2,3:237\n1747#2,3:240\n*S KotlinDebug\n*F\n+ 1 JsonPlugin.kt\nio/ktor/client/plugins/json/JsonPlugin\n*L\n173#1:237,3\n176#1:240,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Please use ContentNegotiation plugin: https://ktor.io/docs/migrating-2.html#serialization-client"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0002\u0018\u0019B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004BC\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008\u0012\u0012\u0008\u0002\u0010\u000c\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000e0\r\u00a2\u0006\u0002\u0010\u000fJ\u0015\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u0017R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u000c\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/ktor/client/plugins/json/JsonPlugin;",
        "",
        "config",
        "Lio/ktor/client/plugins/json/JsonPlugin$Config;",
        "(Lio/ktor/client/plugins/json/JsonPlugin$Config;)V",
        "serializer",
        "Lio/ktor/client/plugins/json/JsonSerializer;",
        "acceptContentTypes",
        "",
        "Lio/ktor/http/ContentType;",
        "receiveContentTypeMatchers",
        "Lio/ktor/http/ContentTypeMatcher;",
        "ignoredTypes",
        "",
        "Lkotlin/reflect/KClass;",
        "(Lio/ktor/client/plugins/json/JsonSerializer;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V",
        "getAcceptContentTypes",
        "()Ljava/util/List;",
        "getSerializer",
        "()Lio/ktor/client/plugins/json/JsonSerializer;",
        "canHandle",
        "",
        "contentType",
        "canHandle$ktor_client_json",
        "Config",
        "Plugin",
        "ktor-client-json"
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
.field public static final Plugin:Lio/ktor/client/plugins/json/JsonPlugin$Plugin;

.field private static final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/json/JsonPlugin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final acceptContentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/http/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoredTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final receiveContentTypeMatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/http/ContentTypeMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final serializer:Lio/ktor/client/plugins/json/JsonSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/json/JsonPlugin$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/json/JsonPlugin;->Plugin:Lio/ktor/client/plugins/json/JsonPlugin$Plugin;

    .line 183
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "Json"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/json/JsonPlugin;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/plugins/json/JsonPlugin$Config;)V
    .locals 8

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lio/ktor/client/plugins/json/JsonPlugin$Config;->getSerializer()Lio/ktor/client/plugins/json/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/ktor/client/plugins/json/DefaultJvmKt;->defaultSerializer()Lio/ktor/client/plugins/json/JsonSerializer;

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 63
    invoke-virtual {p1}, Lio/ktor/client/plugins/json/JsonPlugin$Config;->getAcceptContentTypes()Ljava/util/List;

    move-result-object v3

    .line 64
    invoke-virtual {p1}, Lio/ktor/client/plugins/json/JsonPlugin$Config;->getReceiveContentTypeMatchers()Ljava/util/List;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 61
    invoke-direct/range {v1 .. v7}, Lio/ktor/client/plugins/json/JsonPlugin;-><init>(Lio/ktor/client/plugins/json/JsonSerializer;Ljava/util/List;Ljava/util/List;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/plugins/json/JsonSerializer;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/json/JsonSerializer;",
            "Ljava/util/List<",
            "Lio/ktor/http/ContentType;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/http/ContentTypeMatcher;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acceptContentTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiveContentTypeMatchers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ignoredTypes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lio/ktor/client/plugins/json/JsonPlugin;->serializer:Lio/ktor/client/plugins/json/JsonSerializer;

    .line 57
    iput-object p2, p0, Lio/ktor/client/plugins/json/JsonPlugin;->acceptContentTypes:Ljava/util/List;

    .line 58
    iput-object p3, p0, Lio/ktor/client/plugins/json/JsonPlugin;->receiveContentTypeMatchers:Ljava/util/List;

    .line 59
    iput-object p4, p0, Lio/ktor/client/plugins/json/JsonPlugin;->ignoredTypes:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/client/plugins/json/JsonSerializer;Ljava/util/List;Ljava/util/List;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 57
    sget-object p2, Lio/ktor/http/ContentType$Application;->INSTANCE:Lio/ktor/http/ContentType$Application;

    invoke-virtual {p2}, Lio/ktor/http/ContentType$Application;->getJson()Lio/ktor/http/ContentType;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 58
    new-instance p3, Lio/ktor/client/plugins/json/JsonContentTypeMatcher;

    invoke-direct {p3}, Lio/ktor/client/plugins/json/JsonContentTypeMatcher;-><init>()V

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 59
    invoke-static {}, Lio/ktor/client/plugins/json/JsonPluginKt;->getDefaultCommonIgnoredTypes()Ljava/util/Set;

    move-result-object p4

    invoke-static {}, Lio/ktor/client/plugins/json/JsonPluginJvmKt;->getDefaultIgnoredTypes()Ljava/util/Set;

    move-result-object p5

    check-cast p5, Ljava/lang/Iterable;

    invoke-static {p4, p5}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p4

    .line 55
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/client/plugins/json/JsonPlugin;-><init>(Lio/ktor/client/plugins/json/JsonSerializer;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$getIgnoredTypes$p(Lio/ktor/client/plugins/json/JsonPlugin;)Ljava/util/Set;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/ktor/client/plugins/json/JsonPlugin;->ignoredTypes:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 54
    sget-object v0, Lio/ktor/client/plugins/json/JsonPlugin;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method


# virtual methods
.method public final canHandle$ktor_client_json(Lio/ktor/http/ContentType;)Z
    .locals 4

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin;->acceptContentTypes:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 237
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    .line 238
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/http/ContentType;

    .line 173
    invoke-virtual {p1, v1}, Lio/ktor/http/ContentType;->match(Lio/ktor/http/ContentType;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 174
    :goto_0
    iget-object v1, p0, Lio/ktor/client/plugins/json/JsonPlugin;->receiveContentTypeMatchers:Ljava/util/List;

    if-nez v0, :cond_6

    .line 176
    check-cast v1, Ljava/lang/Iterable;

    .line 240
    instance-of v0, v1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 241
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/http/ContentTypeMatcher;

    .line 176
    invoke-interface {v1, p1}, Lio/ktor/http/ContentTypeMatcher;->contains(Lio/ktor/http/ContentType;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_5
    :goto_1
    return v3

    :cond_6
    :goto_2
    return v2
.end method

.method public final getAcceptContentTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/http/ContentType;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin;->acceptContentTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getSerializer()Lio/ktor/client/plugins/json/JsonSerializer;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin;->serializer:Lio/ktor/client/plugins/json/JsonSerializer;

    return-object v0
.end method
