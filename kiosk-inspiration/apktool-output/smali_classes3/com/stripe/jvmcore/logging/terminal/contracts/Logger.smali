.class public interface abstract Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;
.super Ljava/lang/Object;
.source "Logger.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Trace:",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "TraceResult:",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationController<",
        "TTrace;TTraceResult;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0005\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005JG\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2.\u0010\n\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c0\u000b\"\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cH&\u00a2\u0006\u0002\u0010\u000eJE\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2.\u0010\n\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c0\u000b\"\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cH&\u00a2\u0006\u0002\u0010\u000eJQ\u0010\u000f\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u00112.\u0010\n\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c0\u000b\"\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cH&\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0016JG\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2.\u0010\n\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c0\u000b\"\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cH&\u00a2\u0006\u0002\u0010\u000eJG\u0010\u0014\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2.\u0010\n\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c0\u000b\"\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cH&\u00a2\u0006\u0002\u0010\u000eJQ\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2.\u0010\n\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c0\u000b\"\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cH&\u00a2\u0006\u0002\u0010\u0015\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0016\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;",
        "Trace",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "TraceResult",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationController;",
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
        "i",
        "w",
        "(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V",
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
.method public static synthetic e$default(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 48
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: e"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic w$default(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 74
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: w"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public varargs abstract d(Ljava/lang/String;[Lkotlin/Pair;)V
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
.end method

.method public varargs abstract e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V
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
.end method

.method public varargs abstract e(Ljava/lang/String;[Lkotlin/Pair;)V
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
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1, v0}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method public varargs abstract i(Ljava/lang/String;[Lkotlin/Pair;)V
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
.end method

.method public varargs abstract w(Ljava/lang/String;[Lkotlin/Pair;)V
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
.end method

.method public varargs abstract w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V
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
.end method
