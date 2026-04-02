.class public final Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;
.super Ljava/lang/Object;
.source "ProxyResourceRepository.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006JX\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2>\u0010\u000e\u001a:\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0015\u0012\u0013\u0018\u00010\u0014\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u00160\u000fj\u0002`\u0017H\u0016J \u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010\"\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u001aH\u0016J\u0008\u0010%\u001a\u00020\u0016H\u0016J\u0018\u0010&\u001a\u00020\'2\u0006\u0010$\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0016J\u001a\u0010*\u001a\u00020+2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016Jq\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001a2\u000e\u0010.\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001000/2\u0018\u00101\u001a\u0014\u0012\u0004\u0012\u00020\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002030\u0019022\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u0002050/2\u0006\u00106\u001a\u00020+2\u0006\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010:2\u0008\u0010;\u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0002\u0010<J<\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@2\u0008\u0010A\u001a\u0004\u0018\u0001002\u0018\u00101\u001a\u0014\u0012\u0004\u0012\u00020\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002030\u0019022\u0006\u00107\u001a\u000208H\u0016JR\u0010B\u001a\u00020\'2\u0006\u0010$\u001a\u00020\'2\u0008\u0010A\u001a\u0004\u0018\u0001002\u0018\u00101\u001a\u0014\u0012\u0004\u0012\u00020\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002030\u0019022\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u0002050/2\u0006\u00106\u001a\u00020+2\u0006\u00107\u001a\u000208H\u0016J\u0018\u0010C\u001a\u00020\u001a2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u0016J\u0010\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u000205H\u0016J\u0018\u0010K\u001a\u00020\'2\u0006\u0010L\u001a\u00020M2\u0006\u0010F\u001a\u00020GH\u0016J\"\u0010N\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020P0O2\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\u001c0RH\u0016J\u0018\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020V2\u0006\u0010J\u001a\u000205H\u0016J\u000e\u0010W\u001a\u00020\u00162\u0006\u0010X\u001a\u00020YJ\"\u0010Z\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001a2\u0008\u0010A\u001a\u0004\u0018\u0001002\u0006\u0010[\u001a\u00020+H\u0016J8\u0010\\\u001a\u0002H]\"\u0008\u0008\u0000\u0010]*\u00020^2\u0006\u0010_\u001a\u00020\u001c2\u0017\u0010`\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H]02\u00a2\u0006\u0002\u0008aH\u0002\u00a2\u0006\u0002\u0010bR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
        "directResourceRepository",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;",
        "remoteReaderResourceRepository",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;",
        "(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;)V",
        "currentResourceRepository",
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
        "",
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
        "setResourceRepository",
        "config",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "updatePaymentIntent",
        "requestDynamicCurrencyConversion",
        "withCurrentRepository",
        "T",
        "",
        "methodName",
        "method",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
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


# instance fields
.field private currentResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

.field private final directResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

.field private final remoteReaderResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;)V
    .locals 1

    const-string v0, "directResourceRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteReaderResourceRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->directResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->remoteReaderResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;

    return-void
.end method

.method private final withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->currentResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 219
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 220
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "discoverReaders must be called before "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 218
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method


# virtual methods
.method public activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;
    .locals 1
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

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setReconnectParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$activateReader$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$activateReader$1;-><init>(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "activateReader"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    return-object p1
.end method

.method public awaitActionRequiredPaymentIntentCompletion(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
    .locals 1
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

    const-string v0, "paymentIntentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$awaitActionRequiredPaymentIntentCompletion$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$awaitActionRequiredPaymentIntentCompletion$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "awaitActionRequiredPaymentIntentCompletion"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Deferred;

    return-object p1
.end method

.method public cancelConfirmPaymentIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$cancelConfirmPaymentIntent$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$cancelConfirmPaymentIntent$1;-><init>(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "cancelConfirmPaymentIntent"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public cancelConfirmRefund(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$cancelConfirmRefund$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$cancelConfirmRefund$1;-><init>(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "cancelConfirmRefund"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public cancelConfirmSetupIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$cancelConfirmSetupIntent$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$cancelConfirmSetupIntent$1;-><init>(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "cancelConfirmSetupIntent"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$cancelPaymentIntent$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$cancelPaymentIntent$1;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "cancelPaymentIntent"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method

.method public cancelPaymentIntentActionRequired()V
    .locals 2

    .line 184
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$cancelPaymentIntentActionRequired$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$cancelPaymentIntentActionRequired$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "cancelPaymentIntentActionRequired"

    invoke-direct {p0, v1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$cancelSetupIntent$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$cancelSetupIntent$1;-><init>(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "cancelSetupIntent"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public completePaymentIntentActionRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "paymentIntentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$completePaymentIntentActionRequired$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$completePaymentIntentActionRequired$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "completePaymentIntentActionRequired"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 10
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

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getCollectiblePayment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleAuthResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectScaPaymentMethodData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authStateListener"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmPaymentIntent$1;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string p1, "confirmPaymentIntent"

    invoke-direct {p0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method

.method public confirmRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/Refund;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "refundParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleAuthResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authStateListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmRefund$1;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmRefund$1;-><init>(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "confirmRefund"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/Refund;

    return-object p1
.end method

.method public confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 8
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleAuthResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectScaPaymentMethodData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authStateListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmSetupIntent$1;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$confirmSetupIntent$1;-><init>(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string p1, "confirmSetupIntent"

    invoke-direct {p0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    const-string v0, "paymentIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$createPaymentIntent$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$createPaymentIntent$1;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "createPaymentIntent"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method

.method public createReaderCollectedData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/CollectedData;
    .locals 1

    const-string v0, "paymentMethodData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$createReaderCollectedData$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$createReaderCollectedData$1;-><init>(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "createReaderCollectedData"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/CollectedData;

    return-object p1
.end method

.method public createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 1

    const-string v0, "setupIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$createSetupIntent$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$createSetupIntent$1;-><init>(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "createSetupIntent"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public getReaderLocations(Ljava/util/List;)Ljava/util/Map;
    .locals 1
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

    const-string v0, "deviceSerials"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$getReaderLocations$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$getReaderLocations$1;-><init>(Ljava/util/List;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "getReaderLocations"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public readReusableCard(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "readReusableCardParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethodData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$readReusableCard$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$readReusableCard$1;-><init>(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "readReusableCard"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    return-object p1
.end method

.method public final setResourceRepository(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$HandoffDiscoveryConfiguration;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;->isSimulated()Z

    move-result p1

    if-nez p1, :cond_1

    .line 48
    :goto_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->remoteReaderResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    goto :goto_1

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->directResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 47
    :goto_1
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->currentResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    return-void
.end method

.method public updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$updatePaymentIntent$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository$updatePaymentIntent$1;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "updatePaymentIntent"

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->withCurrentRepository(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method
