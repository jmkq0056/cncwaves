.class public final Lcom/stripe/stripeterminal/internal/common/Adapter$Companion;
.super Ljava/lang/Object;
.source "Adapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/Adapter$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/Adapter$Companion;",
        "",
        "()V",
        "getPaymentCollectionCapability",
        "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/Adapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPaymentCollectionCapability(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/transaction/PaymentCollectionDeviceCapability;
    .locals 17

    const-string v0, "reader"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/Adapter$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DeviceType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 457
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v1, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    .line 460
    sget-object v4, Lcom/stripe/hardware/emv/CheckForCardBehavior;->DO_NOT_POLL:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    .line 461
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v5

    const/16 v9, 0x70

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 457
    invoke-direct/range {v1 .. v10}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;-><init>(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 449
    :pswitch_1
    new-instance v2, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    .line 452
    sget-object v5, Lcom/stripe/hardware/emv/CheckForCardBehavior;->DO_NOT_POLL:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    .line 453
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE_OR_INSERT_OR_TAP()Ljava/util/Set;

    move-result-object v6

    const/16 v10, 0x60

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 449
    invoke-direct/range {v2 .. v11}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;-><init>(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 437
    :pswitch_2
    new-instance v3, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    .line 440
    sget-object v6, Lcom/stripe/hardware/emv/CheckForCardBehavior;->DO_NOT_POLL:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    .line 441
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getINSERT_OR_TAP()Ljava/util/Set;

    move-result-object v7

    const/16 v11, 0x40

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 437
    invoke-direct/range {v3 .. v12}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;-><init>(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    .line 427
    :pswitch_3
    new-instance v4, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    .line 430
    sget-object v7, Lcom/stripe/hardware/emv/CheckForCardBehavior;->DO_NOT_POLL:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    .line 431
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE_OR_INSERT()Ljava/util/Set;

    move-result-object v8

    const/16 v12, 0x60

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 427
    invoke-direct/range {v4 .. v13}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;-><init>(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    .line 417
    :pswitch_4
    new-instance v5, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    .line 420
    sget-object v8, Lcom/stripe/hardware/emv/CheckForCardBehavior;->DO_NOT_POLL:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    .line 421
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getINSERT_OR_TAP()Ljava/util/Set;

    move-result-object v9

    const/16 v13, 0x20

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 417
    invoke-direct/range {v5 .. v14}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;-><init>(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .line 408
    :pswitch_5
    new-instance v6, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    .line 411
    sget-object v9, Lcom/stripe/hardware/emv/CheckForCardBehavior;->DO_NOT_POLL:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    .line 412
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE_OR_INSERT_OR_TAP()Ljava/util/Set;

    move-result-object v10

    const/16 v14, 0x60

    const/4 v15, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 408
    invoke-direct/range {v6 .. v15}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;-><init>(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    .line 400
    :pswitch_6
    new-instance v7, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    .line 403
    sget-object v10, Lcom/stripe/hardware/emv/CheckForCardBehavior;->POLL_FOR_CARD_REMOVAL:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    .line 404
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY()Ljava/util/Set;

    move-result-object v11

    const/16 v15, 0x60

    const/16 v16, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 400
    invoke-direct/range {v7 .. v16}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;-><init>(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
