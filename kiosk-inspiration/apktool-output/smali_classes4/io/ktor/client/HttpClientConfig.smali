.class public final Lio/ktor/client/HttpClientConfig;
.super Ljava/lang/Object;
.source "HttpClientConfig.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/ktor/client/engine/HttpClientEngineConfig;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpClientConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientConfig.kt\nio/ktor/client/HttpClientConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1855#2,2:131\n1855#2,2:133\n*S KotlinDebug\n*F\n+ 1 HttpClientConfig.kt\nio/ktor/client/HttpClientConfig\n*L\n104#1:131,2\n105#1:133,2\n*E\n"
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u001f\u0010$\u001a\u00020\n2\u0017\u0010%\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u0012J\u000e\u0010&\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\tJI\u0010&\u001a\u00020\n\"\u0008\u0008\u0001\u0010(*\u00020\u0003\"\u0008\u0008\u0002\u0010)*\u00020\u00032\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u0002H(\u0012\u0004\u0012\u0002H)0+2\u0019\u0008\u0002\u0010,\u001a\u0013\u0012\u0004\u0012\u0002H(\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u0012J\'\u0010&\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u00072\u0017\u0010%\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u0012J\u0019\u0010.\u001a\u00020\n2\u000e\u0010/\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0000H\u0086\u0002R&\u0010\u0005\u001a\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R+\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u0012X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000e\"\u0004\u0008\u0019\u0010\u0010R\u001a\u0010\u001a\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000e\"\u0004\u0008\u001c\u0010\u0010R/\u0010\u001d\u001a#\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001e\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u00120\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u001f\u001a\u001e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u000e\"\u0004\u0008\"\u0010\u0010\u00a8\u00060"
    }
    d2 = {
        "Lio/ktor/client/HttpClientConfig;",
        "T",
        "Lio/ktor/client/engine/HttpClientEngineConfig;",
        "",
        "()V",
        "customInterceptors",
        "",
        "",
        "Lkotlin/Function1;",
        "Lio/ktor/client/HttpClient;",
        "",
        "developmentMode",
        "",
        "getDevelopmentMode",
        "()Z",
        "setDevelopmentMode",
        "(Z)V",
        "engineConfig",
        "Lkotlin/ExtensionFunctionType;",
        "getEngineConfig$ktor_client_core",
        "()Lkotlin/jvm/functions/Function1;",
        "setEngineConfig$ktor_client_core",
        "(Lkotlin/jvm/functions/Function1;)V",
        "expectSuccess",
        "getExpectSuccess",
        "setExpectSuccess",
        "followRedirects",
        "getFollowRedirects",
        "setFollowRedirects",
        "pluginConfigurations",
        "Lio/ktor/util/AttributeKey;",
        "plugins",
        "useDefaultTransformers",
        "getUseDefaultTransformers",
        "setUseDefaultTransformers",
        "clone",
        "engine",
        "block",
        "install",
        "client",
        "TBuilder",
        "TPlugin",
        "plugin",
        "Lio/ktor/client/plugins/HttpClientPlugin;",
        "configure",
        "key",
        "plusAssign",
        "other",
        "ktor-client-core"
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
.field private final customInterceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/client/HttpClient;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private developmentMode:Z

.field private engineConfig:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private expectSuccess:Z

.field private followRedirects:Z

.field private final pluginConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/ktor/util/AttributeKey<",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/ktor/util/AttributeKey<",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/client/HttpClient;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private useDefaultTransformers:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/ktor/client/HttpClientConfig;->plugins:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/ktor/client/HttpClientConfig;->pluginConfigurations:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/ktor/client/HttpClientConfig;->customInterceptors:Ljava/util/Map;

    .line 25
    sget-object v0, Lio/ktor/client/HttpClientConfig$engineConfig$1;->INSTANCE:Lio/ktor/client/HttpClientConfig$engineConfig$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lio/ktor/client/HttpClientConfig;->engineConfig:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lio/ktor/client/HttpClientConfig;->followRedirects:Z

    .line 49
    iput-boolean v0, p0, Lio/ktor/client/HttpClientConfig;->useDefaultTransformers:Z

    .line 61
    sget-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    invoke-virtual {v0}, Lio/ktor/util/PlatformUtils;->getIS_DEVELOPMENT_MODE()Z

    move-result v0

    iput-boolean v0, p0, Lio/ktor/client/HttpClientConfig;->developmentMode:Z

    return-void
.end method

.method public static final synthetic access$getPluginConfigurations$p(Lio/ktor/client/HttpClientConfig;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/ktor/client/HttpClientConfig;->pluginConfigurations:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic install$default(Lio/ktor/client/HttpClientConfig;Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 69
    sget-object p2, Lio/ktor/client/HttpClientConfig$install$1;->INSTANCE:Lio/ktor/client/HttpClientConfig$install$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 67
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/HttpClientConfig;->install(Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final clone()Lio/ktor/client/HttpClientConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/client/HttpClientConfig<",
            "TT;>;"
        }
    .end annotation

    .line 112
    new-instance v0, Lio/ktor/client/HttpClientConfig;

    invoke-direct {v0}, Lio/ktor/client/HttpClientConfig;-><init>()V

    .line 113
    invoke-virtual {v0, p0}, Lio/ktor/client/HttpClientConfig;->plusAssign(Lio/ktor/client/HttpClientConfig;)V

    return-object v0
.end method

.method public final engine(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lio/ktor/client/HttpClientConfig;->engineConfig:Lkotlin/jvm/functions/Function1;

    .line 34
    new-instance v1, Lio/ktor/client/HttpClientConfig$engine$1;

    invoke-direct {v1, v0, p1}, Lio/ktor/client/HttpClientConfig$engine$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iput-object v1, p0, Lio/ktor/client/HttpClientConfig;->engineConfig:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final getDevelopmentMode()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lio/ktor/client/HttpClientConfig;->developmentMode:Z

    return v0
.end method

.method public final getEngineConfig$ktor_client_core()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lio/ktor/client/HttpClientConfig;->engineConfig:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getExpectSuccess()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lio/ktor/client/HttpClientConfig;->expectSuccess:Z

    return v0
.end method

.method public final getFollowRedirects()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lio/ktor/client/HttpClientConfig;->followRedirects:Z

    return v0
.end method

.method public final getUseDefaultTransformers()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lio/ktor/client/HttpClientConfig;->useDefaultTransformers:Z

    return v0
.end method

.method public final install(Lio/ktor/client/HttpClient;)V
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lio/ktor/client/HttpClientConfig;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 131
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 104
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lio/ktor/client/HttpClientConfig;->customInterceptors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 133
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 105
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final install(Lio/ktor/client/plugins/HttpClientPlugin;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBuilder:",
            "Ljava/lang/Object;",
            "TPlugin:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/client/plugins/HttpClientPlugin<",
            "+TTBuilder;TTPlugin;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TTBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lio/ktor/client/HttpClientConfig;->pluginConfigurations:Ljava/util/Map;

    invoke-interface {p1}, Lio/ktor/client/plugins/HttpClientPlugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 72
    iget-object v1, p0, Lio/ktor/client/HttpClientConfig;->pluginConfigurations:Ljava/util/Map;

    invoke-interface {p1}, Lio/ktor/client/plugins/HttpClientPlugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v2

    new-instance v3, Lio/ktor/client/HttpClientConfig$install$2;

    invoke-direct {v3, v0, p2}, Lio/ktor/client/HttpClientConfig$install$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p2, p0, Lio/ktor/client/HttpClientConfig;->plugins:Ljava/util/Map;

    invoke-interface {p1}, Lio/ktor/client/plugins/HttpClientPlugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object p2, p0, Lio/ktor/client/HttpClientConfig;->plugins:Ljava/util/Map;

    invoke-interface {p1}, Lio/ktor/client/plugins/HttpClientPlugin;->getKey()Lio/ktor/util/AttributeKey;

    move-result-object v0

    new-instance v1, Lio/ktor/client/HttpClientConfig$install$3;

    invoke-direct {v1, p1}, Lio/ktor/client/HttpClientConfig$install$3;-><init>(Lio/ktor/client/plugins/HttpClientPlugin;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final install(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/HttpClient;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lio/ktor/client/HttpClientConfig;->customInterceptors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final plusAssign(Lio/ktor/client/HttpClientConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClientConfig<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p1, Lio/ktor/client/HttpClientConfig;->followRedirects:Z

    iput-boolean v0, p0, Lio/ktor/client/HttpClientConfig;->followRedirects:Z

    .line 122
    iget-boolean v0, p1, Lio/ktor/client/HttpClientConfig;->useDefaultTransformers:Z

    iput-boolean v0, p0, Lio/ktor/client/HttpClientConfig;->useDefaultTransformers:Z

    .line 123
    iget-boolean v0, p1, Lio/ktor/client/HttpClientConfig;->expectSuccess:Z

    iput-boolean v0, p0, Lio/ktor/client/HttpClientConfig;->expectSuccess:Z

    .line 125
    iget-object v0, p0, Lio/ktor/client/HttpClientConfig;->plugins:Ljava/util/Map;

    iget-object v1, p1, Lio/ktor/client/HttpClientConfig;->plugins:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 126
    iget-object v0, p0, Lio/ktor/client/HttpClientConfig;->pluginConfigurations:Ljava/util/Map;

    iget-object v1, p1, Lio/ktor/client/HttpClientConfig;->pluginConfigurations:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 127
    iget-object v0, p0, Lio/ktor/client/HttpClientConfig;->customInterceptors:Ljava/util/Map;

    iget-object p1, p1, Lio/ktor/client/HttpClientConfig;->customInterceptors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final setDevelopmentMode(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lio/ktor/client/HttpClientConfig;->developmentMode:Z

    return-void
.end method

.method public final setEngineConfig$ktor_client_core(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lio/ktor/client/HttpClientConfig;->engineConfig:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setExpectSuccess(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lio/ktor/client/HttpClientConfig;->expectSuccess:Z

    return-void
.end method

.method public final setFollowRedirects(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lio/ktor/client/HttpClientConfig;->followRedirects:Z

    return-void
.end method

.method public final setUseDefaultTransformers(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lio/ktor/client/HttpClientConfig;->useDefaultTransformers:Z

    return-void
.end method
