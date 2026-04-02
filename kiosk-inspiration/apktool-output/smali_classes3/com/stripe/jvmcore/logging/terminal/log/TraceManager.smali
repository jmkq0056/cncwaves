.class public final Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;
.super Ljava/lang/Object;
.source "TraceManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0008\u0010\u0017\u001a\u00020\u0006H\u0002J\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u0004J\u0010\u0010\u001a\u001a\u00020\u00152\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\t\"\u0004\u0008\u000c\u0010\rR\"\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\tR\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\t\"\u0004\u0008\u0013\u0010\r\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
        "",
        "()V",
        "_serialNumber",
        "",
        "_traceId",
        "",
        "serialNumber",
        "getSerialNumber",
        "()Ljava/lang/String;",
        "sessionId",
        "getSessionId",
        "setSessionId",
        "(Ljava/lang/String;)V",
        "<set-?>",
        "terminalActionId",
        "getTerminalActionId",
        "traceId",
        "getTraceId",
        "setTraceId",
        "endAction",
        "",
        "endSession",
        "newSessionId",
        "nextTraceId",
        "startAction",
        "startSession",
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
.field private _serialNumber:Ljava/lang/String;

.field private _traceId:J

.field private sessionId:Ljava/lang/String;

.field private terminalActionId:Ljava/lang/String;

.field private traceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-direct {p0}, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->newSessionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->_traceId:J

    .line 15
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->nextTraceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->traceId:Ljava/lang/String;

    return-void
.end method

.method private final newSessionId()J
    .locals 4

    .line 44
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextDouble()D

    move-result-wide v0

    const v2, 0x5f5e100

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public final endAction()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->terminalActionId:Ljava/lang/String;

    return-void
.end method

.method public final endSession()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->_serialNumber:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->_serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTerminalActionId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->terminalActionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTraceId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public final nextTraceId()Ljava/lang/String;
    .locals 4

    .line 21
    iget-wide v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->_traceId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->_traceId:J

    .line 22
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public final setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public final setTraceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->traceId:Ljava/lang/String;

    return-void
.end method

.method public final startAction(Ljava/lang/String;)V
    .locals 1

    const-string v0, "terminalActionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->terminalActionId:Ljava/lang/String;

    return-void
.end method

.method public final startSession(Ljava/lang/String;)V
    .locals 2

    .line 27
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->_serialNumber:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->newSessionId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->sessionId:Ljava/lang/String;

    return-void
.end method
