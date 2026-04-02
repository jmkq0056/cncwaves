.class public final Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;
.super Ljava/lang/Object;
.source "PendingLogPoint.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\tH\u00c6\u0003J5\u0010\u0017\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;",
        "",
        "message",
        "",
        "throwable",
        "",
        "logLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "currentTimeMillis",
        "",
        "(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V",
        "getCurrentTimeMillis",
        "()J",
        "getLogLevel",
        "()Lcom/stripe/loggingmodels/LogLevel;",
        "getMessage",
        "()Ljava/lang/String;",
        "getThrowable",
        "()Ljava/lang/Throwable;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "public_release"
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
.field private final currentTimeMillis:J

.field private final logLevel:Lcom/stripe/loggingmodels/LogLevel;

.field private final message:Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V
    .locals 1

    const-string v0, "logLevel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->message:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->throwable:Ljava/lang/Throwable;

    .line 13
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    .line 14
    iput-wide p4, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->currentTimeMillis:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;JILjava/lang/Object;)Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->message:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->throwable:Ljava/lang/Throwable;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    iget-wide p4, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->currentTimeMillis:J

    :cond_3
    move-wide p6, p4

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->copy(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final component3()Lcom/stripe/loggingmodels/LogLevel;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->currentTimeMillis:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;
    .locals 7

    const-string v0, "logLevel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->throwable:Ljava/lang/Throwable;

    iget-object v3, p1, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->throwable:Ljava/lang/Throwable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    iget-object v3, p1, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->currentTimeMillis:J

    iget-wide v5, p1, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->currentTimeMillis:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCurrentTimeMillis()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->currentTimeMillis:J

    return-wide v0
.end method

.method public final getLogLevel()Lcom/stripe/loggingmodels/LogLevel;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->message:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->throwable:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    invoke-virtual {v1}, Lcom/stripe/loggingmodels/LogLevel;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->currentTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PendingLogPoint(message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->currentTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
