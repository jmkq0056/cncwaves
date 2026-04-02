.class public final Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;
.super Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;
.source "ManualEntryLogger.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$Companion;,
        Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
        ">;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManualEntryLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManualEntryLogger.kt\ncom/stripe/paymentcollection/metrics/ManualEntryLogger\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n*L\n1#1,85:1\n1#2:86\n543#3,8:87\n*S KotlinDebug\n*F\n+ 1 ManualEntryLogger.kt\ncom/stripe/paymentcollection/metrics/ManualEntryLogger\n*L\n61#1:87,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u001c2\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00012\u00020\u0006:\u0001\u001cB\u0015\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\rH\u0016J\u0012\u0010\u0016\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0002R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fj\u0002`\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;",
        "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "endToEndEventLogger",
        "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
        "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V",
        "curState",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryState;",
        "discreteHealthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;",
        "Lcom/stripe/paymentcollection/metrics/DiscreteHealthLogger;",
        "onEnter",
        "",
        "state",
        "onExit",
        "data",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;",
        "onInvalidInput",
        "shouldLog",
        "",
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
.field public static final Companion:Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;


# instance fields
.field private curState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

.field private final discreteHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->Companion:Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$Companion;

    .line 82
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V
    .locals 3

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endToEndEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lcom/stripe/paymentcollection/metrics/UtilsKt;->buildsStageHealthLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    .line 21
    const-string v1, "ManualEntry"

    .line 23
    sget-object v2, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->USER_ACTION:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    .line 15
    invoke-direct {p0, v0, v1, p2, v2}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/lang/String;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V

    .line 26
    invoke-static {p1}, Lcom/stripe/paymentcollection/metrics/UtilsKt;->buildsDiscreteHealthLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->discreteHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-void
.end method

.method public static final synthetic access$getCurState$p(Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;)Lcom/stripe/paymentcollection/manualentry/ManualEntryState;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->curState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    return-object p0
.end method

.method private final shouldLog()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->curState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 78
    :pswitch_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/manualentry/ManualEntryState;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->curState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    .line 32
    invoke-direct {p0}, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->shouldLog()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;

    sget-object v0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$onEnter$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$onEnter$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->openLogHelper$default(Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public onExit(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->shouldLog()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 40
    :cond_1
    new-instance v0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$onExit$1;

    invoke-direct {v0, p1, p0}, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$onExit$1;-><init>(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->closeLogHelper(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onInvalidInput(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInvalidInput at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->curState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 61
    invoke-static {p1, v1, v0, v1}, Lcom/stripe/paymentcollection/metrics/UtilsKt;->generateCommonTags$default(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/metrics/LatencyCategory;ILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    iget-object p1, p0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->curState:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    check-cast p1, Ljava/lang/Enum;

    if-nez p1, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    const-class v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 90
    const-class v1, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MagStripeAllowReason"

    goto :goto_0

    :cond_2
    const-class v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :goto_1
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->discreteHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$onInvalidInput$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$onInvalidInput$1;

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method
