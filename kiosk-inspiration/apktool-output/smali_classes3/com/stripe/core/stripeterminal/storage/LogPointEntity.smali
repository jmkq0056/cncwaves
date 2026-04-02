.class public final Lcom/stripe/core/stripeterminal/storage/LogPointEntity;
.super Ljava/lang/Object;
.source "LogPointEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/stripeterminal/storage/LogPointEntity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u001d\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 /2\u00020\u0001:\u0001/B;\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u000b\u0010!\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0006H\u00c6\u0003J\t\u0010$\u001a\u00020\u0008H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u000bH\u00c6\u0003JI\u0010\'\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020\u0008H\u00d6\u0001J\u0006\u0010,\u001a\u00020-J\t\u0010.\u001a\u00020\u0003H\u00d6\u0001R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010R\u001e\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\t\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000e\"\u0004\u0008\u001c\u0010\u0010R\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u00060"
    }
    d2 = {
        "Lcom/stripe/core/stripeterminal/storage/LogPointEntity;",
        "",
        "message",
        "",
        "exception",
        "logLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "offsetMs",
        "",
        "traceId",
        "uid",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;ILjava/lang/String;J)V",
        "getException",
        "()Ljava/lang/String;",
        "setException",
        "(Ljava/lang/String;)V",
        "getLogLevel",
        "()Lcom/stripe/loggingmodels/LogLevel;",
        "setLogLevel",
        "(Lcom/stripe/loggingmodels/LogLevel;)V",
        "getMessage",
        "setMessage",
        "getOffsetMs",
        "()I",
        "setOffsetMs",
        "(I)V",
        "getTraceId",
        "setTraceId",
        "getUid",
        "()J",
        "setUid",
        "(J)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toModel",
        "Lcom/stripe/loggingmodels/LogPoint;",
        "toString",
        "Companion",
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
.field public static final Companion:Lcom/stripe/core/stripeterminal/storage/LogPointEntity$Companion;


# instance fields
.field private exception:Ljava/lang/String;

.field private logLevel:Lcom/stripe/loggingmodels/LogLevel;

.field private message:Ljava/lang/String;

.field private offsetMs:I

.field private traceId:Ljava/lang/String;

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->Companion:Lcom/stripe/core/stripeterminal/storage/LogPointEntity$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;ILjava/lang/String;J)V
    .locals 1

    const-string v0, "logLevel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->message:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->exception:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    .line 13
    iput p4, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->offsetMs:I

    .line 14
    iput-object p5, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->traceId:Ljava/lang/String;

    .line 15
    iput-wide p6, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->uid:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;ILjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v8, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p6

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 9
    invoke-direct/range {v2 .. v9}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/stripeterminal/storage/LogPointEntity;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;ILjava/lang/String;JILjava/lang/Object;)Lcom/stripe/core/stripeterminal/storage/LogPointEntity;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->message:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->exception:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget p4, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->offsetMs:I

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->traceId:Ljava/lang/String;

    :cond_4
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_5

    iget-wide p6, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->uid:J

    :cond_5
    move-wide p8, p6

    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;ILjava/lang/String;J)Lcom/stripe/core/stripeterminal/storage/LogPointEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/stripe/loggingmodels/LogLevel;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->offsetMs:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->uid:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;ILjava/lang/String;J)Lcom/stripe/core/stripeterminal/storage/LogPointEntity;
    .locals 9

    const-string v0, "logLevel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-wide v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;ILjava/lang/String;J)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->exception:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->exception:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->offsetMs:I

    iget v3, p1, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->offsetMs:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->traceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->traceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->uid:J

    iget-wide v5, p1, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->uid:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getException()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogLevel()Lcom/stripe/loggingmodels/LogLevel;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getOffsetMs()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->offsetMs:I

    return v0
.end method

.method public final getTraceId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->uid:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->message:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->exception:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    invoke-virtual {v1}, Lcom/stripe/loggingmodels/LogLevel;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->offsetMs:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->traceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->uid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setException(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->exception:Ljava/lang/String;

    return-void
.end method

.method public final setLogLevel(Lcom/stripe/loggingmodels/LogLevel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->message:Ljava/lang/String;

    return-void
.end method

.method public final setOffsetMs(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->offsetMs:I

    return-void
.end method

.method public final setTraceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->traceId:Ljava/lang/String;

    return-void
.end method

.method public final setUid(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->uid:J

    return-void
.end method

.method public final toModel()Lcom/stripe/loggingmodels/LogPoint;
    .locals 5

    .line 39
    new-instance v0, Lcom/stripe/loggingmodels/LogPoint;

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->exception:Ljava/lang/String;

    iget-object v3, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    iget v4, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->offsetMs:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/loggingmodels/LogPoint;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogPointEntity(message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->exception:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->offsetMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", traceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->traceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
