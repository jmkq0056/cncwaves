.class public final Lcom/stripe/jvmcore/logging/terminal/log/DefaultLoggerFactory;
.super Ljava/lang/Object;
.source "DefaultLoggerFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u0008\u00a2\u0006\u0002\u0010\tJ$\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u00082\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLoggerFactory;",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "terminalLogger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "create",
        "clazz",
        "Lkotlin/reflect/KClass;",
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
.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
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
.method public constructor <init>(Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "logWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLoggerFactory;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 13
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLoggerFactory;->terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method


# virtual methods
.method public create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;

    .line 16
    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLoggerFactory;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 18
    iget-object v2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLoggerFactory;->terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 15
    invoke-direct {v0, v1, p1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;-><init>(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object v0
.end method
