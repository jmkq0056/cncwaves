.class public final Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions;
.super Ljava/lang/Object;
.source "ConfirmSetupIntentResponseExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfirmSetupIntentResponseExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfirmSetupIntentResponseExtensions.kt\ncom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,49:1\n1#2:50\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions;",
        "",
        "()V",
        "toResult",
        "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;",
        "ConfirmSetupIntentResponseResult",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toResult(Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;)Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult;
    .locals 30

    move-object/from16 v0, p1

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirmed_setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    if-eqz v1, :cond_5

    .line 17
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v4, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v4, v2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkSetupIntentOfflineDetails(Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;)Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 18
    :goto_0
    iget-object v4, v1, Lcom/stripe/proto/model/rest/SetupIntent;->id:Ljava/lang/String;

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v4

    goto :goto_2

    :cond_2
    :goto_1
    move-object v7, v3

    .line 20
    :goto_2
    sget-object v3, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v3, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkSetupIntent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v6

    const v28, 0xffffe

    const/16 v29, 0x0

    const/4 v8, 0x0

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

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v6 .. v29}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->copy$default(Lcom/stripe/stripeterminal/external/models/SetupIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setOfflineDetails(Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;)V

    .line 23
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/extensions/OfflineBehaviorExtensionsKt;->toOfflineBehavior(Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;)Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    sget-object v2, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->PREFER_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    .line 22
    :cond_4
    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    .line 25
    iget-object v0, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 19
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Success;

    invoke-direct {v2, v1, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Success;-><init>(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/proto/api/sdk/OfflineStats;)V

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult;

    return-object v2

    .line 28
    :cond_5
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;

    .line 30
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 31
    iget-object v3, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    .line 29
    invoke-static {v2, v3}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->convertJackRabbitConfirmErrorToTerminalException(Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v2

    .line 33
    iget-object v0, v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 28
    invoke-direct {v1, v2, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/proto/api/sdk/OfflineStats;)V

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult;

    return-object v1
.end method
