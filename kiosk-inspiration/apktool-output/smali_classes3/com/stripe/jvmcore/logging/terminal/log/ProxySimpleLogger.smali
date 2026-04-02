.class public final Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;
.super Ljava/lang/Object;
.source "ProxySimpleLogger.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001\u00a2\u0006\u0002\u0010\u0005JG\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2.\u0010\r\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016\u00a2\u0006\u0002\u0010\u0011JE\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2.\u0010\r\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016\u00a2\u0006\u0002\u0010\u0011JO\u0010\u0012\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0013\u001a\u00020\u00142.\u0010\r\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016\u00a2\u0006\u0002\u0010\u0015J\u0008\u0010\u0016\u001a\u00020\nH\u0016J\u0008\u0010\u0017\u001a\u00020\nH\u0016J\u0018\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J\u0008\u0010\u001b\u001a\u00020\nH\u0016JG\u0010\u001c\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2.\u0010\r\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016\u00a2\u0006\u0002\u0010\u0011J$\u0010\u001d\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010!\u001a\u00020\nH\u0016J\u0018\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u000cH\u0016JG\u0010$\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2.\u0010\r\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016\u00a2\u0006\u0002\u0010\u0011JO\u0010$\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2.\u0010\r\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016\u00a2\u0006\u0002\u0010%R&\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "logger",
        "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "getLogger",
        "()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "setLogger",
        "d",
        "",
        "message",
        "",
        "keyValuePairs",
        "",
        "Lkotlin/Pair;",
        "",
        "(Ljava/lang/String;[Lkotlin/Pair;)V",
        "e",
        "t",
        "",
        "(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V",
        "endAllOperations",
        "endLongRunningOperations",
        "endOperation",
        "applicationTraceResult",
        "identifier",
        "flushPending",
        "i",
        "log",
        "logLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "throwable",
        "onShutDown",
        "startOperation",
        "applicationTrace",
        "w",
        "(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V",
        "impl_release"
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
.field private logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
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
.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keyValuePairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValuePairs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValuePairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public endAllOperations()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endAllOperations()V

    return-void
.end method

.method public endLongRunningOperations()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endLongRunningOperations()V

    return-void
.end method

.method public endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V
    .locals 1

    const-string v0, "applicationTraceResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    return-void
.end method

.method public flushPending()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->flushPending()V

    return-void
.end method

.method public final getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object v0
.end method

.method public varargs i(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keyValuePairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public log(Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "logLevel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->log(Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onShutDown()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->onShutDown()V

    return-void
.end method

.method public final setLogger(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V
    .locals 1

    const-string v0, "applicationTrace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    return-void
.end method

.method public varargs w(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keyValuePairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValuePairs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method
