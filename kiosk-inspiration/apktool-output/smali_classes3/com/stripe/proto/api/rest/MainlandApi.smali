.class public final Lcom/stripe/proto/api/rest/MainlandApi;
.super Ljava/lang/Object;
.source "MainlandApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J:\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020\u00182\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020\u001b2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020\u001d2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020 2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J4\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\"2\u0006\u0010\r\u001a\u00020#2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020%2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020\'2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010(\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020*2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020,2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010-\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020/2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u00100\u001a\u000e\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u0002022\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u0002042\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u00105\u001a\u000e\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u0002072\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u00108\u001a\u000e\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020:2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010;\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020=2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010>\u001a\u000e\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020@2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010A\u001a\u000e\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020B2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020D2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010E\u001a\u000e\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020G2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010H\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020I2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020K2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010L\u001a\u000e\u0012\u0004\u0012\u00020M\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020N2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010O\u001a\u000e\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020Q2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013R\u0011\u0010\u0006\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006R"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/MainlandApi;",
        "",
        "lazyClient",
        "Ldagger/Lazy;",
        "Lcom/stripe/jvmcore/restclient/RestClient;",
        "(Ldagger/Lazy;)V",
        "client",
        "getClient",
        "()Lcom/stripe/jvmcore/restclient/RestClient;",
        "activateConnectionToken",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "message",
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
        "headers",
        "",
        "",
        "restConfig",
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "activateConnectionTokenWithExpandedLocation",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;",
        "addEmvSecondGenerationData",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;",
        "addEmvSecondGenerationRefundData",
        "Lcom/stripe/proto/model/rest/Refund;",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;",
        "cancelPaymentIntent",
        "Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;",
        "cancelSetupIntent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;",
        "checkHealth",
        "Lcom/stripe/jvmcore/restclient/StringRestResponse;",
        "Lcom/stripe/proto/api/rest/CheckHealthRequest;",
        "confirmPaymentIntent",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
        "confirmSetupIntent",
        "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
        "createConnectionToken",
        "Lcom/stripe/proto/model/rest/ConnectionToken;",
        "Lcom/stripe/proto/api/rest/CreateConnectionTokenRequest;",
        "createPaymentIntent",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
        "createReader",
        "Lcom/stripe/proto/model/rest/Reader;",
        "Lcom/stripe/proto/api/rest/CreateReaderRequest;",
        "createReaderCollectedData",
        "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
        "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;",
        "createSetupIntent",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "detachPaymentMethod",
        "Lcom/stripe/proto/model/rest/PaymentMethod;",
        "Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;",
        "discoverLocations",
        "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse;",
        "Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;",
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
        "updatePaymentIntentExpandMethod",
        "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
        "updateSdiAction",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionResponse;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;",
        "codegen-terminalsdk_release"
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
.field private final lazyClient:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "+",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "+",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lazyClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/stripe/proto/api/rest/MainlandApi;->lazyClient:Ldagger/Lazy;

    return-void
.end method

.method public static synthetic activateConnectionToken$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 76
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 77
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 74
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->activateConnectionToken(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic activateConnectionTokenWithExpandedLocation$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 99
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 100
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 97
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->activateConnectionTokenWithExpandedLocation(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic addEmvSecondGenerationData$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 499
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 500
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 497
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->addEmvSecondGenerationData(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic addEmvSecondGenerationRefundData$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 552
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 553
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 550
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->addEmvSecondGenerationRefundData(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic cancelPaymentIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 125
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 126
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 123
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->cancelPaymentIntent(Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic cancelSetupIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 659
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 660
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 657
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->cancelSetupIntent(Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic checkHealth$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/CheckHealthRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/StringRestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 178
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 179
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 176
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->checkHealth(Lcom/stripe/proto/api/rest/CheckHealthRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/StringRestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic confirmPaymentIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 234
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 235
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 232
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->confirmPaymentIntent(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic confirmSetupIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 605
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 606
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 603
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->confirmSetupIntent(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createConnectionToken$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/CreateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 152
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 153
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 150
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->createConnectionToken(Lcom/stripe/proto/api/rest/CreateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createPaymentIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 208
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 209
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 206
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->createPaymentIntent(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createReader$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/CreateReaderRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 419
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 420
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 417
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->createReader(Lcom/stripe/proto/api/rest/CreateReaderRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createReaderCollectedData$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 713
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 714
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 711
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->createReaderCollectedData(Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createSetupIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 261
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 262
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 259
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->createSetupIntent(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic detachPaymentMethod$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 340
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 341
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 338
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->detachPaymentMethod(Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic discoverLocations$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 367
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 368
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 365
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->discoverLocations(Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic listAllReaders$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/ListAllReadersRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 393
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 394
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 391
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->listAllReaders(Lcom/stripe/proto/api/rest/ListAllReadersRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic listLocations$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/ListLocationsRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 287
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 288
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 285
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->listLocations(Lcom/stripe/proto/api/rest/ListLocationsRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readCardPaymentMethod$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 579
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 580
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 577
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->readCardPaymentMethod(Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic refundCharge$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/RefundChargeRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 526
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 527
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 524
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->refundCharge(Lcom/stripe/proto/api/rest/RefundChargeRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic retrieveLocation$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/RetrieveLocationRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 313
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 314
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 311
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->retrieveLocation(Lcom/stripe/proto/api/rest/RetrieveLocationRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic retrievePaymentIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 445
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 446
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 443
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->retrievePaymentIntent(Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic retrieveSetupIntent$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 686
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 687
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 684
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->retrieveSetupIntent(Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic updatePaymentIntentExpandMethod$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 472
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 473
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 470
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->updatePaymentIntentExpandMethod(Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic updateSdiAction$default(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 632
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 633
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 630
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/MainlandApi;->updateSdiAction(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final activateConnectionToken(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;->addActivateConnectionTokenRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 89
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;

    .line 91
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 83
    const-string v3, "MainlandService"

    const-string v4, "activateConnectionToken"

    const-string v6, "v1/terminal/connection_tokens/activate"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final activateConnectionTokenWithExpandedLocation(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v1, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;->addActivateConnectionTokenRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 112
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    .line 114
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 106
    const-string v3, "MainlandService"

    const-string v4, "activateConnectionTokenWithExpandedLocation"

    const-string v6, "v1/terminal/connection_tokens/activate"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final addEmvSecondGenerationData(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
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

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v9, p2

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-object v1, v0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->id:Ljava/lang/String;

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1/payment_intents/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/add_emv_second_generation_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v7, 0x2f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 504
    invoke-static/range {v0 .. v8}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;->copy$default(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;

    move-result-object v0

    .line 505
    sget-object v1, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequestExt;->addAddEmvSecondGenerationDataRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 513
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 515
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v12, Lcom/squareup/wire/Message;

    .line 507
    const-string v3, "MainlandService"

    const-string v4, "addEmvSecondGenerationData"

    move-object/from16 v7, p2

    move-object v6, v10

    move-object v10, v12

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final addEmvSecondGenerationRefundData(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 20
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

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v11, p2

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v12, p3

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    iget-object v1, v0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;->id:Ljava/lang/String;

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1/refunds/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/add_emv_second_generation_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v9, 0xef

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 557
    invoke-static/range {v0 .. v10}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;->copy$default(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;

    move-result-object v0

    .line 558
    sget-object v1, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequestExt;->addAddEmvSecondGenerationDataRefundRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 566
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/Refund;

    .line 568
    new-instance v14, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v18, 0x7

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v14

    check-cast v10, Lcom/squareup/wire/Message;

    .line 560
    const-string v3, "MainlandService"

    const-string v4, "addEmvSecondGenerationRefundData"

    move-object v7, v11

    move-object v11, v12

    move-object v6, v13

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final cancelPaymentIntent(Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;",
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

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v1, v0, Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;->id:Ljava/lang/String;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1/payment_intents/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 130
    invoke-static/range {v0 .. v6}, Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/stripe/proto/api/rest/CancelPaymentIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CancelPaymentIntentRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/CancelPaymentIntentRequestExt;->addCancelPaymentIntentRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 139
    check-cast v0, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 141
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 133
    const-string v3, "MainlandService"

    const-string v4, "cancelPaymentIntent"

    move-object v6, v8

    move-object v8, v0

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final cancelSetupIntent(Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    iget-object v1, v0, Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;->id:Ljava/lang/String;

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1/setup_intents/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 664
    invoke-static/range {v0 .. v5}, Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;Ljava/lang/String;Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;

    move-result-object v0

    .line 665
    sget-object v1, Lcom/stripe/proto/api/rest/CancelSetupIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CancelSetupIntentRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/CancelSetupIntentRequestExt;->addCancelSetupIntentRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 673
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/SetupIntent;

    .line 675
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 667
    const-string v3, "MainlandService"

    const-string v4, "cancelSetupIntent"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final checkHealth(Lcom/stripe/proto/api/rest/CheckHealthRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/StringRestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CheckHealthRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/StringRestResponse<",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    sget-object v1, Lcom/stripe/proto/api/rest/CheckHealthRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CheckHealthRequestExt;

    new-instance v2, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v2}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/CheckHealthRequestExt;->addCheckHealthRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/CheckHealthRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v5

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 191
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/squareup/wire/AnyMessage;

    .line 193
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 185
    const-string v3, "MainlandService"

    const-string v4, "checkHealth"

    const-string v6, "healthcheck"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingGet(Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    .line 197
    instance-of v1, v0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/stripe/jvmcore/restclient/StringRestResponse$ParseError;

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    invoke-direct {v1, v0}, Lcom/stripe/jvmcore/restclient/StringRestResponse$ParseError;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;)V

    check-cast v1, Lcom/stripe/jvmcore/restclient/StringRestResponse;

    return-object v1

    .line 198
    :cond_0
    instance-of v1, v0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2, v3}, Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;Lcom/squareup/wire/Message;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/stripe/jvmcore/restclient/StringRestResponse;

    return-object v1

    .line 199
    :cond_1
    instance-of v1, v0, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;

    move-object v3, v0

    check-cast v3, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse$Success;Ljava/lang/String;Ljava/util/TreeMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/stripe/jvmcore/restclient/StringRestResponse;

    return-object v2

    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final confirmPaymentIntent(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 23
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

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v14, p2

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v15, p3

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v1, v0, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->id:Ljava/lang/String;

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1/payment_intents/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/confirm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v12, 0x7ef

    const/4 v13, 0x0

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

    .line 239
    invoke-static/range {v0 .. v13}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    move-result-object v0

    .line 240
    sget-object v1, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;->addConfirmPaymentIntentRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 248
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 250
    new-instance v17, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v21, 0x7

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v22}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v10, v17

    check-cast v10, Lcom/squareup/wire/Message;

    .line 242
    const-string v3, "MainlandService"

    const-string v4, "confirmPaymentIntent"

    move-object v7, v14

    move-object v11, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final confirmSetupIntent(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v10, p2

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    iget-object v1, v0, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;->id:Ljava/lang/String;

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1/setup_intents/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/confirm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v8, 0x5f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 610
    invoke-static/range {v0 .. v9}, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/Mandate;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    move-result-object v0

    .line 611
    sget-object v1, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequestExt;->addConfirmSetupIntentRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 619
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/SetupIntent;

    .line 621
    new-instance v13, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v17, 0x7

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v18}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v13, Lcom/squareup/wire/Message;

    .line 613
    const-string v3, "MainlandService"

    const-string v4, "confirmSetupIntent"

    move-object v7, v10

    move-object v6, v12

    move-object v10, v13

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final createConnectionToken(Lcom/stripe/proto/api/rest/CreateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreateConnectionTokenRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/ConnectionToken;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v1, Lcom/stripe/proto/api/rest/CreateConnectionTokenRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CreateConnectionTokenRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/CreateConnectionTokenRequestExt;->addCreateConnectionTokenRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/CreateConnectionTokenRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 165
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/ConnectionToken;

    .line 167
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 159
    const-string v3, "MainlandService"

    const-string v4, "createConnectionToken"

    const-string v6, "v1/terminal/connection_tokens"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final createPaymentIntent(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
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

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    sget-object v1, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CreatePaymentIntentRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequestExt;->addCreatePaymentIntentRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 221
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 223
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 215
    const-string v3, "MainlandService"

    const-string v4, "createPaymentIntent"

    const-string v6, "v1/payment_intents"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final createReader(Lcom/stripe/proto/api/rest/CreateReaderRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreateReaderRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/Reader;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    sget-object v1, Lcom/stripe/proto/api/rest/CreateReaderRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CreateReaderRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/CreateReaderRequestExt;->addCreateReaderRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/CreateReaderRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 432
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/Reader;

    .line 434
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 426
    const-string v3, "MainlandService"

    const-string v4, "createReader"

    const-string v6, "v1/terminal/readers"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final createReaderCollectedData(Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    sget-object v1, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequestExt;->addCreateReaderCollectedDataRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 726
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/ReaderCollectedData;

    .line 728
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 720
    const-string v3, "MainlandService"

    const-string v4, "createReaderCollectedData"

    const-string v6, "v1/terminal/reader_collected_data"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final createSetupIntent(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    sget-object v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;->addCreateSetupIntentRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 274
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/SetupIntent;

    .line 276
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 268
    const-string v3, "MainlandService"

    const-string v4, "createSetupIntent"

    const-string v6, "v1/setup_intents"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final detachPaymentMethod(Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentMethod;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-object v1, v0, Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;->id:Ljava/lang/String;

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1/payment_methods/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/detach"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 345
    invoke-static {v0, v2, v2, v1, v2}, Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;->copy$default(Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;

    move-result-object v0

    .line 346
    sget-object v1, Lcom/stripe/proto/api/rest/DetachPaymentMethodRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/DetachPaymentMethodRequestExt;

    new-instance v3, Lokhttp3/FormBody$Builder;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v2}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, ""

    invoke-virtual {v1, v3, v0, v2}, Lcom/stripe/proto/api/rest/DetachPaymentMethodRequestExt;->addDetachPaymentMethodRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 354
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 356
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 348
    const-string v3, "MainlandService"

    const-string v4, "detachPaymentMethod"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final discoverLocations(Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    sget-object v1, Lcom/stripe/proto/api/rest/DiscoverLocationsRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/DiscoverLocationsRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/DiscoverLocationsRequestExt;->addDiscoverLocationsRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 380
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse;

    .line 382
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 374
    const-string v3, "MainlandService"

    const-string v4, "discoverLocations"

    const-string v6, "/v1/terminal/readers/discover"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getClient()Lcom/stripe/jvmcore/restclient/RestClient;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/stripe/proto/api/rest/MainlandApi;->lazyClient:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient;

    return-object v0
.end method

.method public final listAllReaders(Lcom/stripe/proto/api/rest/ListAllReadersRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ListAllReadersRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/api/rest/ListAllReadersResponse;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    sget-object v1, Lcom/stripe/proto/api/rest/ListAllReadersRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ListAllReadersRequestExt;

    new-instance v2, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v2}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/ListAllReadersRequestExt;->addListAllReadersRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/ListAllReadersRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v5

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 406
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/api/rest/ListAllReadersResponse;

    .line 408
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 400
    const-string v3, "MainlandService"

    const-string v4, "listAllReaders"

    const-string v6, "/v1/terminal/readers"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingGet(Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final listLocations(Lcom/stripe/proto/api/rest/ListLocationsRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ListLocationsRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/api/rest/ListLocationsResponse;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    sget-object v1, Lcom/stripe/proto/api/rest/ListLocationsRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ListLocationsRequestExt;

    new-instance v2, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v2}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/ListLocationsRequestExt;->addListLocationsRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/ListLocationsRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v5

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 300
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/api/rest/ListLocationsResponse;

    .line 302
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 294
    const-string v3, "MainlandService"

    const-string v4, "listLocations"

    const-string v6, "v1/terminal/locations"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingGet(Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final readCardPaymentMethod(Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentMethod;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    sget-object v1, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequestExt;->addReadCardPaymentMethodRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 592
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 594
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 586
    const-string v3, "MainlandService"

    const-string v4, "readCardPaymentMethod"

    const-string v6, "v1/terminal/read_card_payment_method"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final refundCharge(Lcom/stripe/proto/api/rest/RefundChargeRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/RefundChargeRequest;",
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

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    sget-object v1, Lcom/stripe/proto/api/rest/RefundChargeRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/RefundChargeRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/RefundChargeRequestExt;->addRefundChargeRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RefundChargeRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 539
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/Refund;

    .line 541
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 533
    const-string v3, "MainlandService"

    const-string v4, "refundCharge"

    const-string v6, "v1/refunds"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final retrieveLocation(Lcom/stripe/proto/api/rest/RetrieveLocationRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/RetrieveLocationRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    iget-object v1, v0, Lcom/stripe/proto/api/rest/RetrieveLocationRequest;->id:Ljava/lang/String;

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1/terminal/locations/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 318
    invoke-static {v0, v1, v1, v2, v1}, Lcom/stripe/proto/api/rest/RetrieveLocationRequest;->copy$default(Lcom/stripe/proto/api/rest/RetrieveLocationRequest;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RetrieveLocationRequest;

    move-result-object v0

    .line 319
    sget-object v1, Lcom/stripe/proto/api/rest/RetrieveLocationRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/RetrieveLocationRequestExt;

    new-instance v2, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v2}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/RetrieveLocationRequestExt;->addRetrieveLocationRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RetrieveLocationRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v5

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 327
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 329
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 321
    const-string v3, "MainlandService"

    const-string v4, "retrieveLocation"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingGet(Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final retrievePaymentIntent(Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;",
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

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    iget-object v1, v0, Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;->id:Ljava/lang/String;

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1/payment_intents/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 450
    invoke-static/range {v0 .. v6}, Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;

    move-result-object v0

    .line 451
    sget-object v1, Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequestExt;

    new-instance v2, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v2}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequestExt;->addRetrievePaymentIntentRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v5

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 459
    check-cast v0, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 461
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 453
    const-string v3, "MainlandService"

    const-string v4, "retrievePaymentIntent"

    move-object v6, v8

    move-object v8, v0

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingGet(Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final retrieveSetupIntent(Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    iget-object v1, v0, Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;->id:Ljava/lang/String;

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1/setup_intents/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 691
    invoke-static/range {v0 .. v6}, Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;

    move-result-object v0

    .line 692
    sget-object v1, Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequestExt;

    new-instance v2, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v2}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequestExt;->addRetrieveSetupIntentRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v5

    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 700
    check-cast v0, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/SetupIntent;

    .line 702
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 694
    const-string v3, "MainlandService"

    const-string v4, "retrieveSetupIntent"

    move-object v6, v8

    move-object v8, v0

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingGet(Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final updatePaymentIntentExpandMethod(Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v10, p2

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    iget-object v1, v0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->id:Ljava/lang/String;

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1/payment_intents/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v8, 0x7b

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 477
    invoke-static/range {v0 .. v9}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    move-result-object v0

    .line 478
    sget-object v1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequestExt;->addUpdatePaymentIntentRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 486
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    .line 488
    new-instance v13, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v17, 0x7

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v18}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v13, Lcom/squareup/wire/Message;

    .line 480
    const-string v3, "MainlandService"

    const-string v4, "updatePaymentIntentExpandMethod"

    move-object v7, v10

    move-object v6, v12

    move-object v10, v13

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final updateSdiAction(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionResponse;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v14, p2

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v15, p3

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    iget-object v1, v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->id:Ljava/lang/String;

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/v1/terminal/readers/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/update_action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v12, 0x7fe

    const/4 v13, 0x0

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

    .line 637
    invoke-static/range {v0 .. v13}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->copy$default(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;

    move-result-object v0

    .line 638
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addUpdateSdiActionRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/MainlandApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 646
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/api/rest/UpdateSdiActionResponse;

    .line 648
    new-instance v17, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v21, 0x7

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v22}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v10, v17

    check-cast v10, Lcom/squareup/wire/Message;

    .line 640
    const-string v3, "MainlandService"

    const-string v4, "updateSdiAction"

    move-object v7, v14

    move-object v11, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method
