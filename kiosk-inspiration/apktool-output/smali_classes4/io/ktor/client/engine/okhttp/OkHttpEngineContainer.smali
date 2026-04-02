.class public final Lio/ktor/client/engine/okhttp/OkHttpEngineContainer;
.super Ljava/lang/Object;
.source "OkHttp.kt"

# interfaces
.implements Lio/ktor/client/HttpClientEngineContainer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0018\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lio/ktor/client/engine/okhttp/OkHttpEngineContainer;",
        "Lio/ktor/client/HttpClientEngineContainer;",
        "()V",
        "factory",
        "Lio/ktor/client/engine/HttpClientEngineFactory;",
        "getFactory",
        "()Lio/ktor/client/engine/HttpClientEngineFactory;",
        "toString",
        "",
        "ktor-client-okhttp"
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
.field private final factory:Lio/ktor/client/engine/HttpClientEngineFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/client/engine/HttpClientEngineFactory<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lio/ktor/client/engine/okhttp/OkHttp;->INSTANCE:Lio/ktor/client/engine/okhttp/OkHttp;

    check-cast v0, Lio/ktor/client/engine/HttpClientEngineFactory;

    iput-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineContainer;->factory:Lio/ktor/client/engine/HttpClientEngineFactory;

    return-void
.end method


# virtual methods
.method public getFactory()Lio/ktor/client/engine/HttpClientEngineFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/client/engine/HttpClientEngineFactory<",
            "*>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineContainer;->factory:Lio/ktor/client/engine/HttpClientEngineFactory;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "OkHttp"

    return-object v0
.end method
