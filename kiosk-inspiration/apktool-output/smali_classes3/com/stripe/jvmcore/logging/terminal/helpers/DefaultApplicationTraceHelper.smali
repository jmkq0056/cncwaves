.class public final Lcom/stripe/jvmcore/logging/terminal/helpers/DefaultApplicationTraceHelper;
.super Ljava/lang/Object;
.source "DefaultApplicationTraceHelper.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0014\u0010\u0005\u001a\u00020\u0002X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/helpers/DefaultApplicationTraceHelper;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "()V",
        "flushTrace",
        "getFlushTrace",
        "()Lcom/stripe/loggingmodels/ApplicationTrace;",
        "flushTraceResult",
        "getFlushTraceResult",
        "()Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "interruptedTraceResult",
        "getInterruptedTraceResult",
        "duplicateTraceResult",
        "id",
        "",
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
.field private final flushTrace:Lcom/stripe/loggingmodels/ApplicationTrace;

.field private final flushTraceResult:Lcom/stripe/loggingmodels/ApplicationTraceResult;

.field private final interruptedTraceResult:Lcom/stripe/loggingmodels/ApplicationTraceResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->success()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/helpers/DefaultApplicationTraceHelper;->flushTraceResult:Lcom/stripe/loggingmodels/ApplicationTraceResult;

    .line 18
    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTrace;->Companion:Lcom/stripe/loggingmodels/ApplicationTrace$Companion;

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/ApplicationTrace$Companion;->flush()Lcom/stripe/loggingmodels/ApplicationTrace;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/helpers/DefaultApplicationTraceHelper;->flushTrace:Lcom/stripe/loggingmodels/ApplicationTrace;

    .line 19
    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->interrupted()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/helpers/DefaultApplicationTraceHelper;->interruptedTraceResult:Lcom/stripe/loggingmodels/ApplicationTraceResult;

    return-void
.end method


# virtual methods
.method public duplicateTraceResult(Ljava/lang/String;)Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Started new "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " operation without ending old one"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->failure(Ljava/lang/String;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object p1

    return-object p1
.end method

.method public getFlushTrace()Lcom/stripe/loggingmodels/ApplicationTrace;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/helpers/DefaultApplicationTraceHelper;->flushTrace:Lcom/stripe/loggingmodels/ApplicationTrace;

    return-object v0
.end method

.method public getFlushTraceResult()Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/helpers/DefaultApplicationTraceHelper;->flushTraceResult:Lcom/stripe/loggingmodels/ApplicationTraceResult;

    return-object v0
.end method

.method public getInterruptedTraceResult()Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/helpers/DefaultApplicationTraceHelper;->interruptedTraceResult:Lcom/stripe/loggingmodels/ApplicationTraceResult;

    return-object v0
.end method
