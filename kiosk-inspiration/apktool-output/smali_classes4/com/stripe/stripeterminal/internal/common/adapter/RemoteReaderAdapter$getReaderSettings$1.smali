.class final Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$getReaderSettings$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RemoteReaderAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getReaderSettings()Lcom/stripe/stripeterminal/external/models/ReaderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettings;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettings;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$getReaderSettings$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$getReaderSettings$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "getReaderSettings"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 221
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$getReaderSettings$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->getReaderSettings()Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$getReaderSettings$1;->invoke()Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    move-result-object v0

    return-object v0
.end method
