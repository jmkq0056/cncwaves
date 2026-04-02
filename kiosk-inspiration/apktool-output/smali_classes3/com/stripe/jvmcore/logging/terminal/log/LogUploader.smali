.class public interface abstract Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;
.super Ljava/lang/Object;
.source "LogUploader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H&J\u0016\u0010\u0007\u001a\u00020\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0005H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\n\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;",
        "",
        "uploadEvents",
        "Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;",
        "events",
        "",
        "Lcom/stripe/jvmcore/logging/terminal/log/Event;",
        "uploadTraces",
        "spans",
        "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
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


# virtual methods
.method public abstract uploadEvents(Ljava/util/List;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/logging/terminal/log/Event;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;"
        }
    .end annotation
.end method

.method public abstract uploadTraces(Ljava/util/List;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;"
        }
    .end annotation
.end method
