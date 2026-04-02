.class public final Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;
.super Ljava/lang/Object;
.source "DisconnectReasonRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$Companion;,
        Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$RecordedDisconnectReason;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u0000 \u00142\u00020\u0001:\u0002\u0014\u0015B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
        "",
        "clock",
        "Lcom/stripe/time/Clock;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "disconnectReason",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$RecordedDisconnectReason;",
        "clearDisconnectReason",
        "",
        "consumeDisconnectReason",
        "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "now",
        "",
        "setDisconnectReason",
        "reason",
        "Companion",
        "RecordedDisconnectReason",
        "adapter_release"
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
.field private static final Companion:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$Companion;

.field private static final DISCONNECT_REASON_LIFETIME:J


# instance fields
.field private final clock:Lcom/stripe/time/Clock;

.field private disconnectReason:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$RecordedDisconnectReason;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
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

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->Companion:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$Companion;

    .line 68
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v0, 0x5

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->DISCONNECT_REASON_LIFETIME:J

    return-void
.end method

.method public constructor <init>(Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->clock:Lcom/stripe/time/Clock;

    .line 27
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public static final synthetic access$getDISCONNECT_REASON_LIFETIME$cp()J
    .locals 2

    .line 25
    sget-wide v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->DISCONNECT_REASON_LIFETIME:J

    return-wide v0
.end method

.method private final now()J
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v0}, Lcom/stripe/time/Clock;->elapsedTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final clearDisconnectReason()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Disconnect reason cleared"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->disconnectReason:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$RecordedDisconnectReason;

    return-void
.end method

.method public final consumeDisconnectReason()Lcom/stripe/stripeterminal/external/models/DisconnectReason;
    .locals 7

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->disconnectReason:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$RecordedDisconnectReason;

    if-nez v0, :cond_0

    sget-object v0, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->disconnectReason:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$RecordedDisconnectReason;

    .line 41
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->now()J

    move-result-wide v1

    .line 42
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$RecordedDisconnectReason;->getTime()J

    move-result-wide v3

    sub-long v3, v1, v3

    sget-wide v5, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->DISCONNECT_REASON_LIFETIME:J

    invoke-static {v5, v6}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 43
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Disconnect reason recorded, but already expired by "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 44
    sget-object v0, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    return-object v0

    .line 46
    :cond_1
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Disconnect reason consumed at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Lkotlin/Pair;

    invoke-interface {v3, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 47
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$RecordedDisconnectReason;->getReason()Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    move-result-object v0

    return-object v0
.end method

.method public final setDisconnectReason(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 5

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->now()J

    move-result-wide v0

    .line 33
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Disconnect reason set to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lkotlin/Pair;

    invoke-interface {v2, v3, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 34
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$RecordedDisconnectReason;

    invoke-direct {v2, p1, v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$RecordedDisconnectReason;-><init>(Lcom/stripe/stripeterminal/external/models/DisconnectReason;J)V

    iput-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->disconnectReason:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$RecordedDisconnectReason;

    return-void
.end method
