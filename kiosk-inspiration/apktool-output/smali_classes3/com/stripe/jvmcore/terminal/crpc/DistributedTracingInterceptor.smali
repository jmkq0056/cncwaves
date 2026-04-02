.class public final Lcom/stripe/jvmcore/terminal/crpc/DistributedTracingInterceptor;
.super Ljava/lang/Object;
.source "DistributedTracingInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/crpc/DistributedTracingInterceptor;",
        "Lokhttp3/Interceptor;",
        "traceManager",
        "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
        "(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)V",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "terminal-core"
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
.field private final traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)V
    .locals 1

    const-string v0, "traceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/stripe/jvmcore/terminal/crpc/DistributedTracingInterceptor;->traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/stripe/jvmcore/terminal/crpc/DistributedTracingInterceptor;->traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->getTraceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Stripe-Action-Id"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 17
    iget-object v1, p0, Lcom/stripe/jvmcore/terminal/crpc/DistributedTracingInterceptor;->traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 18
    const-string v2, "X-Stripe-Session-Id"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 21
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
