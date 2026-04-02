.class public final Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions;
.super Ljava/lang/Object;
.source "CreateSetupIntentResponseExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions$CreateSetupIntentResponseResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateSetupIntentResponseExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateSetupIntentResponseExtensions.kt\ncom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,34:1\n1#2:35\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions;",
        "",
        "()V",
        "toResult",
        "Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions$CreateSetupIntentResponseResult;",
        "Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;",
        "CreateSetupIntentResponseResult",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toResult(Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;)Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions$CreateSetupIntentResponseResult;
    .locals 28

    move-object/from16 v0, p1

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v1, v0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    if-eqz v1, :cond_5

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v2, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkSetupIntent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 16
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v27, 0x0

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
    move-object/from16 v4, v27

    :goto_1
    const v25, 0xffffe

    const/16 v26, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 18
    invoke-static/range {v3 .. v26}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->copy$default(Lcom/stripe/stripeterminal/external/models/SetupIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v1

    .line 19
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;->options:Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/extensions/OfflineBehaviorExtensionsKt;->toOfflineBehavior(Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;)Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v2

    if-nez v2, :cond_3

    .line 20
    :cond_2
    sget-object v2, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    .line 19
    :cond_3
    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    .line 21
    iget-object v0, v0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v2, v0}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkSetupIntentOfflineDetails(Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;)Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object v27

    :cond_4
    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setOfflineDetails(Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;)V

    .line 17
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions$CreateSetupIntentResponseResult$Success;

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions$CreateSetupIntentResponseResult$Success;-><init>(Lcom/stripe/stripeterminal/external/models/SetupIntent;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions$CreateSetupIntentResponseResult;

    return-object v0

    .line 24
    :cond_5
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions$CreateSetupIntentResponseResult$Error;

    .line 25
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v0, v0, Lcom/stripe/proto/api/sdk/CreateSetupIntentResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v2, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->convertJackRabbitErrorToTerminalException(Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    .line 24
    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions$CreateSetupIntentResponseResult$Error;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/extensions/CreateSetupIntentResponseExtensions$CreateSetupIntentResponseResult;

    return-object v1
.end method
