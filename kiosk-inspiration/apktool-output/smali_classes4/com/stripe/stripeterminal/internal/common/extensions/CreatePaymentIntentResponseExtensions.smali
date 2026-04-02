.class public final Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions;
.super Ljava/lang/Object;
.source "CreatePaymentIntentResponseExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreatePaymentIntentResponseExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreatePaymentIntentResponseExtensions.kt\ncom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,35:1\n1#2:36\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions;",
        "",
        "()V",
        "toResult",
        "Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult;",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;",
        "CreatePaymentIntentResponseResult",
        "public_release"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toResult(Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;)Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult;
    .locals 50

    move-object/from16 v0, p1

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v1, v0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v1, :cond_5

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v2, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPaymentIntent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 16
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v49, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v4, v49

    :goto_1
    const/16 v47, 0xf

    const/16 v48, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

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

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, -0x2

    .line 18
    invoke-static/range {v3 .. v48}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->copy$default(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;IILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v1

    .line 19
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->options:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/extensions/OfflineBehaviorExtensionsKt;->toOfflineBehavior(Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;)Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v2

    if-nez v2, :cond_3

    .line 20
    :cond_2
    sget-object v2, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    .line 19
    :cond_3
    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    .line 21
    iget-object v0, v0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v2, v0}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkOfflineDetails(Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object v49

    :cond_4
    move-object/from16 v0, v49

    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setOfflineDetails(Lcom/stripe/stripeterminal/external/models/OfflineDetails;)V

    .line 17
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Success;

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Success;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult;

    return-object v0

    .line 25
    :cond_5
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Error;

    .line 26
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v0, v0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v2, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->convertJackRabbitErrorToTerminalException(Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    .line 25
    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Error;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult;

    return-object v1
.end method
