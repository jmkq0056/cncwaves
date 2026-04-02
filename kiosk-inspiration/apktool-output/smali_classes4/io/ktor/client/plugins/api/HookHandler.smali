.class public final Lio/ktor/client/plugins/api/HookHandler;
.super Ljava/lang/Object;
.source "ClientHook.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u001b\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u0010\u0010\u0005\u001a\u00028\u0000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/ktor/client/plugins/api/HookHandler;",
        "T",
        "",
        "hook",
        "Lio/ktor/client/plugins/api/ClientHook;",
        "handler",
        "(Lio/ktor/client/plugins/api/ClientHook;Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "install",
        "",
        "client",
        "Lio/ktor/client/HttpClient;",
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
.field private final handler:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final hook:Lio/ktor/client/plugins/api/ClientHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/client/plugins/api/ClientHook<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/plugins/api/ClientHook;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/api/ClientHook<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "hook"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/plugins/api/HookHandler;->hook:Lio/ktor/client/plugins/api/ClientHook;

    iput-object p2, p0, Lio/ktor/client/plugins/api/HookHandler;->handler:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final install(Lio/ktor/client/HttpClient;)V
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lio/ktor/client/plugins/api/HookHandler;->hook:Lio/ktor/client/plugins/api/ClientHook;

    iget-object v1, p0, Lio/ktor/client/plugins/api/HookHandler;->handler:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lio/ktor/client/plugins/api/ClientHook;->install(Lio/ktor/client/HttpClient;Ljava/lang/Object;)V

    return-void
.end method
