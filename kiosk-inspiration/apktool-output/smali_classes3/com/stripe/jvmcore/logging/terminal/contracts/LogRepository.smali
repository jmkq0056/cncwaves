.class public interface abstract Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;
.super Ljava/lang/Object;
.source "LogRepository.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008f\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003J\u001d\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\tJ,\u0010\n\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00132\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0008\u0010\u0014\u001a\u00020\u0015H&J\u0008\u0010\u0016\u001a\u00020\u0015H&J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0017\u0010\u0018\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a2\u0006\u0002\u0010\u0019J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u001b\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;",
        "T",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;",
        "",
        "add",
        "",
        "id",
        "",
        "data",
        "(Ljava/lang/String;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;)V",
        "addLog",
        "message",
        "throwable",
        "",
        "level",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "currentTimeMillis",
        "",
        "getLongRunningOperations",
        "",
        "hasPendingLogs",
        "",
        "hasSavedOperations",
        "operationExists",
        "remove",
        "(Ljava/lang/String;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;",
        "removeAll",
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
.method public abstract add(Ljava/lang/String;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract addLog(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V
.end method

.method public abstract getLongRunningOperations(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract hasPendingLogs()Z
.end method

.method public abstract hasSavedOperations()Z
.end method

.method public abstract operationExists(Ljava/lang/String;)Z
.end method

.method public abstract remove(Ljava/lang/String;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract removeAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method
