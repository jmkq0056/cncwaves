.class public final Lcom/stripe/core/stripeterminal/log/AndroidLog;
.super Ljava/lang/Object;
.source "AndroidLog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\u0016\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\"\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0016\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J.\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00042\u0017\u0010\u001a\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00100\u001b\u00a2\u0006\u0002\u0008\u001cH\u0001\u00a2\u0006\u0002\u0008\u001dJ\u0016\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\u0016\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\"\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0016\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/core/stripeterminal/log/AndroidLog;",
        "",
        "()V",
        "minLogLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "getMinLogLevel",
        "()Lcom/stripe/loggingmodels/LogLevel;",
        "setMinLogLevel",
        "(Lcom/stripe/loggingmodels/LogLevel;)V",
        "writer",
        "Lcom/stripe/logwriter/LogWriter;",
        "getWriter$stripeterminal_release",
        "()Lcom/stripe/logwriter/LogWriter;",
        "setWriter$stripeterminal_release",
        "(Lcom/stripe/logwriter/LogWriter;)V",
        "d",
        "",
        "tag",
        "",
        "message",
        "e",
        "throwable",
        "",
        "i",
        "logWithMinLevel",
        "level",
        "method",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "logWithMinLevel$stripeterminal_release",
        "v",
        "w",
        "stripeterminal_release"
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
.field public static final INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

.field private static minLogLevel:Lcom/stripe/loggingmodels/LogLevel;

.field private static writer:Lcom/stripe/logwriter/LogWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;

    invoke-direct {v0}, Lcom/stripe/core/stripeterminal/log/AndroidLog;-><init>()V

    sput-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    .line 17
    sget-object v0, Lcom/stripe/loggingmodels/LogLevel;->WARNING:Lcom/stripe/loggingmodels/LogLevel;

    sput-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->minLogLevel:Lcom/stripe/loggingmodels/LogLevel;

    .line 20
    sget-object v0, Lcom/stripe/logwriter/PlatformLogWriter;->INSTANCE:Lcom/stripe/logwriter/PlatformLogWriter;

    check-cast v0, Lcom/stripe/logwriter/LogWriter;

    sput-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->writer:Lcom/stripe/logwriter/LogWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/stripe/loggingmodels/LogLevel;->VERBOSE:Lcom/stripe/loggingmodels/LogLevel;

    new-instance v1, Lcom/stripe/core/stripeterminal/log/AndroidLog$d$1;

    invoke-direct {v1, p1, p2}, Lcom/stripe/core/stripeterminal/log/AndroidLog$d$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->logWithMinLevel$stripeterminal_release(Lcom/stripe/loggingmodels/LogLevel;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/stripe/loggingmodels/LogLevel;->ERROR:Lcom/stripe/loggingmodels/LogLevel;

    new-instance v1, Lcom/stripe/core/stripeterminal/log/AndroidLog$e$1;

    invoke-direct {v1, p1, p2}, Lcom/stripe/core/stripeterminal/log/AndroidLog$e$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->logWithMinLevel$stripeterminal_release(Lcom/stripe/loggingmodels/LogLevel;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/stripe/loggingmodels/LogLevel;->ERROR:Lcom/stripe/loggingmodels/LogLevel;

    new-instance v1, Lcom/stripe/core/stripeterminal/log/AndroidLog$e$2;

    invoke-direct {v1, p1, p2, p3}, Lcom/stripe/core/stripeterminal/log/AndroidLog$e$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->logWithMinLevel$stripeterminal_release(Lcom/stripe/loggingmodels/LogLevel;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getMinLogLevel()Lcom/stripe/loggingmodels/LogLevel;
    .locals 1

    .line 17
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->minLogLevel:Lcom/stripe/loggingmodels/LogLevel;

    return-object v0
.end method

.method public final getWriter$stripeterminal_release()Lcom/stripe/logwriter/LogWriter;
    .locals 1

    .line 20
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->writer:Lcom/stripe/logwriter/LogWriter;

    return-object v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/stripe/loggingmodels/LogLevel;->INFO:Lcom/stripe/loggingmodels/LogLevel;

    new-instance v1, Lcom/stripe/core/stripeterminal/log/AndroidLog$i$1;

    invoke-direct {v1, p1, p2}, Lcom/stripe/core/stripeterminal/log/AndroidLog$i$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->logWithMinLevel$stripeterminal_release(Lcom/stripe/loggingmodels/LogLevel;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final logWithMinLevel$stripeterminal_release(Lcom/stripe/loggingmodels/LogLevel;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/LogLevel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->minLogLevel:Lcom/stripe/loggingmodels/LogLevel;

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Lcom/stripe/loggingmodels/LogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_0

    sget-object p1, Lcom/stripe/core/stripeterminal/log/AndroidLog;->writer:Lcom/stripe/logwriter/LogWriter;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setMinLogLevel(Lcom/stripe/loggingmodels/LogLevel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sput-object p1, Lcom/stripe/core/stripeterminal/log/AndroidLog;->minLogLevel:Lcom/stripe/loggingmodels/LogLevel;

    return-void
.end method

.method public final setWriter$stripeterminal_release(Lcom/stripe/logwriter/LogWriter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sput-object p1, Lcom/stripe/core/stripeterminal/log/AndroidLog;->writer:Lcom/stripe/logwriter/LogWriter;

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/stripe/loggingmodels/LogLevel;->VERBOSE:Lcom/stripe/loggingmodels/LogLevel;

    new-instance v1, Lcom/stripe/core/stripeterminal/log/AndroidLog$v$1;

    invoke-direct {v1, p1, p2}, Lcom/stripe/core/stripeterminal/log/AndroidLog$v$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->logWithMinLevel$stripeterminal_release(Lcom/stripe/loggingmodels/LogLevel;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/stripe/loggingmodels/LogLevel;->WARNING:Lcom/stripe/loggingmodels/LogLevel;

    new-instance v1, Lcom/stripe/core/stripeterminal/log/AndroidLog$w$1;

    invoke-direct {v1, p1, p2}, Lcom/stripe/core/stripeterminal/log/AndroidLog$w$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->logWithMinLevel$stripeterminal_release(Lcom/stripe/loggingmodels/LogLevel;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/stripe/loggingmodels/LogLevel;->WARNING:Lcom/stripe/loggingmodels/LogLevel;

    new-instance v1, Lcom/stripe/core/stripeterminal/log/AndroidLog$w$2;

    invoke-direct {v1, p1, p2, p3}, Lcom/stripe/core/stripeterminal/log/AndroidLog$w$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->logWithMinLevel$stripeterminal_release(Lcom/stripe/loggingmodels/LogLevel;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/stripe/loggingmodels/LogLevel;->WARNING:Lcom/stripe/loggingmodels/LogLevel;

    new-instance v1, Lcom/stripe/core/stripeterminal/log/AndroidLog$w$3;

    invoke-direct {v1, p1, p2}, Lcom/stripe/core/stripeterminal/log/AndroidLog$w$3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->logWithMinLevel$stripeterminal_release(Lcom/stripe/loggingmodels/LogLevel;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
