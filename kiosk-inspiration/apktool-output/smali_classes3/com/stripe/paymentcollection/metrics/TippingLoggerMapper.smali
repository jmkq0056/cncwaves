.class public final Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;
.super Ljava/lang/Object;
.source "DefaultTippingLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper$Companion;,
        Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultTippingLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultTippingLogger.kt\ncom/stripe/paymentcollection/metrics/TippingLoggerMapper\n+ 2 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n*L\n1#1,200:1\n543#2,8:201\n543#2,8:209\n*S KotlinDebug\n*F\n+ 1 DefaultTippingLogger.kt\ncom/stripe/paymentcollection/metrics/TippingLoggerMapper\n*L\n172#1:201,8\n176#1:209,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;",
        "",
        "()V",
        "generateTippingResult",
        "Lcom/stripe/paymentcollection/metrics/Result;",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "generateTippingTags",
        "",
        "",
        "getFailureReason",
        "Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;",
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
.field public static final Companion:Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;->Companion:Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper$Companion;

    .line 197
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getFailureReason(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;
    .locals 3

    .line 143
    sget-object v0, Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TippingLoggerMapper getFailureReason "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 144
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCancelReason()Lcom/stripe/paymentcollection/CancelReason;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/CancelReason;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_0
    if-eq v0, v1, :cond_4

    const/4 p1, 0x1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_1

    .line 147
    sget-object p1, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->HARDWARE_CANCELLED:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    return-object p1

    .line 151
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 146
    :cond_2
    sget-object p1, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    return-object p1

    .line 145
    :cond_3
    sget-object p1, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    return-object p1

    .line 149
    :cond_4
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTippingState()Lcom/stripe/paymentcollection/TippingState;

    move-result-object p1

    .line 150
    instance-of v0, p1, Lcom/stripe/paymentcollection/TippingState$Completed;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/stripe/paymentcollection/TippingState$Completed;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/TippingState$Completed;->getResult()Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;->getTipSelectionFailure()Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    move-result-object p1

    return-object p1

    .line 151
    :cond_5
    sget-object p1, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;->TIP_SELECTION_TYPE_NOT_FOUND:Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    return-object p1
.end method


# virtual methods
.method public final generateTippingResult(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/metrics/Result;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;->getFailureReason(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    move-result-object p1

    if-nez p1, :cond_0

    .line 190
    sget-object p1, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    return-object p1

    .line 192
    :cond_0
    sget-object p1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    return-object p1
.end method

.method public final generateTippingTags(Lcom/stripe/paymentcollection/PaymentCollectionData;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/PaymentCollectionData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 163
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;->getFailureReason(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTippingState()Lcom/stripe/paymentcollection/TippingState;

    move-result-object p1

    .line 166
    instance-of v2, p1, Lcom/stripe/paymentcollection/TippingState$Completed;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/stripe/paymentcollection/TippingState$Completed;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/TippingState$Completed;->getResult()Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;->getTippingType()Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 170
    :goto_0
    const-string v2, "MagStripeAllowReason"

    if-eqz v1, :cond_2

    .line 201
    check-cast v1, Ljava/lang/Enum;

    const-class p1, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    .line 204
    const-class v3, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-class p1, Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    .line 205
    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 207
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 209
    :cond_2
    check-cast p1, Ljava/lang/Enum;

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    const-class v1, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 212
    const-class v3, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-class v1, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 213
    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 215
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
