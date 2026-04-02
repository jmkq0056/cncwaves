.class public final Lio/ktor/client/plugins/websocket/WebSockets$Config;
.super Ljava/lang/Object;
.source "WebSockets.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/websocket/WebSockets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0016\u001a\u00020\u00172\u0017\u0010\u0018\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00170\u0019\u00a2\u0006\u0002\u0008\u001aR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012\u00a8\u0006\u001b"
    }
    d2 = {
        "Lio/ktor/client/plugins/websocket/WebSockets$Config;",
        "",
        "()V",
        "contentConverter",
        "Lio/ktor/serialization/WebsocketContentConverter;",
        "getContentConverter",
        "()Lio/ktor/serialization/WebsocketContentConverter;",
        "setContentConverter",
        "(Lio/ktor/serialization/WebsocketContentConverter;)V",
        "extensionsConfig",
        "Lio/ktor/websocket/WebSocketExtensionsConfig;",
        "getExtensionsConfig$ktor_client_core",
        "()Lio/ktor/websocket/WebSocketExtensionsConfig;",
        "maxFrameSize",
        "",
        "getMaxFrameSize",
        "()J",
        "setMaxFrameSize",
        "(J)V",
        "pingInterval",
        "getPingInterval",
        "setPingInterval",
        "extensions",
        "",
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
.field private contentConverter:Lio/ktor/serialization/WebsocketContentConverter;

.field private final extensionsConfig:Lio/ktor/websocket/WebSocketExtensionsConfig;

.field private maxFrameSize:J

.field private pingInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lio/ktor/websocket/WebSocketExtensionsConfig;

    invoke-direct {v0}, Lio/ktor/websocket/WebSocketExtensionsConfig;-><init>()V

    iput-object v0, p0, Lio/ktor/client/plugins/websocket/WebSockets$Config;->extensionsConfig:Lio/ktor/websocket/WebSocketExtensionsConfig;

    const-wide/16 v0, -0x1

    .line 116
    iput-wide v0, p0, Lio/ktor/client/plugins/websocket/WebSockets$Config;->pingInterval:J

    const-wide/32 v0, 0x7fffffff

    .line 121
    iput-wide v0, p0, Lio/ktor/client/plugins/websocket/WebSockets$Config;->maxFrameSize:J

    return-void
.end method


# virtual methods
.method public final extensions(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/websocket/WebSocketExtensionsConfig;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lio/ktor/client/plugins/websocket/WebSockets$Config;->extensionsConfig:Lio/ktor/websocket/WebSocketExtensionsConfig;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getContentConverter()Lio/ktor/serialization/WebsocketContentConverter;
    .locals 1

    .line 126
    iget-object v0, p0, Lio/ktor/client/plugins/websocket/WebSockets$Config;->contentConverter:Lio/ktor/serialization/WebsocketContentConverter;

    return-object v0
.end method

.method public final getExtensionsConfig$ktor_client_core()Lio/ktor/websocket/WebSocketExtensionsConfig;
    .locals 1

    .line 109
    iget-object v0, p0, Lio/ktor/client/plugins/websocket/WebSockets$Config;->extensionsConfig:Lio/ktor/websocket/WebSocketExtensionsConfig;

    return-object v0
.end method

.method public final getMaxFrameSize()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lio/ktor/client/plugins/websocket/WebSockets$Config;->maxFrameSize:J

    return-wide v0
.end method

.method public final getPingInterval()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lio/ktor/client/plugins/websocket/WebSockets$Config;->pingInterval:J

    return-wide v0
.end method

.method public final setContentConverter(Lio/ktor/serialization/WebsocketContentConverter;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lio/ktor/client/plugins/websocket/WebSockets$Config;->contentConverter:Lio/ktor/serialization/WebsocketContentConverter;

    return-void
.end method

.method public final setMaxFrameSize(J)V
    .locals 0

    .line 121
    iput-wide p1, p0, Lio/ktor/client/plugins/websocket/WebSockets$Config;->maxFrameSize:J

    return-void
.end method

.method public final setPingInterval(J)V
    .locals 0

    .line 116
    iput-wide p1, p0, Lio/ktor/client/plugins/websocket/WebSockets$Config;->pingInterval:J

    return-void
.end method
