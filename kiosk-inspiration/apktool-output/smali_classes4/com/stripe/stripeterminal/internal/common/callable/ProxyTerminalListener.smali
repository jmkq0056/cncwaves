.class public final Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;
.super Ljava/lang/Object;
.source "ProxyTerminalListener.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/TerminalListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000eH\u0016J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0001R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;",
        "Lcom/stripe/stripeterminal/external/callable/TerminalListener;",
        "listener",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "onConnectionStatusChange",
        "",
        "status",
        "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;",
        "onPaymentStatusChange",
        "Lcom/stripe/stripeterminal/external/models/PaymentStatus;",
        "setListener",
        "public_release"
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
.field private listener:Lcom/stripe/stripeterminal/external/callable/TerminalListener;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/callable/TerminalListener;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;->listener:Lcom/stripe/stripeterminal/external/callable/TerminalListener;

    .line 15
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method


# virtual methods
.method public onConnectionStatusChange(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V
    .locals 4

    const-string v0, "onConnectionStatusChange("

    const-string v1, "status"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Lkotlin/Pair;

    invoke-interface {v2, v0, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 21
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;->listener:Lcom/stripe/stripeterminal/external/callable/TerminalListener;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/TerminalListener;->onConnectionStatusChange(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Unexpected failure in TerminalListener.onConnectionStatusChange"

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public onPaymentStatusChange(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V
    .locals 4

    const-string v0, "onPaymentStatusChange("

    const-string v1, "status"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 29
    :try_start_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Lkotlin/Pair;

    invoke-interface {v2, v0, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 30
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;->listener:Lcom/stripe/stripeterminal/external/callable/TerminalListener;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/TerminalListener;->onPaymentStatusChange(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 32
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast p1, Ljava/lang/Throwable;

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Unexpected failure in TerminalListener.onPaymentStatusChange"

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public final setListener(Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;->listener:Lcom/stripe/stripeterminal/external/callable/TerminalListener;

    return-void
.end method
