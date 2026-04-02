.class public final Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;
.super Ljava/lang/Object;
.source "PaymentCollectionLoggerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentCollectionLoggerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentCollectionLoggerModule.kt\ncom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule\n+ 2 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder\n+ 3 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder\n*L\n1#1,135:1\n436#2,4:136\n436#2,4:144\n457#3,4:140\n457#3,4:148\n*S KotlinDebug\n*F\n+ 1 PaymentCollectionLoggerModule.kt\ncom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule\n*L\n39#1:136,4\n53#1:144,4\n42#1:140,4\n56#1:148,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J0\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0015\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0001\u00a2\u0006\u0002\u0008\u001bJ\u0018\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\nH\u0007J\u0010\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0018\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\nH\u0007J-\u0010\u001f\u001a\u001a\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$0 2\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008%J\u0018\u0010&\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\nH\u0007J-\u0010\'\u001a\u001a\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020)0 2\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008*\u00a8\u0006+"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;",
        "",
        "()V",
        "providesDiscreteEventLogger",
        "Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "providesEndToEndEventLogger",
        "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "providesEventLoggers",
        "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
        "endToEndEventLogger",
        "stageEventLogger",
        "Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
        "discreteEventLogger",
        "onlineAuthStateLogger",
        "Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;",
        "tippingLogger",
        "Lcom/stripe/paymentcollection/metrics/TippingLogger;",
        "providesManualEntryEventLogger",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;",
        "manualEntryLogger",
        "Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;",
        "providesManualEntryEventLogger$wiring",
        "providesManualEntryLogger",
        "providesOnlineAuthStateLogger",
        "providesStageEventLogger",
        "providesTippingDiscreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;",
        "providesTippingDiscreteLogger$wiring",
        "providesTippingLogger",
        "providesTippingStageLogger",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope$Builder;",
        "providesTippingStageLogger$wiring",
        "wiring"
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
.field public static final INSTANCE:Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;

    invoke-direct {v0}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;-><init>()V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;->INSTANCE:Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final providesDiscreteEventLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    check-cast v0, Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

    return-object v0
.end method

.method public final providesEndToEndEventLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/time/Clock;)Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/time/Clock;)V

    check-cast v0, Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    return-object v0
.end method

.method public final providesEventLoggers(Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;Lcom/stripe/paymentcollection/metrics/TippingLogger;)Lcom/stripe/paymentcollection/metrics/EventLoggers;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "endToEndEventLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stageEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discreteEventLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onlineAuthStateLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tippingLogger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v1, Lcom/stripe/paymentcollection/metrics/EventLoggers;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/paymentcollection/metrics/EventLoggers;-><init>(Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;Lcom/stripe/paymentcollection/metrics/TippingLogger;)V

    return-object v1
.end method

.method public final providesManualEntryEventLogger$wiring(Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;)Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "manualEntryLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    check-cast p1, Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;

    return-object p1
.end method

.method public final providesManualEntryLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endToEndEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    return-object v0
.end method

.method public final providesOnlineAuthStateLogger(Lcom/stripe/paymentcollection/metrics/StageEventLogger;)Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "stageEventLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/stripe/paymentcollection/metrics/DefaultOnlineAuthStateLogger;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/metrics/DefaultOnlineAuthStateLogger;-><init>(Lcom/stripe/paymentcollection/metrics/StageEventLogger;)V

    check-cast v0, Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;

    return-object v0
.end method

.method public final providesStageEventLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)Lcom/stripe/paymentcollection/metrics/StageEventLogger;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endToEndEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/DefaultStageEventLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    check-cast v0, Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    return-object v0
.end method

.method public final providesTippingDiscreteLogger$wiring(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule$providesTippingDiscreteLogger$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule$providesTippingDiscreteLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 136
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 42
    sget-object p1, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule$providesTippingDiscreteLogger$2;->INSTANCE:Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule$providesTippingDiscreteLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 140
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 45
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method

.method public final providesTippingLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)Lcom/stripe/paymentcollection/metrics/TippingLogger;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endToEndEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V

    check-cast v0, Lcom/stripe/paymentcollection/metrics/TippingLogger;

    return-object v0
.end method

.method public final providesTippingStageLogger$wiring(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope$Builder;",
            ">;"
        }
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule$providesTippingStageLogger$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule$providesTippingStageLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 144
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 56
    sget-object p1, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule$providesTippingStageLogger$2;->INSTANCE:Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule$providesTippingStageLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 148
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 59
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method
