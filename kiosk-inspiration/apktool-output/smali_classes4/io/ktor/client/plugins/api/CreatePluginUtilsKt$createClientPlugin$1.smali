.class public final Lio/ktor/client/plugins/api/CreatePluginUtilsKt$createClientPlugin$1;
.super Ljava/lang/Object;
.source "CreatePluginUtils.kt"

# interfaces
.implements Lio/ktor/client/plugins/api/ClientPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/api/CreatePluginUtilsKt;->createClientPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/api/ClientPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/client/plugins/api/ClientPlugin<",
        "TPluginConfigT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016J\'\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00080\u000e\u00a2\u0006\u0002\u0008\u000fH\u0016R \u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "io/ktor/client/plugins/api/CreatePluginUtilsKt$createClientPlugin$1",
        "Lio/ktor/client/plugins/api/ClientPlugin;",
        "key",
        "Lio/ktor/util/AttributeKey;",
        "Lio/ktor/client/plugins/api/ClientPluginInstance;",
        "getKey",
        "()Lio/ktor/util/AttributeKey;",
        "install",
        "",
        "plugin",
        "scope",
        "Lio/ktor/client/HttpClient;",
        "prepare",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
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
.field final synthetic $body:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/client/plugins/api/ClientPluginBuilder<",
            "TPluginConfigT;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $createConfiguration:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TPluginConfigT;>;"
        }
    .end annotation
.end field

.field final synthetic $name:Ljava/lang/String;

.field private final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/api/ClientPluginInstance<",
            "TPluginConfigT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TPluginConfigT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/plugins/api/ClientPluginBuilder<",
            "TPluginConfigT;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/api/CreatePluginUtilsKt$createClientPlugin$1;->$name:Ljava/lang/String;

    iput-object p2, p0, Lio/ktor/client/plugins/api/CreatePluginUtilsKt$createClientPlugin$1;->$createConfiguration:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lio/ktor/client/plugins/api/CreatePluginUtilsKt$createClientPlugin$1;->$body:Lkotlin/jvm/functions/Function1;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance p2, Lio/ktor/util/AttributeKey;

    invoke-direct {p2, p1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lio/ktor/client/plugins/api/CreatePluginUtilsKt$createClientPlugin$1;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method


# virtual methods
.method public getKey()Lio/ktor/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/api/ClientPluginInstance<",
            "TPluginConfigT;>;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lio/ktor/client/plugins/api/CreatePluginUtilsKt$createClientPlugin$1;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public install(Lio/ktor/client/plugins/api/ClientPluginInstance;Lio/ktor/client/HttpClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/api/ClientPluginInstance<",
            "TPluginConfigT;>;",
            "Lio/ktor/client/HttpClient;",
            ")V"
        }
    .end annotation

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, p2}, Lio/ktor/client/plugins/api/ClientPluginInstance;->install(Lio/ktor/client/HttpClient;)V

    return-void
.end method

.method public bridge synthetic install(Ljava/lang/Object;Lio/ktor/client/HttpClient;)V
    .locals 0

    .line 51
    check-cast p1, Lio/ktor/client/plugins/api/ClientPluginInstance;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/api/CreatePluginUtilsKt$createClientPlugin$1;->install(Lio/ktor/client/plugins/api/ClientPluginInstance;Lio/ktor/client/HttpClient;)V

    return-void
.end method

.method public prepare(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/api/ClientPluginInstance;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TPluginConfigT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/client/plugins/api/ClientPluginInstance<",
            "TPluginConfigT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lio/ktor/client/plugins/api/CreatePluginUtilsKt$createClientPlugin$1;->$createConfiguration:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance p1, Lio/ktor/client/plugins/api/ClientPluginInstance;

    iget-object v1, p0, Lio/ktor/client/plugins/api/CreatePluginUtilsKt$createClientPlugin$1;->$name:Ljava/lang/String;

    iget-object v2, p0, Lio/ktor/client/plugins/api/CreatePluginUtilsKt$createClientPlugin$1;->$body:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, v2}, Lio/ktor/client/plugins/api/ClientPluginInstance;-><init>(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-object p1
.end method

.method public bridge synthetic prepare(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/api/CreatePluginUtilsKt$createClientPlugin$1;->prepare(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/api/ClientPluginInstance;

    move-result-object p1

    return-object p1
.end method
