.class public final synthetic Lcom/denzcoskun/imageslider/ImageSlider$WhenMappings;
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

    invoke-static {}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->values()[Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/denzcoskun/imageslider/ImageSlider$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ZOOM_IN:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ZOOM_OUT:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->DEPTH_SLIDE:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->CUBE_IN:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->CUBE_OUT:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->FLIP_HORIZONTAL:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->FLIP_VERTICAL:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ROTATE_UP:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ROTATE_DOWN:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->FOREGROUND_TO_BACKGROUND:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->BACKGROUND_TO_FOREGROUND:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->TOSS:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->GATE:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    return-void
.end method
