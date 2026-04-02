.class public final Lcom/stripe/spos/sentry/http/ErrorReporterKt;
.super Ljava/lang/Object;
.source "ErrorReporter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nErrorReporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErrorReporter.kt\ncom/stripe/spos/sentry/http/ErrorReporterKt\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,56:1\n48#2,4:57\n*S KotlinDebug\n*F\n+ 1 ErrorReporter.kt\ncom/stripe/spos/sentry/http/ErrorReporterKt\n*L\n52#1:57,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "registerAsUncaughtExceptionHandler",
        "",
        "Lcom/stripe/spos/sentry/http/ErrorReporter;",
        "toCoroutineExceptionHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "sentry-http"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$M3SGt_BJ72rnvucfjcK1GN8jidA(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/spos/sentry/http/ErrorReporterKt;->registerAsUncaughtExceptionHandler$lambda$0(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w9_xwZ99dhMScQyKmJSLqN6mtpQ(Lcom/stripe/spos/sentry/http/ErrorReporter;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/stripe/spos/sentry/http/ErrorReporterKt;->registerAsUncaughtExceptionHandler$lambda$1(Lcom/stripe/spos/sentry/http/ErrorReporter;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final registerAsUncaughtExceptionHandler(Lcom/stripe/spos/sentry/http/ErrorReporter;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 33
    new-instance v0, Lcom/stripe/spos/sentry/http/ErrorReporterKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/stripe/spos/sentry/http/ErrorReporterKt$$ExternalSyntheticLambda0;-><init>()V

    .line 39
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Lcom/stripe/spos/sentry/http/ErrorReporterKt$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/stripe/spos/sentry/http/ErrorReporterKt$$ExternalSyntheticLambda1;-><init>(Lcom/stripe/spos/sentry/http/ErrorReporter;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private static final registerAsUncaughtExceptionHandler$lambda$0(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static final registerAsUncaughtExceptionHandler$lambda$1(Lcom/stripe/spos/sentry/http/ErrorReporter;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "$this_registerAsUncaughtExceptionHandler"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$currentHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-interface {p0, p3, v0}, Lcom/stripe/spos/sentry/http/ErrorReporter;->blockingReportError-gIAlu-s(Ljava/lang/Throwable;Z)Ljava/lang/Object;

    .line 41
    invoke-interface {p1, p2, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final toCoroutineExceptionHandler(Lcom/stripe/spos/sentry/http/ErrorReporter;)Lkotlinx/coroutines/CoroutineExceptionHandler;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v1, Lcom/stripe/spos/sentry/http/ErrorReporterKt$toCoroutineExceptionHandler$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v1, v0, p0}, Lcom/stripe/spos/sentry/http/ErrorReporterKt$toCoroutineExceptionHandler$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/stripe/spos/sentry/http/ErrorReporter;)V

    check-cast v1, Lkotlinx/coroutines/CoroutineExceptionHandler;

    return-object v1
.end method
