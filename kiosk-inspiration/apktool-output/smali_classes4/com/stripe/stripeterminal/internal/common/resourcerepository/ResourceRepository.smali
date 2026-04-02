.class public interface abstract Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;
.super Ljava/lang/Object;
.source "ResourceRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00dc\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001JX\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2>\u0010\u000c\u001a:\u0012\u0015\u0012\u0013\u0018\u00010\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0015\u0012\u0013\u0018\u00010\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u0015H&J\"\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u00032\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u0018H&J\u0008\u0010\"\u001a\u00020\u0014H&J\u0018\u0010#\u001a\u00020$2\u0006\u0010!\u001a\u00020$2\u0006\u0010%\u001a\u00020&H&J\u001c\u0010\'\u001a\u00020(2\u0006\u0010\u0019\u001a\u00020\u00032\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003H&Jw\u0010)\u001a\u00020\u00182\u0006\u0010*\u001a\u00020\u00182\u000e\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0,2\u0018\u0010.\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000\u00170/2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002020,2\u0008\u0008\u0002\u00103\u001a\u00020(2\u0006\u00104\u001a\u0002052\n\u0008\u0002\u00106\u001a\u0004\u0018\u0001072\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u0003H&\u00a2\u0006\u0002\u00109J<\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=2\u0008\u0010>\u001a\u0004\u0018\u00010-2\u0018\u0010.\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000\u00170/2\u0006\u00104\u001a\u000205H&JT\u0010?\u001a\u00020$2\u0006\u0010!\u001a\u00020$2\u0008\u0010>\u001a\u0004\u0018\u00010-2\u0018\u0010.\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000\u00170/2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002020,2\u0008\u0008\u0002\u00103\u001a\u00020(2\u0006\u00104\u001a\u000205H&J\u0018\u0010@\u001a\u00020\u00182\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH&J\u0010\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u000202H&J\u0018\u0010H\u001a\u00020$2\u0006\u0010I\u001a\u00020J2\u0006\u0010C\u001a\u00020DH&J\"\u0010K\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020M0L2\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u00030OH&J\u0018\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020S2\u0006\u0010G\u001a\u000202H&J$\u0010T\u001a\u00020\u00182\u0006\u0010*\u001a\u00020\u00182\u0008\u0010>\u001a\u0004\u0018\u00010-2\u0008\u0008\u0002\u0010U\u001a\u00020(H&R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006V\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
        "",
        "defaultRefundReason",
        "",
        "getDefaultRefundReason",
        "()Ljava/lang/String;",
        "activateReader",
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "connectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "setReconnectParams",
        "Lkotlin/Function2;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "Lkotlin/ParameterName;",
        "name",
        "bluetoothConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "usbConfig",
        "",
        "Lcom/stripe/offlinemode/helpers/SetReconnectParams;",
        "awaitActionRequiredPaymentIntentCompletion",
        "Lkotlinx/coroutines/Deferred;",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "paymentIntentId",
        "accountId",
        "cancelConfirmPaymentIntent",
        "callback",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "cancelConfirmRefund",
        "cancelConfirmSetupIntent",
        "cancelPaymentIntent",
        "intent",
        "cancelPaymentIntentActionRequired",
        "cancelSetupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "completePaymentIntentActionRequired",
        "",
        "confirmPaymentIntent",
        "paymentIntent",
        "getCollectiblePayment",
        "Lkotlin/Function0;",
        "Lcom/stripe/transaction/CollectiblePayment;",
        "handleAuthResponse",
        "Lkotlin/Function1;",
        "Lcom/stripe/hardware/emv/TransactionResult;",
        "collectScaPaymentMethodData",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "immediateRecollectForSca",
        "authStateListener",
        "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
        "amountSurcharge",
        "",
        "returnUrl",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "confirmRefund",
        "Lcom/stripe/stripeterminal/external/models/Refund;",
        "refundParams",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "collectiblePayment",
        "confirmSetupIntent",
        "createPaymentIntent",
        "paymentIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "createConfiguration",
        "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;",
        "createReaderCollectedData",
        "Lcom/stripe/stripeterminal/external/models/CollectedData;",
        "paymentMethodData",
        "createSetupIntent",
        "setupIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "getReaderLocations",
        "",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "deviceSerials",
        "",
        "readReusableCard",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethod;",
        "readReusableCardParams",
        "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;",
        "updatePaymentIntent",
        "requestDynamicCurrencyConversion",
        "resourcerepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic awaitActionRequiredPaymentIntentCompletion$default(Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 122
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->awaitActionRequiredPaymentIntentCompletion(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: awaitActionRequiredPaymentIntentCompletion"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic completePaymentIntentActionRequired$default(Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 126
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->completePaymentIntentActionRequired(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: completePaymentIntentActionRequired"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic confirmPaymentIntent$default(Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move/from16 v0, p9

    if-nez p10, :cond_3

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v7, v1

    goto :goto_0

    :cond_0
    move/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    move-object v10, v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p6

    move-object v2, p0

    goto :goto_2

    :cond_2
    move-object/from16 v10, p8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p6

    .line 77
    :goto_2
    invoke-interface/range {v2 .. v10}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: confirmPaymentIntent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic confirmSetupIntent$default(Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 7

    if-nez p8, :cond_1

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p5, 0x1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 88
    invoke-interface/range {v0 .. v6}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: confirmSetupIntent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic updatePaymentIntent$default(Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 70
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updatePaymentIntent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
            "-",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract awaitActionRequiredPaymentIntentCompletion(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cancelConfirmPaymentIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
.end method

.method public abstract cancelConfirmRefund(Lcom/stripe/stripeterminal/external/callable/Callback;)V
.end method

.method public abstract cancelConfirmSetupIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
.end method

.method public abstract cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract cancelPaymentIntentActionRequired()V
.end method

.method public abstract cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract completePaymentIntentActionRequired(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/transaction/CollectiblePayment;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            ">;Z",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract confirmRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/Refund;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
            "Lcom/stripe/transaction/CollectiblePayment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/Refund;"
        }
    .end annotation
.end method

.method public abstract confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
            "Lcom/stripe/transaction/CollectiblePayment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            ">;Z",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;"
        }
    .end annotation
.end method

.method public abstract createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract createReaderCollectedData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/CollectedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
.end method

.method public getDefaultRefundReason()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "requested_by_customer"

    return-object v0
.end method

.method public abstract getReaderLocations(Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract readReusableCard(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;
.end method

.method public abstract updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
.end method
