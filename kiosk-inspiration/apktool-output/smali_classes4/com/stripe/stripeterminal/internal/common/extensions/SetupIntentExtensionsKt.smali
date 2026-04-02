.class public final Lcom/stripe/stripeterminal/internal/common/extensions/SetupIntentExtensionsKt;
.super Ljava/lang/Object;
.source "SetupIntentExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0098\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0008\u0002\u0010#\u001a\u00020\u00192\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010%\u00a8\u0006&"
    }
    d2 = {
        "copyWithVars",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "id",
        "",
        "customerId",
        "description",
        "lastSetupError",
        "Lcom/stripe/stripeterminal/external/api/ApiError;",
        "metadata",
        "",
        "nextAction",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;",
        "paymentMethodId",
        "paymentMethodTypes",
        "",
        "status",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;",
        "usage",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;",
        "applicationId",
        "cancellationReason",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;",
        "created",
        "",
        "isLiveMode",
        "",
        "mandateId",
        "onBehalfOfId",
        "paymentMethodOptions",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;",
        "singleUseMandateId",
        "offlineBehavior",
        "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "offlineDetails",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
        "collectedOffline",
        "paymentMethodData",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "public_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final copyWithVars(Lcom/stripe/stripeterminal/external/models/SetupIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;ZLcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/api/ApiError;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;",
            "JZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
            "Z",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;"
        }
    .end annotation

    move-object/from16 v0, p20

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadata"

    move-object/from16 v8, p5

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "paymentMethodTypes"

    move-object/from16 v11, p8

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "offlineBehavior"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v24, 0x4002

    const/16 v25, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-wide/from16 v16, p13

    move/from16 v19, p15

    move-object/from16 v20, p16

    move-object/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v23, p19

    .line 41
    invoke-static/range {v2 .. v25}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->copy$default(Lcom/stripe/stripeterminal/external/models/SetupIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    move-object/from16 v0, p21

    .line 63
    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setOfflineDetails(Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;)V

    move/from16 v0, p22

    .line 64
    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setCollectedOffline(Z)V

    move-object/from16 v0, p23

    .line 66
    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setPaymentMethodData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    .line 69
    invoke-virtual {v1, v12}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setStatus(Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;)V

    return-object v1
.end method

.method public static synthetic copyWithVars$default(Lcom/stripe/stripeterminal/external/models/SetupIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;ZLcom/stripe/stripeterminal/internal/models/PaymentMethodData;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 23

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getDescription()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getLastSetupError()Lcom/stripe/stripeterminal/external/api/ApiError;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getMetadata()Ljava/util/Map;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getNextAction()Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

    move-result-object v6

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getPaymentMethodId()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getPaymentMethodTypes()Ljava/util/List;

    move-result-object v8

    goto :goto_7

    :cond_7
    move-object/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getStatus()Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    move-result-object v9

    goto :goto_8

    :cond_8
    move-object/from16 v9, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getUsage()Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    move-result-object v10

    goto :goto_9

    :cond_9
    move-object/from16 v10, p10

    :goto_9
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getApplicationId()Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :cond_a
    move-object/from16 v11, p11

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getCancellationReason()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    move-result-object v12

    goto :goto_b

    :cond_b
    move-object/from16 v12, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getCreated()J

    move-result-wide v13

    goto :goto_c

    :cond_c
    move-wide/from16 v13, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode()Z

    move-result v15

    goto :goto_d

    :cond_d
    move/from16 v15, p15

    :goto_d
    move-object/from16 p1, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getMandateId()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_e
    move-object/from16 v1, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOnBehalfOfId()Ljava/lang/String;

    move-result-object v16

    goto :goto_f

    :cond_f
    move-object/from16 v16, p17

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getPaymentMethodOptions()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    move-result-object v17

    goto :goto_10

    :cond_10
    move-object/from16 v17, p18

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getSingleUseMandateId()Ljava/lang/String;

    move-result-object v18

    goto :goto_11

    :cond_11
    move-object/from16 v18, p19

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v19

    goto :goto_12

    :cond_12
    move-object/from16 v19, p20

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object v20

    goto :goto_13

    :cond_13
    move-object/from16 v20, p21

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getCollectedOffline()Z

    move-result v21

    goto :goto_14

    :cond_14
    move/from16 v21, p22

    :goto_14
    const/high16 v22, 0x200000

    and-int v0, v0, v22

    if-eqz v0, :cond_15

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    move-object/from16 p24, v0

    goto :goto_15

    :cond_15
    move-object/from16 p24, p23

    :goto_15
    move-object/from16 p2, p1

    move-object/from16 p17, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-wide/from16 p14, v13

    move/from16 p16, v15

    move-object/from16 p18, v16

    move-object/from16 p19, v17

    move-object/from16 p20, v18

    move-object/from16 p21, v19

    move-object/from16 p22, v20

    move/from16 p23, v21

    move-object/from16 p1, p0

    .line 17
    invoke-static/range {p1 .. p24}, Lcom/stripe/stripeterminal/internal/common/extensions/SetupIntentExtensionsKt;->copyWithVars(Lcom/stripe/stripeterminal/external/models/SetupIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;ZLcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    return-object v0
.end method
