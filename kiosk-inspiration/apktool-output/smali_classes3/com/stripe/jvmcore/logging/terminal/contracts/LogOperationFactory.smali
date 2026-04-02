.class public interface abstract Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;
.super Ljava/lang/Object;
.source "LogOperationFactory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "L::Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation<",
        "T",
        "L;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008f\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0000*\u00020\u0002*\u000e\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u00020\u0005J\u0015\u0010\u0006\u001a\u00028\u00012\u0006\u0010\u0007\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0008\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\t\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;",
        "T",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "L",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;",
        "",
        "create",
        "request",
        "(Lcom/stripe/loggingmodels/ApplicationTrace;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;",
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
.method public abstract create(Lcom/stripe/loggingmodels/ApplicationTrace;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)T",
            "L;"
        }
    .end annotation
.end method
