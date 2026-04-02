.class public final Lio/ktor/client/plugins/api/ClientPluginBuilder;
.super Ljava/lang/Object;
.source "ClientPluginBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PluginConfig:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B+\u0008\u0000\u0012\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\tJ\'\u0010\u001d\u001a\u00020\u0015\"\u0004\u0008\u0001\u0010\u001e2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u001e0 2\u0006\u0010!\u001a\u0002H\u001e\u00a2\u0006\u0002\u0010\"J\u0014\u0010\u0013\u001a\u00020\u00152\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014Ja\u0010$\u001a\u00020\u00152Q\u0010#\u001aM\u0008\u0001\u0012\u0004\u0012\u00020&\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(*\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(+\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150,\u0012\u0006\u0012\u0004\u0018\u00010\u00020%\u00a2\u0006\u0002\u0008-\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010.JL\u0010/\u001a\u00020\u00152<\u0010#\u001a8\u0008\u0001\u0012\u0004\u0012\u000201\u0012\u0013\u0012\u001102\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(3\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150,\u0012\u0006\u0012\u0004\u0018\u00010\u000200\u00a2\u0006\u0002\u0008-\u00f8\u0001\u0000\u00a2\u0006\u0002\u00104Jz\u00105\u001a\u00020\u00152j\u0010#\u001af\u0008\u0001\u0012\u0004\u0012\u000207\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(*\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(+\u0012\u0015\u0012\u0013\u0018\u000108\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(9\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010:0,\u0012\u0006\u0012\u0004\u0018\u00010\u000206\u00a2\u0006\u0002\u0008-\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010;Jx\u0010<\u001a\u00020\u00152h\u0010#\u001ad\u0008\u0001\u0012\u0004\u0012\u00020=\u0012\u0013\u0012\u001102\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(3\u0012\u0013\u0012\u00110>\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(+\u0012\u0013\u0012\u001108\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(?\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020,\u0012\u0006\u0012\u0004\u0018\u00010\u000206\u00a2\u0006\u0002\u0008-\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010;R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000c\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000e0\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R \u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R \u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u0008\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001a\u0010\u001b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006@"
    }
    d2 = {
        "Lio/ktor/client/plugins/api/ClientPluginBuilder;",
        "PluginConfig",
        "",
        "key",
        "Lio/ktor/util/AttributeKey;",
        "Lio/ktor/client/plugins/api/ClientPluginInstance;",
        "client",
        "Lio/ktor/client/HttpClient;",
        "pluginConfig",
        "(Lio/ktor/util/AttributeKey;Lio/ktor/client/HttpClient;Ljava/lang/Object;)V",
        "getClient",
        "()Lio/ktor/client/HttpClient;",
        "hooks",
        "",
        "Lio/ktor/client/plugins/api/HookHandler;",
        "getHooks$ktor_client_core",
        "()Ljava/util/List;",
        "getKey$ktor_client_core",
        "()Lio/ktor/util/AttributeKey;",
        "onClose",
        "Lkotlin/Function0;",
        "",
        "getOnClose$ktor_client_core",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnClose$ktor_client_core",
        "(Lkotlin/jvm/functions/Function0;)V",
        "getPluginConfig",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "on",
        "HookHandler",
        "hook",
        "Lio/ktor/client/plugins/api/ClientHook;",
        "handler",
        "(Lio/ktor/client/plugins/api/ClientHook;Ljava/lang/Object;)V",
        "block",
        "onRequest",
        "Lkotlin/Function4;",
        "Lio/ktor/client/plugins/api/OnRequestContext;",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        "Lkotlin/ParameterName;",
        "name",
        "request",
        "content",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function4;)V",
        "onResponse",
        "Lkotlin/Function3;",
        "Lio/ktor/client/plugins/api/OnResponseContext;",
        "Lio/ktor/client/statement/HttpResponse;",
        "response",
        "(Lkotlin/jvm/functions/Function3;)V",
        "transformRequestBody",
        "Lkotlin/Function5;",
        "Lio/ktor/client/plugins/api/TransformRequestBodyContext;",
        "Lio/ktor/util/reflect/TypeInfo;",
        "bodyType",
        "Lio/ktor/http/content/OutgoingContent;",
        "(Lkotlin/jvm/functions/Function5;)V",
        "transformResponseBody",
        "Lio/ktor/client/plugins/api/TransformResponseBodyContext;",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "requestedType",
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
.field private final client:Lio/ktor/client/HttpClient;

.field private final hooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/client/plugins/api/HookHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/api/ClientPluginInstance<",
            "TPluginConfig;>;>;"
        }
    .end annotation
.end field

.field private onClose:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginConfig:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPluginConfig;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/util/AttributeKey;Lio/ktor/client/HttpClient;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/api/ClientPluginInstance<",
            "TPluginConfig;>;>;",
            "Lio/ktor/client/HttpClient;",
            "TPluginConfig;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pluginConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/ktor/client/plugins/api/ClientPluginBuilder;->key:Lio/ktor/util/AttributeKey;

    .line 27
    iput-object p2, p0, Lio/ktor/client/plugins/api/ClientPluginBuilder;->client:Lio/ktor/client/HttpClient;

    .line 31
    iput-object p3, p0, Lio/ktor/client/plugins/api/ClientPluginBuilder;->pluginConfig:Ljava/lang/Object;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lio/ktor/client/plugins/api/ClientPluginBuilder;->hooks:Ljava/util/List;

    .line 35
    sget-object p1, Lio/ktor/client/plugins/api/ClientPluginBuilder$onClose$1;->INSTANCE:Lio/ktor/client/plugins/api/ClientPluginBuilder$onClose$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lio/ktor/client/plugins/api/ClientPluginBuilder;->onClose:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getClient()Lio/ktor/client/HttpClient;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/ktor/client/plugins/api/ClientPluginBuilder;->client:Lio/ktor/client/HttpClient;

    return-object v0
.end method

.method public final getHooks$ktor_client_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/client/plugins/api/HookHandler<",
            "*>;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lio/ktor/client/plugins/api/ClientPluginBuilder;->hooks:Ljava/util/List;

    return-object v0
.end method

.method public final getKey$ktor_client_core()Lio/ktor/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/api/ClientPluginInstance<",
            "TPluginConfig;>;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lio/ktor/client/plugins/api/ClientPluginBuilder;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public final getOnClose$ktor_client_core()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lio/ktor/client/plugins/api/ClientPluginBuilder;->onClose:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getPluginConfig()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPluginConfig;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lio/ktor/client/plugins/api/ClientPluginBuilder;->pluginConfig:Ljava/lang/Object;

    return-object v0
.end method

.method public final on(Lio/ktor/client/plugins/api/ClientHook;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<HookHandler:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/client/plugins/api/ClientHook<",
            "THookHandler;>;THookHandler;)V"
        }
    .end annotation

    const-string v0, "hook"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lio/ktor/client/plugins/api/ClientPluginBuilder;->hooks:Ljava/util/List;

    new-instance v1, Lio/ktor/client/plugins/api/HookHandler;

    invoke-direct {v1, p1, p2}, Lio/ktor/client/plugins/api/HookHandler;-><init>(Lio/ktor/client/plugins/api/ClientHook;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onClose(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lio/ktor/client/plugins/api/ClientPluginBuilder;->onClose:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final onRequest(Lkotlin/jvm/functions/Function4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lio/ktor/client/plugins/api/OnRequestContext;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lio/ktor/client/plugins/api/RequestHook;->INSTANCE:Lio/ktor/client/plugins/api/RequestHook;

    check-cast v0, Lio/ktor/client/plugins/api/ClientHook;

    invoke-virtual {p0, v0, p1}, Lio/ktor/client/plugins/api/ClientPluginBuilder;->on(Lio/ktor/client/plugins/api/ClientHook;Ljava/lang/Object;)V

    return-void
.end method

.method public final onResponse(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/client/plugins/api/OnResponseContext;",
            "-",
            "Lio/ktor/client/statement/HttpResponse;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lio/ktor/client/plugins/api/ResponseHook;->INSTANCE:Lio/ktor/client/plugins/api/ResponseHook;

    check-cast v0, Lio/ktor/client/plugins/api/ClientHook;

    invoke-virtual {p0, v0, p1}, Lio/ktor/client/plugins/api/ClientPluginBuilder;->on(Lio/ktor/client/plugins/api/ClientHook;Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnClose$ktor_client_core(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lio/ktor/client/plugins/api/ClientPluginBuilder;->onClose:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final transformRequestBody(Lkotlin/jvm/functions/Function5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Lio/ktor/client/plugins/api/TransformRequestBodyContext;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Ljava/lang/Object;",
            "-",
            "Lio/ktor/util/reflect/TypeInfo;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/content/OutgoingContent;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lio/ktor/client/plugins/api/TransformRequestBodyHook;->INSTANCE:Lio/ktor/client/plugins/api/TransformRequestBodyHook;

    check-cast v0, Lio/ktor/client/plugins/api/ClientHook;

    invoke-virtual {p0, v0, p1}, Lio/ktor/client/plugins/api/ClientPluginBuilder;->on(Lio/ktor/client/plugins/api/ClientHook;Ljava/lang/Object;)V

    return-void
.end method

.method public final transformResponseBody(Lkotlin/jvm/functions/Function5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Lio/ktor/client/plugins/api/TransformResponseBodyContext;",
            "-",
            "Lio/ktor/client/statement/HttpResponse;",
            "-",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "-",
            "Lio/ktor/util/reflect/TypeInfo;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lio/ktor/client/plugins/api/TransformResponseBodyHook;->INSTANCE:Lio/ktor/client/plugins/api/TransformResponseBodyHook;

    check-cast v0, Lio/ktor/client/plugins/api/ClientHook;

    invoke-virtual {p0, v0, p1}, Lio/ktor/client/plugins/api/ClientPluginBuilder;->on(Lio/ktor/client/plugins/api/ClientHook;Ljava/lang/Object;)V

    return-void
.end method
