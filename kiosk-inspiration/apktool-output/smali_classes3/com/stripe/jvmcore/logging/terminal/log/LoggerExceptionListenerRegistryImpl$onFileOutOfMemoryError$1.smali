.class final Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl$onFileOutOfMemoryError$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LoggerExceptionListenerRegistryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;->onFileOutOfMemoryError(Ljava/lang/String;Ljava/lang/OutOfMemoryError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $outOfMemoryError:Ljava/lang/OutOfMemoryError;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/OutOfMemoryError;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl$onFileOutOfMemoryError$1;->$fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl$onFileOutOfMemoryError$1;->$outOfMemoryError:Ljava/lang/OutOfMemoryError;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lcom/stripe/loggingmodels/LoggerExceptionListener;

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl$onFileOutOfMemoryError$1;->invoke(Lcom/stripe/loggingmodels/LoggerExceptionListener;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/loggingmodels/LoggerExceptionListener;)V
    .locals 2

    const-string v0, "$this$notifyAll"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl$onFileOutOfMemoryError$1;->$fileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl$onFileOutOfMemoryError$1;->$outOfMemoryError:Ljava/lang/OutOfMemoryError;

    invoke-interface {p1, v0, v1}, Lcom/stripe/loggingmodels/LoggerExceptionListener;->onFileOutOfMemoryError(Ljava/lang/String;Ljava/lang/OutOfMemoryError;)V

    return-void
.end method
