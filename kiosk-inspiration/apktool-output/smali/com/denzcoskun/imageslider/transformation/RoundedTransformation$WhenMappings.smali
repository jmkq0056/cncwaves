.class public final synthetic Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->values()[Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ALL:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->TOP_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->TOP_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->BOTTOM_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->BOTTOM_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->TOP:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->BOTTOM:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->OTHER_TOP_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->OTHER_TOP_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->OTHER_BOTTOM_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->OTHER_BOTTOM_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->DIAGONAL_FROM_TOP_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->DIAGONAL_FROM_TOP_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    return-void
.end method
