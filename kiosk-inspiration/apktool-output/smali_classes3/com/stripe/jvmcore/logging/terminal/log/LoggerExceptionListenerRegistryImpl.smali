.class public final Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;
.super Ljava/lang/Object;
.source "LoggerExceptionListenerRegistryImpl.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerExceptionListenerRegistry;
.implements Lcom/stripe/loggingmodels/LoggerExceptionListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoggerExceptionListenerRegistryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoggerExceptionListenerRegistryImpl.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1855#2,2:36\n*S KotlinDebug\n*F\n+ 1 LoggerExceptionListenerRegistryImpl.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl\n*L\n25#1:36,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J!\u0010\u0007\u001a\u00020\u00082\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0008\u000bH\u0002J \u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001c\u0010\u0013\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\n\u0010\u0014\u001a\u00060\u0015j\u0002`\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0002H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerExceptionListenerRegistry;",
        "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
        "listeners",
        "",
        "(Ljava/util/Set;)V",
        "",
        "notifyAll",
        "",
        "action",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "onDispatchExceptionError",
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
        "registerListener",
        "listener",
        "unregisterListener",
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
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;->listeners:Ljava/util/Set;

    return-void
.end method

.method private final notifyAll(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;->listeners:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/LoggerExceptionListener;

    .line 25
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onDispatchExceptionError(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 1

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl$onDispatchExceptionError$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl$onDispatchExceptionError$1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onFileOutOfMemoryError(Ljava/lang/String;Ljava/lang/OutOfMemoryError;)V
    .locals 1

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outOfMemoryError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl$onFileOutOfMemoryError$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl$onFileOutOfMemoryError$1;-><init>(Ljava/lang/String;Ljava/lang/OutOfMemoryError;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;->notifyAll(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public registerListener(Lcom/stripe/loggingmodels/LoggerExceptionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterListener(Lcom/stripe/loggingmodels/LoggerExceptionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
