.class public final Lcom/stripe/stripeterminal/TerminalExtensionsKt;
.super Ljava/lang/Object;
.source "TerminalExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u001a@\u0010\u0007\u001a\u00020\u0001*\u00020\u00062\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u001a@\u0010\u0013\u001a\u00020\u0001*\u00020\u00062\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0012\u001a$\u0010\u0015\u001a\u00020\u0016*\u00020\u00172\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0018"
    }
    d2 = {
        "deleteIfExists",
        "Lkotlinx/coroutines/Job;",
        "legacyTracesFile",
        "Lkotlin/Function0;",
        "Ljava/io/File;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "autoSubmitLoop",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "intervalDelay",
        "Lkotlin/time/Duration;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "autoSubmitLoop-exY8QGI",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;JLkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/Job;",
        "flushPendingLogsLoop",
        "flushPendingLogsLoop-exY8QGI",
        "initLoggers",
        "",
        "Lcom/stripe/stripeterminal/TerminalComponent;",
        "sdkmanager_publish"
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
.method public static final autoSubmitLoop-exY8QGI(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;JLkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/Job;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;J",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ")",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    const-string v0, "$this$autoSubmitLoop"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    move-object v2, p4

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance p4, Lcom/stripe/stripeterminal/TerminalExtensionsKt$autoSubmitLoop$1;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/stripe/stripeterminal/TerminalExtensionsKt$autoSubmitLoop$1;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;JLkotlin/coroutines/Continuation;)V

    move-object v4, p4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic autoSubmitLoop-exY8QGI$default(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;JLkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 71
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    .line 68
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/TerminalExtensionsKt;->autoSubmitLoop-exY8QGI(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;JLkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method private static final deleteIfExists(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/stripe/stripeterminal/TerminalExtensionsKt$deleteIfExists$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/stripeterminal/TerminalExtensionsKt$deleteIfExists$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static final flushPendingLogsLoop-exY8QGI(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;JLkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/Job;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;J",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ")",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    const-string v0, "$this$flushPendingLogsLoop"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v2, p4

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance p4, Lcom/stripe/stripeterminal/TerminalExtensionsKt$flushPendingLogsLoop$1;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/stripe/stripeterminal/TerminalExtensionsKt$flushPendingLogsLoop$1;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;JLkotlin/coroutines/Continuation;)V

    move-object v4, p4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic flushPendingLogsLoop-exY8QGI$default(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;JLkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 52
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    .line 49
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/TerminalExtensionsKt;->flushPendingLogsLoop-exY8QGI(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;JLkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static final initLoggers(Lcom/stripe/stripeterminal/TerminalComponent;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/TerminalComponent;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyTracesFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lcom/stripe/stripeterminal/TerminalComponent;->getLogInitializer()Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;

    move-result-object p0

    invoke-interface {p0}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;->initialize()V

    .line 23
    invoke-static {p1, p2}, Lcom/stripe/stripeterminal/TerminalExtensionsKt;->deleteIfExists(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic initLoggers$default(Lcom/stripe/stripeterminal/TerminalComponent;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 19
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    .line 17
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/stripe/stripeterminal/TerminalExtensionsKt;->initLoggers(Lcom/stripe/stripeterminal/TerminalComponent;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method
