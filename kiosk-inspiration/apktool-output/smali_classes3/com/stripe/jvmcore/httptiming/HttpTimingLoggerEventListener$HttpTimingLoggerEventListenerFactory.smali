.class public final Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$HttpTimingLoggerEventListenerFactory;
.super Ljava/lang/Object;
.source "HttpTimingLoggerEventListener.kt"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpTimingLoggerEventListenerFactory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$HttpTimingLoggerEventListenerFactory;",
        "Lokhttp3/EventListener$Factory;",
        "timingCollectors",
        "",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "(Ljava/util/List;Lcom/stripe/time/Clock;)V",
        "create",
        "Lokhttp3/EventListener;",
        "call",
        "Lokhttp3/Call;",
        "httptiming"
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
.field private final clock:Lcom/stripe/time/Clock;

.field private final timingCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/stripe/time/Clock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;",
            ">;",
            "Lcom/stripe/time/Clock;",
            ")V"
        }
    .end annotation

    const-string v0, "timingCollectors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$HttpTimingLoggerEventListenerFactory;->timingCollectors:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$HttpTimingLoggerEventListenerFactory;->clock:Lcom/stripe/time/Clock;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/stripe/time/Clock;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 29
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$HttpTimingLoggerEventListenerFactory;-><init>(Ljava/util/List;Lcom/stripe/time/Clock;)V

    return-void
.end method


# virtual methods
.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;

    .line 36
    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$HttpTimingLoggerEventListenerFactory;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v1}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    const-string v2, "ofEpochMilli(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$HttpTimingLoggerEventListenerFactory;->timingCollectors:Ljava/util/List;

    .line 38
    iget-object v3, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$HttpTimingLoggerEventListenerFactory;->clock:Lcom/stripe/time/Clock;

    .line 34
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;-><init>(Lokhttp3/Call;Ljava/time/Instant;Ljava/util/List;Lcom/stripe/time/Clock;)V

    check-cast v0, Lokhttp3/EventListener;

    return-object v0
.end method
