.class final Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;
.super Ljava/lang/Object;
.source "PaymentCollectionCoordinatorWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Config"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0013J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000f\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u00c6\u0003J\u0083\u0001\u0010-\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010.\u001a\u00020\u00032\u0008\u0010/\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00100\u001a\u000201H\u00d6\u0001J\t\u00102\u001a\u00020\rH\u00d6\u0001R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0017R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0011\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0017R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u00063"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;",
        "",
        "skipTipping",
        "",
        "manualEntry",
        "isOffline",
        "isDeferredAuthorizationCountry",
        "tipEligibleAmount",
        "Lcom/stripe/currency/Amount;",
        "domesticDebitPriority",
        "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "enableCustomerCancellation",
        "surchargeNotice",
        "",
        "nonCardPaymentMethodTypes",
        "",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "requestIncrementalAuthorizationSupport",
        "forcePinEntry",
        "(ZZZZLcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)V",
        "getDomesticDebitPriority",
        "()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "getEnableCustomerCancellation",
        "()Z",
        "getForcePinEntry",
        "getManualEntry",
        "getNonCardPaymentMethodTypes",
        "()Ljava/util/List;",
        "getRequestIncrementalAuthorizationSupport",
        "getSkipTipping",
        "getSurchargeNotice",
        "()Ljava/lang/String;",
        "getTipEligibleAmount",
        "()Lcom/stripe/currency/Amount;",
        "component1",
        "component10",
        "component11",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "adapter_release"
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
.field private final domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

.field private final enableCustomerCancellation:Z

.field private final forcePinEntry:Z

.field private final isDeferredAuthorizationCountry:Z

.field private final isOffline:Z

.field private final manualEntry:Z

.field private final nonCardPaymentMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation
.end field

.field private final requestIncrementalAuthorizationSupport:Z

.field private final skipTipping:Z

.field private final surchargeNotice:Ljava/lang/String;

.field private final tipEligibleAmount:Lcom/stripe/currency/Amount;


# direct methods
.method public constructor <init>(ZZZZLcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "nonCardPaymentMethodTypes"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->skipTipping:Z

    .line 75
    iput-boolean p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->manualEntry:Z

    .line 76
    iput-boolean p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isOffline:Z

    .line 77
    iput-boolean p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isDeferredAuthorizationCountry:Z

    .line 78
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    .line 79
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    .line 80
    iput-boolean p7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->enableCustomerCancellation:Z

    .line 81
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->surchargeNotice:Ljava/lang/String;

    .line 82
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->nonCardPaymentMethodTypes:Ljava/util/List;

    .line 83
    iput-boolean p10, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->requestIncrementalAuthorizationSupport:Z

    .line 84
    iput-boolean p11, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->forcePinEntry:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;ZZZZLcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    iget-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->skipTipping:Z

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    iget-boolean p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->manualEntry:Z

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    iget-boolean p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isOffline:Z

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    iget-boolean p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isDeferredAuthorizationCountry:Z

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    iget-object p5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    iget-object p6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    iget-boolean p7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->enableCustomerCancellation:Z

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    iget-object p8, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->surchargeNotice:Ljava/lang/String;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    iget-object p9, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->nonCardPaymentMethodTypes:Ljava/util/List;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    iget-boolean p10, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->requestIncrementalAuthorizationSupport:Z

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    iget-boolean p11, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->forcePinEntry:Z

    :cond_a
    move p12, p10

    move p13, p11

    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move p9, p7

    move p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p13}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->copy(ZZZZLcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->skipTipping:Z

    return v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->requestIncrementalAuthorizationSupport:Z

    return v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->forcePinEntry:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->manualEntry:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isOffline:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isDeferredAuthorizationCountry:Z

    return v0
.end method

.method public final component5()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component6()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    return-object v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->enableCustomerCancellation:Z

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->surchargeNotice:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->nonCardPaymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZZZZLcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;ZZ)",
            "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;"
        }
    .end annotation

    const-string v0, "nonCardPaymentMethodTypes"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;-><init>(ZZZZLcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->skipTipping:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->skipTipping:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->manualEntry:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->manualEntry:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isOffline:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isOffline:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isDeferredAuthorizationCountry:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isDeferredAuthorizationCountry:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->enableCustomerCancellation:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->enableCustomerCancellation:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->surchargeNotice:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->surchargeNotice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->nonCardPaymentMethodTypes:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->nonCardPaymentMethodTypes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->requestIncrementalAuthorizationSupport:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->requestIncrementalAuthorizationSupport:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->forcePinEntry:Z

    iget-boolean p1, p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->forcePinEntry:Z

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getDomesticDebitPriority()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    return-object v0
.end method

.method public final getEnableCustomerCancellation()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getForcePinEntry()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->forcePinEntry:Z

    return v0
.end method

.method public final getManualEntry()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->manualEntry:Z

    return v0
.end method

.method public final getNonCardPaymentMethodTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->nonCardPaymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getRequestIncrementalAuthorizationSupport()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->requestIncrementalAuthorizationSupport:Z

    return v0
.end method

.method public final getSkipTipping()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->skipTipping:Z

    return v0
.end method

.method public final getSurchargeNotice()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->surchargeNotice:Ljava/lang/String;

    return-object v0
.end method

.method public final getTipEligibleAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->skipTipping:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->manualEntry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isOffline:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isDeferredAuthorizationCountry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->enableCustomerCancellation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->surchargeNotice:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->nonCardPaymentMethodTypes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->requestIncrementalAuthorizationSupport:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->forcePinEntry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isDeferredAuthorizationCountry()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isDeferredAuthorizationCountry:Z

    return v0
.end method

.method public final isOffline()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isOffline:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Config(skipTipping="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->skipTipping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", manualEntry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->manualEntry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isOffline="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isOffline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDeferredAuthorizationCountry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isDeferredAuthorizationCountry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tipEligibleAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", domesticDebitPriority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enableCustomerCancellation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->enableCustomerCancellation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", surchargeNotice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->surchargeNotice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nonCardPaymentMethodTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->nonCardPaymentMethodTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestIncrementalAuthorizationSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->requestIncrementalAuthorizationSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", forcePinEntry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->forcePinEntry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
