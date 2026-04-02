.class public final Lio/ktor/client/plugins/websocket/WebSocketsKt;
.super Ljava/lang/Object;
.source "WebSockets.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\"\u0018\u0010\u0000\u001a\u00060\u0001j\u0002`\u0002X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\"\u001e\u0010\u0005\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "LOGGER",
        "Lorg/slf4j/Logger;",
        "Lio/ktor/util/logging/Logger;",
        "getLOGGER",
        "()Lorg/slf4j/Logger;",
        "REQUEST_EXTENSIONS_KEY",
        "Lio/ktor/util/AttributeKey;",
        "",
        "Lio/ktor/websocket/WebSocketExtension;",
        "ktor-client-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final REQUEST_EXTENSIONS_KEY:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Ljava/util/List<",
            "Lio/ktor/websocket/WebSocketExtension<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "Websocket extensions"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/websocket/WebSocketsKt;->REQUEST_EXTENSIONS_KEY:Lio/ktor/util/AttributeKey;

    .line 22
    const-string v0, "io.ktor.client.plugins.websocket.WebSockets"

    invoke-static {v0}, Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;->KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/ktor/client/plugins/websocket/WebSocketsKt;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public static final synthetic access$getREQUEST_EXTENSIONS_KEY$p()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/websocket/WebSocketsKt;->REQUEST_EXTENSIONS_KEY:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final getLOGGER()Lorg/slf4j/Logger;
    .locals 1

    .line 22
    sget-object v0, Lio/ktor/client/plugins/websocket/WebSocketsKt;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method
