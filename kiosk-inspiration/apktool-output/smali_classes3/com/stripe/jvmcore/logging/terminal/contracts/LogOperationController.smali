.class public interface abstract Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationController;
.super Ljava/lang/Object;
.source "LogOperationController.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/LogLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Trace:",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "TraceResult:",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogLifecycleListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u00020\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0007H&J\u001d\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00028\u00012\u0006\u0010\u000b\u001a\u00020\u000cH&\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u0007H&J\u001d\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00020\u000cH&\u00a2\u0006\u0002\u0010\u0011\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0012\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationController;",
        "Trace",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "TraceResult",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogLifecycleListener;",
        "endAllOperations",
        "",
        "endLongRunningOperations",
        "endOperation",
        "applicationTraceResult",
        "identifier",
        "",
        "(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V",
        "flushPending",
        "startOperation",
        "applicationTrace",
        "(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V",
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
.method public abstract endAllOperations()V
.end method

.method public abstract endLongRunningOperations()V
.end method

.method public abstract endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTraceResult;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract flushPending()V
.end method

.method public abstract startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTrace;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
