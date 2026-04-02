.class public final Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;
.super Ljava/lang/Object;
.source "DefaultEndToEndEventLogger.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;,
        Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$EntriesMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultEndToEndEventLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultEndToEndEventLogger.kt\ncom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,234:1\n12271#2,2:235\n543#3,8:237\n543#3,8:245\n543#3,8:254\n1#4:253\n*S KotlinDebug\n*F\n+ 1 DefaultEndToEndEventLogger.kt\ncom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger\n*L\n71#1:235,2\n90#1:237,8\n91#1:245,8\n131#1:254,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 )2\u00020\u0001:\u0001)B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u0016H\u0002J,\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020#2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0%H\u0002J$\u0010\'\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020#2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0%H\u0002J\u0008\u0010(\u001a\u00020\u0016H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000cj\u0002`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\n\u00a8\u0006*"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;",
        "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/time/Clock;)V",
        "latencyPerCategory",
        "",
        "",
        "[Ljava/lang/Long;",
        "logger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/EndToEndScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/EndToEndScope$Builder;",
        "Lcom/stripe/paymentcollection/metrics/EndToEndHealthLogger;",
        "startTime",
        "Ljava/lang/Long;",
        "startTimePerCategory",
        "categoryEnd",
        "",
        "category",
        "Lcom/stripe/paymentcollection/metrics/LatencyCategory;",
        "categoryStart",
        "end",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "state",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "measureUnknownLatencyIfNeeded",
        "sendEndToEndEvent",
        "totalDuration",
        "result",
        "Lcom/stripe/paymentcollection/metrics/Result;",
        "tagMap",
        "",
        "",
        "sendPerCategoryMeasurementEvents",
        "start",
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
.field public static final Companion:Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;


# instance fields
.field private final clock:Lcom/stripe/time/Clock;

.field private final latencyPerCategory:[Ljava/lang/Long;

.field private final logger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/EndToEndScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Ljava/lang/Long;

.field private startTimePerCategory:[Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->Companion:Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;

    .line 144
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/time/Clock;)V
    .locals 4

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->clock:Lcom/stripe/time/Clock;

    .line 21
    invoke-static {p1}, Lcom/stripe/paymentcollection/metrics/UtilsKt;->buildsEndToEndHealthLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 25
    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    invoke-interface {p1}, Lkotlin/enums/EnumEntries;->size()I

    move-result p1

    new-array p2, p1, [Ljava/lang/Long;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->startTimePerCategory:[Ljava/lang/Long;

    .line 27
    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    invoke-interface {p1}, Lkotlin/enums/EnumEntries;->size()I

    move-result p1

    new-array p2, p1, [Ljava/lang/Long;

    :goto_1
    if-ge v0, p1, :cond_1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->latencyPerCategory:[Ljava/lang/Long;

    return-void
.end method

.method private final measureUnknownLatencyIfNeeded()V
    .locals 7

    .line 71
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->startTimePerCategory:[Ljava/lang/Long;

    .line 235
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->categoryEnd(Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V

    return-void

    .line 73
    :cond_1
    sget-object v0, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->categoryStart(Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V

    return-void
.end method

.method private final sendEndToEndEvent(JLcom/stripe/paymentcollection/metrics/Result;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/stripe/paymentcollection/metrics/Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 113
    invoke-static {p3}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v3

    .line 111
    sget-object v1, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$sendEndToEndEvent$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$sendEndToEndEvent$1;

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v4, p4

    invoke-static/range {v0 .. v8}, Lcom/stripe/jvmcore/logging/HealthLogger;->recordTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;JLcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 116
    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Payment collection metric ending in "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " ms: result "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 118
    const-string p3, ", tagMap "

    .line 117
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Lkotlin/Pair;

    .line 116
    invoke-virtual {p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method private final sendPerCategoryMeasurementEvents(Lcom/stripe/paymentcollection/metrics/Result;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/metrics/Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    invoke-interface {v0}, Lkotlin/enums/EnumEntries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    .line 129
    invoke-virtual {p0, v1}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->categoryEnd(Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V

    .line 130
    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->latencyPerCategory:[Ljava/lang/Long;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 254
    move-object v2, v1

    check-cast v2, Ljava/lang/Enum;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const-class v3, Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 257
    const-class v6, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "MagStripeAllowReason"

    goto :goto_1

    :cond_1
    const-class v3, Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 258
    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 260
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_2
    iget-object v3, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 134
    invoke-static {p1}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v6

    .line 132
    sget-object v2, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$sendPerCategoryMeasurementEvents$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$sendPerCategoryMeasurementEvents$1;

    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v7, p2

    invoke-static/range {v3 .. v11}, Lcom/stripe/jvmcore/logging/HealthLogger;->recordTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;JLcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 139
    sget-object p2, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Category "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-virtual {p2, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    move-object p2, v7

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public categoryEnd(Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V
    .locals 8

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->startTimePerCategory:[Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v4}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 58
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->latencyPerCategory:[Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->ordinal()I

    move-result v1

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    .line 59
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->startTimePerCategory:[Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->ordinal()I

    move-result v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 61
    sget-object v0, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    if-eq p1, v0, :cond_1

    .line 62
    invoke-direct {p0}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->measureUnknownLatencyIfNeeded()V

    :cond_1
    :goto_0
    return-void
.end method

.method public categoryStart(Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V
    .locals 4

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->startTimePerCategory:[Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->startTimePerCategory:[Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v2}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 48
    sget-object v0, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    if-eq p1, v0, :cond_1

    .line 49
    invoke-direct {p0}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->measureUnknownLatencyIfNeeded()V

    :cond_1
    :goto_0
    return-void
.end method

.method public end(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 10

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->startTime:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 84
    sget-object v0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->Companion:Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;

    invoke-static {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;->access$getResult(Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)Lcom/stripe/paymentcollection/metrics/Result;

    move-result-object p2

    .line 85
    invoke-static {v0, p1}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;->access$getStateWhenCancelled(Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/PaymentCollectionState;

    move-result-object v4

    .line 86
    invoke-static {v0, p1}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;->access$getStateWhenTimedOut(Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/PaymentCollectionState;

    move-result-object v5

    .line 87
    invoke-virtual {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;->getCollectionFailureReason$impl_release(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    move-result-object v0

    const/4 v6, 0x2

    .line 89
    invoke-static {p1, v1, v6, v1}, Lcom/stripe/paymentcollection/metrics/UtilsKt;->generateCommonTags$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/LatencyCategory;ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v6

    .line 90
    check-cast v6, Ljava/util/Map;

    .line 237
    check-cast v0, Ljava/lang/Enum;

    const-string v7, "MagStripeAllowReason"

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v8, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 240
    const-class v9, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v7

    goto :goto_0

    :cond_1
    const-class v8, Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 241
    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 243
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_1
    invoke-static {p1}, Lcom/stripe/paymentcollection/metrics/UtilsKt;->getApplicationId(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/hardware/emv/ApplicationId;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    if-nez p1, :cond_2

    goto :goto_3

    .line 245
    :cond_2
    const-class v0, Lcom/stripe/hardware/emv/ApplicationId;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 248
    const-class v8, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-class v0, Lcom/stripe/hardware/emv/ApplicationId;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 251
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    if-eqz v4, :cond_4

    .line 92
    const-string p1, "stateWhenCancelled"

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/PaymentCollectionState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v5, :cond_5

    .line 93
    const-string p1, "stateWhenTimedOut"

    invoke-virtual {v5}, Lcom/stripe/paymentcollection/PaymentCollectionState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_5
    iget-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {p1}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 98
    invoke-direct {p0, v4, v5, p2, v6}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->sendEndToEndEvent(JLcom/stripe/paymentcollection/metrics/Result;Ljava/util/Map;)V

    .line 99
    invoke-direct {p0, p2, v6}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->sendPerCategoryMeasurementEvents(Lcom/stripe/paymentcollection/metrics/Result;Ljava/util/Map;)V

    .line 83
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    :cond_6
    move-object p1, v1

    :goto_4
    if-nez p1, :cond_7

    .line 100
    move-object p1, p0

    check-cast p1, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;

    .line 101
    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlin/Pair;

    const-string v0, "No open log to end."

    invoke-virtual {p1, v0, p2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 103
    :cond_7
    iput-object v1, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->startTime:Ljava/lang/Long;

    return-void
.end method

.method public start()V
    .locals 14

    .line 33
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v0}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 34
    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->latencyPerCategory:[Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 35
    iget-object v8, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->startTimePerCategory:[Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 36
    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->startTimePerCategory:[Ljava/lang/Long;

    sget-object v3, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    invoke-virtual {v3}, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->ordinal()I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;->startTime:Ljava/lang/Long;

    return-void
.end method
