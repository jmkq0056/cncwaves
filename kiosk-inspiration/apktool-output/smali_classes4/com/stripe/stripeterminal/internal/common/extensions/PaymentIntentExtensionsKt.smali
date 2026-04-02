.class public final Lcom/stripe/stripeterminal/internal/common/extensions/PaymentIntentExtensionsKt;
.super Ljava/lang/Object;
.source "PaymentIntentExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u00ad\u0003\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00052\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0016\u0008\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\'2\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010)\u001a\u00020*2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010,2\u0008\u0008\u0002\u0010-\u001a\u00020\u00172\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/\u00a2\u0006\u0002\u00100\u00a8\u00061"
    }
    d2 = {
        "copyWithVars",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "id",
        "",
        "amount",
        "",
        "amountCapturable",
        "amountReceived",
        "application",
        "applicationFeeAmount",
        "canceledAt",
        "cancellationReason",
        "captureMethod",
        "clientSecret",
        "confirmationMethod",
        "created",
        "currency",
        "customer",
        "description",
        "invoice",
        "lastPaymentError",
        "Lcom/stripe/stripeterminal/external/api/ApiError;",
        "livemode",
        "",
        "metadata",
        "",
        "onBehalfOf",
        "receiptEmail",
        "review",
        "setupFutureUsage",
        "statementDescriptor",
        "status",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;",
        "transferGroup",
        "amountDetails",
        "Lcom/stripe/stripeterminal/external/models/AmountDetails;",
        "amountTip",
        "statementDescriptorSuffix",
        "paymentMethodOptions",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;",
        "stripeAccountId",
        "offlineBehavior",
        "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "offlineDetails",
        "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
        "collectedOffline",
        "paymentMethodData",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
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
.method public static final copyWithVars(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/api/ApiError;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/AmountDetails;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
            "Z",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;"
        }
    .end annotation

    move-object/from16 v0, p38

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "offlineBehavior"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v46, 0xe

    const/16 v47, 0x0

    const/16 v17, 0x0

    const/16 v30, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const v45, 0x200200

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-wide/from16 v20, p17

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move-object/from16 v25, p22

    move-object/from16 v26, p23

    move/from16 v27, p24

    move-object/from16 v28, p25

    move-object/from16 v29, p26

    move-object/from16 v31, p27

    move-object/from16 v32, p28

    move-object/from16 v33, p29

    move-object/from16 v34, p30

    move-object/from16 v35, p31

    move-object/from16 v36, p32

    move-object/from16 v37, p33

    move-object/from16 v38, p34

    move-object/from16 v39, p35

    move-object/from16 v40, p36

    move-object/from16 v41, p37

    .line 57
    invoke-static/range {v2 .. v47}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->copy$default(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;IILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    move-object/from16 v0, p39

    .line 91
    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setOfflineDetails(Lcom/stripe/stripeterminal/external/models/OfflineDetails;)V

    move/from16 v0, p40

    .line 92
    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setCollectedOffline(Z)V

    move-object/from16 v0, p41

    .line 94
    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setPaymentMethodData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    move-object/from16 v0, p31

    .line 97
    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setStatus(Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;)V

    return-object v1
.end method

.method public static synthetic copyWithVars$default(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/stripeterminal/internal/models/PaymentMethodData;IILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 37

    move/from16 v0, p42

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getAmount()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide/from16 v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getAmountCapturable()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p4

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getAmountReceived()J

    move-result-wide v6

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p6

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getApplication()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object/from16 v8, p8

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getApplicationFeeAmount()J

    move-result-wide v9

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p9

    :goto_5
    and-int/lit8 v11, v0, 0x40

    if-eqz v11, :cond_6

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCanceledAt()J

    move-result-wide v11

    goto :goto_6

    :cond_6
    move-wide/from16 v11, p11

    :goto_6
    and-int/lit16 v13, v0, 0x80

    if-eqz v13, :cond_7

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCancellationReason()Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_7
    move-object/from16 v13, p13

    :goto_7
    and-int/lit16 v14, v0, 0x100

    if-eqz v14, :cond_8

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCaptureMethod()Ljava/lang/String;

    move-result-object v14

    goto :goto_8

    :cond_8
    move-object/from16 v14, p14

    :goto_8
    and-int/lit16 v15, v0, 0x200

    if-eqz v15, :cond_9

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v15

    goto :goto_9

    :cond_9
    move-object/from16 v15, p15

    :goto_9
    move-object/from16 p1, v1

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getConfirmationMethod()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_a
    move-object/from16 v1, p16

    :goto_a
    move-object/from16 p2, v1

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCreated()J

    move-result-wide v16

    goto :goto_b

    :cond_b
    move-wide/from16 v16, p17

    :goto_b
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCurrency()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_c
    move-object/from16 v1, p19

    :goto_c
    move-object/from16 p3, v1

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCustomer()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_d
    move-object/from16 v1, p20

    :goto_d
    move-object/from16 p4, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_e
    move-object/from16 v1, p21

    :goto_e
    const v18, 0x8000

    and-int v18, v0, v18

    if-eqz v18, :cond_f

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getInvoice()Ljava/lang/String;

    move-result-object v18

    goto :goto_f

    :cond_f
    move-object/from16 v18, p22

    :goto_f
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_10

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getLastPaymentError()Lcom/stripe/stripeterminal/external/api/ApiError;

    move-result-object v19

    goto :goto_10

    :cond_10
    move-object/from16 v19, p23

    :goto_10
    const/high16 v20, 0x20000

    and-int v20, v0, v20

    if-eqz v20, :cond_11

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getLivemode()Z

    move-result v20

    goto :goto_11

    :cond_11
    move/from16 v20, p24

    :goto_11
    const/high16 v21, 0x40000

    and-int v21, v0, v21

    if-eqz v21, :cond_12

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getMetadata()Ljava/util/Map;

    move-result-object v21

    goto :goto_12

    :cond_12
    move-object/from16 v21, p25

    :goto_12
    const/high16 v22, 0x80000

    and-int v22, v0, v22

    if-eqz v22, :cond_13

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOnBehalfOf()Ljava/lang/String;

    move-result-object v22

    goto :goto_13

    :cond_13
    move-object/from16 v22, p26

    :goto_13
    const/high16 v23, 0x100000

    and-int v23, v0, v23

    if-eqz v23, :cond_14

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getReceiptEmail()Ljava/lang/String;

    move-result-object v23

    goto :goto_14

    :cond_14
    move-object/from16 v23, p27

    :goto_14
    const/high16 v24, 0x200000

    and-int v24, v0, v24

    if-eqz v24, :cond_15

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getReview()Ljava/lang/String;

    move-result-object v24

    goto :goto_15

    :cond_15
    move-object/from16 v24, p28

    :goto_15
    const/high16 v25, 0x400000

    and-int v25, v0, v25

    if-eqz v25, :cond_16

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getSetupFutureUsage()Ljava/lang/String;

    move-result-object v25

    goto :goto_16

    :cond_16
    move-object/from16 v25, p29

    :goto_16
    const/high16 v26, 0x800000

    and-int v26, v0, v26

    if-eqz v26, :cond_17

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStatementDescriptor()Ljava/lang/String;

    move-result-object v26

    goto :goto_17

    :cond_17
    move-object/from16 v26, p30

    :goto_17
    const/high16 v27, 0x1000000

    and-int v27, v0, v27

    if-eqz v27, :cond_18

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStatus()Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    move-result-object v27

    goto :goto_18

    :cond_18
    move-object/from16 v27, p31

    :goto_18
    const/high16 v28, 0x2000000

    and-int v28, v0, v28

    if-eqz v28, :cond_19

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getTransferGroup()Ljava/lang/String;

    move-result-object v28

    goto :goto_19

    :cond_19
    move-object/from16 v28, p32

    :goto_19
    const/high16 v29, 0x4000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1a

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getAmountDetails()Lcom/stripe/stripeterminal/external/models/AmountDetails;

    move-result-object v29

    goto :goto_1a

    :cond_1a
    move-object/from16 v29, p33

    :goto_1a
    const/high16 v30, 0x8000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1b

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getAmountTip()Ljava/lang/Long;

    move-result-object v30

    goto :goto_1b

    :cond_1b
    move-object/from16 v30, p34

    :goto_1b
    const/high16 v31, 0x10000000

    and-int v31, v0, v31

    if-eqz v31, :cond_1c

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStatementDescriptorSuffix()Ljava/lang/String;

    move-result-object v31

    goto :goto_1c

    :cond_1c
    move-object/from16 v31, p35

    :goto_1c
    const/high16 v32, 0x20000000

    and-int v32, v0, v32

    if-eqz v32, :cond_1d

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodOptions()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    move-result-object v32

    goto :goto_1d

    :cond_1d
    move-object/from16 v32, p36

    :goto_1d
    const/high16 v33, 0x40000000    # 2.0f

    and-int v33, v0, v33

    if-eqz v33, :cond_1e

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStripeAccountId()Ljava/lang/String;

    move-result-object v33

    goto :goto_1e

    :cond_1e
    move-object/from16 v33, p37

    :goto_1e
    const/high16 v34, -0x80000000

    and-int v0, v0, v34

    if-eqz v0, :cond_1f

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v0

    goto :goto_1f

    :cond_1f
    move-object/from16 v0, p38

    :goto_1f
    and-int/lit8 v34, p43, 0x1

    if-eqz v34, :cond_20

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object v34

    goto :goto_20

    :cond_20
    move-object/from16 v34, p39

    :goto_20
    and-int/lit8 v35, p43, 0x2

    if-eqz v35, :cond_21

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getCollectedOffline()Z

    move-result v35

    goto :goto_21

    :cond_21
    move/from16 v35, p40

    :goto_21
    and-int/lit8 v36, p43, 0x4

    if-eqz v36, :cond_22

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v36

    move-object/from16 p42, v36

    goto :goto_22

    :cond_22
    move-object/from16 p42, p41

    :goto_22
    move-object/from16 p17, p2

    move-object/from16 p20, p3

    move-object/from16 p21, p4

    move-object/from16 p39, v0

    move-object/from16 p22, v1

    move-wide/from16 p3, v2

    move-wide/from16 p5, v4

    move-wide/from16 p7, v6

    move-object/from16 p9, v8

    move-wide/from16 p10, v9

    move-wide/from16 p12, v11

    move-object/from16 p14, v13

    move-object/from16 p15, v14

    move-object/from16 p16, v15

    move-wide/from16 p18, v16

    move-object/from16 p23, v18

    move-object/from16 p24, v19

    move/from16 p25, v20

    move-object/from16 p26, v21

    move-object/from16 p27, v22

    move-object/from16 p28, v23

    move-object/from16 p29, v24

    move-object/from16 p30, v25

    move-object/from16 p31, v26

    move-object/from16 p32, v27

    move-object/from16 p33, v28

    move-object/from16 p34, v29

    move-object/from16 p35, v30

    move-object/from16 p36, v31

    move-object/from16 p37, v32

    move-object/from16 p38, v33

    move-object/from16 p40, v34

    move/from16 p41, v35

    move-object/from16 p2, p1

    move-object/from16 p1, p0

    .line 20
    invoke-static/range {p1 .. p42}, Lcom/stripe/stripeterminal/internal/common/extensions/PaymentIntentExtensionsKt;->copyWithVars(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    return-object v0
.end method
