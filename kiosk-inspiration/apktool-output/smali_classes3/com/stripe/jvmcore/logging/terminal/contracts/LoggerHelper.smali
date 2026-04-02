.class public interface abstract Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;
.super Ljava/lang/Object;
.source "LoggerHelper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "R:",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0001*\u00020\u0002*\n\u0008\u0001\u0010\u0003 \u0001*\u00020\u00042\u00020\u0005J\u0015\u0010\u000e\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00020\u0010H&\u00a2\u0006\u0002\u0010\u0011R\u0012\u0010\u0006\u001a\u00028\u0000X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0012\u0010\t\u001a\u00028\u0001X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00028\u0001X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000b\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0012\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;",
        "T",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "R",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "",
        "flushTrace",
        "getFlushTrace",
        "()Lcom/stripe/loggingmodels/ApplicationTrace;",
        "flushTraceResult",
        "getFlushTraceResult",
        "()Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "interruptedTraceResult",
        "getInterruptedTraceResult",
        "duplicateTraceResult",
        "id",
        "",
        "(Ljava/lang/String;)Lcom/stripe/loggingmodels/ApplicationTraceResult;",
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


# virtual methods
.method public abstract duplicateTraceResult(Ljava/lang/String;)Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract getFlushTrace()Lcom/stripe/loggingmodels/ApplicationTrace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getFlushTraceResult()Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract getInterruptedTraceResult()Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method
