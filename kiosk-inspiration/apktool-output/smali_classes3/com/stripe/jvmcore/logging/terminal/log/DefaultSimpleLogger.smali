.class public Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;
.super Ljava/lang/Object;
.source "DefaultSimpleLogger.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Trace:",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "TraceResult:",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
        "TTrace;TTraceResult;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultSimpleLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSimpleLogger.kt\ncom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,122:1\n13309#2,2:123\n*S KotlinDebug\n*F\n+ 1 DefaultSimpleLogger.kt\ncom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger\n*L\n87#1:123,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0013\u0008\u0016\u0018\u0000 \'*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005:\u0001\'B\u0015\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJG\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072.\u0010\u000e\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f\"\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0016\u00a2\u0006\u0002\u0010\u0012JE\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00072.\u0010\u000e\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f\"\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0016\u00a2\u0006\u0002\u0010\u0012JO\u0010\u0013\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u00020\u00152.\u0010\u000e\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f\"\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u000cH\u0016J\u0008\u0010\u0018\u001a\u00020\u000cH\u0016J\u001d\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00028\u00012\u0006\u0010\u001b\u001a\u00020\u0007H\u0016\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010\u001d\u001a\u00020\u000cH\u0016J5\u0010\u001e\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u001c\u0010\u000e\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000fH\u0002\u00a2\u0006\u0002\u0010\u001fJG\u0010 \u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072.\u0010\u000e\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f\"\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0016\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010!\u001a\u00020\u000cH\u0016J\u001d\u0010\"\u001a\u00020\u000c2\u0006\u0010#\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00020\u0007H\u0016\u00a2\u0006\u0002\u0010$JG\u0010%\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072.\u0010\u000e\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f\"\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0016\u00a2\u0006\u0002\u0010\u0012JO\u0010%\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072.\u0010\u000e\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f\"\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0016\u00a2\u0006\u0002\u0010&R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;",
        "Trace",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "TraceResult",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "className",
        "",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;)V",
        "d",
        "",
        "message",
        "keyValuePairs",
        "",
        "Lkotlin/Pair;",
        "",
        "(Ljava/lang/String;[Lkotlin/Pair;)V",
        "e",
        "t",
        "",
        "(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V",
        "endAllOperations",
        "endLongRunningOperations",
        "endOperation",
        "applicationTraceResult",
        "identifier",
        "(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V",
        "flushPending",
        "formatMessage",
        "(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;",
        "i",
        "onShutDown",
        "startOperation",
        "applicationTrace",
        "(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V",
        "w",
        "(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V",
        "Companion",
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
.field public static final Companion:Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger$Companion;

.field private static final TAG:Ljava/lang/String; = "StripeTerminal"


# instance fields
.field private final className:Ljava/lang/String;

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;)V
    .locals 1

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->className:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-void
.end method

.method private final formatMessage(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "class="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 83
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 84
    const-string v1, " message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    .line 87
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    .line 89
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    invoke-static {v3}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public varargs declared-synchronized d(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "keyValuePairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->formatMessage(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v2

    .line 74
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->logWriter:Lcom/stripe/logwriter/LogWriter;

    const-string p2, "StripeTerminal"

    invoke-interface {p1, p2, v2}, Lcom/stripe/logwriter/LogWriter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    move-object v1, p0

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    sget-object v3, Lcom/stripe/loggingmodels/LogLevel;->VERBOSE:Lcom/stripe/loggingmodels/LogLevel;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->log$default(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs declared-synchronized e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValuePairs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1, p3}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->formatMessage(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object p1

    .line 39
    iget-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->logWriter:Lcom/stripe/logwriter/LogWriter;

    const-string v0, "StripeTerminal"

    invoke-interface {p3, v0, p1, p2}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    sget-object p3, Lcom/stripe/loggingmodels/LogLevel;->ERROR:Lcom/stripe/loggingmodels/LogLevel;

    invoke-virtual {p0, p1, p3, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->log(Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs declared-synchronized e(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValuePairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->formatMessage(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v2

    .line 46
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->logWriter:Lcom/stripe/logwriter/LogWriter;

    const-string p2, "StripeTerminal"

    invoke-interface {p1, p2, v2}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    move-object v1, p0

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    sget-object v3, Lcom/stripe/loggingmodels/LogLevel;->ERROR:Lcom/stripe/loggingmodels/LogLevel;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->log$default(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public endAllOperations()V
    .locals 2

    const/4 v0, 0x0

    .line 103
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "End all operations does nothing"

    invoke-virtual {p0, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public endLongRunningOperations()V
    .locals 2

    const/4 v0, 0x0

    .line 115
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "end long running operation does nothing"

    invoke-virtual {p0, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTraceResult;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "applicationTraceResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "identifier"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "End operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", does nothing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlin/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public flushPending()V
    .locals 2

    const/4 v0, 0x0

    .line 107
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "Flush pending does nothing"

    invoke-virtual {p0, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public varargs declared-synchronized i(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "keyValuePairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->formatMessage(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v2

    .line 67
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->logWriter:Lcom/stripe/logwriter/LogWriter;

    const-string p2, "StripeTerminal"

    invoke-interface {p1, p2, v2}, Lcom/stripe/logwriter/LogWriter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    move-object v1, p0

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    sget-object v3, Lcom/stripe/loggingmodels/LogLevel;->INFO:Lcom/stripe/loggingmodels/LogLevel;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->log$default(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onShutDown()V
    .locals 2

    const/4 v0, 0x0

    .line 111
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "Shut down does nothing"

    invoke-virtual {p0, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTrace;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "applicationTrace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "identifier"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Start operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", does nothing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlin/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public varargs declared-synchronized w(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "keyValuePairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->formatMessage(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v2

    .line 60
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->logWriter:Lcom/stripe/logwriter/LogWriter;

    const-string p2, "StripeTerminal"

    invoke-interface {p1, p2, v2}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    move-object v1, p0

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    sget-object v3, Lcom/stripe/loggingmodels/LogLevel;->WARNING:Lcom/stripe/loggingmodels/LogLevel;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->log$default(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs declared-synchronized w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValuePairs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->formatMessage(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object p2

    .line 53
    iget-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->logWriter:Lcom/stripe/logwriter/LogWriter;

    const-string v0, "StripeTerminal"

    invoke-interface {p3, v0, p2, p1}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    sget-object p3, Lcom/stripe/loggingmodels/LogLevel;->WARNING:Lcom/stripe/loggingmodels/LogLevel;

    invoke-virtual {p0, p2, p3, p1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->log(Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
