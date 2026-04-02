.class public final Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;
.super Ljava/lang/Object;
.source "DefaultPaymentIntentRestApiFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultPaymentIntentRestApiFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultPaymentIntentRestApiFactory.kt\ncom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1549#2:61\n1620#2,3:62\n1#3:65\n*S KotlinDebug\n*F\n+ 1 DefaultPaymentIntentRestApiFactory.kt\ncom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory\n*L\n37#1:61\n37#1:62,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;",
        "()V",
        "cancelPaymentIntent",
        "Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;",
        "id",
        "",
        "createPaymentIntent",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "terminal-requestfactories"
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
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPaymentIntent(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;
    .locals 8

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;
    .locals 26

    const-string v0, "params"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;-><init>()V

    .line 14
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getPaymentMethodOptionsParameters()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;->getCardPresentParameters()Lcom/stripe/stripeterminal/external/models/CardPresentParameters;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->getRequestExtendedAuthorization()Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 13
    :goto_0
    invoke-virtual {v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->request_extended_authorization(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getPaymentMethodOptionsParameters()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;->getCardPresentParameters()Lcom/stripe/stripeterminal/external/models/CardPresentParameters;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->getRequestIncrementalAuthorizationSupport()Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 16
    :goto_1
    invoke-virtual {v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->request_incremental_authorization_support(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getPaymentMethodOptionsParameters()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;->getCardPresentParameters()Lcom/stripe/stripeterminal/external/models/CardPresentParameters;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->getCaptureMethod()Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;->getKey()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    .line 19
    :goto_2
    invoke-virtual {v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->capture_method(Ljava/lang/String;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getPaymentMethodOptionsParameters()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;->getCardPresentParameters()Lcom/stripe/stripeterminal/external/models/CardPresentParameters;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->getRouting()Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;->getRequestedPriority()Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 24
    new-instance v4, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;

    sget-object v5, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v5, v2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoPriority(Lcom/stripe/stripeterminal/external/models/RoutingPriority;)Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v4, v2, v3, v5, v3}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_3
    move-object v4, v3

    .line 22
    :goto_3
    invoke-virtual {v0, v4}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->routing(Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getPaymentMethodOptionsParameters()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;->getCardPresentParameters()Lcom/stripe/stripeterminal/external/models/CardPresentParameters;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardPresentParameters;->getRequestPartialAuthorization()Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->getTypeName()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v3

    .line 27
    :goto_4
    invoke-virtual {v0, v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->request_partial_authorization(Ljava/lang/String;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$Builder;->build()Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;

    move-result-object v0

    .line 32
    new-instance v2, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;

    invoke-direct {v2}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;-><init>()V

    .line 33
    invoke-virtual {v2, v0}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;->card_present(Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;)Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;->build()Lcom/stripe/proto/api/rest/PaymentMethodOptions;

    move-result-object v18

    .line 37
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getPaymentMethodTypes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 62
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 63
    check-cast v4, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 37
    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 64
    :cond_5
    move-object v10, v2

    check-cast v10, Ljava/util/List;

    .line 38
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getAmount()Ljava/lang/Long;

    move-result-object v5

    .line 39
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getCaptureMethod()Lcom/stripe/stripeterminal/external/models/CaptureMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/CaptureMethod;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 40
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getCurrency()Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getCustomer()Ljava/lang/String;

    move-result-object v13

    .line 42
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getDescription()Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getReceiptEmail()Ljava/lang/String;

    move-result-object v11

    .line 44
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getStatementDescriptor()Ljava/lang/String;

    move-result-object v12

    .line 45
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getStatementDescriptorSuffix()Ljava/lang/String;

    move-result-object v19

    .line 46
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getMetadata()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_6
    move-object v9, v0

    .line 47
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getApplicationFeeAmount()Ljava/lang/Long;

    move-result-object v15

    .line 48
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getTransferDataDestination()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_7

    new-instance v20, Lcom/stripe/proto/api/rest/TransferData;

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v25}, Lcom/stripe/proto/api/rest/TransferData;-><init>(Ljava/lang/String;Ljava/lang/Long;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v20

    goto :goto_6

    :cond_7
    move-object/from16 v17, v3

    .line 49
    :goto_6
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getTransferGroup()Ljava/lang/String;

    move-result-object v14

    .line 50
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getOnBehalfOf()Ljava/lang/String;

    move-result-object v16

    .line 52
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->getSetupFutureUsage()Ljava/lang/String;

    move-result-object v20

    .line 36
    new-instance v4, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    const/high16 v22, 0x10000

    const/16 v23, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v4 .. v23}, Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/TransferData;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4
.end method
