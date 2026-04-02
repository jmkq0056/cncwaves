.class public final Lcom/stripe/time/DefaultClock;
.super Ljava/lang/Object;
.source "DefaultClock.kt"

# interfaces
.implements Lcom/stripe/time/Clock;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u0007\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/time/DefaultClock;",
        "Lcom/stripe/time/Clock;",
        "()V",
        "systemClock",
        "Lkotlinx/datetime/Clock$System;",
        "timeMark",
        "Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;",
        "J",
        "currentTimeMillis",
        "",
        "elapsedTimeMillis",
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
.field private final systemClock:Lkotlinx/datetime/Clock$System;

.field private final timeMark:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    iput-object v0, p0, Lcom/stripe/time/DefaultClock;->systemClock:Lkotlinx/datetime/Clock$System;

    .line 10
    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/stripe/time/DefaultClock;->timeMark:J

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/stripe/time/DefaultClock;->systemClock:Lkotlinx/datetime/Clock$System;

    invoke-virtual {v0}, Lkotlinx/datetime/Clock$System;->now()Lkotlinx/datetime/Instant;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/datetime/Instant;->toEpochMilliseconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedTimeMillis()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/stripe/time/DefaultClock;->timeMark:J

    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    return-wide v0
.end method
