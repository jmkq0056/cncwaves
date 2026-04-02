.class public final Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;
.super Ljava/lang/Object;
.source "DefaultDiscreteEventLogger.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultDiscreteEventLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultDiscreteEventLogger.kt\ncom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n+ 3 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,161:1\n16#2:162\n543#3,8:163\n543#3,8:171\n543#3,8:179\n543#3,8:187\n543#3,8:195\n543#3,8:203\n543#3,8:212\n543#3,8:220\n1#4:211\n*S KotlinDebug\n*F\n+ 1 DefaultDiscreteEventLogger.kt\ncom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger\n*L\n17#1:162\n21#1:163,8\n59#1:171,8\n60#1:179,8\n61#1:187,8\n92#1:195,8\n93#1:203,8\n113#1:212,8\n121#1:220,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0016\u0010\u001e\u001a\u00020\u00142\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0016J\u0010\u0010\"\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u001c\u0010#\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0006\u0012\u0004\u0018\u00010&0$*\u0004\u0018\u00010\'H\u0002R*\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\u0008j\u0002`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fj\u0002`\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;",
        "Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "healthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;",
        "Lcom/stripe/paymentcollection/metrics/DiscreteHealthLogger;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "logAllowingMagStripe",
        "",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "logNonCardPaymentMethodConfirmResult",
        "logOnlineConfirmResult",
        "logPartialAuthApproved",
        "authorizedAmount",
        "",
        "logPassthroughSwiped",
        "logPrematureCardRemoval",
        "logReaderInterfaceChanged",
        "readerTypes",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "logSurcharge",
        "toOnlineConfirmFailureReason",
        "Lkotlin/Pair;",
        "Lcom/stripe/paymentcollection/metrics/Result;",
        "Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;",
        "Lcom/stripe/transaction/ChargeAttempt;",
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
.field private final healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
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

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/stripe/paymentcollection/metrics/UtilsKt;->buildsDiscreteHealthLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 162
    const-class p1, Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method private final toOnlineConfirmFailureReason(Lcom/stripe/transaction/ChargeAttempt;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/transaction/ChargeAttempt;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/stripe/paymentcollection/metrics/Result;",
            "Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;",
            ">;"
        }
    .end annotation

    .line 129
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 130
    :cond_0
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulRefund;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 131
    :cond_1
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    .line 132
    :cond_2
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    .line 133
    :cond_3
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$PendingNextActionAttempt;

    :goto_3
    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    .line 134
    :cond_4
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;

    :goto_4
    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    .line 135
    :cond_5
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCollectedData;

    :goto_5
    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    .line 136
    :cond_6
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$IncompleteAttempt;

    :goto_6
    if-eqz v0, :cond_7

    .line 138
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 141
    :cond_7
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_7

    .line 142
    :cond_8
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedRefund;

    :goto_7
    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_8

    .line 143
    :cond_9
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$AlreadyRefunded;

    :goto_8
    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_9

    .line 144
    :cond_a
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$InvalidCollectedData;

    :goto_9
    if-eqz v0, :cond_b

    .line 145
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;->DECLINED:Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 148
    :cond_b
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_a

    .line 149
    :cond_c
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    if-eqz v0, :cond_d

    goto :goto_b

    .line 150
    :cond_d
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_b
    if-eqz v1, :cond_e

    .line 151
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;->UNKNOWN_NETWORK_FAILURE:Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 154
    :cond_e
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    if-eqz v0, :cond_f

    .line 155
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;->SCA_NEEDED:Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_f
    if-nez p1, :cond_10

    .line 158
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_10
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public logAllowingMagStripe(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    .line 21
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripePaymentCollectionAuthority()Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    if-nez v0, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    const-class v1, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 166
    const-class v2, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MagStripeAllowReason"

    goto :goto_0

    :cond_1
    const-class v1, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 167
    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 169
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :goto_1
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v0, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    move-object v2, v0

    check-cast v2, Lcom/stripe/loggingmodels/Outcome;

    sget-object v0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logAllowingMagStripe$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logAllowingMagStripe$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " magStripeAllowReason "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".magStripePaymentCollectionAuthority"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public logNonCardPaymentMethodConfirmResult(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 11

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v0

    .line 71
    instance-of v1, v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isTimedOut()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lkotlin/Pair;

    .line 79
    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 80
    sget-object v3, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    .line 78
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lkotlin/Pair;

    .line 84
    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 85
    sget-object v3, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    .line 83
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->toOnlineConfirmFailureReason(Lcom/stripe/transaction/ChargeAttempt;)Lkotlin/Pair;

    move-result-object v1

    .line 75
    :goto_1
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/metrics/Result;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    .line 91
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v3

    .line 195
    check-cast v1, Ljava/lang/Enum;

    const-string v4, "MagStripeAllowReason"

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const-class v5, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 198
    const-class v6, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v4

    goto :goto_2

    :cond_4
    const-class v5, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 199
    invoke-interface {v5}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 201
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_3
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedNonCardPaymentMethod()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    if-nez p1, :cond_5

    goto :goto_5

    .line 203
    :cond_5
    const-class v1, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 206
    const-class v5, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const-class v1, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 207
    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 209
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v0, :cond_7

    .line 94
    const-string p1, "AlreadyCompletedType"

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_7
    invoke-static {v3}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 96
    iget-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "result"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "tags"

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "logNonCardPaymentMethodConfirmResult"

    invoke-interface {p1, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 97
    iget-object v4, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    invoke-static {v2}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v5

    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logNonCardPaymentMethodConfirmResult$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logNonCardPaymentMethodConfirmResult$1;

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public logOnlineConfirmResult(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 12

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/stripe/paymentcollection/metrics/UtilsKt;->getPaymentMethodType(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isTimedOut()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lkotlin/Pair;

    .line 46
    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 47
    sget-object v3, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    .line 45
    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Lkotlin/Pair;

    .line 51
    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 52
    sget-object v3, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    .line 50
    invoke-direct {p1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->toOnlineConfirmFailureReason(Lcom/stripe/transaction/ChargeAttempt;)Lkotlin/Pair;

    move-result-object p1

    .line 44
    :goto_0
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/metrics/Result;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    .line 58
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v3

    .line 171
    check-cast v0, Ljava/lang/Enum;

    const-string v4, "MagStripeAllowReason"

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const-class v5, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 174
    const-class v6, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v4

    goto :goto_1

    :cond_3
    const-class v5, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 175
    invoke-interface {v5}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 177
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :goto_2
    check-cast v1, Ljava/lang/Enum;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const-class v0, Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 182
    const-class v5, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v4

    goto :goto_3

    :cond_5
    const-class v0, Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 185
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :goto_4
    check-cast p1, Ljava/lang/Enum;

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    const-class v0, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 190
    const-class v1, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const-class v0, Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 193
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :goto_6
    invoke-static {v3}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 65
    iget-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "result"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "tags"

    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "logOnlineConfirmResult"

    invoke-interface {p1, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 66
    iget-object v5, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    invoke-static {v2}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v6

    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logOnlineConfirmResult$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logOnlineConfirmResult$1;

    move-object v9, p1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public logPartialAuthApproved(Lcom/stripe/paymentcollection/PaymentCollectionData;J)V
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    .line 121
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    if-nez v0, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    const-class v1, Lcom/stripe/restclient/IntegrationType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 223
    const-class v2, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MagStripeAllowReason"

    goto :goto_0

    :cond_1
    const-class v1, Lcom/stripe/restclient/IntegrationType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 224
    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 226
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :goto_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTipAmount()Lcom/stripe/currency/Amount;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x0

    :goto_2
    cmp-long p1, v0, p2

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "TipGreaterThanAuthorized"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logPartialAuthApproved$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logPartialAuthApproved$1;

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public logPassthroughSwiped(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    .line 104
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripeReadResult()Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    move-result-object v0

    instance-of v0, v0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    if-eqz v0, :cond_0

    const-string v0, "Success"

    goto :goto_0

    :cond_0
    const-string v0, "Failure"

    :goto_0
    const-string v1, "SwipeResult"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/hardware/paymentcollection/TransactionType;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransactionType"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    move-object v2, p1

    check-cast v2, Lcom/stripe/loggingmodels/Outcome;

    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logPassthroughSwiped$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logPassthroughSwiped$1;

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public logPrematureCardRemoval(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "logPrematureCardRemoval"

    invoke-interface {p1, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 31
    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logPrematureCardRemoval$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logPrematureCardRemoval$1;

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public logReaderInterfaceChanged(Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readerTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const-string p1, "_"

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logReaderInterfaceChanged readerTypes "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 37
    const-string v0, "ReaderInterfaces"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 38
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    move-object v1, p1

    check-cast v1, Lcom/stripe/loggingmodels/Outcome;

    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logReaderInterfaceChanged$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logReaderInterfaceChanged$1;

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x4

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public logSurcharge(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    .line 113
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    if-nez p1, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    const-class v0, Lcom/stripe/restclient/IntegrationType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 215
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

    .line 216
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 218
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_1
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logSurcharge$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger$logSurcharge$1;

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method
