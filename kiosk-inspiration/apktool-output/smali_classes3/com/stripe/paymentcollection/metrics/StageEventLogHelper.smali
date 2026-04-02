.class public abstract Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;
.super Ljava/lang/Object;
.source "StageEventLogHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/StageEventLogHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/squareup/wire/Message<",
        "TD;TDB;>;DB:",
        "Lcom/squareup/wire/Message$Builder<",
        "TD;TDB;>;S:",
        "Lcom/squareup/wire/Message<",
        "TS;TSB;>;SB:",
        "Lcom/squareup/wire/Message$Builder<",
        "TS;TSB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStageEventLogHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StageEventLogHelper.kt\ncom/stripe/paymentcollection/metrics/StageEventLogHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 ,*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004*\u0014\u0008\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0002*\u0014\u0008\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u00042\u00020\u0007:\u0001,BA\u0012\u001e\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010\u0016\u001a\u00020\u0017H\u0017JW\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001a2E\u0010\u001b\u001aA\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\"\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u001d0!0\u001cH\u0004JW\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020#2E\u0010\u001b\u001aA\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\"\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u001d0!0\u001cH\u0004JM\u0010$\u001a\u00020\u00172\u0014\u0008\u0002\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0&2-\u0010\'\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00170(j\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020)`*\u00a2\u0006\u0002\u0008+H\u0004R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0013R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;",
        "D",
        "Lcom/squareup/wire/Message;",
        "DB",
        "Lcom/squareup/wire/Message$Builder;",
        "S",
        "SB",
        "",
        "logger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "eventName",
        "",
        "endToEndEventLogger",
        "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
        "latencyCategory",
        "Lcom/stripe/paymentcollection/metrics/LatencyCategory;",
        "(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/lang/String;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V",
        "isOpen",
        "",
        "()Z",
        "openLog",
        "Lcom/stripe/jvmcore/logging/PendingTimer;",
        "cleanUp",
        "",
        "closeLogHelper",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "outcomeAndTags",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "tagMap",
        "Lkotlin/Pair;",
        "Lcom/stripe/loggingmodels/Outcome;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;",
        "openLogHelper",
        "tags",
        "",
        "timerSetter",
        "Lkotlin/Function2;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "Lcom/stripe/jvmcore/logging/EventSetter;",
        "Lkotlin/ExtensionFunctionType;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/paymentcollection/metrics/StageEventLogHelper$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;


# instance fields
.field private final endToEndEventLogger:Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

.field private final eventName:Ljava/lang/String;

.field private final latencyCategory:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

.field private final logger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "TD;TDB;TS;TSB;>;"
        }
    .end annotation
.end field

.field private openLog:Lcom/stripe/jvmcore/logging/PendingTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->Companion:Lcom/stripe/paymentcollection/metrics/StageEventLogHelper$Companion;

    .line 87
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/lang/String;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "TD;TDB;TS;TSB;>;",
            "Ljava/lang/String;",
            "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
            "Lcom/stripe/paymentcollection/metrics/LatencyCategory;",
            ")V"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endToEndEventLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 28
    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->eventName:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->endToEndEventLogger:Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    .line 30
    iput-object p4, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->latencyCategory:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/lang/String;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/LatencyCategory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/lang/String;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V

    return-void
.end method

.method public static final synthetic access$getLOGGER$cp()Lcom/stripe/jvmcore/logging/terminal/log/Log;
    .locals 1

    .line 22
    sget-object v0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-object v0
.end method

.method public static synthetic openLogHelper$default(Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 38
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->openLogHelper(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: openLogHelper"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->latencyCategory:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->endToEndEventLogger:Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    invoke-interface {v1, v0}, Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;->categoryEnd(Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V

    :cond_0
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->openLog:Lcom/stripe/jvmcore/logging/PendingTimer;

    return-void
.end method

.method protected final closeLogHelper(Lcom/stripe/paymentcollection/PaymentCollectionData;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/PaymentCollectionData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/stripe/loggingmodels/Outcome;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcomeAndTags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->openLog:Lcom/stripe/jvmcore/logging/PendingTimer;

    if-eqz v2, :cond_1

    .line 57
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->latencyCategory:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->endToEndEventLogger:Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    invoke-interface {v1, v0}, Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;->categoryEnd(Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->latencyCategory:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    invoke-static {p1, v0}, Lcom/stripe/paymentcollection/metrics/UtilsKt;->generateCommonTags(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/LatencyCategory;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/stripe/loggingmodels/Outcome;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/util/Map;

    .line 61
    sget-object p1, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Reporting "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->eventName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " outcome "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " tags "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 63
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->openLog:Lcom/stripe/jvmcore/logging/PendingTimer;

    :cond_1
    return-void
.end method

.method protected final closeLogHelper(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/stripe/loggingmodels/Outcome;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcomeAndTags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->openLog:Lcom/stripe/jvmcore/logging/PendingTimer;

    if-eqz v2, :cond_1

    .line 74
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->latencyCategory:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->endToEndEventLogger:Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    invoke-interface {v1, v0}, Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;->categoryEnd(Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->latencyCategory:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    invoke-static {p1, v0}, Lcom/stripe/paymentcollection/metrics/UtilsKt;->generateCommonTags(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/metrics/LatencyCategory;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/stripe/loggingmodels/Outcome;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/util/Map;

    .line 78
    sget-object p1, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Reporting "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->eventName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " outcome "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " tags "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 80
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->openLog:Lcom/stripe/jvmcore/logging/PendingTimer;

    :cond_1
    return-void
.end method

.method protected final isOpen()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->openLog:Lcom/stripe/jvmcore/logging/PendingTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final openLogHelper(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TSB;-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timerSetter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->eventName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with latencyCategory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->latencyCategory:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->openLog:Lcom/stripe/jvmcore/logging/PendingTimer;

    .line 43
    iget-object p1, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->latencyCategory:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->endToEndEventLogger:Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    invoke-interface {p2, p1}, Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;->categoryStart(Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V

    :cond_0
    return-void
.end method
