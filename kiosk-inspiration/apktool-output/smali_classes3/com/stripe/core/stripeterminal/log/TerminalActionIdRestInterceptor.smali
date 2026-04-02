.class public final Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;
.super Lcom/stripe/jvmcore/restclient/RestInterceptor;
.source "TerminalActionIdRestInterceptor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0088\u0001\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u000c0\n\"\u001c\u0008\u0000\u0010\r*\u0016\u0012\u0004\u0012\u0002H\r\u0012\u0002\u0008\u00030\u000ej\u0008\u0012\u0004\u0012\u0002H\r`\u000f\"\u001c\u0008\u0001\u0010\u000b*\u0016\u0012\u0004\u0012\u0002H\u000b\u0012\u0002\u0008\u00030\u000ej\u0008\u0012\u0004\u0012\u0002H\u000b`\u000f\"\u001c\u0008\u0002\u0010\u000c*\u0016\u0012\u0004\u0012\u0002H\u000c\u0012\u0002\u0008\u00030\u000ej\u0008\u0012\u0004\u0012\u0002H\u000c`\u000f2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u000c0\u0011H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
        "traceManager",
        "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
        "(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "intercept",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Rsp",
        "Err",
        "Rq",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "chain",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;",
        "stripeterminal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "traceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/stripe/jvmcore/restclient/RestInterceptor;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;->traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    .line 18
    const-string p1, "TerminalActionIdRestInterceptor"

    iput-object p1, p0, Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public intercept(Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rq:",
            "Lcom/squareup/wire/Message<",
            "TRq;*>;Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain<",
            "TRq;TRsp;TErr;>;)",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;"
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;->traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->getTerminalActionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    const-string v2, "X-Terminal-Action-Id"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 29
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 31
    invoke-interface {p1, v0}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->proceed(Lokhttp3/Request;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method
