.class public final Lcom/stripe/ext/CellPinning$CellType$Companion;
.super Ljava/lang/Object;
.source "CellPinning.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/CellPinning$CellType;
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
        "Lcom/stripe/ext/CellPinning$CellType$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/ext/CellPinning$CellType;",
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

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/ext/CellPinning$CellType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/ext/CellPinning$CellType;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 340
    :pswitch_0
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->CLEARING_CELL:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    .line 339
    :pswitch_1
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->LIMITED_FAILOVER_API_CELL:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    .line 338
    :pswitch_2
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->API_CELL:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    .line 337
    :pswitch_3
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->STRIPE_CORP_CELL:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    .line 336
    :pswitch_4
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->MAINLAND_TOKEN_CELL:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    .line 335
    :pswitch_5
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->KAFKA_CELL_TYPE:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    .line 334
    :pswitch_6
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->COMPACT_MERCHANT_CELL:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    .line 333
    :pswitch_7
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->ONLINE_LZ_CELL:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    .line 332
    :pswitch_8
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->LEGACY_NW_CELL:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    .line 331
    :pswitch_9
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->OFFLINE_LZ_CELL:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    .line 330
    :pswitch_a
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->CLUSTER_LOCAL_CELL:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    .line 329
    :pswitch_b
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->GLOBAL_CELL:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    .line 328
    :pswitch_c
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->MERCHANT_CELL:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    .line 327
    :pswitch_d
    sget-object p1, Lcom/stripe/ext/CellPinning$CellType;->CELL_TYPE_INVALID:Lcom/stripe/ext/CellPinning$CellType;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
