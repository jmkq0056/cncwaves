.class public final Lio/ktor/client/plugins/websocket/WebSocketExtensionsCapability;
.super Ljava/lang/Object;
.source "WebSockets.kt"

# interfaces
.implements Lio/ktor/client/engine/HttpClientEngineCapability;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/client/engine/HttpClientEngineCapability<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lio/ktor/client/plugins/websocket/WebSocketExtensionsCapability;",
        "Lio/ktor/client/engine/HttpClientEngineCapability;",
        "",
        "()V",
        "toString",
        "",
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


# static fields
.field public static final INSTANCE:Lio/ktor/client/plugins/websocket/WebSocketExtensionsCapability;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/client/plugins/websocket/WebSocketExtensionsCapability;

    invoke-direct {v0}, Lio/ktor/client/plugins/websocket/WebSocketExtensionsCapability;-><init>()V

    sput-object v0, Lio/ktor/client/plugins/websocket/WebSocketExtensionsCapability;->INSTANCE:Lio/ktor/client/plugins/websocket/WebSocketExtensionsCapability;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "WebSocketExtensionsCapability"

    return-object v0
.end method
