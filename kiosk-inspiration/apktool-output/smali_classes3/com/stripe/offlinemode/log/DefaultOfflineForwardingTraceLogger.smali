.class public final Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;
.super Ljava/lang/Object;
.source "DefaultOfflineForwardingTraceLogger.kt"

# interfaces
.implements Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \'2\u00020\u0001:\u0001\'B!\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008JG\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2.\u0010\r\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016\u00a2\u0006\u0002\u0010\u0011JE\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2.\u0010\r\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016\u00a2\u0006\u0002\u0010\u0011JO\u0010\u0012\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0013\u001a\u00020\u00142.\u0010\r\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016\u00a2\u0006\u0002\u0010\u0015J\u0008\u0010\u0016\u001a\u00020\nH\u0016J\u0008\u0010\u0017\u001a\u00020\nH\u0016J\u0018\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J\u001c\u0010\u0018\u001a\u00020\n2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\u001c\u001a\u00020\nH\u0016J\u0008\u0010\u001d\u001a\u00020\nH\u0016JG\u0010\u001e\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2.\u0010\r\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u001f\u001a\u00020\nH\u0016J\u0018\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u000cH\u0016J\u0010\u0010 \u001a\u00020\n2\u0006\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020\nH\u0016JG\u0010%\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2.\u0010\r\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016\u00a2\u0006\u0002\u0010\u0011JO\u0010%\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2.\u0010\r\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016\u00a2\u0006\u0002\u0010&R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;",
        "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;",
        "Lcom/stripe/offlinemode/log/OfflineTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "traceManager",
        "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
        "(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;)V",
        "d",
        "",
        "message",
        "",
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
        "error",
        "endSession",
        "flushPending",
        "i",
        "onShutDown",
        "startOperation",
        "applicationTrace",
        "forwardingTrace",
        "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;",
        "startSession",
        "w",
        "(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V",
        "Companion",
        "offlinemode_release"
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
.field public static final Companion:Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger$Companion;

.field private static final ID:Ljava/lang/String; = "offline_forwarding_trace"


# instance fields
.field private final logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "Lcom/stripe/offlinemode/log/OfflineTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final traceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->Companion:Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "Lcom/stripe/offlinemode/log/OfflineTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
            ")V"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    .line 13
    iput-object p2, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->traceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    return-void
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

    .line 58
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
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

    .line 42
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
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

    .line 62
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public endAllOperations()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->endAllOperations()V

    return-void
.end method

.method public endLongRunningOperations()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->endLongRunningOperations()V

    return-void
.end method

.method public endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V
    .locals 1

    const-string v0, "applicationTraceResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    return-void
.end method

.method public endOperation(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 86
    const-string v0, "offline_forwarding_trace"

    if-eqz p1, :cond_0

    sget-object p2, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {p2, p1}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->failure(Ljava/lang/Throwable;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 87
    sget-object p1, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {p1, p2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->failure(Ljava/lang/String;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_1
    sget-object p1, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {p1}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->success()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized endSession()V
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->endAllOperations()V

    .line 23
    invoke-virtual {p0}, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->flushPending()V

    .line 25
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->traceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    invoke-interface {v0}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;->endSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public flushPending()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->flushPending()V

    return-void
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

    .line 54
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public onShutDown()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->onShutDown()V

    return-void
.end method

.method public bridge synthetic startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/stripe/offlinemode/log/OfflineTrace;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->startOperation(Lcom/stripe/offlinemode/log/OfflineTrace;Ljava/lang/String;)V

    return-void
.end method

.method public startOperation(Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;)V
    .locals 1

    const-string v0, "forwardingTrace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p1, Lcom/stripe/offlinemode/log/OfflineTrace;

    const-string v0, "offline_forwarding_trace"

    invoke-virtual {p0, p1, v0}, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->startOperation(Lcom/stripe/offlinemode/log/OfflineTrace;Ljava/lang/String;)V

    return-void
.end method

.method public startOperation(Lcom/stripe/offlinemode/log/OfflineTrace;Ljava/lang/String;)V
    .locals 1

    const-string v0, "applicationTrace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    check-cast p1, Lcom/stripe/loggingmodels/ApplicationTrace;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    return-void
.end method

.method public startSession()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->traceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    invoke-interface {v0}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;->startSession()V

    return-void
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

    .line 50
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
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

    .line 46
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineForwardingTraceLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lkotlin/Pair;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method
