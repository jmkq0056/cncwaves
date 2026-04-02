.class public final Lcom/stripe/spos/sentry/http/ErrorReporterKt$toCoroutineExceptionHandler$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/spos/sentry/http/ErrorReporterKt;->toCoroutineExceptionHandler(Lcom/stripe/spos/sentry/http/ErrorReporter;)Lkotlinx/coroutines/CoroutineExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 ErrorReporter.kt\ncom/stripe/spos/sentry/http/ErrorReporterKt\n*L\n1#1,110:1\n53#2,2:111\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "handleException",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "exception",
        "",
        "kotlinx-coroutines-core"
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
.field final synthetic $this_toCoroutineExceptionHandler$inlined:Lcom/stripe/spos/sentry/http/ErrorReporter;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/stripe/spos/sentry/http/ErrorReporter;)V
    .locals 0

    iput-object p2, p0, Lcom/stripe/spos/sentry/http/ErrorReporterKt$toCoroutineExceptionHandler$$inlined$CoroutineExceptionHandler$1;->$this_toCoroutineExceptionHandler$inlined:Lcom/stripe/spos/sentry/http/ErrorReporter;

    .line 48
    check-cast p1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/stripe/spos/sentry/http/ErrorReporterKt$toCoroutineExceptionHandler$$inlined$CoroutineExceptionHandler$1;->$this_toCoroutineExceptionHandler$inlined:Lcom/stripe/spos/sentry/http/ErrorReporter;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/stripe/spos/sentry/http/ErrorReporter;->blockingReportError-gIAlu-s(Ljava/lang/Throwable;Z)Ljava/lang/Object;

    return-void
.end method
