.class public final Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;
.super Ljava/lang/Object;
.source "DefaultTippingLogger.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/metrics/TippingLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$Companion;,
        Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultTippingLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultTippingLogger.kt\ncom/stripe/paymentcollection/metrics/DefaultTippingLogger\n+ 2 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n+ 3 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder\n+ 4 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder\n*L\n1#1,200:1\n543#2,8:201\n543#2,8:209\n543#2,8:217\n543#2,8:225\n436#3,4:233\n436#3,4:241\n457#4,4:237\n457#4,4:245\n*S KotlinDebug\n*F\n+ 1 DefaultTippingLogger.kt\ncom/stripe/paymentcollection/metrics/DefaultTippingLogger\n*L\n39#1:201,8\n51#1:209,8\n59#1:217,8\n67#1:225,8\n119#1:233,4\n130#1:241,4\n122#1:237,4\n133#1:245,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u0000 $2\u00020\u0001:\u0002$%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J(\u0010\u0012\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J(\u0010\u0013\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\"\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u001f\u001a\u00020\u00152\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u001a\u0010 \u001a\u00020\u00152\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u0015H\u0016R&\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;",
        "Lcom/stripe/paymentcollection/metrics/TippingLogger;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "endToEndEventLogger",
        "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
        "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V",
        "tippingDiscreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;",
        "tippingSelectionLogger",
        "Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;",
        "tippingStageLogger",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope$Builder;",
        "buildTippingDiscreteHealthLogger",
        "buildTippingStageHealthLogger",
        "closeTippingSelectionLog",
        "",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "logCurrencyMismatch",
        "tippingCurrencies",
        "",
        "currencyCode",
        "integrationType",
        "Lcom/stripe/restclient/IntegrationType;",
        "logReselectTipping",
        "logSkipTipping",
        "logTipEligible",
        "eligibleAmount",
        "",
        "openTippingSelectionLog",
        "Companion",
        "TippingSelectionStageLogger",
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
.field public static final Companion:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;


# instance fields
.field private final tippingDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final tippingSelectionLogger:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;

.field private final tippingStageLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->Companion:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$Companion;

    .line 113
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/paymentcollection/metrics/TippingLogger;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V
    .locals 3

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endToEndEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->buildTippingStageHealthLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->tippingStageLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 25
    new-instance v1, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;

    .line 26
    new-instance v2, Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;

    invoke-direct {v2}, Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;-><init>()V

    .line 25
    invoke-direct {v1, v0, p2, v2}, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;)V

    iput-object v1, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->tippingSelectionLogger:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;

    .line 28
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->buildTippingDiscreteHealthLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->tippingDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-void
.end method

.method private final buildTippingDiscreteHealthLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
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

    .line 130
    sget-object v0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$buildTippingDiscreteHealthLogger$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$buildTippingDiscreteHealthLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 241
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 133
    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$buildTippingDiscreteHealthLogger$2;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$buildTippingDiscreteHealthLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 245
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 136
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method

.method private final buildTippingStageHealthLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
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

    .line 119
    sget-object v0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$buildTippingStageHealthLogger$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$buildTippingStageHealthLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 233
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 122
    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$buildTippingStageHealthLogger$2;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$buildTippingStageHealthLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 237
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/StageScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 125
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public closeTippingSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->tippingSelectionLogger:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;

    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method

.method public logCurrencyMismatch(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/restclient/IntegrationType;)V
    .locals 7

    const-string v0, "tippingCurrencies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tipping flow will not start because there are no tipping configs match. the transaction used for the currency. Tipping currencies: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 47
    const-string v1, ". Transaction currency: "

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlin/Pair;

    .line 45
    invoke-virtual {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 50
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    .line 209
    check-cast p3, Ljava/lang/Enum;

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const-class p1, Lcom/stripe/restclient/IntegrationType;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    .line 212
    const-class p2, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "MagStripeAllowReason"

    goto :goto_0

    :cond_1
    const-class p1, Lcom/stripe/restclient/IntegrationType;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    .line 213
    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 215
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :goto_1
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->tippingDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$logCurrencyMismatch$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$logCurrencyMismatch$1;

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public logReselectTipping(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "logReselectTipping"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    .line 39
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    if-nez p1, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    const-class v0, Lcom/stripe/restclient/IntegrationType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 204
    const-class v1, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MagStripeAllowReason"

    goto :goto_0

    :cond_1
    const-class v0, Lcom/stripe/restclient/IntegrationType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 207
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_1
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->tippingDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$logReselectTipping$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$logReselectTipping$1;

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public logSkipTipping(Lcom/stripe/restclient/IntegrationType;)V
    .locals 8

    .line 57
    sget-object v0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Not starting the tipping flow because the skip tipping flag is set to true"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    .line 217
    check-cast p1, Ljava/lang/Enum;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/stripe/restclient/IntegrationType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 220
    const-class v1, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MagStripeAllowReason"

    goto :goto_0

    :cond_1
    const-class v0, Lcom/stripe/restclient/IntegrationType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 223
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :goto_1
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->tippingDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$logSkipTipping$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$logSkipTipping$1;

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public logTipEligible(Lcom/stripe/restclient/IntegrationType;J)V
    .locals 9

    .line 65
    sget-object v0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "logTipEligible"

    invoke-virtual {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    .line 225
    check-cast p1, Ljava/lang/Enum;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/stripe/restclient/IntegrationType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 228
    const-class v2, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MagStripeAllowReason"

    goto :goto_0

    :cond_1
    const-class v0, Lcom/stripe/restclient/IntegrationType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 231
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-nez p1, :cond_2

    const/4 v1, 0x1

    .line 68
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "IsZeroValue"

    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->tippingDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$logTipEligible$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$logTipEligible$1;

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public openTippingSelectionLog()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger;->tippingSelectionLogger:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;->openLog()V

    return-void
.end method
