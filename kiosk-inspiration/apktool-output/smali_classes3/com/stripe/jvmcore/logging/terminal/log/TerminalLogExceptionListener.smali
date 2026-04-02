.class public final Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener;
.super Ljava/lang/Object;
.source "TerminalLogExceptionListener.kt"

# interfaces
.implements Lcom/stripe/loggingmodels/LoggerExceptionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener$Companion;,
        Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener$OutOfMemoryTrace;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00142\u00020\u0001:\u0002\u0014\u0015B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006\u00a2\u0006\u0002\u0010\u0007J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001c\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0010\u0011\u001a\u00060\u0012j\u0002`\u0013H\u0016R\u001e\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener;",
        "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
        "log",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
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
        "Companion",
        "OutOfMemoryTrace",
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


# static fields
.field public static final BATCH_SIZE_TAG:Ljava/lang/String; = "batch_size_tag"

.field public static final Companion:Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener$Companion;

.field public static final FILE_NAME_TAG:Ljava/lang/String; = "file_name"

.field public static final OOM_LOG_IDENTIFIER:Ljava/lang/String; = "oom_error"


# instance fields
.field private final log:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "log"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener;->log:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method


# virtual methods
.method public onDispatchExceptionError(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 3

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener;->log:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while dispatching log entries "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    sget-object p3, Lcom/stripe/loggingmodels/LogLevel;->NONE:Lcom/stripe/loggingmodels/LogLevel;

    .line 27
    invoke-interface {v0, p1, p3, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->log(Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFileOutOfMemoryError(Ljava/lang/String;Ljava/lang/OutOfMemoryError;)V
    .locals 3

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outOfMemoryError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener;->log:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 18
    new-instance v1, Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener$OutOfMemoryTrace;

    invoke-direct {v1, p1}, Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener$OutOfMemoryTrace;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/stripe/loggingmodels/ApplicationTrace;

    const-string p1, "oom_error"

    invoke-interface {v0, v1, p1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 20
    sget-object v1, Lcom/stripe/loggingmodels/LogLevel;->NONE:Lcom/stripe/loggingmodels/LogLevel;

    check-cast p2, Ljava/lang/Throwable;

    const-string v2, "Out of memory error in logger"

    invoke-interface {v0, v2, v1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->log(Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;)V

    .line 21
    sget-object p2, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {p2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->success()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    return-void
.end method
