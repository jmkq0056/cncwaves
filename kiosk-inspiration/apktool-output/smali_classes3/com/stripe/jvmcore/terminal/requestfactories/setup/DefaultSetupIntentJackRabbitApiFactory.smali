.class public final Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;
.super Ljava/lang/Object;
.source "DefaultSetupIntentJackRabbitApiFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016JH\u0010\u000f\u001a\u00020\u00102\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u001c\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;",
        "setUpIntentRestApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;",
        "(Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;)V",
        "cancelConfirmSetupIntent",
        "Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;",
        "cancelSetupIntent",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;",
        "id",
        "",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "cancelSetupIntentPaymentMethod",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;",
        "collectSetupIntentPaymentMethod",
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;",
        "enableCustomerCancellation",
        "",
        "manualEntry",
        "offlineDetails",
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;",
        "offlineBehavior",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
        "allowRedisplay",
        "Lcom/stripe/proto/model/rest/AllowRedisplay;",
        "setupIntent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "confirmSetupIntent",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;",
        "createSetupIntent",
        "Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "createConfiguration",
        "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;",
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


# instance fields
.field private final setUpIntentRestApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;)V
    .locals 1

    const-string v0, "setUpIntentRestApiFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;->setUpIntentRestApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;

    return-void
.end method


# virtual methods
.method public cancelConfirmSetupIntent()Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;
    .locals 3

    .line 72
    new-instance v0, Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public cancelSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;

    .line 64
    iget-object v1, p0, Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;->setUpIntentRestApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;

    invoke-interface {v1, p1, p2}, Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;->cancelSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x2

    .line 63
    invoke-direct {v0, p1, p2, v1, p2}, Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;-><init>(Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public cancelSetupIntentPaymentMethod()Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;
    .locals 3

    .line 55
    new-instance v0, Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public collectSetupIntentPaymentMethod(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/model/rest/AllowRedisplay;Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;
    .locals 12

    const-string v0, "setupIntent"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 44
    const-string p1, ""

    :cond_0
    move-object v2, p1

    .line 43
    new-instance v1, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;

    const/16 v10, 0x80

    const/4 v11, 0x0

    const/4 v9, 0x0

    move v4, p2

    move v3, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v11}, Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;-><init>(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public confirmSetupIntent(Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;
    .locals 7

    .line 59
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v1, p1

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;

    .line 27
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;->setUpIntentRestApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    move-result-object v2

    .line 28
    new-instance v3, Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;

    .line 29
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/OfflineBehaviorExtensionsKt;->toOfflineBehaviorProto(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 28
    invoke-direct {v3, p1, p2, v0, p2}, Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;-><init>(Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;-><init>(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
