.class public final Lcom/stripe/jvmcore/logging/terminal/log/Log;
.super Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;
.source "Log.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger<",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Log.kt\ncom/stripe/jvmcore/logging/terminal/log/Log\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,161:1\n1#2:162\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 (2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001(B/\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\tj\u0002`\n\u00a2\u0006\u0002\u0010\u000bJG\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00052.\u0010\u000f\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00110\u0010\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016\u00a2\u0006\u0002\u0010\u0013JE\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052.\u0010\u000f\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00110\u0010\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016\u00a2\u0006\u0002\u0010\u0013JO\u0010\u0014\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u00162.\u0010\u000f\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00110\u0010\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016\u00a2\u0006\u0002\u0010\u0017J\u0008\u0010\u0018\u001a\u00020\rH\u0016J\u0008\u0010\u0019\u001a\u00020\rH\u0016J\u0018\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0005H\u0016J\u0008\u0010\u001d\u001a\u00020\rH\u0016JG\u0010\u001e\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00052.\u0010\u000f\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00110\u0010\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016\u00a2\u0006\u0002\u0010\u0013J$\u0010\u001f\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010#\u001a\u00020\rH\u0016J\u0018\u0010$\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0005H\u0016JG\u0010&\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00052.\u0010\u000f\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00110\u0010\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016\u00a2\u0006\u0002\u0010\u0013JO\u0010&\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00052.\u0010\u000f\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00110\u0010\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0016\u00a2\u0006\u0002\u0010\'R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\tj\u0002`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/Log;",
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "className",
        "",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "terminalLogger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
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
        "flushPending",
        "i",
        "log",
        "logLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "throwable",
        "onShutDown",
        "startOperation",
        "applicationTrace",
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
.field public static final Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

.field private static final legacyProxyLogWriter:Lcom/stripe/logwriter/ProxyLogWriter;

.field private static final legacyProxySimpleLogger:Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;


# instance fields
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
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    .line 120
    new-instance v0, Lcom/stripe/logwriter/DefaultProxyLogWriter;

    .line 121
    new-instance v1, Lcom/stripe/logwriter/TerminalLogWriter;

    sget-object v2, Lcom/stripe/loggingmodels/LogLevel;->VERBOSE:Lcom/stripe/loggingmodels/LogLevel;

    sget-object v3, Lcom/stripe/logwriter/PlatformLogWriter;->INSTANCE:Lcom/stripe/logwriter/PlatformLogWriter;

    check-cast v3, Lcom/stripe/logwriter/LogWriter;

    invoke-direct {v1, v2, v3}, Lcom/stripe/logwriter/TerminalLogWriter;-><init>(Lcom/stripe/loggingmodels/LogLevel;Lcom/stripe/logwriter/LogWriter;)V

    check-cast v1, Lcom/stripe/logwriter/LogWriter;

    .line 120
    invoke-direct {v0, v1}, Lcom/stripe/logwriter/DefaultProxyLogWriter;-><init>(Lcom/stripe/logwriter/LogWriter;)V

    check-cast v0, Lcom/stripe/logwriter/ProxyLogWriter;

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->legacyProxyLogWriter:Lcom/stripe/logwriter/ProxyLogWriter;

    .line 130
    new-instance v1, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;

    .line 131
    new-instance v2, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;

    .line 132
    const-string v3, "_"

    .line 133
    check-cast v0, Lcom/stripe/logwriter/LogWriter;

    .line 131
    invoke-direct {v2, v3, v0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;-><init>(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;)V

    check-cast v2, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 130
    invoke-direct {v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    sput-object v1, Lcom/stripe/jvmcore/logging/terminal/log/Log;->legacyProxySimpleLogger:Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;-><init>(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;)V

    .line 37
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public static final synthetic access$getLegacyProxyLogWriter$cp()Lcom/stripe/logwriter/ProxyLogWriter;
    .locals 1

    .line 34
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->legacyProxyLogWriter:Lcom/stripe/logwriter/ProxyLogWriter;

    return-object v0
.end method

.method public static final synthetic access$getLegacyProxySimpleLogger$cp()Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;
    .locals 1

    .line 34
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->legacyProxySimpleLogger:Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;

    return-object v0
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 2
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

    const-string v0, "keyValuePairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    monitor-enter v0

    :try_start_0
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-super {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V
    .locals 2
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

    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValuePairs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    monitor-enter v0

    :try_start_0
    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lkotlin/Pair;

    invoke-super {p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public varargs e(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 2
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

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValuePairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    monitor-enter v0

    :try_start_0
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-super {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public endAllOperations()V
    .locals 2

    .line 88
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endAllOperations()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public endLongRunningOperations()V
    .locals 2

    .line 110
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endLongRunningOperations()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V
    .locals 2

    const-string v0, "applicationTraceResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v1, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public flushPending()V
    .locals 2

    .line 98
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->flushPending()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public varargs i(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 2
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

    const-string v0, "keyValuePairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    monitor-enter v0

    :try_start_0
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-super {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public log(Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "logLevel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v1, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->log(Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public onShutDown()V
    .locals 2

    .line 102
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->onShutDown()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V
    .locals 2

    const-string v0, "applicationTrace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {v1, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public varargs w(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 2
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

    const-string v0, "keyValuePairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    monitor-enter v0

    :try_start_0
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-super {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 2
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

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValuePairs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    monitor-enter v0

    :try_start_0
    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lkotlin/Pair;

    invoke-super {p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
