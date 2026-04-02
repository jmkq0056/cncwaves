.class public final Lcom/stripe/offlinemode/log/OfflineTraceHelper;
.super Ljava/lang/Object;
.source "OfflineTraceHelper.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
        "Lcom/stripe/offlinemode/log/OfflineTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/offlinemode/log/OfflineTraceHelper;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;",
        "Lcom/stripe/offlinemode/log/OfflineTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "()V",
        "flushTrace",
        "Lcom/stripe/offlinemode/log/OfflineTrace$Flush;",
        "getFlushTrace",
        "()Lcom/stripe/offlinemode/log/OfflineTrace$Flush;",
        "flushTraceResult",
        "getFlushTraceResult",
        "()Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "interruptedTraceResult",
        "getInterruptedTraceResult",
        "duplicateTraceResult",
        "id",
        "",
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


# instance fields
.field private final flushTrace:Lcom/stripe/offlinemode/log/OfflineTrace$Flush;

.field private final flushTraceResult:Lcom/stripe/loggingmodels/ApplicationTraceResult;

.field private final interruptedTraceResult:Lcom/stripe/loggingmodels/ApplicationTraceResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->success()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTraceHelper;->flushTraceResult:Lcom/stripe/loggingmodels/ApplicationTraceResult;

    .line 14
    sget-object v0, Lcom/stripe/offlinemode/log/OfflineTrace$Flush;->INSTANCE:Lcom/stripe/offlinemode/log/OfflineTrace$Flush;

    iput-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTraceHelper;->flushTrace:Lcom/stripe/offlinemode/log/OfflineTrace$Flush;

    .line 15
    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->interrupted()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTraceHelper;->interruptedTraceResult:Lcom/stripe/loggingmodels/ApplicationTraceResult;

    return-void
.end method


# virtual methods
.method public duplicateTraceResult(Ljava/lang/String;)Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Started new operation for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " without ending the old one"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->failure(Ljava/lang/String;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFlushTrace()Lcom/stripe/loggingmodels/ApplicationTrace;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/stripe/offlinemode/log/OfflineTraceHelper;->getFlushTrace()Lcom/stripe/offlinemode/log/OfflineTrace$Flush;

    move-result-object v0

    check-cast v0, Lcom/stripe/loggingmodels/ApplicationTrace;

    return-object v0
.end method

.method public getFlushTrace()Lcom/stripe/offlinemode/log/OfflineTrace$Flush;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTraceHelper;->flushTrace:Lcom/stripe/offlinemode/log/OfflineTrace$Flush;

    return-object v0
.end method

.method public getFlushTraceResult()Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTraceHelper;->flushTraceResult:Lcom/stripe/loggingmodels/ApplicationTraceResult;

    return-object v0
.end method

.method public getInterruptedTraceResult()Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTraceHelper;->interruptedTraceResult:Lcom/stripe/loggingmodels/ApplicationTraceResult;

    return-object v0
.end method
