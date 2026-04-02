.class public final Lcom/stripe/proto/model/common/ResourceIdPb$Region$Companion;
.super Ljava/lang/Object;
.source "ResourceIdPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/ResourceIdPb$Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/ResourceIdPb$Region$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/common/ResourceIdPb$Region;",
        "fromValue",
        "value",
        "",
        "common_release"
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

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/proto/model/common/ResourceIdPb$Region$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/proto/model/common/ResourceIdPb$Region;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 432
    :pswitch_0
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->UNDEFINED_REGION:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 453
    :pswitch_1
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->US_WEST_2:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 452
    :pswitch_2
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->US_WEST_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 451
    :pswitch_3
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->US_GOV_WEST_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 450
    :pswitch_4
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->US_GOV_EAST_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 449
    :pswitch_5
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->US_EAST_2:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 448
    :pswitch_6
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->US_EAST_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 447
    :pswitch_7
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->SA_EAST_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 446
    :pswitch_8
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->EU_WEST_3:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 445
    :pswitch_9
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->EU_WEST_2:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 444
    :pswitch_a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->EU_WEST_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 443
    :pswitch_b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->EU_NORTH_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 442
    :pswitch_c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->EU_CENTRAL_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 441
    :pswitch_d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->CN_NORTH_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 440
    :pswitch_e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->CN_NORTHWEST_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 439
    :pswitch_f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->CA_CENTRAL_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 438
    :pswitch_10
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->AP_SOUTH_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 437
    :pswitch_11
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->AP_SOUTHEAST_2:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 436
    :pswitch_12
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->AP_SOUTHEAST_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 435
    :pswitch_13
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->AP_NORTHEAST_2:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 434
    :pswitch_14
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->AP_NORTHEAST_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 433
    :pswitch_15
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->AP_EAST_1:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    .line 431
    :pswitch_16
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->REGION_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
