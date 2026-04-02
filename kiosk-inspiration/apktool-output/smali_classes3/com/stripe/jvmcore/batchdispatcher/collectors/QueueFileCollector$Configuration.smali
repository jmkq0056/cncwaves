.class public final Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;
.super Ljava/lang/Object;
.source "QueueFileCollector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000  2\u00020\u0001:\u0001 B5\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c2\u0003\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c2\u0003\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c2\u0003\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c2\u0003\u00a2\u0006\u0002\u0010\u0013J>\u0010\u0017\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\nR\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\n\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;",
        "",
        "overrideMaxBatchBytes",
        "",
        "overrideMaxEntryBytes",
        "overrideMaxFileBytes",
        "overridePruneFileBytes",
        "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V",
        "maxBatchBytes",
        "getMaxBatchBytes",
        "()J",
        "maxEntryBytes",
        "getMaxEntryBytes",
        "maxFileBytes",
        "getMaxFileBytes",
        "Ljava/lang/Long;",
        "pruneFileBytes",
        "getPruneFileBytes",
        "component1",
        "()Ljava/lang/Long;",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
        "batchdispatcher"
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
.field public static final Companion:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration$Companion;

.field private static final DEFAULT_MAX_BATCH_BYTES:J = 0x300000L

.field public static final DEFAULT_MAX_ENTRY_BYTES:J = 0x100000L

.field private static final DEFAULT_MAX_FILE_BYTES:J = 0x2000000L

.field private static final DEFAULT_PRUNE_FILE_BYTES:J = 0x1e00000L


# instance fields
.field private final maxBatchBytes:J

.field private final maxEntryBytes:J

.field private final maxFileBytes:J

.field private final overrideMaxBatchBytes:Ljava/lang/Long;

.field private final overrideMaxEntryBytes:Ljava/lang/Long;

.field private final overrideMaxFileBytes:Ljava/lang/Long;

.field private final overridePruneFileBytes:Ljava/lang/Long;

.field private final pruneFileBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->Companion:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxBatchBytes:Ljava/lang/Long;

    .line 363
    iput-object p2, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxEntryBytes:Ljava/lang/Long;

    .line 381
    iput-object p3, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxFileBytes:Ljava/lang/Long;

    .line 396
    iput-object p4, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overridePruneFileBytes:Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x300000

    :goto_0
    iput-wide v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->maxBatchBytes:J

    if-eqz p2, :cond_1

    .line 400
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_1

    :cond_1
    const-wide/32 p1, 0x100000

    :goto_1
    iput-wide p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->maxEntryBytes:J

    if-eqz p3, :cond_2

    .line 401
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_2

    :cond_2
    const-wide/32 p1, 0x2000000

    :goto_2
    iput-wide p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->maxFileBytes:J

    if-eqz p4, :cond_3

    .line 402
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_3

    :cond_3
    const-wide/32 p1, 0x1e00000

    :goto_3
    iput-wide p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->pruneFileBytes:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 345
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method private final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxBatchBytes:Ljava/lang/Long;

    return-object v0
.end method

.method private final component2()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxEntryBytes:Ljava/lang/Long;

    return-object v0
.end method

.method private final component3()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxFileBytes:Ljava/lang/Long;

    return-object v0
.end method

.method private final component4()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overridePruneFileBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Object;)Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxBatchBytes:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxEntryBytes:Ljava/lang/Long;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxFileBytes:Ljava/lang/Long;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overridePruneFileBytes:Ljava/lang/Long;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->copy(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxBatchBytes:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxBatchBytes:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxEntryBytes:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxEntryBytes:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxFileBytes:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxFileBytes:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overridePruneFileBytes:Ljava/lang/Long;

    iget-object p1, p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overridePruneFileBytes:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getMaxBatchBytes()J
    .locals 2

    .line 399
    iget-wide v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->maxBatchBytes:J

    return-wide v0
.end method

.method public final getMaxEntryBytes()J
    .locals 2

    .line 400
    iget-wide v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->maxEntryBytes:J

    return-wide v0
.end method

.method public final getMaxFileBytes()J
    .locals 2

    .line 401
    iget-wide v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->maxFileBytes:J

    return-wide v0
.end method

.method public final getPruneFileBytes()J
    .locals 2

    .line 402
    iget-wide v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->pruneFileBytes:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxBatchBytes:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxEntryBytes:Ljava/lang/Long;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxFileBytes:Ljava/lang/Long;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overridePruneFileBytes:Ljava/lang/Long;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Configuration(overrideMaxBatchBytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxBatchBytes:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overrideMaxEntryBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxEntryBytes:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overrideMaxFileBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overrideMaxFileBytes:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overridePruneFileBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->overridePruneFileBytes:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
