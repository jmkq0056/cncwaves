.class public final Lcom/stripe/core/random/RandomUtil;
.super Ljava/lang/Object;
.source "RandomUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/core/random/RandomUtil;",
        "",
        "random",
        "Lkotlin/random/Random;",
        "(Lkotlin/random/Random;)V",
        "computeLocalTimeInRange",
        "Ljava/time/LocalTime;",
        "localTime",
        "durationInSeconds",
        "",
        "computeRandomLongInRange",
        "start",
        "duration",
        "random_release"
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
.field private final random:Lkotlin/random/Random;


# direct methods
.method public constructor <init>(Lkotlin/random/Random;)V
    .locals 1

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/core/random/RandomUtil;->random:Lkotlin/random/Random;

    return-void
.end method


# virtual methods
.method public final computeLocalTimeInRange(Ljava/time/LocalTime;J)Ljava/time/LocalTime;
    .locals 1

    const-string v0, "localTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/stripe/core/random/RandomUtil;->random:Lkotlin/random/Random;

    invoke-virtual {v0, p2, p3}, Lkotlin/random/Random;->nextLong(J)J

    move-result-wide p2

    .line 15
    invoke-virtual {p1, p2, p3}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object p1

    const-string p2, "plusSeconds(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final computeRandomLongInRange(JJ)J
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/stripe/core/random/RandomUtil;->random:Lkotlin/random/Random;

    invoke-virtual {v0, p3, p4}, Lkotlin/random/Random;->nextLong(J)J

    move-result-wide p3

    add-long/2addr p1, p3

    return-wide p1
.end method
