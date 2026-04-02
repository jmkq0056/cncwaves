.class final Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$statement$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "builders.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/websocket/BuildersKt;->webSocketSession(Lio/ktor/client/HttpClient;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/http/URLBuilder;",
        "Lio/ktor/http/URLBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/http/URLBuilder;",
        "it",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$statement$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$statement$1$1;

    invoke-direct {v0}, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$statement$1$1;-><init>()V

    sput-object v0, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$statement$1$1;->INSTANCE:Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$statement$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lio/ktor/http/URLBuilder;

    check-cast p2, Lio/ktor/http/URLBuilder;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/websocket/BuildersKt$webSocketSession$statement$1$1;->invoke(Lio/ktor/http/URLBuilder;Lio/ktor/http/URLBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/http/URLBuilder;Lio/ktor/http/URLBuilder;)V
    .locals 1

    const-string v0, "$this$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object p2, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {p2}, Lio/ktor/http/URLProtocol$Companion;->getWS()Lio/ktor/http/URLProtocol;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/ktor/http/URLBuilder;->setProtocol(Lio/ktor/http/URLProtocol;)V

    .line 34
    invoke-virtual {p1}, Lio/ktor/http/URLBuilder;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object p2

    invoke-virtual {p2}, Lio/ktor/http/URLProtocol;->getDefaultPort()I

    move-result p2

    invoke-virtual {p1, p2}, Lio/ktor/http/URLBuilder;->setPort(I)V

    return-void
.end method
