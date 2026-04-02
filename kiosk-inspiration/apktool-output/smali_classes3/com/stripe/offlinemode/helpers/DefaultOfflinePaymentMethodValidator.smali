.class public final Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;
.super Ljava/lang/Object;
.source "DefaultOfflinePaymentMethodValidator.kt"

# interfaces
.implements Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001BS\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\"\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u0007j\u0002`\u000c\u0012\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001aH\u0002J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J8\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001f0!2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u0018H\u0016R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u0007j\u0002`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;",
        "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "offlineDiscreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "emitHealthMetrics",
        "",
        "error",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "isCardExpired",
        "",
        "tlvMap",
        "Lcom/stripe/hardware/emv/TlvMap;",
        "isOnlinePINCvm",
        "emvTlvMap",
        "isPinCheckFailedTvrBitSet",
        "tvrHex",
        "",
        "validatePaymentMethod",
        "Lkotlin/Pair;",
        "paymentMethod",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "livemode",
        "intentCollectedOffline",
        "isSetupIntent",
        "offlinemode_release"
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
.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

.field private final offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "statusManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineDiscreteLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 23
    iput-object p2, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 24
    iput-object p3, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 25
    iput-object p4, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method private final isCardExpired(Lcom/stripe/hardware/emv/TlvMap;)Z
    .locals 10

    .line 198
    const-string v0, "5F24"

    invoke-virtual {p1, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "9A"

    invoke-virtual {p1, v1}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    .line 212
    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-ge v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    .line 202
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to determine whether card expired due to missing date tags. Expiration date: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    const-string v3, ". Transaction date: "

    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Lkotlin/Pair;

    .line 202
    invoke-interface {v2, p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 207
    iget-object v3, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator$isCardExpired$1$1;->INSTANCE:Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator$isCardExpired$1$1;

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return v1
.end method

.method private final isOnlinePINCvm(Lcom/stripe/hardware/emv/TlvMap;)Z
    .locals 2

    .line 186
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TlvMap;->getCardholderVerificationMethod()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 187
    sget-object v1, Lcom/stripe/hardware/emv/CvmType;->Companion:Lcom/stripe/hardware/emv/CvmType$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/hardware/emv/CvmType$Companion;->fromStatus(Ljava/lang/String;)Lcom/stripe/hardware/emv/CvmType;

    move-result-object p1

    sget-object v1, Lcom/stripe/hardware/emv/CvmType;->ONLINE_ENCIPHERED_PIN:Lcom/stripe/hardware/emv/CvmType;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private final isPinCheckFailedTvrBitSet(Ljava/lang/String;)Z
    .locals 1

    .line 193
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p1}, Lokio/ByteString$Companion;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x2

    aget-byte p1, p1, v0

    const/16 v0, 0x90

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public emitHealthMetrics(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 9

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    sget-object v1, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 173
    :pswitch_0
    const-string v1, "mobile_wallet_on_setup_intent"

    goto :goto_0

    .line 171
    :pswitch_1
    const-string v1, "started_online_and_is_now_offline"

    goto :goto_0

    .line 170
    :pswitch_2
    const-string v1, "tvr_mask_failed"

    goto :goto_0

    .line 163
    :pswitch_3
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    .line 164
    const-string v0, "Failed to retrieve verification results from EMV data."

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "tvr_is_missing"

    goto :goto_0

    .line 165
    :cond_0
    const-string v0, "Failed to retrieve application ID from card EMV data."

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v1, "missing_aid"

    goto :goto_0

    .line 161
    :pswitch_4
    const-string v1, "test_card_in_livemode"

    goto :goto_0

    .line 160
    :pswitch_5
    const-string v1, "card_is_expired"

    goto :goto_0

    .line 159
    :pswitch_6
    const-string v1, "online_pin_not_supported"

    goto :goto_0

    .line 158
    :pswitch_7
    const-string v1, "swipe_not_available"

    goto :goto_0

    .line 157
    :pswitch_8
    const-string v1, "interac_not_supported"

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 179
    iget-object v2, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 180
    const-string p1, "DeclineReason"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 179
    sget-object p1, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator$emitHealthMetrics$1;->INSTANCE:Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator$emitHealthMetrics$1;

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validatePaymentMethod(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;ZZZ)Lkotlin/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "ZZZ)",
            "Lkotlin/Pair<",
            "Lcom/stripe/hardware/emv/TlvMap;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_13

    .line 41
    iget-object v0, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->type:Ljava/lang/String;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->INTERAC_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 49
    iget-object p1, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz p1, :cond_11

    .line 55
    sget-object v0, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;->Companion:Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;

    invoke-virtual {v0}, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;->getMAGSTRIPE_READ_METHODS()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 62
    iget-object v0, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 70
    iget-object v0, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->emv_data:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 75
    sget-object v1, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    invoke-virtual {v1, v0}, Lcom/stripe/hardware/emv/TlvMap$Companion;->toTlvMap(Ljava/lang/String;)Lcom/stripe/hardware/emv/TlvMap;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 81
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TlvMap;->getSize()I

    move-result v1

    if-eqz v1, :cond_c

    .line 88
    invoke-direct {p0, v0}, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->isOnlinePINCvm(Lcom/stripe/hardware/emv/TlvMap;)Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz p2, :cond_1

    .line 95
    invoke-direct {p0, v0}, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->isCardExpired(Lcom/stripe/hardware/emv/TlvMap;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 97
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_AND_CARD_EXPIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 96
    const-string v4, "Card expired."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 102
    :cond_1
    :goto_0
    const-string v1, "95"

    invoke-virtual {v0, v1}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 108
    invoke-direct {p0, v1}, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->isPinCheckFailedTvrBitSet(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 115
    iget-object v2, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v2, v1}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->shouldAllowOfflineTransaction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p2, :cond_3

    .line 123
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    sget-object v2, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACT_EMV:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 125
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TlvMap;->getFirst6()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TlvMap;->getLast4()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TlvMap;->getCardholderName()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-interface {v1, v2, v3, v4}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isCardDenylistedForOffline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 130
    :cond_2
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 131
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TEST_CARD_IN_LIVEMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 130
    const-string v4, "Your card was declined. Your request was in live mode, but used a known test card."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    :cond_3
    :goto_1
    if-eqz p4, :cond_5

    .line 136
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TlvMap;->isMobileWallet()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v1}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isMobileWalletOnSetupIntentsEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 137
    :cond_4
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 138
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MOBILE_WALLET_NOT_SUPPORTED_ON_SETUP_INTENTS:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 137
    const-string v4, "Mobile wallets cannot be used to confirm SetupIntents."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 145
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/stripe/offlinemode/helpers/DefaultOfflinePaymentMethodValidator;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v1}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isDeferredAuthorizationCountry()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p3, :cond_6

    goto :goto_3

    .line 146
    :cond_6
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 147
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_COLLECT_AND_CONFIRM_MISMATCH:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 146
    const-string v4, "Payment was collected online and cannot be confirmed offline. Please retry the payment."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 152
    :cond_7
    :goto_3
    new-instance v1, Lkotlin/Pair;

    iget-object p1, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->read_method:Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 116
    :cond_8
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 117
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_TRANSACTION_DECLINED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 116
    const-string v4, "Card verification failed."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 109
    :cond_9
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 110
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ONLINE_PIN_NOT_SUPPORTED_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 109
    const-string v5, "Payments collected with an online PIN cannot be processed offline."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 103
    :cond_a
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 104
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 103
    const-string v6, "Failed to retrieve verification results from EMV data."

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4

    .line 89
    :cond_b
    new-instance v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 90
    sget-object v6, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ONLINE_PIN_NOT_SUPPORTED_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v10, 0xc

    const/4 v11, 0x0

    .line 89
    const-string v7, "Payments collected with an online PIN cannot be processed offline."

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v5

    .line 82
    :cond_c
    new-instance v6, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 83
    sget-object v7, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MISSING_EMV_DATA:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v11, 0xc

    const/4 v12, 0x0

    .line 82
    const-string v8, "Failed to read EMV data from presented payment method."

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v6

    .line 76
    :cond_d
    new-instance v7, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 77
    sget-object v8, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v12, 0xc

    const/4 v13, 0x0

    .line 76
    const-string v9, "Failed to parse EMV data."

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v7

    .line 70
    :cond_e
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 71
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 70
    const-string v2, "Emv Data must not be null."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 63
    :cond_f
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 64
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 63
    const-string v3, "Connected reader must not be null."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 56
    :cond_10
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 57
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_SWIPE_NOT_AVAILABLE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 56
    const-string v4, "Payments collected by swipe cannot be processed offline."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 49
    :cond_11
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 50
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 49
    const-string v5, "Card present data must not be null."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 42
    :cond_12
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 43
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INTERAC_NOT_SUPPORTED_OFFLINE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 42
    const-string v6, "Interac payments are not supported offline."

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4

    .line 34
    :cond_13
    new-instance v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 35
    sget-object v6, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v10, 0xc

    const/4 v11, 0x0

    .line 34
    const-string v7, "Payment method data must not be null."

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v5
.end method
