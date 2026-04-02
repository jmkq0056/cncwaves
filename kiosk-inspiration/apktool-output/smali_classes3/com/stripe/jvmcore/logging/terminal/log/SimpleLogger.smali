.class public interface abstract Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
.super Ljava/lang/Object;
.source "SimpleLogger.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Trace:",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "TraceResult:",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
        "TTrace;TTraceResult;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005J&\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000e\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Trace",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "TraceResult",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;",
        "log",
        "",
        "message",
        "",
        "logLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "throwable",
        "",
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


# direct methods
.method public static synthetic log$default(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 16
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->log(Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: log"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public log(Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "logLevel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
