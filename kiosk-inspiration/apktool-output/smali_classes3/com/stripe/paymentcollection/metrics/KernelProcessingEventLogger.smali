.class public final Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;
.super Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;
.source "KernelProcessingEventLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$Companion;,
        Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u001e2\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u0006:\u0001\u001eB1\u0012\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0008j\u0002`\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u001a\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0018H\u0002J\u0018\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0018\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00182\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\"\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002J\u0008\u0010\u001d\u001a\u00020\u0010H\u0002R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;",
        "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
        "Lcom/stripe/paymentcollection/metrics/PaymentCollectionStageEventLogger;",
        "logger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/paymentcollection/metrics/StageLogger;",
        "endToEndEventLogger",
        "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
        "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V",
        "curStatus",
        "Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;",
        "closeLog",
        "",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "eventName",
        "",
        "getKernelStatus",
        "event",
        "Lcom/stripe/paymentcollection/HardwareEvent;",
        "Lcom/stripe/paymentcollection/HardwareListenerEvent;",
        "onHardwareEvent",
        "onHardwareListenerEvent",
        "onKernelStatusUpdate",
        "newStatus",
        "openLog",
        "Companion",
        "impl_release"
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
.field public static final Companion:Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$Companion;

.field private static final KERNEL_PROCESSING_RESULT:Ljava/lang/String; = "KernelProcessingResult"


# instance fields
.field private curStatus:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->Companion:Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
            ">;",
            "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
            ")V"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endToEndEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string v0, "KernelProcessing"

    .line 52
    sget-object v1, Lcom/stripe/paymentcollection/metrics/LatencyCategory;->KERNEL_PROCESSING:Lcom/stripe/paymentcollection/metrics/LatencyCategory;

    .line 48
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/lang/String;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V

    .line 54
    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->IDLE:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->curStatus:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-void
.end method

.method private final closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionData;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->closeLogHelper(Lcom/stripe/paymentcollection/PaymentCollectionData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final getKernelStatus(Lcom/stripe/paymentcollection/HardwareEvent;)Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;
    .locals 2

    .line 150
    instance-of v0, p1, Lcom/stripe/paymentcollection/ConfigureReaderEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 151
    :cond_0
    instance-of v0, p1, Lcom/stripe/paymentcollection/AuthorizePaymentEvent;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 152
    :cond_1
    instance-of v0, p1, Lcom/stripe/paymentcollection/SelectAccountTypeEvent;

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    .line 153
    :cond_2
    instance-of v0, p1, Lcom/stripe/paymentcollection/SelectApplicationEvent;

    :goto_2
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    .line 154
    :cond_3
    instance-of v0, p1, Lcom/stripe/paymentcollection/SelectLanguageEvent;

    :goto_3
    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    .line 155
    :cond_4
    sget-object v0, Lcom/stripe/paymentcollection/StartPinEntryEvent;->INSTANCE:Lcom/stripe/paymentcollection/StartPinEntryEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    .line 156
    :cond_5
    instance-of v0, p1, Lcom/stripe/paymentcollection/StopReaderEvent;

    :goto_5
    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    .line 157
    :cond_6
    sget-object v0, Lcom/stripe/paymentcollection/RequestPinEntryEvent;->INSTANCE:Lcom/stripe/paymentcollection/RequestPinEntryEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    .line 158
    :cond_7
    instance-of v0, p1, Lcom/stripe/paymentcollection/SendFinalConfirmEvent;

    :goto_7
    if-eqz v0, :cond_8

    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->BUSY:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-object p1

    .line 159
    :cond_8
    instance-of v0, p1, Lcom/stripe/paymentcollection/StartPollingForCardStatusEvent;

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_8

    .line 160
    :cond_9
    instance-of v0, p1, Lcom/stripe/paymentcollection/HardwareTippingCollectionEvent;

    :goto_8
    if-eqz v0, :cond_a

    goto :goto_9

    .line 161
    :cond_a
    sget-object v0, Lcom/stripe/paymentcollection/CancelHardwareTippingCollectionEvent;->INSTANCE:Lcom/stripe/paymentcollection/CancelHardwareTippingCollectionEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_9
    if-eqz v1, :cond_b

    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-object p1

    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final getKernelStatus(Lcom/stripe/paymentcollection/HardwareListenerEvent;)Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;
    .locals 2

    .line 165
    sget-object v0, Lcom/stripe/paymentcollection/EmptyCandidateListEncounteredEvent;->INSTANCE:Lcom/stripe/paymentcollection/EmptyCandidateListEncounteredEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 166
    :cond_0
    sget-object v0, Lcom/stripe/paymentcollection/ChipCardInitializationFailed;->INSTANCE:Lcom/stripe/paymentcollection/ChipCardInitializationFailed;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->BUSY:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-object p1

    .line 167
    :cond_1
    instance-of v0, p1, Lcom/stripe/paymentcollection/ContactCardUpdateEvent;

    if-eqz v0, :cond_4

    .line 168
    check-cast p1, Lcom/stripe/paymentcollection/ContactCardUpdateEvent;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/ContactCardUpdateEvent;->getUpdatedCardState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object p1

    sget-object v0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 173
    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-object p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 170
    :cond_3
    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->IDLE:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-object p1

    .line 177
    :cond_4
    instance-of v0, p1, Lcom/stripe/paymentcollection/PinEntryStatusChangeEvent;

    if-eqz v0, :cond_5

    .line 178
    check-cast p1, Lcom/stripe/paymentcollection/PinEntryStatusChangeEvent;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PinEntryStatusChangeEvent;->getStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object p1

    sget-object v0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 191
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->BUSY:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-object p1

    .line 180
    :pswitch_1
    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->IDLE:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-object p1

    .line 179
    :pswitch_2
    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-object p1

    .line 195
    :cond_5
    instance-of v0, p1, Lcom/stripe/paymentcollection/TransactionCompletedEvent;

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_1

    .line 196
    :cond_6
    sget-object v0, Lcom/stripe/paymentcollection/WaitForCardPresentEvent;->INSTANCE:Lcom/stripe/paymentcollection/WaitForCardPresentEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_2

    .line 197
    :cond_7
    sget-object v0, Lcom/stripe/paymentcollection/RequestSelectAccountEvent;->INSTANCE:Lcom/stripe/paymentcollection/RequestSelectAccountEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_3

    .line 198
    :cond_8
    sget-object v0, Lcom/stripe/paymentcollection/ShowThankYouEvent;->INSTANCE:Lcom/stripe/paymentcollection/ShowThankYouEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_4

    .line 199
    :cond_9
    sget-object v0, Lcom/stripe/paymentcollection/BatteryCriticallyLowEvent;->INSTANCE:Lcom/stripe/paymentcollection/BatteryCriticallyLowEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_5

    .line 200
    :cond_a
    sget-object v0, Lcom/stripe/paymentcollection/DeviceMissingEncryptionKeyEvent;->INSTANCE:Lcom/stripe/paymentcollection/DeviceMissingEncryptionKeyEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_6

    .line 201
    :cond_b
    instance-of v0, p1, Lcom/stripe/paymentcollection/SetPinEntryAsteriskCountEvent;

    :goto_6
    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_7

    .line 202
    :cond_c
    instance-of v0, p1, Lcom/stripe/paymentcollection/OnAccessiblePinPadEvent;

    :goto_7
    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_8

    .line 203
    :cond_d
    instance-of v0, p1, Lcom/stripe/paymentcollection/RequestSelectApplicationEvent;

    :goto_8
    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_9

    .line 204
    :cond_e
    instance-of v0, p1, Lcom/stripe/paymentcollection/ReaderFinalConfirmationTlvCollectedEvent;

    :goto_9
    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_a

    .line 205
    :cond_f
    instance-of v0, p1, Lcom/stripe/paymentcollection/ReaderTypeChangedEvent;

    :goto_a
    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_b

    .line 206
    :cond_10
    instance-of v0, p1, Lcom/stripe/paymentcollection/MagStripeReadEvent;

    :goto_b
    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_c

    .line 207
    :cond_11
    instance-of v0, p1, Lcom/stripe/paymentcollection/RequestOnlineAuthorisationEvent;

    :goto_c
    if-eqz v0, :cond_12

    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->IDLE:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-object p1

    .line 208
    :cond_12
    sget-object v0, Lcom/stripe/paymentcollection/ResetPaymentInterfacesEvent;->INSTANCE:Lcom/stripe/paymentcollection/ResetPaymentInterfacesEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-object p1

    .line 209
    :cond_13
    sget-object v0, Lcom/stripe/paymentcollection/ReadingCardEvent;->INSTANCE:Lcom/stripe/paymentcollection/ReadingCardEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->BUSY:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-object p1

    .line 210
    :cond_14
    instance-of v0, p1, Lcom/stripe/paymentcollection/HardwareTippingCollectionResultEvent;

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_d

    .line 211
    :cond_15
    sget-object v0, Lcom/stripe/paymentcollection/HardwareTransactionCancelledEvent;->INSTANCE:Lcom/stripe/paymentcollection/HardwareTransactionCancelledEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_d
    if-eqz v0, :cond_16

    goto :goto_e

    .line 212
    :cond_16
    instance-of v1, p1, Lcom/stripe/paymentcollection/SetPinPadResultEvent;

    :goto_e
    if-eqz v1, :cond_17

    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->IDLE:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-object p1

    .line 213
    :cond_17
    instance-of p1, p1, Lcom/stripe/paymentcollection/IntermediateErrorEvent;

    if-eqz p1, :cond_18

    sget-object p1, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->IDLE:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    return-object p1

    :cond_18
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final onKernelStatusUpdate(Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;Ljava/lang/String;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 3

    .line 91
    sget-object v0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->Companion:Lcom/stripe/paymentcollection/metrics/StageEventLogHelper$Companion;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper$Companion;->getLOGGER()Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KernelProcessing newStatus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 93
    sget-object v0, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->curStatus:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->curStatus:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    .line 97
    sget-object v0, Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;->BUSY:Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    if-ne p1, v0, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->openLog()V

    return-void

    .line 102
    :cond_1
    invoke-direct {p0, p3, p2}, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final openLog()V
    .locals 4

    .line 107
    move-object v0, p0

    check-cast v0, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$openLog$1;->INSTANCE:Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$openLog$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;->openLogHelper$default(Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onHardwareEvent(Lcom/stripe/paymentcollection/HardwareEvent;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->getKernelStatus(Lcom/stripe/paymentcollection/HardwareEvent;)Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getSimpleName(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->onKernelStatusUpdate(Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;Ljava/lang/String;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method

.method public final onHardwareListenerEvent(Lcom/stripe/paymentcollection/HardwareListenerEvent;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->getKernelStatus(Lcom/stripe/paymentcollection/HardwareListenerEvent;)Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getSimpleName(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->onKernelStatusUpdate(Lcom/stripe/paymentcollection/metrics/KernelProcessingStatus;Ljava/lang/String;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method
