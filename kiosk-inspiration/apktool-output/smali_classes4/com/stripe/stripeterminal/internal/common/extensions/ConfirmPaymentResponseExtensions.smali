.class public final Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions;
.super Ljava/lang/Object;
.source "ConfirmPaymentResponseExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfirmPaymentResponseExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfirmPaymentResponseExtensions.kt\ncom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n1#2:53\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions;",
        "",
        "()V",
        "toResult",
        "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;",
        "ConfirmPaymentResponseResult",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toResult(Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;)Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;
    .locals 51

    move-object/from16 v0, p1

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v1, :cond_5

    .line 18
    iget-object v2, v1, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v2

    goto :goto_1

    :cond_1
    :goto_0
    move-object v6, v4

    .line 19
    :goto_1
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    if-eqz v2, :cond_2

    sget-object v3, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v3, v2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkOfflineDetails(Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object v4

    .line 21
    :cond_2
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v2, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPaymentIntent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v5

    const/16 v49, 0xf

    const/16 v50, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

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

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, -0x2

    invoke-static/range {v5 .. v50}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->copy$default(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;IILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v4}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setOfflineDetails(Lcom/stripe/stripeterminal/external/models/OfflineDetails;)V

    .line 24
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/extensions/OfflineBehaviorExtensionsKt;->toOfflineBehavior(Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;)Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    sget-object v2, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->PREFER_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    .line 23
    :cond_4
    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    .line 26
    iget-object v0, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 20
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Success;

    invoke-direct {v2, v1, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Success;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/sdk/OfflineStats;)V

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;

    return-object v2

    .line 29
    :cond_5
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Error;

    .line 31
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 32
    iget-object v3, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    .line 30
    invoke-static {v2, v3}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->convertJackRabbitConfirmErrorToTerminalException(Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v2

    .line 34
    iget-object v0, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 29
    invoke-direct {v1, v2, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Error;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/proto/api/sdk/OfflineStats;)V

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;

    return-object v1
.end method
