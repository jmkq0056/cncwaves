.class public final Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;
.super Ljava/lang/Object;
.source "OfflineDirectResourceRepository.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineDirectResourceRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineDirectResourceRepository.kt\ncom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,684:1\n589#1,2:685\n591#1,6:688\n589#1,2:694\n591#1,6:697\n589#1,2:703\n591#1,6:706\n589#1,2:712\n591#1,6:715\n589#1,2:721\n591#1,6:724\n1#2:687\n1#2:696\n1#2:705\n1#2:714\n1#2:723\n1#2:730\n*S KotlinDebug\n*F\n+ 1 OfflineDirectResourceRepository.kt\ncom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository\n*L\n84#1:685,2\n84#1:688,6\n98#1:694,2\n98#1:697,6\n121#1:703,2\n121#1:706,6\n171#1:712,2\n171#1:715,6\n274#1:721,2\n274#1:724,6\n84#1:687\n98#1:696\n121#1:705\n171#1:714\n274#1:723\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f4\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u008d\u00012\u00020\u0001:\u0002\u008d\u0001B{\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\"\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0015j\u0002`\u001a\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0002\u0010\u001dJX\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2>\u0010$\u001a:\u0012\u0015\u0012\u0013\u0018\u00010&\u00a2\u0006\u000c\u0008\'\u0012\u0008\u0008(\u0012\u0004\u0008\u0008()\u0012\u0015\u0012\u0013\u0018\u00010*\u00a2\u0006\u000c\u0008\'\u0012\u0008\u0008(\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020,0%j\u0002`-H\u0016J \u0010.\u001a\u0008\u0012\u0004\u0012\u0002000/2\u0006\u00101\u001a\u0002022\u0008\u00103\u001a\u0004\u0018\u000102H\u0016J0\u00104\u001a\u0012\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020705j\u0002`82\u0006\u00109\u001a\u0002002\u000e\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010<0;H\u0002J\u001a\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@2\u0008\u0010A\u001a\u0004\u0018\u00010<H\u0002J\u0010\u0010B\u001a\u00020,2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010E\u001a\u00020,2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010F\u001a\u00020,2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010G\u001a\u0002002\u0006\u0010H\u001a\u000200H\u0016J\u0008\u0010I\u001a\u00020,H\u0016J\u0018\u0010J\u001a\u00020@2\u0006\u0010H\u001a\u00020@2\u0006\u0010K\u001a\u00020LH\u0016J\u001a\u0010M\u001a\u00020N2\u0006\u00101\u001a\u0002022\u0008\u00103\u001a\u0004\u0018\u000102H\u0016Jq\u0010O\u001a\u0002002\u0006\u00109\u001a\u0002002\u000e\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010<0;2\u0018\u0010P\u001a\u0014\u0012\u0004\u0012\u000202\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020R0/0Q2\u000c\u0010S\u001a\u0008\u0012\u0004\u0012\u00020T0;2\u0006\u0010U\u001a\u00020N2\u0006\u0010V\u001a\u00020W2\u0008\u0010X\u001a\u0004\u0018\u00010Y2\u0008\u0010Z\u001a\u0004\u0018\u000102H\u0016\u00a2\u0006\u0002\u0010[J<\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_2\u0008\u0010A\u001a\u0004\u0018\u00010<2\u0018\u0010P\u001a\u0014\u0012\u0004\u0012\u000202\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020R0/0Q2\u0006\u0010V\u001a\u00020WH\u0016JR\u0010`\u001a\u00020@2\u0006\u0010H\u001a\u00020@2\u0008\u0010A\u001a\u0004\u0018\u00010<2\u0018\u0010P\u001a\u0014\u0012\u0004\u0012\u000202\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020R0/0Q2\u000c\u0010S\u001a\u0008\u0012\u0004\u0012\u00020T0;2\u0006\u0010U\u001a\u00020N2\u0006\u0010V\u001a\u00020WH\u0016J\u0018\u0010a\u001a\u0002002\u0006\u0010b\u001a\u00020c2\u0006\u0010d\u001a\u00020eH\u0016J\u0010\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020TH\u0016J\u0018\u0010i\u001a\u00020@2\u0006\u0010j\u001a\u00020k2\u0006\u0010d\u001a\u00020eH\u0016J0\u0010l\u001a\u0002Hm\"\n\u0008\u0000\u0010m\u0018\u0001*\u00020n2\u0006\u0010o\u001a\u00020p2\u000c\u0010q\u001a\u0008\u0012\u0004\u0012\u0002Hm0;H\u0082\u0008\u00a2\u0006\u0002\u0010rJ*\u0010s\u001a\u0002022\u0006\u0010t\u001a\u00020u2\u0008\u0010v\u001a\u0004\u0018\u0001022\u0006\u0010w\u001a\u00020N2\u0006\u0010x\u001a\u00020NH\u0002J\"\u0010y\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020{0z2\u000c\u0010|\u001a\u0008\u0012\u0004\u0012\u0002020}H\u0016J\u0010\u0010~\u001a\u00020\u007f2\u0006\u0010(\u001a\u000202H\u0002J\u001c\u0010\u0080\u0001\u001a\u00030\u0081\u00012\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0006\u0010h\u001a\u00020TH\u0016J_\u0010\u0084\u0001\u001a\u00020,2\u0008\u00109\u001a\u0004\u0018\u0001002\u0008\u0010?\u001a\u0004\u0018\u00010@2\t\u0008\u0002\u0010\u0085\u0001\u001a\u00020Y2\u0007\u0010\u0086\u0001\u001a\u0002022\u0018\u0010P\u001a\u0014\u0012\u0004\u0012\u000202\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020R0/0Q2\u0006\u0010V\u001a\u00020W2\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001H\u0002J$\u0010\u0089\u0001\u001a\u0002002\u0006\u00109\u001a\u0002002\u0008\u0010A\u001a\u0004\u0018\u00010<2\u0007\u0010\u008a\u0001\u001a\u00020NH\u0016J\u0011\u0010\u008b\u0001\u001a\u00020,2\u0006\u0010H\u001a\u000200H\u0002J\u0011\u0010\u008c\u0001\u001a\u00020,2\u0006\u0010H\u001a\u00020@H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0015j\u0002`\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u008e\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
        "apiRequestFactory",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "offlineEventHandler",
        "Lcom/stripe/offlinemode/OfflineEventHandler;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "offlineRequestHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;",
        "customHeadersProvider",
        "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;",
        "chargeAttemptManager",
        "Lcom/stripe/transaction/ChargeAttemptManager;",
        "authenticatedRestClient",
        "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "offlineDiscreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "offlinePaymentMethodValidator",
        "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;",
        "(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/offlinemode/OfflineEventHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;)V",
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
        "buildConfirmPaymentIntentRequest",
        "Lcom/stripe/jvmcore/restclient/RestRequest;",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/api/ConfirmPaymentIntentRestRequest;",
        "paymentIntent",
        "getCollectiblePayment",
        "Lkotlin/Function0;",
        "Lcom/stripe/transaction/CollectiblePayment;",
        "buildConfirmSetupIntentRequest",
        "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
        "setupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "collectiblePayment",
        "cancelConfirmPaymentIntent",
        "callback",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "cancelConfirmRefund",
        "cancelConfirmSetupIntent",
        "cancelPaymentIntent",
        "intent",
        "cancelPaymentIntentActionRequired",
        "cancelSetupIntent",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "completePaymentIntentActionRequired",
        "",
        "confirmPaymentIntent",
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
        "executeWithOfflineTracing",
        "T",
        "",
        "offlineTrace",
        "Lcom/stripe/offlinemode/log/OfflineTrace;",
        "operation",
        "(Lcom/stripe/offlinemode/log/OfflineTrace;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "getAuthorizationResponseCode",
        "parsedEmvData",
        "Lcom/stripe/hardware/emv/TlvMap;",
        "readMethod",
        "livemode",
        "isSetupIntent",
        "getReaderLocations",
        "",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "deviceSerials",
        "",
        "getUnsupportedOpException",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "readReusableCard",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethod;",
        "readReusableCardParams",
        "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;",
        "sendAuthResponseCodeToDevice",
        "tipAmount",
        "authResponseCode",
        "declineCode",
        "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;",
        "updatePaymentIntent",
        "requestDynamicCurrencyConversion",
        "validatePaymentIntent",
        "validateSetupIntent",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;


# instance fields
.field private final apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

.field private final authenticatedRestClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

.field private final chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

.field private final customHeadersProvider:Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;

.field private final offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

.field private final offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineEventHandler:Lcom/stripe/offlinemode/OfflineEventHandler;

.field private final offlinePaymentMethodValidator:Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;

.field private final offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

.field private final statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

.field private final transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->Companion:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository$Companion;

    .line 681
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/offlinemode/OfflineEventHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/offlinemode/OfflineEventHandler;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;",
            "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "apiRequestFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineEventHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRequestHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customHeadersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargeAttemptManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticatedRestClient"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigHelper"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineDiscreteLogger"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlinePaymentMethodValidator"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    .line 68
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 69
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineEventHandler:Lcom/stripe/offlinemode/OfflineEventHandler;

    .line 70
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 71
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    .line 72
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->customHeadersProvider:Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;

    .line 73
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    .line 74
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->authenticatedRestClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    .line 75
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 76
    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 77
    iput-object p11, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlinePaymentMethodValidator:Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;

    return-void
.end method

.method private final buildConfirmPaymentIntentRequest(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/transaction/CollectiblePayment;",
            ">;)",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 411
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v1}, Lcom/stripe/core/transaction/TransactionRepository;->getAmountTip()Lcom/stripe/currency/Amount;

    move-result-object v5

    .line 412
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v1}, Lcom/stripe/core/transaction/TransactionRepository;->getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    move-result-object v8

    .line 414
    invoke-interface/range {p2 .. p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/transaction/CollectiblePayment;

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/transaction/CollectiblePayment;->getPayment()Lcom/stripe/transaction/payment/Payment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 415
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    .line 417
    invoke-virtual {v1}, Lcom/stripe/transaction/payment/Payment;->asRest()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    .line 415
    invoke-virtual/range {v2 .. v8}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmCollectiblePayment(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object v1

    if-nez v1, :cond_2

    .line 424
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    .line 425
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "Collectible payment is null in confirmPaymentIntent."

    invoke-virtual {v1, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 426
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    .line 428
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, v11

    :goto_0
    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    .line 426
    invoke-static/range {v2 .. v10}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmPaymentIntent$default(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object v1

    .line 435
    :cond_2
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v2}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isDeferredAuthorizationCountry()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 437
    invoke-virtual {v1}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    .line 438
    invoke-virtual {v1}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    iget-object v13, v2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v13, :cond_4

    .line 439
    invoke-virtual {v1}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    iget-object v2, v2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v2, :cond_3

    iget-object v14, v2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v14, :cond_3

    .line 440
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->QUICK_CHIP:Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->getMethod()Ljava/lang/String;

    move-result-object v19

    const v31, 0xffef

    const/16 v32, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 439
    invoke-static/range {v14 .. v32}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    move-result-object v2

    move-object v15, v2

    goto :goto_1

    :cond_3
    move-object v15, v11

    :goto_1
    const/16 v21, 0x7d

    const/16 v22, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 438
    invoke-static/range {v13 .. v22}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v2

    move-object v15, v2

    goto :goto_2

    :cond_4
    move-object v15, v11

    :goto_2
    const/16 v24, 0x7fb

    const/16 v25, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 437
    invoke-static/range {v12 .. v25}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/Message;

    const/4 v3, 0x2

    .line 436
    invoke-static {v1, v2, v11, v3, v11}, Lcom/stripe/jvmcore/restclient/RestRequest;->copy$default(Lcom/stripe/jvmcore/restclient/RestRequest;Lcom/squareup/wire/Message;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method private final buildConfirmSetupIntentRequest(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;
    .locals 27

    move-object/from16 v0, p0

    .line 454
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v1}, Lcom/stripe/core/transaction/TransactionRepository;->getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 455
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/transaction/CollectiblePayment;->getPayment()Lcom/stripe/transaction/payment/Payment;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 457
    const-string v4, "latest_attempt"

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 458
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

    move-result-object v11

    .line 459
    invoke-virtual {v3}, Lcom/stripe/transaction/payment/Payment;->asRest()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v12

    if-eqz v12, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/AllowRedisplay;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_0

    :cond_0
    move-object/from16 v18, v2

    :goto_0
    const/16 v20, 0x5f

    const/16 v21, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-static/range {v12 .. v21}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, v2

    .line 456
    :goto_1
    new-instance v5, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    const/16 v13, 0x5c

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;-><init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/Mandate;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 461
    :cond_2
    move-object v3, v0

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    .line 462
    sget-object v3, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v4, 0x0

    new-array v4, v4, [Lkotlin/Pair;

    const-string v5, "Collectible payment is null in confirmPaymentIntent."

    invoke-virtual {v3, v5, v4}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 463
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    move-result-object v5

    :goto_2
    move-object v6, v5

    .line 469
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v1}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isDeferredAuthorizationCountry()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 471
    iget-object v7, v6, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v7, :cond_4

    .line 472
    iget-object v1, v6, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v1, :cond_3

    iget-object v8, v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v8, :cond_3

    .line 473
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->QUICK_CHIP:Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->getMethod()Ljava/lang/String;

    move-result-object v13

    const v25, 0xffef

    const/16 v26, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 472
    invoke-static/range {v8 .. v26}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    move-result-object v2

    :cond_3
    move-object v9, v2

    const/16 v15, 0x7d

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 471
    invoke-static/range {v7 .. v16}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v2

    :cond_4
    move-object v8, v2

    const/16 v14, 0x7d

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 470
    invoke-static/range {v6 .. v15}, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/Mandate;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    move-result-object v1

    return-object v1

    :cond_5
    return-object v6
.end method

.method private final synthetic executeWithOfflineTracing(Lcom/stripe/offlinemode/log/OfflineTrace;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/stripe/offlinemode/log/OfflineTrace;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 589
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    check-cast p1, Lcom/stripe/loggingmodels/ApplicationTrace;

    const-string v1, "offline_mode_trace"

    invoke-virtual {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 590
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 591
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->success()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 592
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 593
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    invoke-virtual {v0, p2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->e(Ljava/lang/Throwable;)V

    .line 594
    sget-object v2, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v2, p2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->failure(Ljava/lang/Throwable;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 596
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1
.end method

.method private final getAuthorizationResponseCode(Lcom/stripe/hardware/emv/TlvMap;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 527
    sget-object v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACTLESS_EMV:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v0}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->supportsSca()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TlvMap;->isMobileWallet()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, v2

    .line 533
    :goto_0
    sget-object v0, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACTLESS_EMV:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 534
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TlvMap;->getFirst6()Ljava/lang/String;

    move-result-object p3

    .line 535
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TlvMap;->getLast4()Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TlvMap;->getCardholderName()Ljava/lang/String;

    move-result-object v3

    .line 533
    invoke-interface {p2, p3, v0, v3}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isCardDenylistedForOffline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 537
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TlvMap;->isMobileWallet()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 539
    :goto_1
    const-string p2, "8A023030"

    if-nez p4, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    return-object p2

    .line 543
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TlvMap;->getApplicationId()Lcom/stripe/hardware/emv/ApplicationId;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/stripe/hardware/emv/ApplicationId;->getId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5

    :cond_4
    const-string p3, "9F06"

    invoke-virtual {p1, p3}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 551
    :cond_5
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {p1, p3}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->switchInterfaceAuthorizationResponseCodeForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 554
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    .line 555
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Prompting cardholder to switch interface "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_6

    .line 556
    const-string p4, "to avoid SCA soft-decline"

    goto :goto_3

    :cond_6
    const-string p4, "to evaluate cardholder name"

    .line 555
    :goto_3
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 p4, 0x2e

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v2, [Lkotlin/Pair;

    .line 554
    invoke-virtual {p2, p3, p4}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object p1

    .line 560
    :cond_7
    move-object p1, p0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    .line 561
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository$getAuthorizationResponseCode$2$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository$getAuthorizationResponseCode$2$1;

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    if-eqz p4, :cond_8

    .line 564
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    .line 565
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Attempted to force SCA flow for unrecognized AID: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 566
    const-string p4, ". Succeeding transaction."

    .line 565
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v2, [Lkotlin/Pair;

    .line 564
    invoke-virtual {p1, p3, p4}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object p2

    .line 572
    :cond_8
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    .line 573
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Attempted to force SCA flow to evaluate cardholder name for unrecognized AID: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 574
    const-string p3, ". Declining transaction."

    .line 573
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Lkotlin/Pair;

    .line 572
    invoke-virtual {p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 577
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 578
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TEST_CARD_IN_LIVEMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 577
    const-string v2, "Your card was declined. Your request was in live mode, but used a known test card."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 543
    :cond_9
    move-object p1, p0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    .line 544
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 545
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 544
    const-string v2, "Failed to retrieve application ID from card EMV data."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method private final getUnsupportedOpException(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 7

    .line 358
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 359
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " is not supported in offline mode."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 358
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final sendAuthResponseCodeToDevice(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;JLjava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
            "J",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;",
            ")V"
        }
    .end annotation

    .line 612
    const-string v0, "8A023030"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    .line 615
    new-instance v2, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;

    .line 618
    new-instance v5, Lcom/stripe/currency/Amount;

    .line 619
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getAmount()J

    move-result-wide v3

    add-long/2addr v3, p3

    .line 620
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCurrency()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 618
    :cond_0
    invoke-direct {v5, v3, v4, p1}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 615
    const-string v3, ""

    const-string v4, ""

    invoke-direct/range {v2 .. v7}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;)V

    check-cast v2, Lcom/stripe/transaction/ChargeAttempt;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 629
    sget-object p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;

    move-object v2, p1

    check-cast v2, Lcom/stripe/transaction/ChargeAttempt;

    .line 635
    :goto_0
    new-instance p1, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Success;

    invoke-direct {p1, v0, v2}, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Success;-><init>(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V

    check-cast p1, Lcom/stripe/paymentcollection/OnlineAuthState;

    goto :goto_2

    .line 630
    :cond_2
    new-instance p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 631
    sget-object p3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 p1, 0xc

    const/4 p4, 0x0

    .line 630
    const-string p5, "PaymentIntent or SetupIntent should always be defined."

    const/4 p6, 0x0

    const/4 v0, 0x0

    move p7, p1

    move-object/from16 p8, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, v0

    invoke-direct/range {p2 .. p8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2

    .line 641
    :cond_3
    const-string p3, "8A023035"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 642
    new-instance p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;

    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lcom/stripe/transaction/ChargeAttempt;

    .line 643
    new-instance p1, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;

    .line 644
    sget-object p2, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->DECLINED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    .line 643
    invoke-direct {p1, p2, p3, v2}, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;-><init>(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V

    check-cast p1, Lcom/stripe/paymentcollection/OnlineAuthState;

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 652
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 653
    invoke-static {p2}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Ljava/lang/String;

    move-result-object p1

    .line 659
    :goto_1
    new-instance p2, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    .line 661
    sget-object p3, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;->OFFLINE_PIN_REQUIRED:Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;

    .line 659
    invoke-direct {p2, p1, p3}, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;-><init>(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt$Requirement;)V

    move-object v2, p2

    check-cast v2, Lcom/stripe/transaction/ChargeAttempt;

    .line 663
    new-instance p1, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;

    .line 664
    sget-object p2, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->SCA_NEEDED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    .line 663
    invoke-direct {p1, p2, p5, v2}, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;-><init>(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V

    check-cast p1, Lcom/stripe/paymentcollection/OnlineAuthState;

    .line 672
    :goto_2
    invoke-interface {p6, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    invoke-virtual {p2, v2}, Lcom/stripe/transaction/ChargeAttemptManager;->setChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)V

    .line 675
    invoke-interface {p7, p1}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    return-void

    .line 654
    :cond_6
    new-instance p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 655
    sget-object p3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 p1, 0xc

    const/4 p4, 0x0

    .line 654
    const-string p5, "PaymentIntent or SetupIntent should always be defined."

    const/4 p6, 0x0

    const/4 v0, 0x0

    move p7, p1

    move-object/from16 p8, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, v0

    invoke-direct/range {p2 .. p8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2
.end method

.method static synthetic sendAuthResponseCodeToDevice$default(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;JLjava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 599
    invoke-direct/range {v0 .. v8}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->sendAuthResponseCodeToDevice(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;JLjava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)V

    return-void
.end method

.method private final validatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 9

    .line 484
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-eq v0, v1, :cond_2

    .line 491
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStatus()Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->REQUIRES_PAYMENT_METHOD:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    if-eq v0, v1, :cond_1

    .line 492
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStatus()Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    move-result-object p1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->REQUIRES_CONFIRMATION:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 494
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONFIRM_INVALID_PAYMENT_INTENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 495
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Only PaymentIntents with "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->REQUIRES_PAYMENT_METHOD:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 496
    const-string v0, " or "

    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 496
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->REQUIRES_CONFIRMATION:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 496
    const-string v0, " status may be confirmed."

    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 493
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 486
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 485
    const-string v4, "Provided PaymentIntent has offlineBehavior set to REQUIRE_ONLINE. Cannot process offline."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method

.method private final validateSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;)V
    .locals 9

    .line 503
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-eq v0, v1, :cond_1

    .line 510
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getStatus()Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    move-result-object p1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;->SUCCEEDED:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    if-eq p1, v0, :cond_0

    return-void

    .line 511
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 512
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONFIRM_INVALID_SETUP_INTENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 511
    const-string v3, "Provided SetupIntent already has requires_capture status and cannot be processed again."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 504
    :cond_1
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 505
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 504
    const-string v4, "Provided SetupIntent has offlineBehavior set to REQUIRE_ONLINE. Cannot process offline."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method


# virtual methods
.method public activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;
    .locals 3
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

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setReconnectParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineActivateReader;->INSTANCE:Lcom/stripe/offlinemode/log/OfflineTrace$OfflineActivateReader;

    check-cast v0, Lcom/stripe/offlinemode/log/OfflineTrace;

    .line 685
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    check-cast v0, Lcom/stripe/loggingmodels/ApplicationTrace;

    const-string v2, "offline_mode_trace"

    invoke-virtual {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 686
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    .line 85
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineEventHandler:Lcom/stripe/offlinemode/OfflineEventHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/offlinemode/OfflineEventHandler;->onActivateReaderRequest(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->authenticatedRestClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    invoke-virtual {p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->setBlankSession()V

    .line 686
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 688
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    sget-object p3, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {p3}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->success()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object p3

    invoke-virtual {p2, p3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 689
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 690
    sget-object p3, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    invoke-virtual {p3, p2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->e(Ljava/lang/Throwable;)V

    .line 691
    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v0, p2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->failure(Ljava/lang/Throwable;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object p2

    invoke-virtual {p3, p2, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 693
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 686
    check-cast p1, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    return-object p1
.end method

.method public awaitActionRequiredPaymentIntentCompletion(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
    .locals 0
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

    const-string p2, "paymentIntentId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    const-string p1, "awaitActionRequiredPaymentIntentCompletion"

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->getUnsupportedOpException(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method public cancelConfirmPaymentIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-interface {p1}, Lcom/stripe/stripeterminal/external/callable/Callback;->onSuccess()V

    return-void
.end method

.method public cancelConfirmRefund(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-interface {p1}, Lcom/stripe/stripeterminal/external/callable/Callback;->onSuccess()V

    return-void
.end method

.method public cancelConfirmSetupIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    invoke-interface {p1}, Lcom/stripe/stripeterminal/external/callable/Callback;->onSuccess()V

    return-void
.end method

.method public cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    const-string p1, "cancelPaymentIntent"

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->getUnsupportedOpException(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method public cancelPaymentIntentActionRequired()V
    .locals 1

    .line 388
    const-string v0, "cancelPaymentIntentActionRequired"

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->getUnsupportedOpException(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    throw v0
.end method

.method public cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "params"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    const-string p1, "cancelSetupIntent"

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->getUnsupportedOpException(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method public completePaymentIntentActionRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p2, "paymentIntentId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    const-string p1, "completePaymentIntentActionRequired"

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->getUnsupportedOpException(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method public confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 17
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

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v11, "8A023030"

    const-string v0, "paymentIntent"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getCollectiblePayment"

    move-object/from16 v10, p2

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleAuthResponse"

    move-object/from16 v7, p3

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectScaPaymentMethodData"

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authStateListener"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineConfirmPayment;->INSTANCE:Lcom/stripe/offlinemode/log/OfflineTrace$OfflineConfirmPayment;

    check-cast v0, Lcom/stripe/offlinemode/log/OfflineTrace;

    .line 712
    sget-object v3, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    check-cast v0, Lcom/stripe/loggingmodels/ApplicationTrace;

    const-string v13, "offline_mode_trace"

    invoke-virtual {v3, v0, v13}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 713
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez p7, :cond_6

    .line 187
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->validatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    .line 188
    invoke-direct/range {p0 .. p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->buildConfirmPaymentIntentRequest(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object v14

    .line 189
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlinePaymentMethodValidator:Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;

    .line 190
    invoke-virtual {v14}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    iget-object v3, v3, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 191
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getLivemode()Z

    move-result v4

    .line 192
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCollectedOffline()Z

    move-result v5

    const/4 v6, 0x0

    .line 189
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;->validatePaymentMethod(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;ZZZ)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/hardware/emv/TlvMap;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getLivemode()Z

    move-result v4

    invoke-direct {v1, v3, v0, v4, v6}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->getAuthorizationResponseCode(Lcom/stripe/hardware/emv/TlvMap;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eq v6, v11, :cond_1

    .line 218
    :try_start_2
    invoke-virtual {v14}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    iget-object v0, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-wide v4, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 215
    :try_start_4
    invoke-direct/range {v1 .. v9}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->sendAuthResponseCodeToDevice(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;JLjava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 224
    :try_start_5
    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    invoke-virtual {v2, v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setPaymentMethodData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    .line 225
    move-object/from16 v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v9, 0xc0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move/from16 v5, p5

    move-object v1, v2

    move-object v15, v6

    move-object v4, v12

    move-object/from16 v12, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p6

    :try_start_6
    invoke-static/range {v0 .. v10}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->confirmPaymentIntent$default(Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v12, v1

    :goto_1
    move-object v15, v6

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v12, v1

    :goto_2
    move-object v15, v6

    goto/16 :goto_5

    :cond_1
    move-object v12, v1

    move-object v15, v6

    .line 234
    iget-object v0, v12, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineEventHandler:Lcom/stripe/offlinemode/OfflineEventHandler;

    .line 235
    invoke-virtual {v14}, Lcom/stripe/jvmcore/restclient/RestRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 236
    iget-object v2, v12, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    invoke-virtual {v14}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    invoke-interface {v2, v4}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getHeaders(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;)Ljava/util/Map;

    move-result-object v2

    .line 235
    invoke-static {v1, v2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 237
    iget-object v2, v12, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->customHeadersProvider:Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;

    invoke-interface {v2}, Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;->customHeaders()Ljava/util/Map;

    move-result-object v2

    .line 235
    invoke-static {v1, v2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 238
    iget-object v1, v12, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    invoke-virtual {v14}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    invoke-interface {v1, v2}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getBody(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;)Ljava/util/List;

    move-result-object v5

    .line 239
    iget-object v1, v12, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    invoke-virtual {v14}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    invoke-interface {v1, v2}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getUrl(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;)Ljava/lang/String;

    move-result-object v6

    .line 241
    invoke-virtual {v14}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    .line 242
    invoke-virtual {v3}, Lcom/stripe/hardware/emv/TlvMap;->toBlob()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    move-object/from16 v1, p1

    .line 234
    invoke-interface/range {v0 .. v6}, Lcom/stripe/offlinemode/OfflineEventHandler;->onConfirmPaymentIntentRequest(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-ne v15, v11, :cond_3

    .line 254
    :try_start_7
    invoke-virtual {v14}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    iget-object v1, v1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v4, v1

    goto :goto_4

    :cond_2
    const-wide/16 v4, 0x0

    :goto_4
    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move-object v1, v12

    move-object v6, v15

    .line 251
    invoke-direct/range {v1 .. v9}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->sendAuthResponseCodeToDevice(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;JLjava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_3
    return-object v0

    :catchall_2
    move-exception v0

    move-object v6, v15

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v6, v15

    .line 246
    :goto_5
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    :goto_6
    if-ne v6, v11, :cond_5

    .line 254
    :try_start_9
    invoke-virtual {v14}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    iget-object v1, v1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->amount_tip:Ljava/lang/Long;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-wide v4, v15

    goto :goto_7

    :cond_4
    const-wide/16 v4, 0x0

    :goto_7
    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    .line 251
    invoke-direct/range {v1 .. v9}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->sendAuthResponseCodeToDevice(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;JLjava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)V

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_a

    :cond_5
    move-object/from16 v1, p0

    :goto_8
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catch_4
    move-exception v0

    goto :goto_9

    .line 181
    :cond_6
    :try_start_b
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 182
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 183
    const-string v4, "Surcharging is not supported in offline mode."

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 181
    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
    :try_end_b
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 198
    :goto_9
    :try_start_c
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlinePaymentMethodValidator:Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;

    invoke-interface {v2, v0}, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;->emitHealthMetrics(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 203
    const-string v6, "8A023035"

    .line 206
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v9

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    .line 199
    invoke-direct/range {v1 .. v9}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->sendAuthResponseCodeToDevice(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;JLjava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)V

    .line 209
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    .line 263
    :goto_a
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 715
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    sget-object v2, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->success()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 716
    :cond_7
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 717
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    invoke-virtual {v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->e(Ljava/lang/Throwable;)V

    .line 718
    sget-object v3, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v3, v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->failure(Ljava/lang/Throwable;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v1

    invoke-virtual {v2, v1, v13}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 720
    :cond_8
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 713
    check-cast v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object v0
.end method

.method public confirmRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/Refund;
    .locals 0
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

    const-string p2, "refundParams"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handleAuthResponse"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "authStateListener"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    const-string p1, "confirmRefund"

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->getUnsupportedOpException(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method public confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 16
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

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    const-string v0, "intent"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleAuthResponse"

    move-object/from16 v7, p3

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectScaPaymentMethodData"

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authStateListener"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineConfirmSetupIntent;->INSTANCE:Lcom/stripe/offlinemode/log/OfflineTrace$OfflineConfirmSetupIntent;

    check-cast v0, Lcom/stripe/offlinemode/log/OfflineTrace;

    .line 721
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    check-cast v0, Lcom/stripe/loggingmodels/ApplicationTrace;

    const-string v13, "offline_mode_trace"

    invoke-virtual {v2, v0, v13}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 722
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->validateSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;)V

    .line 281
    invoke-direct/range {p0 .. p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->buildConfirmSetupIntentRequest(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    move-result-object v0

    .line 282
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlinePaymentMethodValidator:Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;

    .line 283
    iget-object v4, v0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 284
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode()Z

    move-result v5

    .line 285
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getCollectedOffline()Z

    move-result v6

    const/4 v9, 0x1

    .line 282
    invoke-interface {v2, v4, v5, v6, v9}, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;->validatePaymentMethod(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;ZZZ)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/stripe/hardware/emv/TlvMap;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 289
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode()Z

    move-result v4

    invoke-direct {v1, v14, v2, v4, v9}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->getAuthorizationResponseCode(Lcom/stripe/hardware/emv/TlvMap;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    .line 292
    invoke-static/range {v1 .. v11}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->sendAuthResponseCodeToDevice$default(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;JLjava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;ILjava/lang/Object;)V
    :try_end_1
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v1

    .line 315
    :try_start_2
    const-string v1, "8A023030"

    if-eq v6, v1, :cond_0

    .line 316
    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    invoke-virtual {v3, v0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setPaymentMethodData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    .line 317
    invoke-virtual/range {p0 .. p6}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_0
    iget-object v1, v7, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineEventHandler:Lcom/stripe/offlinemode/OfflineEventHandler;

    .line 327
    iget-object v2, v7, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    invoke-interface {v2, v0}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getHeaders(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;)Ljava/util/Map;

    move-result-object v2

    .line 328
    iget-object v4, v7, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->customHeadersProvider:Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;

    invoke-interface {v4}, Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;->customHeaders()Ljava/util/Map;

    move-result-object v4

    .line 327
    invoke-static {v2, v4}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 329
    iget-object v2, v7, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    invoke-interface {v2, v0}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getBody(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;)Ljava/util/List;

    move-result-object v5

    .line 330
    iget-object v2, v7, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    invoke-interface {v2, v0}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getUrl(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;)Ljava/lang/String;

    move-result-object v6

    .line 333
    invoke-virtual {v14}, Lcom/stripe/hardware/emv/TlvMap;->toBlob()Ljava/lang/String;

    move-result-object v2

    move-object v15, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v15

    .line 326
    invoke-interface/range {v0 .. v6}, Lcom/stripe/offlinemode/OfflineEventHandler;->onConfirmSetupIntentRequest(Lcom/stripe/stripeterminal/external/models/SetupIntent;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    .line 722
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v1

    .line 301
    iget-object v1, v7, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlinePaymentMethodValidator:Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;

    invoke-interface {v1, v0}, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;->emitHealthMetrics(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 305
    const-string v6, "8A023035"

    .line 308
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v8, p6

    move-object v1, v7

    move-object/from16 v7, p3

    .line 302
    invoke-static/range {v1 .. v11}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->sendAuthResponseCodeToDevice$default(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/SetupIntent;JLjava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;ILjava/lang/Object;)V

    .line 311
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 722
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 724
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    sget-object v2, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->success()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 725
    :cond_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 726
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    invoke-virtual {v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->e(Ljava/lang/Throwable;)V

    .line 727
    sget-object v3, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v3, v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->failure(Ljava/lang/Throwable;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v1

    invoke-virtual {v2, v1, v13}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 729
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 722
    check-cast v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object v0
.end method

.method public createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 10

    const-string v0, "paymentIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreatePayment;->INSTANCE:Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreatePayment;

    check-cast v0, Lcom/stripe/offlinemode/log/OfflineTrace;

    .line 694
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    check-cast v0, Lcom/stripe/loggingmodels/ApplicationTrace;

    const-string v2, "offline_mode_trace"

    invoke-virtual {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 695
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    .line 99
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object p2

    sget-object v0, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-eq p2, v0, :cond_0

    .line 107
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {p2, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    move-result-object p1

    .line 109
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineEventHandler:Lcom/stripe/offlinemode/OfflineEventHandler;

    .line 111
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getHeaders(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)Ljava/util/Map;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->customHeadersProvider:Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;

    invoke-interface {v1}, Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;->customHeaders()Ljava/util/Map;

    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    invoke-interface {v1, p1}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getBody(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)Ljava/util/List;

    move-result-object v1

    .line 114
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    invoke-interface {v3, p1}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getUrl(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-interface {p2, p1, v0, v1, v3}, Lcom/stripe/offlinemode/OfflineEventHandler;->onCreatePaymentIntentRequest(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    .line 695
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_0
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 101
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 102
    const-string v5, "provided createConfiguration does not allow creating payment intents offline"

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 100
    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 695
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 697
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->success()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 698
    :cond_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 699
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    invoke-virtual {v0, p2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->e(Ljava/lang/Throwable;)V

    .line 700
    sget-object v1, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v1, p2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->failure(Ljava/lang/Throwable;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object p2

    invoke-virtual {v0, p2, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 702
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 695
    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method

.method public createReaderCollectedData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/CollectedData;
    .locals 1

    const-string v0, "paymentMethodData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    const-string p1, "createReaderCollectedData"

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->getUnsupportedOpException(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method public createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 10

    const-string v0, "setupIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreateSetupIntent;->INSTANCE:Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreateSetupIntent;

    check-cast v0, Lcom/stripe/offlinemode/log/OfflineTrace;

    .line 703
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    check-cast v0, Lcom/stripe/loggingmodels/ApplicationTrace;

    const-string v2, "offline_mode_trace"

    invoke-virtual {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 704
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    .line 122
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object p2

    sget-object v0, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-eq p2, v0, :cond_0

    .line 130
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {p2, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    move-result-object p1

    .line 132
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineEventHandler:Lcom/stripe/offlinemode/OfflineEventHandler;

    .line 134
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getHeaders(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)Ljava/util/Map;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->customHeadersProvider:Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;

    invoke-interface {v1}, Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;->customHeaders()Ljava/util/Map;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    invoke-interface {v1, p1}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getBody(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)Ljava/util/List;

    move-result-object v1

    .line 137
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    invoke-interface {v3, p1}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getUrl(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-interface {p2, p1, v0, v1, v3}, Lcom/stripe/offlinemode/OfflineEventHandler;->onCreateSetupIntentRequest(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    .line 704
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 123
    :cond_0
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 124
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_INTERNET_AND_REQUIRE_ONLINE_SET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 125
    const-string v5, "provided createConfiguration does not allow creating payment intents offline"

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 123
    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 704
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 706
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->success()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 707
    :cond_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 708
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    invoke-virtual {v0, p2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->e(Ljava/lang/Throwable;)V

    .line 709
    sget-object v1, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v1, p2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->failure(Ljava/lang/Throwable;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object p2

    invoke-virtual {v0, p2, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 711
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 704
    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public getReaderLocations(Ljava/util/List;)Ljava/util/Map;
    .locals 4
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

    .line 365
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->offlineEventHandler:Lcom/stripe/offlinemode/OfflineEventHandler;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/OfflineEventHandler;->onLocationsRequests(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 366
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 367
    instance-of v1, v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v1, :cond_0

    .line 368
    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v1

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    if-eq v1, v2, :cond_1

    .line 371
    :cond_0
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "Failed to fetch saved locations"

    invoke-virtual {v1, v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 374
    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    :cond_2
    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public readReusableCard(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;
    .locals 1

    const-string v0, "readReusableCardParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "paymentMethodData"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    const-string p1, "createCardPaymentMethod"

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->getUnsupportedOpException(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method public updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 7

    const-string p2, "paymentIntent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 156
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 155
    const-string v2, "Updating PaymentIntents is not supported in offline mode."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method
