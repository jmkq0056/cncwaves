.class public final Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;
.super Ljava/lang/Object;
.source "AuthenticatedRestClient.kt"

# interfaces
.implements Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00dc\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u0089\u00012\u00020\u0001:\u0002\u0089\u0001B7\u0008\u0007\u0012\u000e\u0008\u0001\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ2\u0010!\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$0\"2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+J\u00b8\u0001\u0010,\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020$0\"\"\u0012\u0008\u0000\u0010-*\u000c\u0012\u0004\u0012\u0002H-\u0012\u0002\u0008\u00030.2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2n\u0010/\u001aj\u0012\u0004\u0012\u00020\u0016\u0012\u0013\u0012\u00110)\u00a2\u0006\u000c\u00081\u0012\u0008\u00082\u0012\u0004\u0008\u0008(3\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&04\u00a2\u0006\u000c\u00081\u0012\u0008\u00082\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u00110+\u00a2\u0006\u000c\u00081\u0012\u0008\u00082\u0012\u0004\u0008\u0008(*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020$0\"00\u00a2\u0006\u0002\u00086H\u0002J2\u00107\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020$0\"2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+J8\u00109\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020;2\u0014\u0008\u0002\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&042\u0006\u0010*\u001a\u00020+J8\u0010<\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020>2\u0014\u0008\u0002\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&042\u0006\u0010*\u001a\u00020+J\u001c\u0010?\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&042\u0006\u0010@\u001a\u00020&H\u0002J$\u0010?\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&042\u0006\u0010A\u001a\u00020&2\u0006\u0010B\u001a\u00020&H\u0002J\u0016\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010D\u001a\u00020&H\u0002J.\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0019\u0008\u0002\u0010F\u001a\u0013\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020I0G\u00a2\u0006\u0002\u00086H\u0001\u00a2\u0006\u0002\u0008JJ\u001a\u0010K\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020LJ\u001a\u0010M\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020OJ6\u0010P\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020Q2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&042\u0006\u0010*\u001a\u00020+J\"\u0010R\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020S2\u0006\u0010*\u001a\u00020+J\"\u0010T\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020U2\u0006\u0010*\u001a\u00020+J\u001a\u0010V\u001a\u000e\u0012\u0004\u0012\u00020W\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020XJ\"\u0010Y\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020Z2\u0006\u0010*\u001a\u00020+J\u0014\u0010[\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&04H\u0016J\u001a\u0010\\\u001a\u000e\u0012\u0004\u0012\u00020]\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020^J\"\u0010_\u001a\u000e\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020$0\"2\u0006\u0010D\u001a\u00020&2\u0006\u0010(\u001a\u00020aJ\r\u0010b\u001a\u00020\u0016H\u0001\u00a2\u0006\u0002\u0008cJ\u0010\u0010d\u001a\u00020\u00162\u0006\u0010e\u001a\u00020&H\u0002J*\u0010f\u001a\u000e\u0012\u0004\u0012\u00020g\u0012\u0004\u0012\u00020$0\"2\u0006\u0010D\u001a\u00020&2\u0006\u0010(\u001a\u00020h2\u0006\u0010*\u001a\u00020+J\"\u0010i\u001a\u000e\u0012\u0004\u0012\u00020j\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020k2\u0006\u0010D\u001a\u00020&J\u001a\u0010l\u001a\u000e\u0012\u0004\u0012\u00020]\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020mJ.\u0010n\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020o2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&04J\"\u0010p\u001a\u000e\u0012\u0004\u0012\u00020q\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020r2\u0006\u0010D\u001a\u00020&J<\u0010s\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020t2\n\u0008\u0002\u0010D\u001a\u0004\u0018\u00010&2\u0014\u0008\u0002\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&04J<\u0010u\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020$0\"2\u0006\u0010(\u001a\u00020v2\n\u0008\u0002\u0010D\u001a\u0004\u0018\u00010&2\u0014\u0008\u0002\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&04J\u0006\u0010w\u001a\u00020IJL\u0010x\u001a\u00020I\"\u0012\u0008\u0000\u0010y*\u000c\u0012\u0004\u0012\u0002Hy\u0012\u0002\u0008\u00030.\"\u0012\u0008\u0001\u0010z*\u000c\u0012\u0004\u0012\u0002Hz\u0012\u0002\u0008\u00030.2\u0012\u0010{\u001a\u000e\u0012\u0004\u0012\u0002Hy\u0012\u0004\u0012\u0002Hz0\"2\u0006\u0010|\u001a\u00020}H\u0002J\u000e\u0010~\u001a\u00020I2\u0006\u0010e\u001a\u00020&J0\u0010\u007f\u001a\u000f\u0012\u0005\u0012\u00030\u0080\u0001\u0012\u0004\u0012\u00020$0\"2\u0007\u0010(\u001a\u00030\u0081\u00012\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&04J9\u0010\u0082\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u0083\u0001\u0012\u0004\u0012\u00020$0\"2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&042\u0006\u0010e\u001a\u00020&2\u0007\u0010(\u001a\u00030\u0084\u0001J%\u0010\u0085\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u0086\u0001\u0012\u0004\u0012\u00020$0\"2\u0007\u0010(\u001a\u00030\u0087\u00012\u0006\u0010*\u001a\u00020+J\r\u0010\u0088\u0001\u001a\u00020H*\u00020HH\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u00020\u000c8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u00020\u00168\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u008a\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
        "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;",
        "baseRestClient",
        "Ldagger/Lazy;",
        "Lcom/stripe/jvmcore/restclient/RestClient;",
        "baseFilesRestClient",
        "userAgentProvider",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
        "transactionRepository",
        "Lcom/stripe/restclient/CoreTransactionRepository;",
        "(Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/restclient/CoreTransactionRepository;)V",
        "filesApi",
        "Lcom/stripe/proto/api/rest/FilesApi;",
        "getFilesApi$transaction",
        "()Lcom/stripe/proto/api/rest/FilesApi;",
        "setFilesApi$transaction",
        "(Lcom/stripe/proto/api/rest/FilesApi;)V",
        "integrationType",
        "Lcom/stripe/restclient/IntegrationType;",
        "getIntegrationType",
        "()Lcom/stripe/restclient/IntegrationType;",
        "mainlandApi",
        "Lcom/stripe/proto/api/rest/MainlandApi;",
        "getMainlandApi$transaction",
        "()Lcom/stripe/proto/api/rest/MainlandApi;",
        "setMainlandApi$transaction",
        "(Lcom/stripe/proto/api/rest/MainlandApi;)V",
        "userAgent",
        "Lcom/stripe/proto/model/rest/UserAgent;",
        "getUserAgent",
        "()Lcom/stripe/proto/model/rest/UserAgent;",
        "userAgent$delegate",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
        "activateTerminal",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "activationToken",
        "",
        "parentTraceId",
        "request",
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
        "restConfig",
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "activateTerminalWithActivationMethod",
        "T",
        "Lcom/squareup/wire/Message;",
        "activationMethod",
        "Lkotlin/Function4;",
        "Lkotlin/ParameterName;",
        "name",
        "message",
        "",
        "headers",
        "Lkotlin/ExtensionFunctionType;",
        "activateTerminalWithExpandedLocation",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;",
        "addEmvSecondGenerationData",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;",
        "addEmvSecondGenerationRefundData",
        "Lcom/stripe/proto/model/rest/Refund;",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;",
        "authHeaders",
        "bearerToken",
        "username",
        "password",
        "buildConnectionTokenClient",
        "connectionToken",
        "buildRestClient",
        "block",
        "Lkotlin/Function1;",
        "Lcom/stripe/jvmcore/restclient/RestClient$Builder;",
        "",
        "buildRestClient$transaction",
        "cancelPaymentIntent",
        "Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;",
        "cancelSetupIntent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;",
        "confirmPaymentIntent",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
        "confirmSetupIntent",
        "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
        "createPaymentIntent",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
        "createReaderCollectedData",
        "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
        "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;",
        "createSetupIntent",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "customHeaders",
        "detachPaymentMethod",
        "Lcom/stripe/proto/model/rest/PaymentMethod;",
        "Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;",
        "discoverLocations",
        "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse;",
        "Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;",
        "getMainlandApiForIntegrationMode",
        "getMainlandApiForIntegrationMode$transaction",
        "getServerDrivenMainlandApi",
        "sessionToken",
        "listAllReaders",
        "Lcom/stripe/proto/api/rest/ListAllReadersResponse;",
        "Lcom/stripe/proto/api/rest/ListAllReadersRequest;",
        "listLocations",
        "Lcom/stripe/proto/api/rest/ListLocationsResponse;",
        "Lcom/stripe/proto/api/rest/ListLocationsRequest;",
        "readCardPaymentMethod",
        "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;",
        "refundCharge",
        "Lcom/stripe/proto/api/rest/RefundChargeRequest;",
        "retrieveLocation",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "Lcom/stripe/proto/api/rest/RetrieveLocationRequest;",
        "retrievePaymentIntent",
        "Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;",
        "retrieveSetupIntent",
        "Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;",
        "setBlankSession",
        "setRequestId",
        "M",
        "E",
        "restResponse",
        "opType",
        "Lcom/stripe/restclient/TransactionOpType;",
        "setServerDrivenStripeSessionToken",
        "updatePaymentIntentExpandedMethod",
        "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
        "updateSdiAction",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionResponse;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;",
        "uploadFile",
        "Lcom/stripe/proto/api/rest/UploadFileResponse;",
        "Lcom/stripe/proto/api/rest/UploadFileRequest;",
        "addStripeCustomHeaders",
        "Companion",
        "transaction"
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final AUTHENTICATION_HEADER_KEY:Ljava/lang/String; = "Authorization"

.field public static final Companion:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$Companion;

.field private static serverDrivenMainlandApi:Lcom/stripe/proto/api/rest/MainlandApi;


# instance fields
.field private final baseFilesRestClient:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;"
        }
    .end annotation
.end field

.field private final baseRestClient:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;"
        }
    .end annotation
.end field

.field private filesApi:Lcom/stripe/proto/api/rest/FilesApi;

.field private mainlandApi:Lcom/stripe/proto/api/rest/MainlandApi;

.field private final transactionRepository:Lcom/stripe/restclient/CoreTransactionRepository;

.field private final userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 71
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "userAgent"

    const-string v3, "getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;"

    const-class v4, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->Companion:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$Companion;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/restclient/CoreTransactionRepository;)V
    .locals 1
    .param p1    # Ldagger/Lazy;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Mainland;
        .end annotation
    .end param
    .param p2    # Ldagger/Lazy;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Files;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
            "Lcom/stripe/restclient/CoreTransactionRepository;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "baseRestClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseFilesRestClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->baseRestClient:Ldagger/Lazy;

    .line 67
    iput-object p2, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->baseFilesRestClient:Ldagger/Lazy;

    .line 69
    iput-object p4, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->transactionRepository:Lcom/stripe/restclient/CoreTransactionRepository;

    .line 71
    iput-object p3, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;

    .line 84
    new-instance p1, Lcom/stripe/proto/api/rest/MainlandApi;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p0, p3, p4, p3}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildRestClient$transaction$default(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ldagger/Lazy;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/stripe/proto/api/rest/MainlandApi;-><init>(Ldagger/Lazy;)V

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->mainlandApi:Lcom/stripe/proto/api/rest/MainlandApi;

    .line 88
    new-instance p1, Lcom/stripe/proto/api/rest/FilesApi;

    invoke-direct {p1, p2}, Lcom/stripe/proto/api/rest/FilesApi;-><init>(Ldagger/Lazy;)V

    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->filesApi:Lcom/stripe/proto/api/rest/FilesApi;

    return-void
.end method

.method public static final synthetic access$addStripeCustomHeaders(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/jvmcore/restclient/RestClient$Builder;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->addStripeCustomHeaders(Lcom/stripe/jvmcore/restclient/RestClient$Builder;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$authHeaders(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->authHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$authHeaders(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->authHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getServerDrivenMainlandApi$cp()Lcom/stripe/proto/api/rest/MainlandApi;
    .locals 1

    .line 63
    sget-object v0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->serverDrivenMainlandApi:Lcom/stripe/proto/api/rest/MainlandApi;

    return-object v0
.end method

.method public static final synthetic access$setServerDrivenMainlandApi$cp(Lcom/stripe/proto/api/rest/MainlandApi;)V
    .locals 0

    .line 63
    sput-object p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->serverDrivenMainlandApi:Lcom/stripe/proto/api/rest/MainlandApi;

    return-void
.end method

.method private final activateTerminalWithActivationMethod(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Lcom/stripe/jvmcore/restclient/RestConfig;Lkotlin/jvm/functions/Function4;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message<",
            "TT;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lcom/stripe/proto/api/rest/MainlandApi;",
            "-",
            "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;-",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            "+",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TT;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;>;)",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TT;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/stripe/proto/model/rest/TerminalUserAgent;

    .line 173
    iget-object v1, p3, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 174
    iget-object v2, p3, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 175
    iget-object v4, p3, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 172
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/rest/TerminalUserAgent;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 179
    new-instance v1, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$activateTerminalWithActivationMethod$restClient$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$activateTerminalWithActivationMethod$restClient$1;-><init>(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Ljava/lang/String;Lcom/stripe/proto/model/rest/TerminalUserAgent;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildRestClient$transaction(Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;

    move-result-object p1

    .line 184
    new-instance v0, Lcom/stripe/proto/api/rest/MainlandApi;

    invoke-direct {v0, p1}, Lcom/stripe/proto/api/rest/MainlandApi;-><init>(Ldagger/Lazy;)V

    .line 185
    invoke-static {p2}, Lcom/stripe/jvmcore/environment/EnvironmentKt;->stripeTraceHeader(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p5, v0, p3, p1, p4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse;

    .line 187
    instance-of p2, p1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    if-eqz p2, :cond_0

    .line 189
    new-instance p2, Lcom/stripe/proto/api/rest/MainlandApi;

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-static {p0, p4, p3, p4}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildRestClient$transaction$default(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ldagger/Lazy;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;-><init>(Ldagger/Lazy;)V

    iput-object p2, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->mainlandApi:Lcom/stripe/proto/api/rest/MainlandApi;

    .line 193
    :cond_0
    sget-object p2, Lcom/stripe/restclient/TransactionOpType;->ACTIVATION:Lcom/stripe/restclient/TransactionOpType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->setRequestId(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/restclient/TransactionOpType;)V

    return-object p1
.end method

.method public static synthetic addEmvSecondGenerationData$default(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 199
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 197
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->addEmvSecondGenerationData(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic addEmvSecondGenerationRefundData$default(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 211
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 209
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->addEmvSecondGenerationRefundData(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method private final addStripeCustomHeaders(Lcom/stripe/jvmcore/restclient/RestClient$Builder;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;
    .locals 2

    .line 439
    invoke-direct {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/stripe/jvmcore/environment/EnvironmentKt;->toRequestHeaders(Lcom/stripe/proto/model/rest/UserAgent;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/jvmcore/restclient/RestClient$Builder;->addCustomHeaders(Ljava/util/Map;)Lcom/stripe/jvmcore/restclient/RestClient$Builder;

    return-object p1
.end method

.method private final authHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bearer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authorization"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final authHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 425
    invoke-static {p1, p2, v0, v1, v0}, Lokhttp3/Credentials;->basic$default(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Authorization"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final buildConnectionTokenClient(Ljava/lang/String;)Ldagger/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$buildConnectionTokenClient$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$buildConnectionTokenClient$1;-><init>(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildRestClient$transaction(Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic buildRestClient$transaction$default(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ldagger/Lazy;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 412
    sget-object p1, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$buildRestClient$1;->INSTANCE:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$buildRestClient$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 411
    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildRestClient$transaction(Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;

    move-result-object p0

    return-object p0
.end method

.method private final getIntegrationType()Lcom/stripe/restclient/IntegrationType;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->transactionRepository:Lcom/stripe/restclient/CoreTransactionRepository;

    invoke-interface {v0}, Lcom/stripe/restclient/CoreTransactionRepository;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v0

    return-object v0
.end method

.method private final getServerDrivenMainlandApi(Ljava/lang/String;)Lcom/stripe/proto/api/rest/MainlandApi;
    .locals 2

    .line 107
    new-instance v0, Lcom/stripe/proto/api/rest/MainlandApi;

    .line 108
    new-instance v1, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$getServerDrivenMainlandApi$1;

    invoke-direct {v1, p0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$getServerDrivenMainlandApi$1;-><init>(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildRestClient$transaction(Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;

    move-result-object p1

    .line 107
    invoke-direct {v0, p1}, Lcom/stripe/proto/api/rest/MainlandApi;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method

.method private final getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;

    sget-object v1, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/jvmcore/environment/UserAgentProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/proto/model/rest/UserAgent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic retrievePaymentIntent$default(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 362
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 359
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->retrievePaymentIntent(Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/lang/String;Ljava/util/Map;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic retrieveSetupIntent$default(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 265
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 262
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->retrieveSetupIntent(Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Ljava/lang/String;Ljava/util/Map;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method private final setRequestId(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/restclient/TransactionOpType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;E:",
            "Lcom/squareup/wire/Message<",
            "TE;*>;>(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TM;TE;>;",
            "Lcom/stripe/restclient/TransactionOpType;",
            ")V"
        }
    .end annotation

    .line 433
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->transactionRepository:Lcom/stripe/restclient/CoreTransactionRepository;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getHeaders()Ljava/util/TreeMap;

    move-result-object p1

    const-string v1, "request-id"

    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {v0, p2, p1}, Lcom/stripe/restclient/CoreTransactionRepository;->setRequestId(Lcom/stripe/restclient/TransactionOpType;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final activateTerminal(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "activationToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentTraceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$activateTerminal$1;->INSTANCE:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$activateTerminal$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 136
    invoke-direct/range {v1 .. v6}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->activateTerminalWithActivationMethod(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Lcom/stripe/jvmcore/restclient/RestConfig;Lkotlin/jvm/functions/Function4;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final activateTerminalWithExpandedLocation(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "activationToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentTraceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$activateTerminalWithExpandedLocation$1;->INSTANCE:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$activateTerminalWithExpandedLocation$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 151
    invoke-direct/range {v1 .. v6}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->activateTerminalWithActivationMethod(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Lcom/stripe/jvmcore/restclient/RestConfig;Lkotlin/jvm/functions/Function4;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final addEmvSecondGenerationData(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->addEmvSecondGenerationData(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final addEmvSecondGenerationRefundData(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/Refund;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->addEmvSecondGenerationRefundData(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final buildRestClient$transaction(Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/jvmcore/restclient/RestClient$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->baseRestClient:Ldagger/Lazy;

    new-instance v1, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$buildRestClient$2;

    invoke-direct {v1, p0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$buildRestClient$2;-><init>(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/stripe/jvmcore/dagger/LazyExtKt;->lazilyMap(Ldagger/Lazy;Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;

    move-result-object p1

    return-object p1
.end method

.method public final cancelPaymentIntent(Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/api/rest/MainlandApi;->cancelPaymentIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final cancelSetupIntent(Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/api/rest/MainlandApi;->cancelSetupIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final confirmPaymentIntent(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->confirmPaymentIntent(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    .line 235
    sget-object p2, Lcom/stripe/restclient/TransactionOpType;->CONFIRM_PAYMENT_INTENT:Lcom/stripe/restclient/TransactionOpType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->setRequestId(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/restclient/TransactionOpType;)V

    return-object p1
.end method

.method public final confirmSetupIntent(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/api/rest/MainlandApi;->confirmSetupIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    .line 254
    sget-object p2, Lcom/stripe/restclient/TransactionOpType;->CONFIRM_SETUP_INTENT:Lcom/stripe/restclient/TransactionOpType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->setRequestId(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/restclient/TransactionOpType;)V

    return-object p1
.end method

.method public final createPaymentIntent(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/api/rest/MainlandApi;->createPaymentIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final createReaderCollectedData(Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/api/rest/MainlandApi;->createReaderCollectedData$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final createSetupIntent(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/api/rest/MainlandApi;->createSetupIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public customHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/restclient/RestClient;->customHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final detachPaymentMethod(Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentMethod;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/api/rest/MainlandApi;->detachPaymentMethod$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final discoverLocations(Ljava/lang/String;Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "connectionToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildConnectionTokenClient(Ljava/lang/String;)Ldagger/Lazy;

    move-result-object p1

    .line 305
    new-instance v0, Lcom/stripe/proto/api/rest/MainlandApi;

    invoke-direct {v0, p1}, Lcom/stripe/proto/api/rest/MainlandApi;-><init>(Ldagger/Lazy;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/stripe/proto/api/rest/MainlandApi;->discoverLocations$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final getFilesApi$transaction()Lcom/stripe/proto/api/rest/FilesApi;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->filesApi:Lcom/stripe/proto/api/rest/FilesApi;

    return-object v0
.end method

.method public final getMainlandApi$transaction()Lcom/stripe/proto/api/rest/MainlandApi;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->mainlandApi:Lcom/stripe/proto/api/rest/MainlandApi;

    return-object v0
.end method

.method public final getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;
    .locals 2

    .line 389
    invoke-direct {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v0

    sget-object v1, Lcom/stripe/restclient/IntegrationType;->SERVER_DRIVEN:Lcom/stripe/restclient/IntegrationType;

    if-ne v0, v1, :cond_1

    .line 390
    sget-object v0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->serverDrivenMainlandApi:Lcom/stripe/proto/api/rest/MainlandApi;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->mainlandApi:Lcom/stripe/proto/api/rest/MainlandApi;

    :cond_0
    return-object v0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->mainlandApi:Lcom/stripe/proto/api/rest/MainlandApi;

    return-object v0
.end method

.method public final listAllReaders(Ljava/lang/String;Lcom/stripe/proto/api/rest/ListAllReadersRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/ListAllReadersRequest;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/api/rest/ListAllReadersResponse;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "connectionToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildConnectionTokenClient(Ljava/lang/String;)Ldagger/Lazy;

    move-result-object p1

    .line 312
    new-instance v0, Lcom/stripe/proto/api/rest/MainlandApi;

    invoke-direct {v0, p1}, Lcom/stripe/proto/api/rest/MainlandApi;-><init>(Ldagger/Lazy;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/stripe/proto/api/rest/MainlandApi;->listAllReaders$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/ListAllReadersRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final listLocations(Lcom/stripe/proto/api/rest/ListLocationsRequest;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ListLocationsRequest;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/api/rest/ListLocationsResponse;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-direct {p0, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildConnectionTokenClient(Ljava/lang/String;)Ldagger/Lazy;

    move-result-object p2

    .line 336
    new-instance v0, Lcom/stripe/proto/api/rest/MainlandApi;

    invoke-direct {v0, p2}, Lcom/stripe/proto/api/rest/MainlandApi;-><init>(Ldagger/Lazy;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/stripe/proto/api/rest/MainlandApi;->listLocations$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/ListLocationsRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final readCardPaymentMethod(Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentMethod;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/api/rest/MainlandApi;->readCardPaymentMethod$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    .line 317
    sget-object v0, Lcom/stripe/restclient/TransactionOpType;->CONFIRM_REUSABLE_CARD:Lcom/stripe/restclient/TransactionOpType;

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->setRequestId(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/restclient/TransactionOpType;)V

    return-object p1
.end method

.method public final refundCharge(Lcom/stripe/proto/api/rest/RefundChargeRequest;Ljava/util/Map;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/RefundChargeRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/Refund;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/api/rest/MainlandApi;->refundCharge$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/RefundChargeRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    .line 326
    sget-object p2, Lcom/stripe/restclient/TransactionOpType;->CONFIRM_INTERAC_REFUND:Lcom/stripe/restclient/TransactionOpType;

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->setRequestId(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/restclient/TransactionOpType;)V

    return-object p1
.end method

.method public final retrieveLocation(Lcom/stripe/proto/api/rest/RetrieveLocationRequest;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/RetrieveLocationRequest;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-direct {p0, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildConnectionTokenClient(Ljava/lang/String;)Ldagger/Lazy;

    move-result-object p2

    .line 344
    new-instance v0, Lcom/stripe/proto/api/rest/MainlandApi;

    invoke-direct {v0, p2}, Lcom/stripe/proto/api/rest/MainlandApi;-><init>(Ldagger/Lazy;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/stripe/proto/api/rest/MainlandApi;->retrieveLocation$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/RetrieveLocationRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final retrievePaymentIntent(Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/lang/String;Ljava/util/Map;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 366
    invoke-direct {p0, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildConnectionTokenClient(Ljava/lang/String;)Ldagger/Lazy;

    move-result-object p2

    .line 367
    new-instance v0, Lcom/stripe/proto/api/rest/MainlandApi;

    invoke-direct {v0, p2}, Lcom/stripe/proto/api/rest/MainlandApi;-><init>(Ldagger/Lazy;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/stripe/proto/api/rest/MainlandApi;->retrievePaymentIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v0, p1

    move-object p1, p3

    .line 370
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object p2

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p1

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/stripe/proto/api/rest/MainlandApi;->retrievePaymentIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final retrieveSetupIntent(Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Ljava/lang/String;Ljava/util/Map;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 270
    invoke-direct {p0, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildConnectionTokenClient(Ljava/lang/String;)Ldagger/Lazy;

    move-result-object p2

    .line 271
    new-instance v0, Lcom/stripe/proto/api/rest/MainlandApi;

    invoke-direct {v0, p2}, Lcom/stripe/proto/api/rest/MainlandApi;-><init>(Ldagger/Lazy;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/stripe/proto/api/rest/MainlandApi;->retrieveSetupIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v0, p1

    move-object p1, p3

    .line 274
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object p2

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p1

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/stripe/proto/api/rest/MainlandApi;->retrieveSetupIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final setBlankSession()V
    .locals 2

    .line 123
    new-instance v0, Lcom/stripe/proto/api/rest/MainlandApi;

    .line 124
    new-instance v1, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$setBlankSession$1;

    invoke-direct {v1, p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$setBlankSession$1;-><init>(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->buildRestClient$transaction(Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;

    move-result-object v1

    .line 123
    invoke-direct {v0, v1}, Lcom/stripe/proto/api/rest/MainlandApi;-><init>(Ldagger/Lazy;)V

    iput-object v0, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->mainlandApi:Lcom/stripe/proto/api/rest/MainlandApi;

    return-void
.end method

.method public final setFilesApi$transaction(Lcom/stripe/proto/api/rest/FilesApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->filesApi:Lcom/stripe/proto/api/rest/FilesApi;

    return-void
.end method

.method public final setMainlandApi$transaction(Lcom/stripe/proto/api/rest/MainlandApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->mainlandApi:Lcom/stripe/proto/api/rest/MainlandApi;

    return-void
.end method

.method public final setServerDrivenStripeSessionToken(Ljava/lang/String;)V
    .locals 3

    const-string v0, "sessionToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getServerDrivenMainlandApi(Ljava/lang/String;)Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->serverDrivenMainlandApi:Lcom/stripe/proto/api/rest/MainlandApi;

    .line 96
    new-instance v0, Lcom/stripe/proto/api/rest/FilesApi;

    .line 97
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->baseFilesRestClient:Ldagger/Lazy;

    new-instance v2, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$setServerDrivenStripeSessionToken$1;

    invoke-direct {v2, p0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$setServerDrivenStripeSessionToken$1;-><init>(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lcom/stripe/jvmcore/dagger/LazyExtKt;->lazilyMap(Ldagger/Lazy;Lkotlin/jvm/functions/Function1;)Ldagger/Lazy;

    move-result-object p1

    .line 96
    invoke-direct {v0, p1}, Lcom/stripe/proto/api/rest/FilesApi;-><init>(Ldagger/Lazy;)V

    iput-object v0, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->filesApi:Lcom/stripe/proto/api/rest/FilesApi;

    return-void
.end method

.method public final updatePaymentIntentExpandedMethod(Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;Ljava/util/Map;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getMainlandApiForIntegrationMode$transaction()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/api/rest/MainlandApi;->updatePaymentIntentExpandMethod$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final updateSdiAction(Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionResponse;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->getServerDrivenMainlandApi(Ljava/lang/String;)Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    move-object v2, p3

    .line 353
    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/api/rest/MainlandApi;->updateSdiAction$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public final uploadFile(Lcom/stripe/proto/api/rest/UploadFileRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/UploadFileRequest;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/api/rest/UploadFileResponse;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->filesApi:Lcom/stripe/proto/api/rest/FilesApi;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/stripe/proto/api/rest/FilesApi;->uploadFile$default(Lcom/stripe/proto/api/rest/FilesApi;Lcom/stripe/proto/api/rest/UploadFileRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method
