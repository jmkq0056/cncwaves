.class public final Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;
.super Ljava/lang/Object;
.source "DirectResourceRepositoryRouter.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;,
        Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDirectResourceRepositoryRouter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DirectResourceRepositoryRouter.kt\ncom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,461:1\n389#1,12:462\n347#1:474\n348#1,24:476\n402#1,22:500\n347#1,25:522\n122#1,22:547\n394#1,7:569\n347#1:576\n348#1,24:579\n402#1,22:603\n347#1,25:625\n122#1,22:650\n394#1,7:672\n347#1:679\n348#1,24:682\n402#1,22:706\n347#1,25:728\n394#1,7:753\n347#1:760\n348#1,24:762\n402#1,22:786\n347#1,25:808\n347#1:833\n348#1,24:835\n347#1:859\n348#1,24:861\n238#1,6:885\n394#1,7:891\n347#1:898\n348#1,24:900\n402#1,22:924\n347#1,25:946\n246#1:971\n238#1,6:972\n394#1,7:978\n347#1:985\n348#1,24:987\n402#1,22:1011\n347#1,25:1033\n246#1:1058\n394#1,7:1059\n347#1:1066\n348#1,24:1068\n402#1,22:1092\n347#1,25:1114\n347#1:1139\n348#1,24:1141\n347#1:1165\n348#1,24:1167\n347#1:1191\n348#1,24:1193\n347#1:1217\n348#1,24:1219\n347#1:1243\n348#1,24:1245\n347#1:1269\n348#1,24:1271\n347#1:1295\n348#1,24:1297\n347#1:1321\n348#1,24:1323\n347#1:1347\n348#1,24:1349\n347#1:1373\n348#1,24:1375\n347#1:1400\n348#1,24:1402\n347#1:1426\n348#1,24:1428\n347#1:1452\n348#1,24:1454\n347#1:1478\n348#1,24:1480\n1#2:475\n1#2:577\n1#2:578\n1#2:680\n1#2:681\n1#2:761\n1#2:834\n1#2:860\n1#2:899\n1#2:986\n1#2:1067\n1#2:1140\n1#2:1166\n1#2:1192\n1#2:1218\n1#2:1244\n1#2:1270\n1#2:1296\n1#2:1322\n1#2:1348\n1#2:1374\n1#2:1399\n1#2:1401\n1#2:1427\n1#2:1453\n1#2:1479\n*S KotlinDebug\n*F\n+ 1 DirectResourceRepositoryRouter.kt\ncom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter\n*L\n64#1:462,12\n64#1:474\n64#1:476,24\n64#1:500,22\n64#1:522,25\n91#1:547,22\n91#1:569,7\n91#1:576\n91#1:579,24\n91#1:603,22\n91#1:625,25\n105#1:650,22\n105#1:672,7\n105#1:679\n105#1:682,24\n105#1:706,22\n105#1:728,25\n138#1:753,7\n138#1:760\n138#1:762,24\n138#1:786,22\n138#1:808,25\n154#1:833\n154#1:835,24\n168#1:859\n168#1:861,24\n193#1:885,6\n193#1:891,7\n193#1:898\n193#1:900,24\n193#1:924,22\n193#1:946,25\n193#1:971\n218#1:972,6\n218#1:978,7\n218#1:985\n218#1:987,24\n218#1:1011,22\n218#1:1033,25\n218#1:1058\n238#1:1059,7\n238#1:1066\n238#1:1068,24\n238#1:1092,22\n238#1:1114,25\n251#1:1139\n251#1:1141,24\n259#1:1165\n259#1:1167,24\n266#1:1191\n266#1:1193,24\n297#1:1217\n297#1:1219,24\n303#1:1243\n303#1:1245,24\n309#1:1269\n309#1:1271,24\n315#1:1295\n315#1:1297,24\n321#1:1321\n321#1:1323,24\n327#1:1347\n327#1:1349,24\n333#1:1373\n333#1:1375,24\n400#1:1400\n400#1:1402,24\n423#1:1426\n423#1:1428,24\n400#1:1452\n400#1:1454,24\n423#1:1478\n423#1:1480,24\n64#1:475\n91#1:577\n105#1:680\n138#1:761\n154#1:834\n168#1:860\n193#1:899\n218#1:986\n238#1:1067\n251#1:1140\n259#1:1166\n266#1:1192\n297#1:1218\n303#1:1244\n309#1:1270\n315#1:1296\n321#1:1322\n327#1:1348\n333#1:1374\n400#1:1401\n423#1:1427\n400#1:1453\n423#1:1479\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001~BS\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\"\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u000bj\u0002`\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013JX\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00162>\u0010 \u001a:\u0012\u0015\u0012\u0013\u0018\u00010\"\u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(%\u0012\u0015\u0012\u0013\u0018\u00010&\u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(\'\u0012\u0004\u0012\u00020(0!j\u0002`)H\u0016J \u0010*\u001a\u0008\u0012\u0004\u0012\u00020,0+2\u0006\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u00010.H\u0016J\u0010\u00100\u001a\u00020(2\u0006\u00101\u001a\u000202H\u0016J\u0010\u00103\u001a\u00020(2\u0006\u00101\u001a\u000202H\u0016J\u0010\u00104\u001a\u00020(2\u0006\u00101\u001a\u000202H\u0016J\u0010\u00105\u001a\u00020,2\u0006\u00106\u001a\u00020,H\u0016J\u0008\u00107\u001a\u00020(H\u0016J\u0018\u00108\u001a\u0002092\u0006\u00106\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0016J\u001a\u0010<\u001a\u00020\u00152\u0006\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u00010.H\u0016Jq\u0010=\u001a\u00020,2\u0006\u0010>\u001a\u00020,2\u000e\u0010?\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010A0@2\u0018\u0010B\u001a\u0014\u0012\u0004\u0012\u00020.\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020D0+0C2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020F0@2\u0006\u0010G\u001a\u00020\u00152\u0006\u0010H\u001a\u00020I2\u0008\u0010J\u001a\u0004\u0018\u00010K2\u0008\u0010L\u001a\u0004\u0018\u00010.H\u0016\u00a2\u0006\u0002\u0010MJ<\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020Q2\u0008\u0010R\u001a\u0004\u0018\u00010A2\u0018\u0010B\u001a\u0014\u0012\u0004\u0012\u00020.\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020D0+0C2\u0006\u0010H\u001a\u00020IH\u0016JR\u0010S\u001a\u0002092\u0006\u00106\u001a\u0002092\u0008\u0010R\u001a\u0004\u0018\u00010A2\u0018\u0010B\u001a\u0014\u0012\u0004\u0012\u00020.\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020D0+0C2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020F0@2\u0006\u0010G\u001a\u00020\u00152\u0006\u0010H\u001a\u00020IH\u0016J\u0018\u0010T\u001a\u00020,2\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0016J\u0010\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020FH\u0016J\u0018\u0010\\\u001a\u0002092\u0006\u0010]\u001a\u00020^2\u0006\u0010W\u001a\u00020XH\u0016J;\u0010_\u001a\u0002H`\"\n\u0008\u0000\u0010`\u0018\u0001*\u00020a2\u0006\u0010b\u001a\u00020\u00152\u0017\u0010c\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H`0C\u00a2\u0006\u0002\u0008dH\u0082\u0008\u00a2\u0006\u0002\u0010eJ\"\u0010f\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020h0g2\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00020.0jH\u0016J\u0018\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020n2\u0006\u0010[\u001a\u00020FH\u0016JE\u0010o\u001a\u0002H`\"\n\u0008\u0000\u0010`\u0018\u0001*\u00020a2\u0006\u0010p\u001a\u00020\u00152\u0008\u0008\u0002\u0010q\u001a\u00020r2\u0017\u0010c\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H`0C\u00a2\u0006\u0002\u0008dH\u0082\u0008\u00a2\u0006\u0002\u0010sJM\u0010t\u001a\u0002H`\"\n\u0008\u0000\u0010`\u0018\u0001*\u00020a2\u0006\u0010p\u001a\u00020\u00152\u0006\u0010u\u001a\u00020v2\u0008\u0010w\u001a\u0004\u0018\u00010.2\u0017\u0010c\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H`0C\u00a2\u0006\u0002\u0008dH\u0082\u0008\u00a2\u0006\u0002\u0010xJS\u0010y\u001a\u0002H`\"\n\u0008\u0000\u0010`\u0018\u0001*\u00020a2\u0006\u0010p\u001a\u00020\u00152\u0006\u0010z\u001a\u00020\u00152\u0006\u0010u\u001a\u00020v2\u0006\u0010$\u001a\u00020.2\u0017\u0010c\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H`0C\u00a2\u0006\u0002\u0008dH\u0082\u0008\u00a2\u0006\u0002\u0010{J\"\u0010|\u001a\u00020,2\u0006\u0010>\u001a\u00020,2\u0008\u0010R\u001a\u0004\u0018\u00010A2\u0006\u0010}\u001a\u00020\u0015H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u000bj\u0002`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u00020\u0015*\u00020\u00168BX\u0082\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u007f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
        "onlineResourceRepository",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;",
        "offlineResourceRepository",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;",
        "stripeConnectivityRepository",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "offlineDiscreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "sessionTokenRepository",
        "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
        "(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;)V",
        "supportsOfflineActivation",
        "",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "getSupportsOfflineActivation$annotations",
        "(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V",
        "getSupportsOfflineActivation",
        "(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Z",
        "activateReader",
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "connectionConfiguration",
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
        "doOnlineWithOptionalOfflineRetry",
        "T",
        "",
        "retryNetworkFailuresOffline",
        "method",
        "Lkotlin/ExtensionFunctionType;",
        "(ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "getReaderLocations",
        "",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "deviceSerials",
        "",
        "readReusableCard",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethod;",
        "readReusableCardParams",
        "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;",
        "route",
        "offlineEnabled",
        "routingScheme",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;",
        "(ZLcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "routeConfirmRequest",
        "offlineBehavior",
        "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "offlineId",
        "(ZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "routeCreateRequest",
        "offlineListenerConfigured",
        "(ZZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "updatePaymentIntent",
        "requestDynamicCurrencyConversion",
        "RoutingScheme",
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

.field private final offlineResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

.field private final onlineResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

.field private final sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

.field private final stripeConnectivityRepository:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "onlineResourceRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineResourceRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripeConnectivityRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineDiscreteLogger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionTokenRepository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->onlineResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    .line 49
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->offlineResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    .line 50
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->stripeConnectivityRepository:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    .line 51
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 52
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 53
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    return-void
.end method

.method public static final synthetic access$getOfflineDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-object p0
.end method

.method public static final synthetic access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->offlineResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    return-object p0
.end method

.method public static final synthetic access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->onlineResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    return-object p0
.end method

.method public static final synthetic access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    return-object p0
.end method

.method public static final synthetic access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->stripeConnectivityRepository:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    return-object p0
.end method

.method private final synthetic doOnlineWithOptionalOfflineRetry(ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 347
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 348
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 349
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 350
    instance-of v2, v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    :goto_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_5

    .line 356
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkFailure()V

    .line 361
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v4

    .line 362
    const-string p1, "ErrorReason"

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    .line 361
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 364
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 368
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 371
    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getSupportsOfflineActivation(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Z
    .locals 2

    .line 436
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 437
    :cond_0
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 438
    :cond_1
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    .line 439
    :cond_2
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;

    :goto_2
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    .line 440
    :cond_3
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;

    :goto_3
    if-eqz v0, :cond_4

    return v1

    .line 442
    :cond_4
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    if-eqz v0, :cond_5

    .line 443
    check-cast p1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->getSupportsOfflineMode()Z

    move-result p1

    return p1

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private static synthetic getSupportsOfflineActivation$annotations(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V
    .locals 0

    return-void
.end method

.method private final synthetic route(ZLcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 394
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->currentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez p1, :cond_6

    .line 1400
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1402
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1403
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1404
    instance-of p3, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz p3, :cond_1

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object p2, v3

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result p3

    aget v2, p2, p3

    :goto_2
    if-ne v2, v1, :cond_4

    goto :goto_3

    .line 1422
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1425
    :cond_5
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 402
    :cond_6
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->NO_NETWORK:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    if-eq v0, p1, :cond_f

    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-eq p2, p1, :cond_f

    .line 403
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne p2, p1, :cond_7

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->getNetworkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object p1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-ne p1, v0, :cond_7

    goto/16 :goto_8

    .line 411
    :cond_7
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne p2, p1, :cond_8

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getHasSessionTokenStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 417
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1426
    :cond_8
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1428
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1429
    :cond_9
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 1430
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v0, :cond_a

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_5

    :cond_a
    move-object p2, v3

    :goto_5
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v3

    :cond_b
    if-nez v3, :cond_c

    goto :goto_6

    :cond_c
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v0

    aget v2, p2, v0

    :goto_6
    if-ne v2, v1, :cond_d

    .line 1436
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkFailure()V

    .line 1441
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v4

    .line 1442
    const-string p1, "ErrorReason"

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    .line 1441
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 1444
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_7

    .line 1448
    :cond_d
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1451
    :cond_e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_7
    return-object p1

    .line 409
    :cond_f
    :goto_8
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic route$default(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;ZLcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 p5, 0x2

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    .line 391
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    .line 394
    :cond_0
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p4

    invoke-interface {p4}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->currentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p4

    invoke-interface {p4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_7

    .line 1452
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1454
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1455
    :cond_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1456
    instance-of p3, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz p3, :cond_2

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result p3

    aget v1, p2, p3

    :goto_2
    if-ne v1, p5, :cond_5

    goto :goto_3

    .line 1474
    :cond_5
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p0

    invoke-interface {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1477
    :cond_6
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 402
    :cond_7
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->NO_NETWORK:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    if-eq p4, p1, :cond_10

    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-eq p2, p1, :cond_10

    .line 403
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne p2, p1, :cond_8

    invoke-virtual {p4}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->getNetworkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object p1

    sget-object p4, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-ne p1, p4, :cond_8

    goto/16 :goto_8

    .line 411
    :cond_8
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne p2, p1, :cond_9

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getHasSessionTokenStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    .line 417
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1478
    :cond_9
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1480
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1481
    :cond_a
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 1482
    instance-of p4, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz p4, :cond_b

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_5

    :cond_b
    move-object p2, v2

    :goto_5
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    :cond_c
    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result p4

    aget v1, p2, p4

    :goto_6
    if-ne v1, p5, :cond_e

    .line 1488
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkFailure()V

    .line 1493
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v3

    .line 1494
    const-string p1, "ErrorReason"

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 1493
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 1496
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_7

    .line 1500
    :cond_e
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p0

    invoke-interface {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1503
    :cond_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_7
    return-object p1

    .line 409
    :cond_10
    :goto_8
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final synthetic routeConfirmRequest(ZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 241
    check-cast p3, Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    goto :goto_1

    .line 242
    :cond_1
    :goto_0
    sget-object p3, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-ne p2, p3, :cond_2

    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    goto :goto_1

    .line 243
    :cond_2
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    .line 1059
    :goto_1
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p3

    invoke-interface {p3}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->currentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p3

    invoke-interface {p3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez p1, :cond_9

    .line 1066
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1068
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1069
    :cond_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1070
    instance-of p3, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz p3, :cond_4

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_3

    :cond_4
    move-object p2, v3

    :goto_3
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result p3

    aget v2, p2, p3

    :goto_4
    if-ne v2, v1, :cond_7

    goto :goto_5

    .line 1088
    :cond_7
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1091
    :cond_8
    :goto_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 1092
    :cond_9
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->NO_NETWORK:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    if-eq p3, p1, :cond_12

    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-eq p2, p1, :cond_12

    .line 1093
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne p2, p1, :cond_a

    invoke-virtual {p3}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->getNetworkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object p1

    sget-object p3, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-ne p1, p3, :cond_a

    goto/16 :goto_a

    .line 1101
    :cond_a
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne p2, p1, :cond_b

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getHasSessionTokenStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_b

    .line 1107
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1114
    :cond_b
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1115
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1116
    :cond_c
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 1117
    instance-of p3, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz p3, :cond_d

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_7

    :cond_d
    move-object p2, v3

    :goto_7
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v3

    :cond_e
    if-nez v3, :cond_f

    goto :goto_8

    :cond_f
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result p3

    aget v2, p2, p3

    :goto_8
    if-ne v2, v1, :cond_10

    .line 1123
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkFailure()V

    .line 1128
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v4

    .line 1129
    const-string p1, "ErrorReason"

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    .line 1128
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 1131
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_9

    .line 1135
    :cond_10
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1138
    :cond_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_9
    return-object p1

    .line 1099
    :cond_12
    :goto_a
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final synthetic routeCreateRequest(ZZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->FORCE_OFFLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-ne p3, v0, :cond_2

    .line 123
    const-string v0, "Failed to create "

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 132
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " offline. This reader is not configured to operate offline."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 131
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 124
    :cond_1
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 125
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " offline. The provided OfflineListener is missing or incompletely implemented."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 124
    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 140
    :cond_2
    :goto_0
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    const/4 p4, 0x2

    if-eq p2, p3, :cond_5

    if-eq p2, p4, :cond_4

    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    .line 143
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 142
    :cond_4
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    goto :goto_1

    .line 141
    :cond_5
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    .line 753
    :goto_1
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p3

    invoke-interface {p3}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->currentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p3

    invoke-interface {p3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_c

    .line 760
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 762
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 763
    :cond_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 764
    instance-of p3, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz p3, :cond_7

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_3

    :cond_7
    move-object p2, v2

    :goto_3
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    :cond_8
    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result p3

    aget v1, p2, p3

    :goto_4
    if-ne v1, p4, :cond_a

    goto :goto_5

    .line 782
    :cond_a
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 785
    :cond_b
    :goto_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 786
    :cond_c
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->NO_NETWORK:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    if-eq p3, p1, :cond_15

    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-eq p2, p1, :cond_15

    .line 787
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne p2, p1, :cond_d

    invoke-virtual {p3}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->getNetworkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object p1

    sget-object p3, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-ne p1, p3, :cond_d

    goto/16 :goto_a

    .line 795
    :cond_d
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne p2, p1, :cond_e

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getHasSessionTokenStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    .line 801
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 808
    :cond_e
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 809
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 810
    :cond_f
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 811
    instance-of p3, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz p3, :cond_10

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_7

    :cond_10
    move-object p2, v2

    :goto_7
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    :cond_11
    if-nez v2, :cond_12

    goto :goto_8

    :cond_12
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result p3

    aget v1, p2, p3

    :goto_8
    if-ne v1, p4, :cond_13

    .line 817
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkFailure()V

    .line 822
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v3

    .line 823
    const-string p1, "ErrorReason"

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 822
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 825
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_9

    .line 829
    :cond_13
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 832
    :cond_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_9
    return-object p1

    .line 793
    :cond_15
    :goto_a
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object p1

    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;
    .locals 17
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

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "reader"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionConfiguration"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setReconnectParams"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 62
    iget-object v6, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->getLocationId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isOfflineEnabledForLocationAndReader(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v5

    .line 66
    :goto_0
    invoke-direct {v1, v3}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->getSupportsOfflineActivation(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    .line 464
    :cond_1
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    .line 467
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v6

    invoke-interface {v6}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->currentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-nez v5, :cond_8

    .line 474
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 70
    invoke-interface {v0, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    move-result-object v0

    .line 474
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 476
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 477
    :cond_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 478
    instance-of v3, v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_2

    :cond_3
    move-object v2, v9

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v9

    :cond_4
    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v9}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v3

    aget v8, v2, v3

    :goto_3
    if-ne v8, v7, :cond_6

    goto :goto_4

    .line 496
    :cond_6
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 499
    :cond_7
    :goto_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 500
    :cond_8
    sget-object v5, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->NO_NETWORK:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    if-eq v6, v5, :cond_11

    sget-object v5, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-eq v0, v5, :cond_11

    .line 501
    sget-object v5, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne v0, v5, :cond_9

    invoke-virtual {v6}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->getNetworkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object v5

    sget-object v6, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-ne v5, v6, :cond_9

    goto/16 :goto_8

    .line 509
    :cond_9
    sget-object v5, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne v0, v5, :cond_a

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getHasSessionTokenStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 515
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    goto/16 :goto_9

    .line 522
    :cond_a
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 70
    invoke-interface {v0, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    move-result-object v0

    .line 522
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 523
    :goto_5
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v5

    invoke-interface {v5}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 524
    :cond_b
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 525
    instance-of v6, v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v6, :cond_c

    check-cast v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_6

    :cond_c
    move-object v5, v9

    :goto_6
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v9

    :cond_d
    if-nez v9, :cond_e

    goto :goto_7

    :cond_e
    sget-object v5, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v9}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v6

    aget v8, v5, v6

    :goto_7
    if-ne v8, v7, :cond_f

    .line 531
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkFailure()V

    .line 536
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v10

    .line 537
    const-string v0, "ErrorReason"

    invoke-virtual {v9}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v12

    .line 536
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;

    move-object v14, v0

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x5

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v16}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 539
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    goto :goto_9

    .line 543
    :cond_f
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 546
    :cond_10
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a

    .line 507
    :cond_11
    :goto_8
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 70
    :goto_9
    invoke-interface {v0, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    move-result-object v0

    .line 468
    :goto_a
    check-cast v0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    return-object v0
.end method

.method public awaitActionRequiredPaymentIntentCompletion(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
    .locals 2
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

    .line 1217
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 298
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->awaitActionRequiredPaymentIntentCompletion(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    .line 1217
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

    .line 1219
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1220
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1221
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const/4 p2, -0x1

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v0

    aget p2, p2, v0

    :goto_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    goto :goto_3

    .line 1239
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1242
    :cond_5
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1217
    check-cast p1, Lkotlinx/coroutines/Deferred;

    return-object p1
.end method

.method public cancelConfirmPaymentIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1321
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 322
    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->cancelConfirmPaymentIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 323
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1321
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

    .line 1323
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1324
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1325
    instance-of v1, v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 1343
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1346
    :cond_5
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelConfirmRefund(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1373
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 334
    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->cancelConfirmRefund(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 335
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1373
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

    .line 1375
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1376
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1377
    instance-of v1, v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 1395
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1398
    :cond_5
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelConfirmSetupIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1347
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 328
    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->cancelConfirmSetupIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 329
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1347
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

    .line 1349
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1350
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1351
    instance-of v1, v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 1369
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1372
    :cond_5
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 260
    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    .line 1165
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

    .line 1167
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1168
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1169
    instance-of v1, v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 1187
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1190
    :cond_5
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1165
    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method

.method public cancelPaymentIntentActionRequired()V
    .locals 4

    .line 1269
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 310
    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->cancelPaymentIntentActionRequired()V

    .line 311
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1269
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1271
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1272
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1273
    instance-of v2, v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    :goto_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    goto :goto_3

    .line 1291
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1294
    :cond_5
    :goto_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1191
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 267
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    .line 1191
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

    .line 1193
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1194
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1195
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const/4 p2, -0x1

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v0

    aget p2, p2, v0

    :goto_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    goto :goto_3

    .line 1213
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1216
    :cond_5
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1191
    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public completePaymentIntentActionRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "paymentIntentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1243
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 304
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->completePaymentIntentActionRequired(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1243
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

    .line 1245
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1246
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1247
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const/4 p2, -0x1

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v0

    aget p2, p2, v0

    :goto_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    goto :goto_3

    .line 1265
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1268
    :cond_5
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1243
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 13
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

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getCollectiblePayment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleAuthResponse"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectScaPaymentMethodData"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authStateListener"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v0}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isOfflineModeEnabled()Z

    move-result v0

    .line 195
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v1

    .line 196
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object v2

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v10

    .line 888
    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    goto :goto_2

    .line 889
    :cond_2
    :goto_1
    sget-object v2, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    goto :goto_2

    .line 890
    :cond_3
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    .line 891
    :goto_2
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->currentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v11, 0x2

    const/4 v12, -0x1

    if-nez v0, :cond_a

    .line 898
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    move-object v2, p1

    move-object v3, p2

    move/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 198
    invoke-interface/range {v1 .. v9}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    .line 898
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 900
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 901
    :cond_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 902
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v0, :cond_5

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_4

    :cond_5
    move-object p2, v10

    :goto_4
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v10

    :cond_6
    if-nez v10, :cond_7

    goto :goto_5

    :cond_7
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v10}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v0

    aget v12, p2, v0

    :goto_5
    if-ne v12, v11, :cond_8

    goto :goto_6

    .line 920
    :cond_8
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 923
    :cond_9
    :goto_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 924
    :cond_a
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->NO_NETWORK:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    if-eq v2, v0, :cond_13

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-eq v1, v0, :cond_13

    .line 925
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne v1, v0, :cond_b

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->getNetworkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object v0

    sget-object v2, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-ne v0, v2, :cond_b

    goto/16 :goto_a

    .line 933
    :cond_b
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne v1, v0, :cond_c

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getHasSessionTokenStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    .line 939
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    goto/16 :goto_b

    .line 946
    :cond_c
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 198
    invoke-interface/range {v1 .. v9}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    .line 946
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 947
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 948
    :cond_d
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 949
    instance-of v2, v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v2, :cond_e

    check-cast v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_8

    :cond_e
    move-object v1, v10

    :goto_8
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v10

    :cond_f
    if-nez v10, :cond_10

    goto :goto_9

    :cond_10
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v10}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v2

    aget v12, v1, v2

    :goto_9
    if-ne v12, v11, :cond_11

    .line 955
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkFailure()V

    .line 960
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v1

    .line 961
    const-string v0, "ErrorReason"

    invoke-virtual {v10}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 960
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 963
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    goto :goto_b

    .line 967
    :cond_11
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 970
    :cond_12
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_c

    .line 931
    :cond_13
    :goto_a
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    :goto_b
    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 198
    invoke-interface/range {v1 .. v9}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    .line 971
    :goto_c
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

    const-string v0, "refundParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleAuthResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authStateListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 833
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 155
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->onlineResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->confirmRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/Refund;

    move-result-object p1

    .line 833
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

    .line 835
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 836
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 837
    instance-of p3, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object p2, p4

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object p4

    :cond_2
    if-nez p4, :cond_3

    const/4 p2, -0x1

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p4}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result p3

    aget p2, p2, p3

    :goto_2
    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    goto :goto_3

    .line 855
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 858
    :cond_5
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 833
    check-cast p1, Lcom/stripe/stripeterminal/external/models/Refund;

    return-object p1
.end method

.method public confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 11
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

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleAuthResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectScaPaymentMethodData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authStateListener"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v0}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isSetupIntentsEnabled()Z

    move-result v0

    .line 220
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v1

    .line 221
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v8

    .line 975
    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    goto :goto_2

    .line 976
    :cond_2
    :goto_1
    sget-object v2, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    goto :goto_2

    .line 977
    :cond_3
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    .line 978
    :goto_2
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->currentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v9, 0x2

    const/4 v10, -0x1

    if-nez v0, :cond_a

    .line 985
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    .line 223
    invoke-interface/range {v1 .. v7}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    .line 985
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 987
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 988
    :cond_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 989
    instance-of p3, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz p3, :cond_5

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_4

    :cond_5
    move-object p2, v8

    :goto_4
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v8

    :cond_6
    if-nez v8, :cond_7

    goto :goto_5

    :cond_7
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v8}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result p3

    aget v10, p2, p3

    :goto_5
    if-ne v10, v9, :cond_8

    goto :goto_6

    .line 1007
    :cond_8
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1010
    :cond_9
    :goto_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 1011
    :cond_a
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->NO_NETWORK:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    if-eq v2, v0, :cond_13

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-eq v1, v0, :cond_13

    .line 1012
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne v1, v0, :cond_b

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->getNetworkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object v0

    sget-object v2, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-ne v0, v2, :cond_b

    goto/16 :goto_a

    .line 1020
    :cond_b
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne v1, v0, :cond_c

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getHasSessionTokenStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1026
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    goto/16 :goto_b

    .line 1033
    :cond_c
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 223
    invoke-interface/range {v1 .. v7}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    .line 1033
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1034
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1035
    :cond_d
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1036
    instance-of v2, v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v2, :cond_e

    check-cast v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_8

    :cond_e
    move-object v1, v8

    :goto_8
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v8

    :cond_f
    if-nez v8, :cond_10

    goto :goto_9

    :cond_10
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v8}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v2

    aget v10, v1, v2

    :goto_9
    if-ne v10, v9, :cond_11

    .line 1042
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkFailure()V

    .line 1047
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v1

    .line 1048
    const-string v0, "ErrorReason"

    invoke-virtual {v8}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 1047
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 1050
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    goto :goto_b

    .line 1054
    :cond_11
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1057
    :cond_12
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_c

    .line 1018
    :cond_13
    :goto_a
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    :goto_b
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 223
    invoke-interface/range {v1 .. v7}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    .line 1058
    :goto_c
    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 13

    const-string v0, "paymentIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v0}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isOfflineModeEnabled()Z

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v1}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isOfflineListenerSet()Z

    move-result v1

    .line 94
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v2

    .line 547
    sget-object v3, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->FORCE_OFFLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 557
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 556
    const-string v6, "Failed to create PaymentIntent offline. This reader is not configured to operate offline."

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4

    .line 549
    :cond_1
    new-instance v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 550
    sget-object v6, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v10, 0xc

    const/4 v11, 0x0

    .line 549
    const-string v7, "Failed to create PaymentIntent offline. The provided OfflineListener is missing or incompletely implemented."

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v5

    .line 565
    :cond_2
    :goto_0
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_5

    if-eq v1, v3, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 568
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 567
    :cond_4
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    goto :goto_1

    .line 566
    :cond_5
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    .line 569
    :goto_1
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->currentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v0, :cond_c

    .line 576
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 97
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    .line 98
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    .line 576
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 579
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 580
    :cond_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 581
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v0, :cond_7

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_3

    :cond_7
    move-object p2, v5

    :goto_3
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v5

    :cond_8
    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v0

    aget v4, p2, v0

    :goto_4
    if-ne v4, v3, :cond_a

    goto :goto_5

    .line 599
    :cond_a
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 602
    :cond_b
    :goto_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 603
    :cond_c
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->NO_NETWORK:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    if-eq v2, v0, :cond_15

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-eq v1, v0, :cond_15

    .line 604
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne v1, v0, :cond_d

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->getNetworkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object v0

    sget-object v2, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-ne v0, v2, :cond_d

    goto/16 :goto_9

    .line 612
    :cond_d
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne v1, v0, :cond_e

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getHasSessionTokenStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    .line 618
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    goto/16 :goto_a

    .line 625
    :cond_e
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 97
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    .line 98
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    .line 625
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 626
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 627
    :cond_f
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 628
    instance-of v2, v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v2, :cond_10

    check-cast v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_7

    :cond_10
    move-object v1, v5

    :goto_7
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v5

    :cond_11
    if-nez v5, :cond_12

    goto :goto_8

    :cond_12
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v2

    aget v4, v1, v2

    :goto_8
    if-ne v4, v3, :cond_13

    .line 634
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkFailure()V

    .line 639
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v6

    .line 640
    const-string v0, "ErrorReason"

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    .line 639
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v12}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 642
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    goto :goto_a

    .line 646
    :cond_13
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 649
    :cond_14
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_b

    .line 610
    :cond_15
    :goto_9
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 97
    :goto_a
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    .line 98
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    .line 563
    :goto_b
    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method

.method public createReaderCollectedData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/CollectedData;
    .locals 3

    const-string v0, "paymentMethodData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1295
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 316
    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->createReaderCollectedData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/CollectedData;

    move-result-object p1

    .line 1295
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

    .line 1297
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1298
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1299
    instance-of v1, v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 1317
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1320
    :cond_5
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1295
    check-cast p1, Lcom/stripe/stripeterminal/external/models/CollectedData;

    return-object p1
.end method

.method public createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 13

    const-string v0, "setupIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v0}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isSetupIntentsEnabled()Z

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v1}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->offlineListenerHasSetupIntentCallbacks()Z

    move-result v1

    .line 108
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v2

    .line 650
    sget-object v3, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->FORCE_OFFLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 660
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 659
    const-string v6, "Failed to create SetupIntent offline. This reader is not configured to operate offline."

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4

    .line 652
    :cond_1
    new-instance v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 653
    sget-object v6, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FORCE_OFFLINE_WITH_FEATURE_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v10, 0xc

    const/4 v11, 0x0

    .line 652
    const-string v7, "Failed to create SetupIntent offline. The provided OfflineListener is missing or incompletely implemented."

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v5

    .line 668
    :cond_2
    :goto_0
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_5

    if-eq v1, v3, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 671
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 670
    :cond_4
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    goto :goto_1

    .line 669
    :cond_5
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    .line 672
    :goto_1
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->currentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v0, :cond_c

    .line 679
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 111
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    .line 112
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    .line 679
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 682
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 683
    :cond_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 684
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v0, :cond_7

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_3

    :cond_7
    move-object p2, v5

    :goto_3
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v5

    :cond_8
    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v0

    aget v4, p2, v0

    :goto_4
    if-ne v4, v3, :cond_a

    goto :goto_5

    .line 702
    :cond_a
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 705
    :cond_b
    :goto_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 706
    :cond_c
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->NO_NETWORK:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    if-eq v2, v0, :cond_15

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_OFFLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-eq v1, v0, :cond_15

    .line 707
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->USE_NETWORK_STATUS:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne v1, v0, :cond_d

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->getNetworkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object v0

    sget-object v2, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-ne v0, v2, :cond_d

    goto/16 :goto_9

    .line 715
    :cond_d
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;->START_ONLINE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$RoutingScheme;

    if-ne v1, v0, :cond_e

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getHasSessionTokenStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    .line 721
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    goto/16 :goto_a

    .line 728
    :cond_e
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 111
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    .line 112
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    .line 728
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 729
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 730
    :cond_f
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 731
    instance-of v2, v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v2, :cond_10

    check-cast v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_7

    :cond_10
    move-object v1, v5

    :goto_7
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v5

    :cond_11
    if-nez v5, :cond_12

    goto :goto_8

    :cond_12
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v2

    aget v4, v1, v2

    :goto_8
    if-ne v4, v3, :cond_13

    .line 737
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkFailure()V

    .line 742
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v6

    .line 743
    const-string v0, "ErrorReason"

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    .line 742
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1;

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v12}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 745
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    goto :goto_a

    .line 749
    :cond_13
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 752
    :cond_14
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_b

    .line 713
    :cond_15
    :goto_9
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOfflineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 111
    :goto_a
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    .line 112
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    .line 666
    :goto_b
    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public getReaderLocations(Ljava/util/List;)Ljava/util/Map;
    .locals 3
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

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->onlineResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getReaderLocations(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v1

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    throw v0

    .line 284
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->offlineResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;->getReaderLocations(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public readReusableCard(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;
    .locals 2

    const-string v0, "readReusableCardParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethodData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 252
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->readReusableCard(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    move-result-object p1

    .line 1139
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

    .line 1141
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1142
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1143
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const/4 p2, -0x1

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v0

    aget p2, p2, v0

    :goto_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    goto :goto_3

    .line 1161
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 1164
    :cond_5
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1139
    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    return-object p1
.end method

.method public updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getOnlineResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 169
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->onlineResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    .line 859
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

    .line 861
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 862
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 863
    instance-of p3, p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const/4 p2, -0x1

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result p3

    aget p2, p2, p3

    :goto_2
    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    goto :goto_3

    .line 881
    :cond_4
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;->access$getStripeConnectivityRepository$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->reportNetworkSuccess()V

    .line 884
    :cond_5
    :goto_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 859
    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method
