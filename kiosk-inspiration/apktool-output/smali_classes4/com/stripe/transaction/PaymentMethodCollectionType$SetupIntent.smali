.class public final Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;
.super Ljava/lang/Object;
.source "PaymentMethodCollectionType.kt"

# interfaces
.implements Lcom/stripe/transaction/PaymentMethodCollectionType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/transaction/PaymentMethodCollectionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetupIntent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B]\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010\u0012J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0005H\u00c6\u0003J\t\u0010(\u001a\u00020\u0005H\u00c6\u0003J\t\u0010)\u001a\u00020\u0005H\u00c6\u0003J\t\u0010*\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\t\u0010-\u001a\u00020\u000eH\u00c6\u0003J\t\u0010.\u001a\u00020\u0005H\u00c6\u0003Ju\u0010/\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00052\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00c6\u0001J\u0013\u00100\u001a\u00020\u00052\u0008\u00101\u001a\u0004\u0018\u000102H\u00d6\u0003J\t\u00103\u001a\u000204H\u00d6\u0001J\t\u00105\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0006\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001aR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u00066"
    }
    d2 = {
        "Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;",
        "Lcom/stripe/transaction/PaymentMethodCollectionType;",
        "intentId",
        "",
        "manualEntry",
        "",
        "enableCustomerCancellation",
        "isOffline",
        "isDeferredAuthorizationCountry",
        "offlineDetails",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
        "offlineBehavior",
        "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "restSetupIntent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "forcePinEntryEnabled",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "(Ljava/lang/String;ZZZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/proto/model/rest/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)V",
        "getAllowRedisplay",
        "()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "getEnableCustomerCancellation",
        "()Z",
        "getForcePinEntryEnabled",
        "getIntentId",
        "()Ljava/lang/String;",
        "getManualEntry",
        "getOfflineBehavior",
        "()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "getOfflineDetails",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
        "getRestSetupIntent",
        "()Lcom/stripe/proto/model/rest/SetupIntent;",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

.field private final amount:Lcom/stripe/currency/Amount;

.field private final enableCustomerCancellation:Z

.field private final forcePinEntryEnabled:Z

.field private final intentId:Ljava/lang/String;

.field private final isDeferredAuthorizationCountry:Z

.field private final isOffline:Z

.field private final manualEntry:Z

.field private final offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

.field private final offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

.field private final restSetupIntent:Lcom/stripe/proto/model/rest/SetupIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/proto/model/rest/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)V
    .locals 1

    const-string v0, "restSetupIntent"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->intentId:Ljava/lang/String;

    .line 69
    iput-boolean p2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->manualEntry:Z

    .line 70
    iput-boolean p3, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->enableCustomerCancellation:Z

    .line 71
    iput-boolean p4, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isOffline:Z

    .line 72
    iput-boolean p5, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isDeferredAuthorizationCountry:Z

    .line 73
    iput-object p6, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    .line 74
    iput-object p7, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    .line 75
    iput-object p8, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->restSetupIntent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 76
    iput-boolean p9, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->forcePinEntryEnabled:Z

    .line 77
    iput-object p10, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    .line 79
    new-instance p1, Lcom/stripe/currency/Amount;

    const-wide/16 p2, 0x0

    sget-object p4, Lcom/stripe/currency/CurrencyCode;->USD:Lcom/stripe/currency/CurrencyCode;

    invoke-direct {p1, p2, p3, p4}, Lcom/stripe/currency/Amount;-><init>(JLcom/stripe/currency/CurrencyCode;)V

    iput-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->amount:Lcom/stripe/currency/Amount;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;Ljava/lang/String;ZZZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/proto/model/rest/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;ILjava/lang/Object;)Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    iget-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->intentId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    iget-boolean p2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->manualEntry:Z

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    iget-boolean p3, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->enableCustomerCancellation:Z

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    iget-boolean p4, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isOffline:Z

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    iget-boolean p5, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isDeferredAuthorizationCountry:Z

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    iget-object p6, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    iget-object p7, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    iget-object p8, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->restSetupIntent:Lcom/stripe/proto/model/rest/SetupIntent;

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    iget-boolean p9, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->forcePinEntryEnabled:Z

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    iget-object p10, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    :cond_9
    move p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p12}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->copy(Ljava/lang/String;ZZZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/proto/model/rest/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->intentId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->manualEntry:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->enableCustomerCancellation:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isOffline:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isDeferredAuthorizationCountry:Z

    return v0
.end method

.method public final component6()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    return-object v0
.end method

.method public final component7()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-object v0
.end method

.method public final component8()Lcom/stripe/proto/model/rest/SetupIntent;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->restSetupIntent:Lcom/stripe/proto/model/rest/SetupIntent;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->forcePinEntryEnabled:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;ZZZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/proto/model/rest/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;
    .locals 12

    const-string v0, "restSetupIntent"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;-><init>(Ljava/lang/String;ZZZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/proto/model/rest/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->intentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->intentId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->manualEntry:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->manualEntry:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->enableCustomerCancellation:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->enableCustomerCancellation:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isOffline:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isOffline:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isDeferredAuthorizationCountry:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isDeferredAuthorizationCountry:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->restSetupIntent:Lcom/stripe/proto/model/rest/SetupIntent;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->restSetupIntent:Lcom/stripe/proto/model/rest/SetupIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->forcePinEntryEnabled:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->forcePinEntryEnabled:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    iget-object p1, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    return-object v0
.end method

.method public getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public getEnableCustomerCancellation()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getForcePinEntryEnabled()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->forcePinEntryEnabled:Z

    return v0
.end method

.method public final getIntentId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->intentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getManualEntry()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->manualEntry:Z

    return v0
.end method

.method public final getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-object v0
.end method

.method public final getOfflineDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    return-object v0
.end method

.method public final getRestSetupIntent()Lcom/stripe/proto/model/rest/SetupIntent;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->restSetupIntent:Lcom/stripe/proto/model/rest/SetupIntent;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->intentId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->manualEntry:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->enableCustomerCancellation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isOffline:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isDeferredAuthorizationCountry:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->restSetupIntent:Lcom/stripe/proto/model/rest/SetupIntent;

    invoke-virtual {v2}, Lcom/stripe/proto/model/rest/SetupIntent;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->forcePinEntryEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/AllowRedisplay;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final isDeferredAuthorizationCountry()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isDeferredAuthorizationCountry:Z

    return v0
.end method

.method public final isOffline()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isOffline:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetupIntent(intentId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->intentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manualEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->manualEntry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableCustomerCancellation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->enableCustomerCancellation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOffline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isOffline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDeferredAuthorizationCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isDeferredAuthorizationCountry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offlineDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offlineBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restSetupIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->restSetupIntent:Lcom/stripe/proto/model/rest/SetupIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forcePinEntryEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->forcePinEntryEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowRedisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
