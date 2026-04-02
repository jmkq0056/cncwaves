.class public interface abstract Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;
.super Ljava/lang/Object;
.source "LogOperationCollector.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "L::Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation<",
        "T",
        "L;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0000*\u00020\u0002*\u000e\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u00020\u0005J%\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00028\u00002\u0006\u0010\t\u001a\u00028\u00012\u0006\u0010\n\u001a\u00020\u000bH&\u00a2\u0006\u0002\u0010\u000c\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\r\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;",
        "T",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "L",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;",
        "",
        "collect",
        "",
        "result",
        "data",
        "isComplete",
        "",
        "(Lcom/stripe/loggingmodels/ApplicationTraceResult;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;Z)V",
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
.method public abstract collect(Lcom/stripe/loggingmodels/ApplicationTraceResult;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;T",
            "L;",
            "Z)V"
        }
    .end annotation
.end method
