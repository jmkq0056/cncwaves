.class public final Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;
.super Ljava/lang/Object;
.source "DefaultLogOperation.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation<",
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J,\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u0011H\u0016J\u0010\u0010)\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\t\u0010*\u001a\u00020#H\u00d6\u0001R!\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088VX\u0096\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r*\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u00020\u00118VX\u0096\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014*\u0004\u0008\u0012\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006+"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;",
        "trace",
        "Lcom/stripe/loggingmodels/Trace;",
        "metric",
        "Lcom/stripe/loggingmodels/Metric;",
        "(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/loggingmodels/Metric;)V",
        "logPoints",
        "",
        "Lcom/stripe/loggingmodels/LogPoint;",
        "getLogPoints$delegate",
        "(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;)Ljava/lang/Object;",
        "getLogPoints",
        "()Ljava/util/List;",
        "getMetric",
        "()Lcom/stripe/loggingmodels/Metric;",
        "startTimeMs",
        "",
        "getStartTimeMs$delegate",
        "getStartTimeMs",
        "()J",
        "getTrace",
        "()Lcom/stripe/loggingmodels/Trace;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "log",
        "",
        "message",
        "",
        "throwable",
        "",
        "level",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "currentTimeMillis",
        "new",
        "toString",
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
.field private final metric:Lcom/stripe/loggingmodels/Metric;

.field private final trace:Lcom/stripe/loggingmodels/Trace;


# direct methods
.method public constructor <init>(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/loggingmodels/Metric;)V
    .locals 1

    const-string v0, "trace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metric"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    .line 14
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->metric:Lcom/stripe/loggingmodels/Metric;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;Lcom/stripe/loggingmodels/Trace;Lcom/stripe/loggingmodels/Metric;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->metric:Lcom/stripe/loggingmodels/Metric;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->copy(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/loggingmodels/Metric;)Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;

    move-result-object p0

    return-object p0
.end method

.method private static getLogPoints$delegate(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;)Ljava/lang/Object;
    .locals 6

    .line 17
    new-instance v0, Lkotlin/jvm/internal/PropertyReference0Impl;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    const-class v2, Lcom/stripe/loggingmodels/Trace;

    const-string v4, "getLogPoints()Ljava/util/List;"

    const/4 v5, 0x0

    const-string v3, "logPoints"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/PropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getStartTimeMs$delegate(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;)Ljava/lang/Object;
    .locals 6

    .line 19
    new-instance v0, Lkotlin/jvm/internal/PropertyReference0Impl;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    const-class v2, Lcom/stripe/loggingmodels/Trace;

    const-string v4, "getStartTimeMillis()J"

    const/4 v5, 0x0

    const-string v3, "startTimeMillis"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/PropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/loggingmodels/Trace;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    return-object v0
.end method

.method public final component2()Lcom/stripe/loggingmodels/Metric;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->metric:Lcom/stripe/loggingmodels/Metric;

    return-object v0
.end method

.method public final copy(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/loggingmodels/Metric;)Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;
    .locals 1

    const-string v0, "trace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metric"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;

    invoke-direct {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;-><init>(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/loggingmodels/Metric;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    iget-object v3, p1, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->metric:Lcom/stripe/loggingmodels/Metric;

    iget-object p1, p1, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->metric:Lcom/stripe/loggingmodels/Metric;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getLogPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/LogPoint;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/Trace;->getLogPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMetric()Lcom/stripe/loggingmodels/Metric;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->metric:Lcom/stripe/loggingmodels/Metric;

    return-object v0
.end method

.method public getStartTimeMs()J
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/Trace;->getStartTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrace()Lcom/stripe/loggingmodels/Trace;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/Trace;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->metric:Lcom/stripe/loggingmodels/Metric;

    invoke-virtual {v1}, Lcom/stripe/loggingmodels/Metric;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V
    .locals 7

    const-string v0, "level"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/stripe/loggingmodels/Trace;->log(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V

    return-void
.end method

.method public bridge synthetic new(J)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->new(J)Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;

    return-object p1
.end method

.method public new(J)Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;
    .locals 18

    move-object/from16 v0, p0

    .line 30
    iget-object v1, v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    const/16 v16, 0x1ffe

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v2, p1

    invoke-static/range {v1 .. v17}, Lcom/stripe/loggingmodels/Trace;->copy$default(Lcom/stripe/loggingmodels/Trace;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/time/Clock;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/loggingmodels/Trace;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->copy$default(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;Lcom/stripe/loggingmodels/Trace;Lcom/stripe/loggingmodels/Metric;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DefaultLogOperation(trace="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->trace:Lcom/stripe/loggingmodels/Trace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->metric:Lcom/stripe/loggingmodels/Metric;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
