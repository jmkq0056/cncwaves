.class public final Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;
.super Ljava/lang/Object;
.source "SdkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSdkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SdkRequest.kt\ncom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,254:1\n1#2:255\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0004J\u0016\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u000cJ\u0006\u0010\u001b\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\u001d\u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020#J\u000e\u0010$\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020%J\u0006\u0010&\u001a\u00020\u0004J\u000e\u0010\'\u001a\u00020\u00042\u0006\u0010 \u001a\u00020(J\u0006\u0010)\u001a\u00020\u0004J\u0006\u0010*\u001a\u00020\u0004J\u0006\u0010+\u001a\u00020\u0004J\u0006\u0010,\u001a\u00020\u0004J\u0006\u0010-\u001a\u00020\u0004J\u000e\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u00020\u0004J\u0006\u00102\u001a\u00020\u0004J\u000e\u00103\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u00104\u001a\u00020\u0004J\u0006\u00105\u001a\u00020\u0004J\u000e\u00106\u001a\u00020\u00042\u0006\u00107\u001a\u000208J\u0006\u00109\u001a\u00020\u0004\u00a8\u0006:"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;",
        "",
        "()V",
        "activateReader",
        "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "cancelPaymentIntent",
        "intent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "cancelSetupIntent",
        "setupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "clearCachedCredentials",
        "clearReaderDisplay",
        "collectData",
        "type",
        "Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;",
        "collectInputs",
        "collectPaymentMethod",
        "update",
        "",
        "collectRefundPaymentMethod",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "collectSetupIntentPaymentMethod",
        "completeNextActions",
        "confirmPaymentIntent",
        "confirmRefund",
        "confirmSetupIntent",
        "connectReader",
        "config",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "createPaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "createSetupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "disconnectReader",
        "discoverReaders",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "generateRegistrationCode",
        "getReaderSettings",
        "handleNextActions",
        "initialize",
        "installUpdate",
        "listLocations",
        "parameters",
        "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;",
        "readReusableCard",
        "rebootReader",
        "reconnectReader",
        "retrievePaymentIntent",
        "retrieveSetupIntent",
        "setReaderDisplay",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "setReaderSettings",
        "common_publish"
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
.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic activateReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "reader"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0xffc

    const/4 v15, 0x0

    const-string v2, "activateReader"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "intent"

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0xffa

    const/4 v15, 0x0

    const-string v2, "cancelPaymentIntent"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "setupIntent"

    move-object/from16 v7, p1

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0xf5e

    const/4 v15, 0x0

    const-string v2, "cancelSetupIntent"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic clearCachedCredentials()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 86
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "clearCachedCredentials"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic clearReaderDisplay()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 81
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "clearReaderDisplay"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final collectData(Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "type"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 247
    const-string v0, "magstripe"

    .line 249
    const-string v1, "passthrough_type"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    .line 250
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0x7fe

    const/4 v15, 0x0

    const-string v2, "collectData"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 247
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final synthetic collectInputs()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 219
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "collectInputs"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic collectPaymentMethod(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Z)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "intent"

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    .line 95
    const-string v0, "update_pi"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    const/16 v14, 0x7fa

    const/4 v15, 0x0

    .line 91
    const-string v2, "collectPaymentMethod"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic collectRefundPaymentMethod(Lcom/stripe/stripeterminal/external/models/RefundParameters;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "params"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0xefe

    const/4 v15, 0x0

    const-string v2, "collectRefundPaymentMethod"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic collectSetupIntentPaymentMethod(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "intent"

    move-object/from16 v7, p1

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0xfde

    const/4 v15, 0x0

    const-string v2, "collectSetupIntentPaymentMethod"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic completeNextActions()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 229
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "completeNextActions"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "intent"

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0xffa

    const/4 v15, 0x0

    const-string v2, "confirmPaymentIntent"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic confirmRefund()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 194
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "confirmRefund"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "setupIntent"

    move-object/from16 v7, p1

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0xfde

    const/4 v15, 0x0

    const-string v2, "confirmSetupIntent"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 17

    move-object/from16 v0, p2

    const-string v1, "reader"

    move-object/from16 v4, p1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "config"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    instance-of v1, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;

    if-eqz v1, :cond_0

    const-string v0, "bluetooth"

    goto :goto_0

    .line 129
    :cond_0
    instance-of v1, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;

    if-eqz v1, :cond_1

    const-string v0, "ip"

    goto :goto_0

    .line 130
    :cond_1
    instance-of v0, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;

    if-eqz v0, :cond_2

    const-string v0, "usb"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 133
    const-string v1, "connection_type"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_4
    move-object v14, v0

    .line 135
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v15, 0x7fc

    const/16 v16, 0x0

    const-string v3, "connectReader"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v16}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public final synthetic createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "params"

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0xff6

    const/4 v15, 0x0

    const-string v2, "createPaymentIntent"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "params"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0xfbe

    const/4 v15, 0x0

    const-string v2, "createSetupIntent"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic disconnectReader()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 174
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "disconnectReader"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "config"

    move-object/from16 v6, p1

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0xfee

    const/4 v15, 0x0

    const-string v2, "discoverReaders"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic generateRegistrationCode()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 179
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "generateRegistrationCode"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getReaderSettings()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 242
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "getReaderSettings"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic handleNextActions()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 224
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "handleNextActions"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic initialize()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 234
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "initTerminal"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic installUpdate()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 184
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "installUpdate"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic listLocations(Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "parameters"

    move-object/from16 v11, p1

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0xdfe

    const/4 v15, 0x0

    const-string v2, "listLocations"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic readReusableCard()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 199
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "readReusableCard"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic rebootReader()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 169
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "rebootReader"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic reconnectReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "reader"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0xffc

    const/4 v15, 0x0

    const-string v2, "reconnectReader"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic retrievePaymentIntent()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 204
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "retrievePaymentIntent"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic retrieveSetupIntent()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 102
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "retrieveSetupIntent"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 16

    const-string v0, "cart"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v14, 0xbfe

    const/4 v15, 0x0

    const-string v2, "setReaderDisplay"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final setReaderSettings()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 15

    .line 238
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    const/16 v13, 0xffe

    const/4 v14, 0x0

    const-string v1, "setReaderSettings"

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

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
