.class public final Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;
.super Ljava/lang/Object;
.source "ApiRequestFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;
.implements Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;
.implements Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;,
        Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiRequestFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiRequestFactory.kt\ncom/stripe/stripeterminal/internal/common/api/ApiRequestFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 PaymentMethodOptions.kt\ncom/stripe/proto/api/rest/PaymentMethodOptions$Companion\n+ 4 ConfirmPaymentIntentRequest.kt\ncom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences$Companion\n+ 5 PaymentMethodOptions.kt\ncom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Companion\n+ 6 PaymentMethodOptions.kt\ncom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay$Companion\n*L\n1#1,807:1\n1#2:808\n213#3:809\n213#3:810\n213#3:812\n590#4:811\n493#5:813\n851#6:814\n*S KotlinDebug\n*F\n+ 1 ApiRequestFactory.kt\ncom/stripe/stripeterminal/internal/common/api/ApiRequestFactory\n*L\n359#1:809\n488#1:810\n522#1:812\n494#1:811\n762#1:813\n771#1:814\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00a2\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u00a2\u0001B]\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0001\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0016\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012j\u0002`\u0015\u00a2\u0006\u0002\u0010\u0016J\u001e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ&\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 j\u0002`#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'J\u000e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020%J\u0011\u0010(\u001a\u00020)2\u0006\u0010+\u001a\u00020,H\u0096\u0001J\u0016\u0010-\u001a\u00020.2\u0006\u0010*\u001a\u00020/2\u0006\u00100\u001a\u000201J\u0019\u0010-\u001a\u00020.2\u0006\u0010+\u001a\u00020,2\u0006\u00100\u001a\u000201H\u0096\u0001JU\u00102\u001a\u0012\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u0002040 j\u0002`52\u0006\u0010*\u001a\u00020%2\u0008\u00106\u001a\u0004\u0018\u0001072\u0008\u00108\u001a\u0004\u0018\u0001092\u0008\u0010:\u001a\u0004\u0018\u00010\u001e2\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0008\u0010=\u001a\u0004\u0018\u00010>\u00a2\u0006\u0002\u0010?J&\u0010@\u001a\u0012\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u0002040 j\u0002`52\u0006\u0010*\u001a\u00020%2\u0006\u0010A\u001a\u00020BJ\u0016\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020/2\u0006\u0010A\u001a\u00020BJI\u0010F\u001a\u0012\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u0002040 j\u0002`52\u0006\u0010*\u001a\u00020%2\u0006\u0010G\u001a\u00020H2\u0008\u00108\u001a\u0004\u0018\u0001092\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0008\u0010I\u001a\u0004\u0018\u00010,\u00a2\u0006\u0002\u0010JJ]\u0010K\u001a\u0012\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u0002040 j\u0002`52\u0006\u0010*\u001a\u00020%2\u0008\u0010L\u001a\u0004\u0018\u00010,2\n\u0008\u0002\u00108\u001a\u0004\u0018\u0001092\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010\u001e2\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010<2\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010>\u00a2\u0006\u0002\u0010MJa\u0010N\u001a\u0012\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u0002040 j\u0002`52\u0006\u0010*\u001a\u00020%2\u0008\u00106\u001a\u0004\u0018\u0001072\u0008\u0010O\u001a\u0004\u0018\u00010P2\u0008\u00108\u001a\u0004\u0018\u0001092\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0008\u0010I\u001a\u0004\u0018\u00010,2\u0008\u0010Q\u001a\u0004\u0018\u00010RH\u0002\u00a2\u0006\u0002\u0010SJ\u0018\u0010T\u001a\u00020D2\u0006\u0010E\u001a\u00020/2\u0008\u0010=\u001a\u0004\u0018\u00010>J\u0011\u0010U\u001a\u00020V2\u0006\u00100\u001a\u00020WH\u0096\u0001J \u0010X\u001a\u00020Y2\u0006\u00100\u001a\u00020Z2\u0006\u0010[\u001a\u00020\\2\u0008\u0010L\u001a\u0004\u0018\u00010,J$\u0010]\u001a\u0002072\u0006\u0010[\u001a\u00020\\2\u0008\u0010=\u001a\u0004\u0018\u00010>2\u0008\u0010L\u001a\u0004\u0018\u00010,H\u0002J\u000e\u0010^\u001a\u00020_2\u0006\u00106\u001a\u00020\\J\u0011\u0010`\u001a\u00020a2\u0006\u00100\u001a\u00020bH\u0096\u0001J\u0010\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020\u001eH\u0002J\u000e\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020iJ\u0014\u0010j\u001a\u00020k2\u000c\u0010l\u001a\u0008\u0012\u0004\u0012\u00020,0mJB\u0010n\u001a\u0012\u0012\u0004\u0012\u00020o\u0012\u0004\u0012\u00020p0 j\u0002`q2\u0008\u0010r\u001a\u0004\u0018\u00010,2\u0006\u0010s\u001a\u00020\'2\u0006\u0010t\u001a\u00020\u001e2\u0006\u0010u\u001a\u00020\u001e2\u0008\u0010v\u001a\u0004\u0018\u00010,J\u001e\u0010w\u001a\u00020x2\n\u0008\u0002\u0010y\u001a\u0004\u0018\u00010z2\n\u0008\u0002\u0010{\u001a\u0004\u0018\u00010,J\u000e\u0010|\u001a\u00020}2\u0006\u0010~\u001a\u00020\u007fJ\u0011\u0010\u0080\u0001\u001a\u0002072\u0006\u0010A\u001a\u00020BH\u0002J}\u0010\u0081\u0001\u001a\u0015\u0012\u0005\u0012\u00030\u0082\u0001\u0012\u0005\u0012\u00030\u0083\u00010 j\u0003`\u0084\u00012\t\u0010\u0085\u0001\u001a\u0004\u0018\u00010,2\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010,2\u0007\u0010\u0087\u0001\u001a\u00020<2\u0006\u00106\u001a\u0002072\u0006\u0010u\u001a\u00020\u001e2\u0006\u0010t\u001a\u00020\u001e2\u0007\u0010\u0088\u0001\u001a\u00020,2\u0014\u0010\u0089\u0001\u001a\u000f\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020,0\u008a\u00012\u0008\u0010v\u001a\u0004\u0018\u00010,H\u0096\u0001J\u0010\u0010\u008b\u0001\u001a\u00030\u008c\u00012\u0006\u0010+\u001a\u00020,J\u0011\u0010\u008d\u0001\u001a\u00030\u008e\u00012\u0007\u0010\u008f\u0001\u001a\u00020,J.\u0010\u0090\u0001\u001a\u0015\u0012\u0005\u0012\u00030\u008e\u0001\u0012\u0005\u0012\u00030\u0091\u00010 j\u0003`\u0092\u00012\u0007\u0010\u0086\u0001\u001a\u00020,2\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010,J\u0011\u0010\u0094\u0001\u001a\u00030\u0095\u00012\u0007\u0010\u008f\u0001\u001a\u00020,J%\u0010\u0096\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0005\u0012\u00030\u0098\u00010 2\u0006\u0010*\u001a\u00020%2\u0006\u0010A\u001a\u00020BJ/\u0010\u0099\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0005\u0012\u00030\u0098\u00010 2\u0006\u0010*\u001a\u00020%2\u0006\u0010G\u001a\u00020H2\u0008\u00108\u001a\u0004\u0018\u000109JC\u0010\u009a\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0005\u0012\u00030\u0098\u00010 2\u0006\u0010*\u001a\u00020%2\u0008\u0010L\u001a\u0004\u0018\u00010,2\u0008\u00108\u001a\u0004\u0018\u0001092\u0006\u0010e\u001a\u00020\u001e2\u0008\u0010=\u001a\u0004\u0018\u00010>J\u001f\u0010\u009b\u0001\u001a\u00030\u009c\u0001*\u00030\u009d\u00012\u0008\u0010:\u001a\u0004\u0018\u00010\u001eH\u0002\u00a2\u0006\u0003\u0010\u009e\u0001J\u0017\u0010\u009f\u0001\u001a\u00030\u009c\u0001*\u00030\u009d\u00012\u0006\u0010G\u001a\u00020HH\u0002J\u000e\u0010\u00a0\u0001\u001a\u00030\u00a1\u0001*\u00020\\H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012j\u0002`\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00a3\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;",
        "posInfoFactory",
        "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
        "locationHandler",
        "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "settingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "setUpIntentRestApiFactory",
        "paymentIntentRestApiFactory",
        "refundRestApiRequestFactory",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "activateReader",
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "connectionConfig",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "shouldActivateWithExpandedLocation",
        "",
        "addEmvSecondGenerationData",
        "Lcom/stripe/jvmcore/restclient/RestRequest;",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/api/AddEmvSecondGenerationDataRestRequest;",
        "paymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "transactionResult",
        "Lcom/stripe/hardware/emv/TransactionResult;",
        "cancelPaymentIntent",
        "Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;",
        "intent",
        "id",
        "",
        "cancelSetupIntent",
        "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "confirmCollectiblePayment",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/api/ConfirmPaymentIntentRestRequest;",
        "paymentMethodData",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "amountTip",
        "Lcom/stripe/currency/Amount;",
        "dynamicCurrencyConversionSelected",
        "amountSurcharge",
        "",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/jvmcore/restclient/RestRequest;",
        "confirmManualEntryPaymentIntent",
        "manualEntryPayment",
        "Lcom/stripe/transaction/payment/ManualEntryPayment;",
        "confirmManualEntrySetupIntent",
        "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
        "setupIntent",
        "confirmNonCardPaymentMethodPaymentIntent",
        "payment",
        "Lcom/stripe/transaction/payment/NonCardPayment;",
        "returnUrl",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/payment/NonCardPayment;Lcom/stripe/currency/Amount;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;",
        "confirmPaymentIntent",
        "readerId",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/jvmcore/restclient/RestRequest;",
        "confirmPaymentIntentRequest",
        "paymentMethodOptions",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions;",
        "redirectPreferences",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Lcom/stripe/currency/Amount;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;)Lcom/stripe/jvmcore/restclient/RestRequest;",
        "confirmSetupIntent",
        "createPaymentIntent",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "createPaymentMethod",
        "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;",
        "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;",
        "data",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "createPaymentMethodRequest",
        "createReaderCollectedData",
        "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;",
        "createSetupIntent",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "createUpdatePaymentIntentPaymentMethodOptionsRequest",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;",
        "requestDynamicCurrencyConversion",
        "detachPaymentMethod",
        "Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;",
        "method",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethod;",
        "discoverLocations",
        "Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;",
        "serialNumbers",
        "",
        "emvSecondGenerationDataRefundRequest",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/api/AddEmvSecondGenerationRefundDataRestRequest;",
        "refundId",
        "result",
        "refundApplicationFee",
        "reverseTransfer",
        "stripeAccountId",
        "listAllReaders",
        "Lcom/stripe/proto/api/rest/ListAllReadersRequest;",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "location",
        "listLocations",
        "Lcom/stripe/proto/api/rest/ListLocationsRequest;",
        "parameters",
        "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;",
        "manualEntryRequestedPaymentMethod",
        "refundChargeRequest",
        "Lcom/stripe/proto/api/rest/RefundChargeRequest;",
        "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundChargeRestRequest;",
        "charge",
        "paymentIntentId",
        "amount",
        "reason",
        "metadata",
        "",
        "retrieveLocation",
        "Lcom/stripe/proto/api/rest/RetrieveLocationRequest;",
        "retrievePaymentIntent",
        "Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;",
        "clientSecret",
        "retrievePaymentIntentWithPaymentIntentId",
        "Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/api/RetrievePaymentIntentRestRequest;",
        "accountId",
        "retrieveSetupIntent",
        "Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;",
        "updateManualEntryPaymentIntent",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;",
        "updateNonCardPaymentMethodPaymentIntent",
        "updatePaymentIntent",
        "addCardPaymentMethodOptionsIfNeeded",
        "",
        "Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;",
        "(Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;Ljava/lang/Boolean;)V",
        "addNonCardPaymentMethodOptionsIfNeeded",
        "readMethodFromTlv",
        "Lcom/stripe/stripeterminal/internal/models/ReadMethod;",
        "Companion",
        "common_publish"
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
.field private static final CARD_TYPE:Ljava/lang/String; = "card"

.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;

.field private static final EMV_TYPE:Ljava/lang/String; = "emv"

.field private static final ENCRYPTED_EMV_TYPE:Ljava/lang/String; = "encrypted_emv"

.field private static final ENCRYPTED_TRACK_DATA_TYPE:Ljava/lang/String; = "encrypted_track_data"

.field private static final IF_AVAILABLE:Ljava/lang/String; = "if_available"

.field private static final INVALID_CLIENT_SECRET:Ljava/lang/String; = "Invalid client secret."

.field private static final NEVER:Ljava/lang/String; = "never"

.field private static final SECRET_DELIMITER:Ljava/lang/String; = "_secret_"

.field private static final STRIPE_ACCOUNT_HEADER:Ljava/lang/String; = "Stripe-Account"

.field private static final WEB:Ljava/lang/String; = "web"


# instance fields
.field private final locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

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

.field private final paymentIntentRestApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;

.field private final posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

.field private final refundRestApiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;

.field private final setUpIntentRestApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;

.field private final settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

.field private final statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

.field private final transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;",
            "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;",
            "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "posInfoFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setUpIntentRestApiFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentIntentRestApiFactory"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refundRestApiRequestFactory"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    .line 65
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    .line 66
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 67
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    .line 68
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 69
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->setUpIntentRestApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;

    .line 70
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->paymentIntentRestApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;

    .line 71
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->refundRestApiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;

    .line 72
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method private final addCardPaymentMethodOptionsIfNeeded(Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 761
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 762
    sget-object v0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;->Companion:Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Companion;

    .line 813
    new-instance v0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;-><init>()V

    .line 763
    iput-object p2, v0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->dynamic_currency_conversion_selected:Ljava/lang/Boolean;

    .line 813
    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->build()Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;

    move-result-object p2

    .line 762
    iput-object p2, p1, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;->card_present:Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;

    :cond_0
    return-void
.end method

.method private final addNonCardPaymentMethodOptionsIfNeeded(Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;Lcom/stripe/transaction/payment/NonCardPayment;)V
    .locals 1

    .line 769
    invoke-virtual {p2}, Lcom/stripe/transaction/payment/NonCardPayment;->getPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object p2

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 771
    sget-object p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;->Companion:Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay$Companion;

    .line 814
    new-instance p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay$Builder;

    invoke-direct {p2}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay$Builder;-><init>()V

    .line 771
    const-string v0, "web"

    iput-object v0, p2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay$Builder;->client:Ljava/lang/String;

    .line 814
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay$Builder;->build()Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;

    move-result-object p2

    .line 771
    iput-object p2, p1, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;->wechat_pay:Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;

    :cond_0
    return-void
.end method

.method public static synthetic confirmPaymentIntent$default(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    and-int/lit8 p8, p7, 0x4

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_2

    move-object p5, v0

    :cond_2
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_3

    move-object p6, v0

    .line 349
    :cond_3
    invoke-virtual/range {p0 .. p6}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object p0

    return-object p0
.end method

.method private final confirmPaymentIntentRequest(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Lcom/stripe/currency/Amount;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "Lcom/stripe/proto/api/rest/PaymentMethodOptions;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;",
            ">;"
        }
    .end annotation

    .line 703
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v5

    .line 707
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object/from16 v3, p2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz p4, :cond_1

    .line 709
    invoke-virtual/range {p4 .. p4}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_1
    move-object v6, v1

    .line 702
    new-instance v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    const/16 v12, 0x40b

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;-><init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/squareup/wire/Message;

    .line 714
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;

    invoke-static {v1, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;->access$getHeaders(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/util/Map;

    move-result-object p1

    .line 701
    new-instance v1, Lcom/stripe/jvmcore/restclient/RestRequest;

    invoke-direct {v1, v0, p1}, Lcom/stripe/jvmcore/restclient/RestRequest;-><init>(Lcom/squareup/wire/Message;Ljava/util/Map;)V

    return-object v1
.end method

.method private final createPaymentMethodRequest(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;
    .locals 40

    move-object/from16 v0, p0

    .line 621
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 622
    invoke-direct/range {p0 .. p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->readMethodFromTlv(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    move-result-object v2

    .line 623
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    invoke-virtual {v3}, Lcom/stripe/core/transaction/SettingsRepository;->getSettings()Lcom/stripe/transaction/Settings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/transaction/Settings;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/transaction/payment/EmvPaymentKt;->toEmvProcessingMethod(Lcom/stripe/hardware/emv/EmvTransactionType;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 626
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    goto :goto_0

    :cond_0
    move-object/from16 v20, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 627
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_1

    :cond_1
    move-object/from16 v19, v4

    .line 628
    :goto_1
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->getMethod()Ljava/lang/String;

    move-result-object v8

    .line 629
    sget-object v1, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACT_EMV:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    if-ne v2, v1, :cond_2

    move-object v11, v3

    goto :goto_2

    :cond_2
    move-object v11, v4

    .line 624
    :goto_2
    new-instance v21, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    const v23, 0xceed

    const/16 v24, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v6, v21

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v15, p3

    invoke-direct/range {v6 .. v24}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v21, v6

    .line 631
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    goto :goto_3

    .line 652
    :cond_3
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 654
    :cond_4
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getSwipeReason()Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/models/SwipeReason;->getReason()Ljava/lang/String;

    move-result-object v24

    .line 655
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getTrack2()Ljava/lang/String;

    move-result-object v25

    .line 656
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getKsn()Ljava/lang/String;

    move-result-object v33

    .line 657
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getPinBlock()Ljava/lang/String;

    move-result-object v28

    .line 658
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getPinBlockKsn()Ljava/lang/String;

    move-result-object v29

    const v38, 0xf732

    const/16 v39, 0x0

    .line 652
    const-string v22, "encrypted_track_data"

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v21 .. v39}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    move-result-object v1

    goto :goto_8

    .line 636
    :cond_5
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 637
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->isSimulated()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v4

    :goto_4
    if-eqz v1, :cond_7

    .line 636
    const-string v1, "emv"

    goto :goto_5

    .line 639
    :cond_7
    const-string v1, "encrypted_emv"

    :goto_5
    move-object/from16 v22, v1

    .line 640
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getTlv()Ljava/lang/String;

    move-result-object v27

    .line 641
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getEncryptedTrack2()Ljava/lang/String;

    move-result-object v25

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getEncryptedTrack2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "rsa_aes"

    move-object/from16 v31, v1

    goto :goto_6

    :cond_8
    move-object/from16 v31, v4

    .line 643
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getEncryptedTrack2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getCryptogram()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    goto :goto_7

    :cond_9
    move-object/from16 v32, v4

    .line 644
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getEncryptionType()Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    move-result-object v36

    const v38, 0xb9d6

    const/16 v39, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    .line 635
    invoke-static/range {v21 .. v39}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    move-result-object v1

    .line 665
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->isInterac()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->INTERAC_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getTypeName()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 666
    :cond_a
    sget-object v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->CARD_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getTypeName()Ljava/lang/String;

    move-result-object v2

    :goto_9
    move-object v6, v2

    .line 671
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->isInterac()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->isNonCardPaymentMethod()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_a

    :cond_b
    move-object v7, v1

    goto :goto_b

    :cond_c
    :goto_a
    move-object v7, v4

    .line 672
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->isInterac()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->isNonCardPaymentMethod()Z

    move-result v2

    if-nez v2, :cond_d

    move-object v8, v1

    goto :goto_c

    :cond_d
    move-object v8, v4

    :goto_c
    if-eqz p2, :cond_e

    .line 673
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/stripeterminal/external/models/AllowRedisplay;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_e
    move-object v11, v4

    .line 669
    new-instance v5, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x58

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method

.method private final createUpdatePaymentIntentPaymentMethodOptionsRequest(Z)Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;
    .locals 6

    .line 680
    new-instance v0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;->newBuilder()Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 683
    const-string p1, "if_available"

    invoke-virtual {v0, p1}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;->request_dynamic_currency_conversion(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;

    .line 686
    :cond_0
    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent$Builder;->build()Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;

    move-result-object p1

    .line 687
    new-instance v0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;-><init>(Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;->newBuilder()Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$Builder;

    move-result-object v0

    .line 688
    invoke-virtual {v0, p1}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$Builder;->card_present(Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$Builder;

    move-result-object p1

    .line 689
    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$Builder;->build()Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic listAllReaders$default(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/stripeterminal/external/models/DeviceType;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/ListAllReadersRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 569
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->listAllReaders(Lcom/stripe/stripeterminal/external/models/DeviceType;Ljava/lang/String;)Lcom/stripe/proto/api/rest/ListAllReadersRequest;

    move-result-object p0

    return-object p0
.end method

.method private final manualEntryRequestedPaymentMethod(Lcom/stripe/transaction/payment/ManualEntryPayment;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;
    .locals 16

    .line 433
    new-instance v5, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    .line 434
    new-instance v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;

    .line 435
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/transaction/payment/ManualEntryPayment;->getZipCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 434
    invoke-direct {v0, v1, v2, v3, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 433
    invoke-direct {v5, v0, v2, v3, v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;-><init>(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 440
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/transaction/payment/ManualEntryPayment;->getEncPAN()Ljava/lang/String;

    move-result-object v7

    .line 441
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/transaction/payment/ManualEntryPayment;->getKsn()Ljava/lang/String;

    move-result-object v12

    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/transaction/payment/ManualEntryPayment;->getExpiryDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/transaction/payment/ManualEntryPayment;->getExpiryDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/transaction/payment/ManualEntryPayment;->getEncCVV()Ljava/lang/String;

    move-result-object v11

    .line 445
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/transaction/payment/ManualEntryPayment;->getKsn()Ljava/lang/String;

    move-result-object v8

    .line 439
    new-instance v4, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    const/16 v14, 0x40

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v15}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 448
    new-instance v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    const/16 v8, 0x66

    const/4 v9, 0x0

    const-string v1, "card"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final readMethodFromTlv(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/internal/models/ReadMethod;
    .locals 4

    .line 751
    :try_start_0
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getReadMethod()Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 753
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "tlv"

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getTlv()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Failed to parse read method"

    invoke-interface {v1, p1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 754
    throw v0
.end method


# virtual methods
.method public final activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Z)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "reader"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "connectionConfig"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v6, 0x4

    .line 85
    new-array v6, v6, [Lkotlin/Pair;

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v6, v7

    .line 86
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v6, v4

    .line 87
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v3}, Lcom/stripe/core/transaction/TransactionRepository;->getRemotePosSdkVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v3

    const-string v8, "remotePosSdkVersionInfo"

    invoke-static {v8, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v8, 0x2

    aput-object v3, v6, v8

    .line 88
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v3}, Lcom/stripe/core/transaction/TransactionRepository;->getRemotePosDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v3

    const-string v9, "remotePosDeviceInfo"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v9, 0x3

    aput-object v3, v6, v9

    .line 83
    const-string v3, "activateReader"

    invoke-interface {v5, v3, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 93
    instance-of v3, v2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 94
    iget-object v6, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v6}, Lcom/stripe/core/transaction/TransactionRepository;->getRemotePosDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, v6, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    if-eqz v6, :cond_0

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 96
    iget-object v6, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v9, "using remote pos device info"

    new-array v10, v7, [Lkotlin/Pair;

    invoke-interface {v6, v9, v10}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 99
    iget-object v6, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    .line 100
    iget-object v9, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v9}, Lcom/stripe/core/transaction/TransactionRepository;->getRemotePosSdkVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v9

    .line 101
    iget-object v10, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v10}, Lcom/stripe/core/transaction/TransactionRepository;->getRemotePosSecondarySdkVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v10

    .line 102
    iget-object v11, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v11}, Lcom/stripe/core/transaction/TransactionRepository;->getRemotePosDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v11

    .line 99
    invoke-interface {v6, v9, v10, v11}, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;->createForRemotePos(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/jvmcore/terminal/api/PosInfo;

    move-result-object v6

    goto :goto_2

    .line 105
    :cond_0
    iget-object v6, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 106
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "falling back to using local pos device info, EmbeddedConnectionConfiguration? "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 108
    const-string v10, " device-uuid? "

    .line 106
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 109
    iget-object v10, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v10}, Lcom/stripe/core/transaction/TransactionRepository;->getRemotePosDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, v10, Lcom/stripe/proto/model/common/DeviceInfo;->device_uuid:Ljava/lang/String;

    if-eqz v10, :cond_2

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_1

    move v10, v4

    goto :goto_0

    :cond_1
    move v10, v7

    :goto_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_1

    :cond_2
    move-object v10, v5

    .line 106
    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Lkotlin/Pair;

    .line 105
    invoke-interface {v6, v9, v10}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 113
    iget-object v6, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->posInfoFactory:Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    invoke-interface {v6}, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;->createForLocalPos()Lcom/stripe/jvmcore/terminal/api/PosInfo;

    move-result-object v6

    :goto_2
    if-eqz v3, :cond_6

    .line 118
    move-object v9, v2

    check-cast v9, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    invoke-virtual {v9}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->getPosConnectionType()Lcom/stripe/stripeterminal/internal/models/PosConnectionType;

    move-result-object v9

    .line 119
    sget-object v10, Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Default;->INSTANCE:Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Default;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    .line 120
    :cond_3
    sget-object v10, Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Handoff;->INSTANCE:Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Handoff;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v9, Lcom/stripe/proto/api/rest/ConnectionType;->handoff:Lcom/stripe/proto/api/rest/ConnectionType;

    goto :goto_4

    .line 121
    :cond_4
    sget-object v10, Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Countertop;->INSTANCE:Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Countertop;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Lcom/stripe/proto/api/rest/ConnectionType;->countertop:Lcom/stripe/proto/api/rest/ConnectionType;

    goto :goto_4

    :cond_5
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_6
    :goto_3
    move-object v9, v5

    :goto_4
    if-nez v9, :cond_7

    .line 126
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/extensions/ReaderExtensionsKt;->getConnectionType(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/api/rest/ConnectionType;

    move-result-object v9

    :cond_7
    move-object/from16 v20, v9

    .line 132
    invoke-virtual {v6}, Lcom/stripe/jvmcore/terminal/api/PosInfo;->getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object v9

    invoke-virtual {v9}, Lcom/stripe/terminal/appinfo/DeviceUuid;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 133
    invoke-virtual {v6}, Lcom/stripe/jvmcore/terminal/api/PosInfo;->getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v16

    .line 134
    invoke-virtual {v6}, Lcom/stripe/jvmcore/terminal/api/PosInfo;->getSecondaryVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v21

    .line 135
    invoke-virtual {v6}, Lcom/stripe/jvmcore/terminal/api/PosInfo;->getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v17

    .line 136
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->toDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v14

    .line 137
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v13

    .line 138
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->isSimulated()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    move-object v6, v5

    :goto_5
    if-nez v6, :cond_9

    .line 139
    const-string v6, "simulator"

    :cond_9
    move-object v12, v6

    .line 140
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeysetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v6, Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    invoke-direct {v6, v1, v5, v8, v5}, Lcom/stripe/proto/api/rest/ReportedReaderConfig;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v18, v6

    goto :goto_6

    :cond_a
    move-object/from16 v18, v5

    .line 141
    :goto_6
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->getLocationId()Ljava/lang/String;

    move-result-object v19

    .line 143
    const-string v1, "account_ref.store_id"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz p3, :cond_b

    move-object v5, v1

    :cond_b
    if-nez v5, :cond_c

    .line 145
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    :cond_c
    move-object/from16 v22, v5

    if-eqz v3, :cond_d

    .line 148
    move-object v1, v2

    check-cast v1, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->getShouldGenerateOfflineSessionToken()Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v4

    goto :goto_7

    :cond_d
    move v1, v7

    .line 131
    :goto_7
    new-instance v10, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    .line 147
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v25, 0x2010

    const/16 v26, 0x0

    const/4 v15, 0x0

    const/16 v24, 0x0

    .line 131
    invoke-direct/range {v10 .. v26}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 150
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-array v2, v4, [Lkotlin/Pair;

    const-string v3, "request"

    invoke-static {v3, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Created ActivateConnectionTokenRequest"

    invoke-interface {v1, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object v10
.end method

.method public final addEmvSecondGenerationData(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/hardware/emv/TransactionResult;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;",
            "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    new-instance v0, Lcom/stripe/jvmcore/restclient/RestRequest;

    .line 381
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v6

    .line 382
    invoke-virtual {p2}, Lcom/stripe/hardware/emv/TransactionResult;->getResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v1

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 400
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    .line 402
    :goto_0
    invoke-virtual {p2}, Lcom/stripe/hardware/emv/TransactionResult;->getResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v2

    sget-object v3, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    .line 422
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_2
    const-string v2, "card_rejected"

    goto :goto_1

    .line 408
    :pswitch_3
    const-string v2, "card_absent"

    goto :goto_1

    :pswitch_4
    const/4 v2, 0x0

    :goto_1
    move-object v5, v2

    .line 424
    invoke-virtual {p2}, Lcom/stripe/hardware/emv/TransactionResult;->getTlvBlob()Ljava/lang/String;

    move-result-object v4

    move p2, v1

    .line 380
    new-instance v1, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;

    .line 382
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 380
    invoke-direct/range {v1 .. v9}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;-><init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/squareup/wire/Message;

    .line 426
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;

    invoke-static {p2, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;->access$getHeaders(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/util/Map;

    move-result-object p1

    .line 379
    invoke-direct {v0, v1, p1}, Lcom/stripe/jvmcore/restclient/RestRequest;-><init>(Lcom/squareup/wire/Message;Ljava/util/Map;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->cancelPaymentIntent(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public cancelPaymentIntent(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->paymentIntentRestApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;->cancelPaymentIntent(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public final cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineId(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->cancelSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public cancelSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->setUpIntentRestApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;->cancelSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public final confirmCollectiblePayment(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "intent"

    move-object/from16 v11, p1

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v2

    const/4 v12, 0x0

    if-eqz v1, :cond_4

    .line 515
    iget-object v13, v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v13, :cond_2

    if-eqz v2, :cond_0

    .line 516
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_0

    :cond_0
    move-object/from16 v27, v12

    :goto_0
    if-eqz v2, :cond_1

    .line 517
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    goto :goto_1

    :cond_1
    move-object/from16 v26, v12

    :goto_1
    const v30, 0xcfff

    const/16 v31, 0x0

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

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 515
    invoke-static/range {v13 .. v31}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    :cond_2
    move-object v3, v12

    :goto_2
    if-eqz p6, :cond_3

    .line 519
    invoke-virtual/range {p6 .. p6}, Lcom/stripe/stripeterminal/external/models/AllowRedisplay;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v12

    :goto_3
    const/16 v9, 0x5d

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 514
    invoke-static/range {v1 .. v10}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v1

    move-object v2, v1

    goto :goto_4

    :cond_4
    move-object v2, v12

    .line 522
    :goto_4
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->Companion:Lcom/stripe/proto/api/rest/PaymentMethodOptions$Companion;

    .line 812
    new-instance v1, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;

    invoke-direct {v1}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;-><init>()V

    move-object/from16 v3, p4

    .line 523
    invoke-direct {v0, v1, v3}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->addCardPaymentMethodOptionsIfNeeded(Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;Ljava/lang/Boolean;)V

    .line 524
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 812
    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;->build()Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    move-result-object v1

    .line 524
    iget-object v3, v1, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->card_present:Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;

    if-eqz v3, :cond_5

    move-object v3, v1

    goto :goto_5

    :cond_5
    move-object v3, v12

    :goto_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object v1, v11

    .line 511
    invoke-direct/range {v0 .. v7}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmPaymentIntentRequest(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Lcom/stripe/currency/Amount;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object v1

    return-object v1
.end method

.method public final confirmManualEntryPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/payment/ManualEntryPayment;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lcom/stripe/transaction/payment/ManualEntryPayment;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manualEntryPayment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->manualEntryRequestedPaymentMethod(Lcom/stripe/transaction/payment/ManualEntryPayment;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v3

    .line 463
    new-instance v4, Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    .line 464
    new-instance v6, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;

    const/4 p2, 0x1

    .line 465
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 464
    invoke-direct {v6, p2, v0, v1, v0}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;-><init>(Ljava/lang/Boolean;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v9, 0xd

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 463
    invoke-direct/range {v4 .. v10}, Lcom/stripe/proto/api/rest/PaymentMethodOptions;-><init>(Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 460
    invoke-direct/range {v1 .. v8}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmPaymentIntentRequest(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Lcom/stripe/currency/Amount;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object p1

    return-object p1
.end method

.method public final confirmManualEntrySetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/payment/ManualEntryPayment;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "setupIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manualEntryPayment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v1, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    .line 161
    const-string v0, "latest_attempt"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 162
    invoke-direct {p0, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->manualEntryRequestedPaymentMethod(Lcom/stripe/transaction/payment/ManualEntryPayment;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v3

    .line 163
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x5c

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 160
    invoke-direct/range {v1 .. v10}, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;-><init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/Mandate;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final confirmNonCardPaymentMethodPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/payment/NonCardPayment;Lcom/stripe/currency/Amount;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lcom/stripe/transaction/payment/NonCardPayment;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v1, "intent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "payment"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    new-instance v2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 486
    invoke-virtual {p2}, Lcom/stripe/transaction/payment/NonCardPayment;->getPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x7e

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 485
    invoke-direct/range {v2 .. v11}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 488
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->Companion:Lcom/stripe/proto/api/rest/PaymentMethodOptions$Companion;

    .line 810
    new-instance v1, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;

    invoke-direct {v1}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;-><init>()V

    .line 489
    invoke-direct {p0, v1, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->addNonCardPaymentMethodOptionsIfNeeded(Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;Lcom/stripe/transaction/payment/NonCardPayment;)V

    .line 490
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 810
    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;->build()Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    move-result-object v5

    .line 494
    sget-object v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;->Companion:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences$Companion;

    .line 811
    new-instance v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences$Builder;-><init>()V

    .line 495
    const-string v1, "qr_code"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences$Builder;->additional_formats:Ljava/util/List;

    .line 496
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 811
    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences$Builder;->build()Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;

    move-result-object v9

    move-object v3, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object v4, v2

    move-object v2, p0

    .line 483
    invoke-direct/range {v2 .. v9}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmPaymentIntentRequest(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Lcom/stripe/currency/Amount;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object p1

    return-object p1
.end method

.method public final confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Ljava/lang/String;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 359
    sget-object v1, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->Companion:Lcom/stripe/proto/api/rest/PaymentMethodOptions$Companion;

    .line 809
    new-instance v1, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;

    invoke-direct {v1}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;-><init>()V

    .line 360
    invoke-direct {p0, v1, p4}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->addCardPaymentMethodOptionsIfNeeded(Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;Ljava/lang/Boolean;)V

    .line 809
    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;->build()Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    move-result-object p4

    .line 361
    iget-object v1, p4, Lcom/stripe/proto/api/rest/PaymentMethodOptions;->card_present:Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move-object v4, p4

    .line 365
    invoke-direct {p0, v0, p6, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->createPaymentMethodRequest(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p5

    .line 363
    invoke-direct/range {v1 .. v8}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmPaymentIntentRequest(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Lcom/stripe/currency/Amount;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object p1

    return-object p1
.end method

.method public final confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "setupIntent"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 174
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    goto :goto_0

    :cond_0
    move-object/from16 v20, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_1

    :cond_1
    move-object/from16 v19, v4

    .line 179
    :goto_1
    invoke-direct {v0, v3}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->readMethodFromTlv(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->getMethod()Ljava/lang/String;

    move-result-object v8

    .line 176
    new-instance v21, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    const v23, 0xcffd

    const/16 v24, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v6, v21

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v6 .. v24}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v21, v6

    .line 182
    invoke-direct {v0, v3}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->readMethodFromTlv(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    move-result-object v1

    sget-object v5, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->ordinal()I

    move-result v1

    aget v1, v5, v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/4 v5, 0x5

    if-ne v1, v5, :cond_2

    goto :goto_2

    .line 202
    :cond_2
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 204
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getSwipeReason()Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/models/SwipeReason;->getReason()Ljava/lang/String;

    move-result-object v24

    .line 205
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getTrack2()Ljava/lang/String;

    move-result-object v25

    .line 206
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getKsn()Ljava/lang/String;

    move-result-object v33

    const v38, 0xf7f2

    const/16 v39, 0x0

    .line 202
    const-string v22, "encrypted_track_data"

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v21 .. v39}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    move-result-object v1

    :goto_3
    move-object v7, v1

    goto :goto_8

    .line 187
    :cond_4
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 188
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->isSimulated()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move-object v1, v4

    :goto_4
    if-eqz v1, :cond_6

    .line 187
    const-string v1, "emv"

    goto :goto_5

    .line 190
    :cond_6
    const-string v1, "encrypted_emv"

    :goto_5
    move-object/from16 v22, v1

    .line 191
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getTlv()Ljava/lang/String;

    move-result-object v27

    .line 192
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getEncryptedTrack2()Ljava/lang/String;

    move-result-object v25

    .line 193
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getEncryptedTrack2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "rsa_aes"

    move-object/from16 v31, v1

    goto :goto_6

    :cond_7
    move-object/from16 v31, v4

    .line 194
    :goto_6
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getEncryptedTrack2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getCryptogram()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    goto :goto_7

    :cond_8
    move-object/from16 v32, v4

    :goto_7
    const v38, 0xf9d6

    const/16 v39, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 186
    invoke-static/range {v21 .. v39}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    move-result-object v1

    goto :goto_3

    .line 212
    :goto_8
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

    move-result-object v1

    .line 213
    const-string v2, "latest_attempt"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 214
    new-instance v5, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 215
    sget-object v3, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->CARD_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getTypeName()Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_9

    .line 217
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/stripeterminal/external/models/AllowRedisplay;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_9
    move-object v11, v4

    const/16 v13, 0x5c

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 214
    invoke-direct/range {v5 .. v14}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 211
    new-instance v8, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    const/16 v16, 0x5c

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v14, v1

    move-object v9, v2

    move-object v10, v5

    invoke-direct/range {v8 .. v17}, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;-><init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/Mandate;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method public createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->paymentIntentRestApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public final createPaymentMethod(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;Ljava/lang/String;)Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "params"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_0

    :cond_0
    move-object/from16 v19, v4

    .line 250
    :goto_0
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_1

    :cond_1
    move-object/from16 v18, v4

    .line 251
    :goto_1
    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->readMethodFromTlv(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->getMethod()Ljava/lang/String;

    move-result-object v7

    .line 247
    new-instance v20, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    const v22, 0xcefd

    const/16 v23, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v14, p3

    invoke-direct/range {v5 .. v23}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v20, v5

    .line 254
    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->readMethodFromTlv(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    move-result-object v2

    sget-object v5, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->ordinal()I

    move-result v2

    aget v2, v5, v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    goto :goto_2

    .line 271
    :cond_2
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 273
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getSwipeReason()Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/models/SwipeReason;->getReason()Ljava/lang/String;

    move-result-object v23

    .line 274
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getTrack2()Ljava/lang/String;

    move-result-object v24

    .line 275
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getKsn()Ljava/lang/String;

    move-result-object v32

    const v37, 0xf7f2

    const/16 v38, 0x0

    .line 271
    const-string v21, "encrypted_track_data"

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-static/range {v20 .. v38}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    move-result-object v1

    :goto_3
    move-object v6, v1

    goto :goto_5

    .line 259
    :cond_4
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 260
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->isSimulated()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v4, v2

    :cond_5
    if-eqz v4, :cond_6

    .line 259
    const-string v2, "emv"

    goto :goto_4

    .line 262
    :cond_6
    const-string v2, "encrypted_emv"

    :goto_4
    move-object/from16 v21, v2

    .line 263
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getTlv()Ljava/lang/String;

    move-result-object v26

    const v37, 0xffde

    const/16 v38, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    .line 258
    invoke-static/range {v20 .. v38}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    move-result-object v1

    goto :goto_3

    .line 281
    :goto_5
    new-instance v4, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 282
    sget-object v1, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->CARD_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getTypeName()Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0x7c

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 281
    invoke-direct/range {v4 .. v13}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 285
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;->getMetadata()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :cond_7
    move-object v11, v1

    .line 286
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;->getCustomer()Ljava/lang/String;

    move-result-object v9

    .line 280
    new-instance v7, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v10, v4

    invoke-direct/range {v7 .. v14}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public final createReaderCollectedData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "paymentMethodData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->readMethodFromTlv(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    move-result-object v0

    .line 537
    sget-object v1, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->MAGNETIC_STRIPE_TRACK_2:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    if-ne v0, v1, :cond_0

    .line 538
    new-instance v2, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;

    .line 540
    new-instance v3, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;

    .line 541
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getTrack2()Ljava/lang/String;

    move-result-object v4

    .line 542
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getKsn()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 540
    invoke-direct/range {v3 .. v8}, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v4, v3

    .line 538
    const-string v3, "magstripe"

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 546
    :cond_0
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 547
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 548
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected passthrough read method: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 546
    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3
.end method

.method public createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->setUpIntentRestApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public final detachPaymentMethod(Lcom/stripe/stripeterminal/external/models/PaymentMethod;)Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    new-instance v0, Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final discoverLocations(Ljava/util/List;)Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "serialNumbers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    new-instance v0, Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;-><init>(Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final emvSecondGenerationDataRefundRequest(Ljava/lang/String;Lcom/stripe/hardware/emv/TransactionResult;ZZLjava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            "ZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;",
            "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    new-instance v0, Lcom/stripe/jvmcore/restclient/RestRequest;

    .line 728
    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult;->getResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v2

    sget-object v3, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 729
    :goto_0
    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult;->getTlvBlob()Ljava/lang/String;

    move-result-object v6

    .line 732
    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult;->getResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v3

    sget-object v4, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-eq v3, v4, :cond_2

    .line 733
    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult;->getResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v1

    sget-object v3, Lcom/stripe/hardware/emv/TransactionResult$Result;->ICC_CARD_REMOVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-ne v1, v3, :cond_1

    .line 734
    const-string v1, "card_absent"

    goto :goto_1

    .line 736
    :cond_1
    const-string v1, "card_rejected"

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move-object v7, v1

    .line 726
    new-instance v3, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;

    .line 728
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 730
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 731
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v12, 0x81

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object v8, p1

    .line 726
    invoke-direct/range {v3 .. v13}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;-><init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lcom/squareup/wire/Message;

    .line 743
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;

    .line 742
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    move-object/from16 v2, p5

    .line 743
    invoke-static {p1, v1, v2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;->access$withStripeAccountId(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 725
    invoke-direct {v0, v3, p1}, Lcom/stripe/jvmcore/restclient/RestRequest;-><init>(Lcom/squareup/wire/Message;Ljava/util/Map;)V

    return-object v0
.end method

.method public final listAllReaders(Lcom/stripe/stripeterminal/external/models/DeviceType;Ljava/lang/String;)Lcom/stripe/proto/api/rest/ListAllReadersRequest;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 573
    new-instance v0, Lcom/stripe/proto/api/rest/ListAllReadersRequest;

    if-eqz p1, :cond_0

    .line 574
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v1, p1

    .line 576
    const-string p1, "data.location"

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 p1, 0x64

    .line 579
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v10, 0x118

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 573
    const-string v6, "android"

    const-string v7, "4.1.0"

    const/4 v9, 0x0

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/api/rest/ListAllReadersRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final listLocations(Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;)Lcom/stripe/proto/api/rest/ListLocationsRequest;
    .locals 8

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;->getEndingBefore()Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;->getStartingAfter()Ljava/lang/String;

    move-result-object v4

    .line 608
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    .line 605
    new-instance v1, Lcom/stripe/proto/api/rest/ListLocationsRequest;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/rest/ListLocationsRequest;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public refundChargeRequest(Ljava/lang/String;Ljava/lang/String;JLcom/stripe/proto/api/rest/RequestedPaymentMethod;ZZLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/RefundChargeRequest;",
            "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;",
            ">;"
        }
    .end annotation

    const-string v0, "paymentMethodData"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->refundRestApiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;->refundChargeRequest(Ljava/lang/String;Ljava/lang/String;JLcom/stripe/proto/api/rest/RequestedPaymentMethod;ZZLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object p1

    return-object p1
.end method

.method public final retrieveLocation(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RetrieveLocationRequest;
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    new-instance v0, Lcom/stripe/proto/api/rest/RetrieveLocationRequest;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/stripe/proto/api/rest/RetrieveLocationRequest;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final retrievePaymentIntent(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "clientSecret"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_secret_"

    aput-object v3, v2, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 586
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 591
    new-instance v1, Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;

    const/16 v6, 0x9

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 586
    :cond_0
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 587
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_CLIENT_SECRET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 586
    const-string v4, "Invalid client secret."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method

.method public final retrievePaymentIntentWithPaymentIntentId(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;",
            "Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest$Builder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "paymentIntentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    new-instance v0, Lcom/stripe/jvmcore/restclient/RestRequest;

    .line 599
    new-instance v1, Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/squareup/wire/Message;

    .line 600
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    invoke-static {p1, v2, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;->access$withStripeAccountId(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 598
    invoke-direct {v0, v1, p1}, Lcom/stripe/jvmcore/restclient/RestRequest;-><init>(Lcom/squareup/wire/Message;Ljava/util/Map;)V

    return-object v0
.end method

.method public final retrieveSetupIntent(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "clientSecret"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_secret_"

    aput-object v3, v2, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 230
    new-instance v1, Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;

    const/16 v6, 0x9

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 225
    :cond_0
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 226
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_CLIENT_SECRET:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 225
    const-string v4, "Invalid client secret."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method

.method public final updateManualEntryPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/payment/ManualEntryPayment;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lcom/stripe/transaction/payment/ManualEntryPayment;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
            "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manualEntryPayment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    new-instance v0, Lcom/stripe/jvmcore/restclient/RestRequest;

    .line 317
    new-instance v1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    .line 318
    const-string v2, "payment_method.card_present"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 319
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-direct {p0, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->manualEntryRequestedPaymentMethod(Lcom/stripe/transaction/payment/ManualEntryPayment;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v5

    const/16 v9, 0x72

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 317
    invoke-direct/range {v1 .. v10}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/squareup/wire/Message;

    .line 322
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;

    invoke-static {p2, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;->access$getHeaders(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/util/Map;

    move-result-object p1

    .line 316
    invoke-direct {v0, v1, p1}, Lcom/stripe/jvmcore/restclient/RestRequest;-><init>(Lcom/squareup/wire/Message;Ljava/util/Map;)V

    return-object v0
.end method

.method public final updateNonCardPaymentMethodPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/payment/NonCardPayment;Lcom/stripe/currency/Amount;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lcom/stripe/transaction/payment/NonCardPayment;",
            "Lcom/stripe/currency/Amount;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
            "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Lcom/stripe/transaction/payment/NonCardPayment;->getPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 333
    new-instance p2, Lcom/stripe/jvmcore/restclient/RestRequest;

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "payment_method."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 336
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v11

    .line 337
    new-instance v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    const/16 v8, 0x7e

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 340
    new-instance v1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v3, v2, v3}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;-><init>(Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;->newBuilder()Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$Builder;->build()Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    move-result-object v8

    if-eqz p3, :cond_0

    .line 341
    invoke-virtual {p3}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_0
    move-object v7, v3

    .line 334
    new-instance v2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    move-object v3, v10

    const/16 v10, 0x42

    move-object v5, v11

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v6, v0

    invoke-direct/range {v2 .. v11}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/squareup/wire/Message;

    .line 343
    sget-object p3, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;

    invoke-static {p3, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;->access$getHeaders(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/util/Map;

    move-result-object p1

    .line 333
    invoke-direct {p2, v2, p1}, Lcom/stripe/jvmcore/restclient/RestRequest;-><init>(Lcom/squareup/wire/Message;Ljava/util/Map;)V

    return-object p2
.end method

.method public final updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;Lcom/stripe/currency/Amount;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/jvmcore/restclient/RestRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Ljava/lang/String;",
            "Lcom/stripe/currency/Amount;",
            "Z",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestRequest<",
            "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
            "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;",
            ">;"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, p4}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->createUpdatePaymentIntentPaymentMethodOptionsRequest(Z)Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    move-result-object v6

    .line 299
    new-instance v10, Lcom/stripe/jvmcore/restclient/RestRequest;

    .line 300
    new-instance v0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    .line 301
    const-string v1, "payment_method.card_present"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 302
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v4, p5

    invoke-direct {p0, v2, v4, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->createPaymentMethodRequest(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v4

    if-eqz p3, :cond_0

    .line 304
    invoke-virtual {p3}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v5, p2

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 300
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/squareup/wire/Message;

    .line 307
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;

    invoke-static {p2, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;->access$getHeaders(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/util/Map;

    move-result-object p1

    .line 299
    invoke-direct {v10, v0, p1}, Lcom/stripe/jvmcore/restclient/RestRequest;-><init>(Lcom/squareup/wire/Message;Ljava/util/Map;)V

    return-object v10
.end method
