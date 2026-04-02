.class public final Lcom/stripe/time/SimpleExponentialDelayCalculator;
.super Ljava/lang/Object;
.source "SimpleExponentialDelayCalculator.kt"

# interfaces
.implements Lcom/stripe/time/ExponentialDelayCalculator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0015\u0010\u0007\u001a\u00020\u0008H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/time/SimpleExponentialDelayCalculator;",
        "Lcom/stripe/time/ExponentialDelayCalculator;",
        "initialDelayInSeconds",
        "",
        "maxDelayInSeconds",
        "(JJ)V",
        "currentDelay",
        "getDelayAndComputeNextDelay",
        "Lkotlin/time/Duration;",
        "getDelayAndComputeNextDelay-UwyO8pc",
        "()J",
        "resetDelay",
        "",
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
.field private currentDelay:J

.field private final initialDelayInSeconds:J

.field private final maxDelayInSeconds:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/stripe/time/SimpleExponentialDelayCalculator;->initialDelayInSeconds:J

    .line 11
    iput-wide p3, p0, Lcom/stripe/time/SimpleExponentialDelayCalculator;->maxDelayInSeconds:J

    .line 14
    iput-wide p1, p0, Lcom/stripe/time/SimpleExponentialDelayCalculator;->currentDelay:J

    return-void
.end method


# virtual methods
.method public getDelayAndComputeNextDelay-UwyO8pc()J
    .locals 6

    .line 17
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-wide v0, p0, Lcom/stripe/time/SimpleExponentialDelayCalculator;->currentDelay:J

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 18
    iget-wide v2, p0, Lcom/stripe/time/SimpleExponentialDelayCalculator;->currentDelay:J

    const/4 v4, 0x2

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/stripe/time/SimpleExponentialDelayCalculator;->maxDelayInSeconds:J

    invoke-static {v2, v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/stripe/time/SimpleExponentialDelayCalculator;->currentDelay:J

    return-wide v0
.end method

.method public resetDelay()V
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/stripe/time/SimpleExponentialDelayCalculator;->initialDelayInSeconds:J

    iput-wide v0, p0, Lcom/stripe/time/SimpleExponentialDelayCalculator;->currentDelay:J

    return-void
.end method
