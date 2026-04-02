.class public final Lio/ktor/client/plugins/json/JsonPlugin$Config;
.super Ljava/lang/Object;
.source "JsonPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/json/JsonPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonPlugin.kt\nio/ktor/client/plugins/json/JsonPlugin$Config\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,236:1\n1#2:237\n*E\n"
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u001d\u001a\u00020\u001e2\u0012\u0010\u001f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050 \"\u00020\u0005\u00a2\u0006\u0002\u0010!J\u0006\u0010\"\u001a\u00020\u001eJ\u0011\u0010#\u001a\u00020\u001e\"\u0006\u0008\u0000\u0010$\u0018\u0001H\u0086\u0008J\u0012\u0010#\u001a\u00020\u001e2\n\u0010%\u001a\u0006\u0012\u0002\u0008\u00030\u0011J\u000e\u0010&\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020\u0007J\u0011\u0010(\u001a\u00020\u001e\"\u0006\u0008\u0000\u0010$\u0018\u0001H\u0086\u0008J\u0012\u0010(\u001a\u00020\u001e2\n\u0010%\u001a\u0006\u0012\u0002\u0008\u00030\u0011R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R0\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00110\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R0\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u000c\"\u0004\u0008\u0016\u0010\u000eR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006)"
    }
    d2 = {
        "Lio/ktor/client/plugins/json/JsonPlugin$Config;",
        "",
        "()V",
        "_acceptContentTypes",
        "",
        "Lio/ktor/http/ContentType;",
        "_receiveContentTypeMatchers",
        "Lio/ktor/http/ContentTypeMatcher;",
        "value",
        "",
        "acceptContentTypes",
        "getAcceptContentTypes",
        "()Ljava/util/List;",
        "setAcceptContentTypes",
        "(Ljava/util/List;)V",
        "ignoredTypes",
        "",
        "Lkotlin/reflect/KClass;",
        "getIgnoredTypes$ktor_client_json",
        "()Ljava/util/Set;",
        "receiveContentTypeMatchers",
        "getReceiveContentTypeMatchers",
        "setReceiveContentTypeMatchers",
        "serializer",
        "Lio/ktor/client/plugins/json/JsonSerializer;",
        "getSerializer",
        "()Lio/ktor/client/plugins/json/JsonSerializer;",
        "setSerializer",
        "(Lio/ktor/client/plugins/json/JsonSerializer;)V",
        "accept",
        "",
        "contentTypes",
        "",
        "([Lio/ktor/http/ContentType;)V",
        "clearIgnoredTypes",
        "ignoreType",
        "T",
        "type",
        "receive",
        "matcher",
        "removeIgnoredType",
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


# instance fields
.field private final _acceptContentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/http/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private final _receiveContentTypeMatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/http/ContentTypeMatcher;",
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

.field private serializer:Lio/ktor/client/plugins/json/JsonSerializer;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lio/ktor/client/plugins/json/JsonPluginJvmKt;->getDefaultIgnoredTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lio/ktor/client/plugins/json/JsonPluginKt;->getDefaultCommonIgnoredTypes()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->ignoredTypes:Ljava/util/Set;

    const/4 v0, 0x1

    .line 86
    new-array v1, v0, [Lio/ktor/http/ContentType;

    sget-object v2, Lio/ktor/http/ContentType$Application;->INSTANCE:Lio/ktor/http/ContentType$Application;

    invoke-virtual {v2}, Lio/ktor/http/ContentType$Application;->getJson()Lio/ktor/http/ContentType;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->_acceptContentTypes:Ljava/util/List;

    .line 88
    new-array v0, v0, [Lio/ktor/http/ContentTypeMatcher;

    new-instance v1, Lio/ktor/client/plugins/json/JsonContentTypeMatcher;

    invoke-direct {v1}, Lio/ktor/client/plugins/json/JsonContentTypeMatcher;-><init>()V

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->_receiveContentTypeMatchers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final varargs accept([Lio/ktor/http/ContentType;)V
    .locals 1

    const-string v0, "contentTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->_acceptContentTypes:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearIgnoredTypes()V
    .locals 1

    .line 168
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->ignoredTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
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

    .line 102
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->_acceptContentTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getIgnoredTypes$ktor_client_json()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->ignoredTypes:Ljava/util/Set;

    return-object v0
.end method

.method public final getReceiveContentTypeMatchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/http/ContentTypeMatcher;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->_receiveContentTypeMatchers:Ljava/util/List;

    return-object v0
.end method

.method public final getSerializer()Lio/ktor/client/plugins/json/JsonSerializer;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->serializer:Lio/ktor/client/plugins/json/JsonSerializer;

    return-object v0
.end method

.method public final synthetic ignoreType()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 138
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/ktor/client/plugins/json/JsonPlugin$Config;->ignoreType(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public final ignoreType(Lkotlin/reflect/KClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->ignoredTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final receive(Lio/ktor/http/ContentTypeMatcher;)V
    .locals 1

    const-string v0, "matcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->_receiveContentTypeMatchers:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic removeIgnoredType()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 145
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/ktor/client/plugins/json/JsonPlugin$Config;->removeIgnoredType(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public final removeIgnoredType(Lkotlin/reflect/KClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->ignoredTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setAcceptContentTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/http/ContentType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->_acceptContentTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->_acceptContentTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one content type should be provided to acceptContentTypes"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setReceiveContentTypeMatchers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/http/ContentTypeMatcher;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->_receiveContentTypeMatchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    iget-object v0, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->_receiveContentTypeMatchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one content type should be provided to acceptContentTypes"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSerializer(Lio/ktor/client/plugins/json/JsonSerializer;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lio/ktor/client/plugins/json/JsonPlugin$Config;->serializer:Lio/ktor/client/plugins/json/JsonSerializer;

    return-void
.end method
