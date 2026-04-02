.class public final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;
.super Ljava/lang/Object;
.source "DefaultOfflineForwardingDelayCalculator.kt"

# interfaces
.implements Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\nH\u0016J\u0008\u0010\u000e\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;",
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "random",
        "Lkotlin/random/Random;",
        "(Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlin/random/Random;)V",
        "calculateExponentialDelay",
        "",
        "failureCount",
        "",
        "getConsecutiveForwardingJitter",
        "consecutiveSuccesses",
        "getMaxConsecutiveSuccesses",
        "getRandomForwardingJitter",
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
.field public static final Companion:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator$Companion;

.field private static final DELAY_BASE:D = 2.0

.field private static final DELAY_QUANTUM_MS:J = 0x3e8L

.field private static final MAX_CONSECUTIVE_FAILURES:I = 0x10

.field private static final MAX_CONSECUTIVE_SUCCESSES:I = 0x5

.field private static final MAX_DELAY_MS:J = 0x493e0L


# instance fields
.field private final offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

.field private final random:Lkotlin/random/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;->Companion:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlin/random/Random;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "offlineConfigHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 11
    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;->random:Lkotlin/random/Random;

    return-void
.end method


# virtual methods
.method public calculateExponentialDelay(I)J
    .locals 4

    if-lez p1, :cond_0

    const/16 v0, 0x10

    .line 15
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p1

    .line 17
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    .line 18
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getConsecutiveForwardingJitter(I)J
    .locals 2

    if-lez p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;->getMaxConsecutiveSuccesses()I

    move-result v0

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;->getRandomForwardingJitter()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxConsecutiveSuccesses()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getRandomForwardingJitter()J
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v0}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->getForwardingJitterMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;->random:Lkotlin/random/Random;

    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v1}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->getForwardingJitterMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lkotlin/random/Random;->nextLong(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v2
.end method
