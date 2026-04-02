.class public final Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;
.super Ljava/lang/Object;
.source "DefaultOfflineTraceManager.kt"

# interfaces
.implements Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0006H\u0002J\u0008\u0010\u0010\u001a\u00020\u000eH\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u0011\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;",
        "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
        "random",
        "Lkotlin/random/Random;",
        "(Lkotlin/random/Random;)V",
        "sessionId",
        "",
        "Ljava/lang/Long;",
        "traceId",
        "endSession",
        "",
        "getTraceContext",
        "Lcom/stripe/loggingmodels/Trace$Context;",
        "serial",
        "",
        "newSessionId",
        "nextTraceId",
        "startSession",
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
.field public static final Companion:Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager$Companion;

.field private static final SEED:J = 0x5f5e100L


# instance fields
.field private final random:Lkotlin/random/Random;

.field private volatile sessionId:Ljava/lang/Long;

.field private volatile traceId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->Companion:Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/random/Random;)V
    .locals 2

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->random:Lkotlin/random/Random;

    .line 16
    invoke-direct {p0}, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->newSessionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->traceId:J

    return-void
.end method

.method private final newSessionId()J
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->random:Lkotlin/random/Random;

    const-wide/32 v1, 0x5f5e100

    invoke-virtual {v0, v1, v2}, Lkotlin/random/Random;->nextLong(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public endSession()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->sessionId:Ljava/lang/Long;

    return-void
.end method

.method public getTraceContext(Ljava/lang/String;)Lcom/stripe/loggingmodels/Trace$Context;
    .locals 3

    .line 38
    new-instance v0, Lcom/stripe/loggingmodels/Trace$Context;

    .line 40
    invoke-virtual {p0}, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->sessionId()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p0}, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->nextTraceId()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-direct {v0, p1, v1, v2}, Lcom/stripe/loggingmodels/Trace$Context;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public nextTraceId()Ljava/lang/String;
    .locals 4

    .line 33
    iget-wide v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->traceId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->traceId:J

    .line 34
    iget-wide v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->traceId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sessionId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->sessionId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSession()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->sessionId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->newSessionId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;->sessionId:Ljava/lang/Long;

    :cond_0
    return-void
.end method
