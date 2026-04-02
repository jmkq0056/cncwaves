.class public interface abstract Lcom/stripe/loggingmodels/LoggerExceptionListener;
.super Ljava/lang/Object;
.source "LoggerExceptionListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u001c\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0010\u000b\u001a\u00060\u000cj\u0002`\rH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000e\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
        "",
        "onDispatchExceptionError",
        "",
        "fileName",
        "",
        "throwable",
        "",
        "batchSize",
        "",
        "onFileOutOfMemoryError",
        "outOfMemoryError",
        "Ljava/lang/OutOfMemoryError;",
        "Lcom/stripe/loggingmodels/OutOfMemoryError;",
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
.method public abstract onDispatchExceptionError(Ljava/lang/String;Ljava/lang/Throwable;I)V
.end method

.method public abstract onFileOutOfMemoryError(Ljava/lang/String;Ljava/lang/OutOfMemoryError;)V
.end method
