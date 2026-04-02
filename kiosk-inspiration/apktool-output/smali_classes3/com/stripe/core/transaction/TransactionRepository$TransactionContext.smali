.class final Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;
.super Ljava/lang/Object;
.source "TransactionRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/transaction/TransactionRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransactionContext"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008D\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u00a9\u0001\u0012\u0014\u0008\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0002\u0010\u001bJ\u0015\u0010M\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u00c6\u0003J\t\u0010N\u001a\u00020\u0015H\u00c6\u0003J\u0010\u0010O\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003\u00a2\u0006\u0002\u00101J\u000b\u0010P\u001a\u0004\u0018\u00010\u0018H\u00c6\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u001aH\u00c6\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u00b2\u0001\u0010Z\u001a\u00020\u00002\u0014\u0008\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00c6\u0001\u00a2\u0006\u0002\u0010[J\u0013\u0010\\\u001a\u00020\u00152\u0008\u0010]\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010^\u001a\u00020_H\u00d6\u0001J\t\u0010`\u001a\u00020\u0005H\u00d6\u0001R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00104\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010JR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010B\"\u0004\u0008L\u0010D\u00a8\u0006a"
    }
    d2 = {
        "Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;",
        "",
        "requestIds",
        "Ljava/util/EnumMap;",
        "Lcom/stripe/restclient/TransactionOpType;",
        "",
        "integrationType",
        "Lcom/stripe/restclient/IntegrationType;",
        "collectiblePayment",
        "Lcom/stripe/transaction/CollectiblePayment;",
        "cancelableOperationContext",
        "Lcom/stripe/core/transaction/CancelableOperationContext;",
        "interstitialJob",
        "Lkotlinx/coroutines/Job;",
        "amountTip",
        "Lcom/stripe/currency/Amount;",
        "paymentIntentId",
        "stripeAccountId",
        "refundParams",
        "Lcom/stripe/core/transaction/ConfirmRefundParams;",
        "dynamicCurrencyConversionOfferPresented",
        "",
        "dynamicCurrencyConversionSelected",
        "nonCardPaymentMethodType",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "(Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V",
        "getAllowRedisplay",
        "()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "setAllowRedisplay",
        "(Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V",
        "getAmountTip",
        "()Lcom/stripe/currency/Amount;",
        "setAmountTip",
        "(Lcom/stripe/currency/Amount;)V",
        "getCancelableOperationContext",
        "()Lcom/stripe/core/transaction/CancelableOperationContext;",
        "setCancelableOperationContext",
        "(Lcom/stripe/core/transaction/CancelableOperationContext;)V",
        "getCollectiblePayment",
        "()Lcom/stripe/transaction/CollectiblePayment;",
        "setCollectiblePayment",
        "(Lcom/stripe/transaction/CollectiblePayment;)V",
        "getDynamicCurrencyConversionOfferPresented",
        "()Z",
        "setDynamicCurrencyConversionOfferPresented",
        "(Z)V",
        "getDynamicCurrencyConversionSelected",
        "()Ljava/lang/Boolean;",
        "setDynamicCurrencyConversionSelected",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getIntegrationType",
        "()Lcom/stripe/restclient/IntegrationType;",
        "setIntegrationType",
        "(Lcom/stripe/restclient/IntegrationType;)V",
        "getInterstitialJob",
        "()Lkotlinx/coroutines/Job;",
        "setInterstitialJob",
        "(Lkotlinx/coroutines/Job;)V",
        "getNonCardPaymentMethodType",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "setNonCardPaymentMethodType",
        "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V",
        "getPaymentIntentId",
        "()Ljava/lang/String;",
        "setPaymentIntentId",
        "(Ljava/lang/String;)V",
        "getRefundParams",
        "()Lcom/stripe/core/transaction/ConfirmRefundParams;",
        "setRefundParams",
        "(Lcom/stripe/core/transaction/ConfirmRefundParams;)V",
        "getRequestIds",
        "()Ljava/util/EnumMap;",
        "getStripeAccountId",
        "setStripeAccountId",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "transaction_release"
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
.field private allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

.field private amountTip:Lcom/stripe/currency/Amount;

.field private cancelableOperationContext:Lcom/stripe/core/transaction/CancelableOperationContext;

.field private collectiblePayment:Lcom/stripe/transaction/CollectiblePayment;

.field private dynamicCurrencyConversionOfferPresented:Z

.field private dynamicCurrencyConversionSelected:Ljava/lang/Boolean;

.field private integrationType:Lcom/stripe/restclient/IntegrationType;

.field private interstitialJob:Lkotlinx/coroutines/Job;

.field private nonCardPaymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

.field private paymentIntentId:Ljava/lang/String;

.field private refundParams:Lcom/stripe/core/transaction/ConfirmRefundParams;

.field private final requestIds:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/stripe/restclient/TransactionOpType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stripeAccountId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 16

    const/16 v14, 0x1fff

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;-><init>(Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/stripe/restclient/TransactionOpType;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/restclient/IntegrationType;",
            "Lcom/stripe/transaction/CollectiblePayment;",
            "Lcom/stripe/core/transaction/CancelableOperationContext;",
            "Lkotlinx/coroutines/Job;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/core/transaction/ConfirmRefundParams;",
            "Z",
            "Ljava/lang/Boolean;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            ")V"
        }
    .end annotation

    const-string v0, "requestIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->requestIds:Ljava/util/EnumMap;

    .line 122
    iput-object p2, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->integrationType:Lcom/stripe/restclient/IntegrationType;

    .line 127
    iput-object p3, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->collectiblePayment:Lcom/stripe/transaction/CollectiblePayment;

    .line 132
    iput-object p4, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->cancelableOperationContext:Lcom/stripe/core/transaction/CancelableOperationContext;

    .line 138
    iput-object p5, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->interstitialJob:Lkotlinx/coroutines/Job;

    .line 143
    iput-object p6, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->amountTip:Lcom/stripe/currency/Amount;

    .line 149
    iput-object p7, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->paymentIntentId:Ljava/lang/String;

    .line 154
    iput-object p8, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->stripeAccountId:Ljava/lang/String;

    .line 162
    iput-object p9, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->refundParams:Lcom/stripe/core/transaction/ConfirmRefundParams;

    .line 164
    iput-boolean p10, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionOfferPresented:Z

    .line 166
    iput-object p11, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionSelected:Ljava/lang/Boolean;

    .line 168
    iput-object p12, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->nonCardPaymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 170
    iput-object p13, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 117
    new-instance p1, Ljava/util/EnumMap;

    const-class v1, Lcom/stripe/restclient/TransactionOpType;

    invoke-direct {p1, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    :cond_0
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    move-object v4, v2

    goto :goto_2

    :cond_3
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    move-object v5, v2

    goto :goto_3

    :cond_4
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    move-object v6, v2

    goto :goto_4

    :cond_5
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    move-object v7, v2

    goto :goto_5

    :cond_6
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    move-object v8, v2

    goto :goto_6

    :cond_7
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    move-object v9, v2

    goto :goto_7

    :cond_8
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    goto :goto_8

    :cond_9
    move/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    move-object v11, v2

    goto :goto_9

    :cond_a
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    move-object v12, v2

    goto :goto_a

    :cond_b
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    move-object/from16 p15, v2

    goto :goto_b

    :cond_c
    move-object/from16 p15, p13

    :goto_b
    move-object p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move/from16 p12, v10

    move-object/from16 p13, v11

    move-object/from16 p14, v12

    .line 113
    invoke-direct/range {p2 .. p15}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;-><init>(Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;ILjava/lang/Object;)Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;
    .locals 12

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->requestIds:Ljava/util/EnumMap;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->integrationType:Lcom/stripe/restclient/IntegrationType;

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->collectiblePayment:Lcom/stripe/transaction/CollectiblePayment;

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->cancelableOperationContext:Lcom/stripe/core/transaction/CancelableOperationContext;

    goto :goto_2

    :cond_3
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->interstitialJob:Lkotlinx/coroutines/Job;

    goto :goto_3

    :cond_4
    move-object/from16 v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->amountTip:Lcom/stripe/currency/Amount;

    goto :goto_4

    :cond_5
    move-object/from16 v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->paymentIntentId:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object/from16 v6, p7

    :goto_5
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->stripeAccountId:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object/from16 v7, p8

    :goto_6
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->refundParams:Lcom/stripe/core/transaction/ConfirmRefundParams;

    goto :goto_7

    :cond_8
    move-object/from16 v8, p9

    :goto_7
    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_9

    iget-boolean v9, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionOfferPresented:Z

    goto :goto_8

    :cond_9
    move/from16 v9, p10

    :goto_8
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionSelected:Ljava/lang/Boolean;

    goto :goto_9

    :cond_a
    move-object/from16 v10, p11

    :goto_9
    and-int/lit16 v11, v0, 0x800

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->nonCardPaymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    goto :goto_a

    :cond_b
    move-object/from16 v11, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    move-object/from16 p15, v0

    goto :goto_b

    :cond_c
    move-object/from16 p15, p13

    :goto_b
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    move/from16 p12, v9

    move-object/from16 p13, v10

    move-object/from16 p14, v11

    invoke-virtual/range {p2 .. p15}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->copy(Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/stripe/restclient/TransactionOpType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->requestIds:Ljava/util/EnumMap;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionOfferPresented:Z

    return v0
.end method

.method public final component11()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionSelected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component12()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->nonCardPaymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object v0
.end method

.method public final component13()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    return-object v0
.end method

.method public final component2()Lcom/stripe/restclient/IntegrationType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->integrationType:Lcom/stripe/restclient/IntegrationType;

    return-object v0
.end method

.method public final component3()Lcom/stripe/transaction/CollectiblePayment;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->collectiblePayment:Lcom/stripe/transaction/CollectiblePayment;

    return-object v0
.end method

.method public final component4()Lcom/stripe/core/transaction/CancelableOperationContext;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->cancelableOperationContext:Lcom/stripe/core/transaction/CancelableOperationContext;

    return-object v0
.end method

.method public final component5()Lkotlinx/coroutines/Job;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->interstitialJob:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final component6()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->amountTip:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->paymentIntentId:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->stripeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Lcom/stripe/core/transaction/ConfirmRefundParams;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->refundParams:Lcom/stripe/core/transaction/ConfirmRefundParams;

    return-object v0
.end method

.method public final copy(Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/stripe/restclient/TransactionOpType;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/restclient/IntegrationType;",
            "Lcom/stripe/transaction/CollectiblePayment;",
            "Lcom/stripe/core/transaction/CancelableOperationContext;",
            "Lkotlinx/coroutines/Job;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/core/transaction/ConfirmRefundParams;",
            "Z",
            "Ljava/lang/Boolean;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            ")",
            "Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;"
        }
    .end annotation

    const-string v0, "requestIds"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;-><init>(Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->requestIds:Ljava/util/EnumMap;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->requestIds:Ljava/util/EnumMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->integrationType:Lcom/stripe/restclient/IntegrationType;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->integrationType:Lcom/stripe/restclient/IntegrationType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->collectiblePayment:Lcom/stripe/transaction/CollectiblePayment;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->collectiblePayment:Lcom/stripe/transaction/CollectiblePayment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->cancelableOperationContext:Lcom/stripe/core/transaction/CancelableOperationContext;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->cancelableOperationContext:Lcom/stripe/core/transaction/CancelableOperationContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->interstitialJob:Lkotlinx/coroutines/Job;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->interstitialJob:Lkotlinx/coroutines/Job;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->amountTip:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->amountTip:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->paymentIntentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->paymentIntentId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->stripeAccountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->stripeAccountId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->refundParams:Lcom/stripe/core/transaction/ConfirmRefundParams;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->refundParams:Lcom/stripe/core/transaction/ConfirmRefundParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionOfferPresented:Z

    iget-boolean v3, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionOfferPresented:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionSelected:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionSelected:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->nonCardPaymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    iget-object v3, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->nonCardPaymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    iget-object p1, p1, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    if-eq v1, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    return-object v0
.end method

.method public final getAmountTip()Lcom/stripe/currency/Amount;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->amountTip:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getCancelableOperationContext()Lcom/stripe/core/transaction/CancelableOperationContext;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->cancelableOperationContext:Lcom/stripe/core/transaction/CancelableOperationContext;

    return-object v0
.end method

.method public final getCollectiblePayment()Lcom/stripe/transaction/CollectiblePayment;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->collectiblePayment:Lcom/stripe/transaction/CollectiblePayment;

    return-object v0
.end method

.method public final getDynamicCurrencyConversionOfferPresented()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionOfferPresented:Z

    return v0
.end method

.method public final getDynamicCurrencyConversionSelected()Ljava/lang/Boolean;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionSelected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIntegrationType()Lcom/stripe/restclient/IntegrationType;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->integrationType:Lcom/stripe/restclient/IntegrationType;

    return-object v0
.end method

.method public final getInterstitialJob()Lkotlinx/coroutines/Job;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->interstitialJob:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final getNonCardPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->nonCardPaymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object v0
.end method

.method public final getPaymentIntentId()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->paymentIntentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefundParams()Lcom/stripe/core/transaction/ConfirmRefundParams;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->refundParams:Lcom/stripe/core/transaction/ConfirmRefundParams;

    return-object v0
.end method

.method public final getRequestIds()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/stripe/restclient/TransactionOpType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->requestIds:Ljava/util/EnumMap;

    return-object v0
.end method

.method public final getStripeAccountId()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->stripeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->requestIds:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->integrationType:Lcom/stripe/restclient/IntegrationType;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/stripe/restclient/IntegrationType;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->collectiblePayment:Lcom/stripe/transaction/CollectiblePayment;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/stripe/transaction/CollectiblePayment;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->cancelableOperationContext:Lcom/stripe/core/transaction/CancelableOperationContext;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/stripe/core/transaction/CancelableOperationContext;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->interstitialJob:Lkotlinx/coroutines/Job;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->amountTip:Lcom/stripe/currency/Amount;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->paymentIntentId:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->stripeAccountId:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->refundParams:Lcom/stripe/core/transaction/ConfirmRefundParams;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Lcom/stripe/core/transaction/ConfirmRefundParams;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionOfferPresented:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionSelected:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->nonCardPaymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    if-nez v1, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/AllowRedisplay;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    return v0
.end method

.method public final setAllowRedisplay(Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    return-void
.end method

.method public final setAmountTip(Lcom/stripe/currency/Amount;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->amountTip:Lcom/stripe/currency/Amount;

    return-void
.end method

.method public final setCancelableOperationContext(Lcom/stripe/core/transaction/CancelableOperationContext;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->cancelableOperationContext:Lcom/stripe/core/transaction/CancelableOperationContext;

    return-void
.end method

.method public final setCollectiblePayment(Lcom/stripe/transaction/CollectiblePayment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->collectiblePayment:Lcom/stripe/transaction/CollectiblePayment;

    return-void
.end method

.method public final setDynamicCurrencyConversionOfferPresented(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionOfferPresented:Z

    return-void
.end method

.method public final setDynamicCurrencyConversionSelected(Ljava/lang/Boolean;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionSelected:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIntegrationType(Lcom/stripe/restclient/IntegrationType;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->integrationType:Lcom/stripe/restclient/IntegrationType;

    return-void
.end method

.method public final setInterstitialJob(Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->interstitialJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setNonCardPaymentMethodType(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->nonCardPaymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-void
.end method

.method public final setPaymentIntentId(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->paymentIntentId:Ljava/lang/String;

    return-void
.end method

.method public final setRefundParams(Lcom/stripe/core/transaction/ConfirmRefundParams;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->refundParams:Lcom/stripe/core/transaction/ConfirmRefundParams;

    return-void
.end method

.method public final setStripeAccountId(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->stripeAccountId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransactionContext(requestIds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->requestIds:Ljava/util/EnumMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", integrationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->integrationType:Lcom/stripe/restclient/IntegrationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", collectiblePayment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->collectiblePayment:Lcom/stripe/transaction/CollectiblePayment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cancelableOperationContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->cancelableOperationContext:Lcom/stripe/core/transaction/CancelableOperationContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interstitialJob="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->interstitialJob:Lkotlinx/coroutines/Job;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amountTip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->amountTip:Lcom/stripe/currency/Amount;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paymentIntentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->paymentIntentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stripeAccountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->stripeAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", refundParams="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->refundParams:Lcom/stripe/core/transaction/ConfirmRefundParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dynamicCurrencyConversionOfferPresented="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionOfferPresented:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dynamicCurrencyConversionSelected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->dynamicCurrencyConversionSelected:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nonCardPaymentMethodType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->nonCardPaymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", allowRedisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
