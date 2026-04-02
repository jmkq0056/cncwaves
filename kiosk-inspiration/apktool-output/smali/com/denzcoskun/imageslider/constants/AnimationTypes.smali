.class public final enum Lcom/denzcoskun/imageslider/constants/AnimationTypes;
.super Ljava/lang/Enum;
.source "AnimationTypes.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/denzcoskun/imageslider/constants/AnimationTypes;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/denzcoskun/imageslider/constants/AnimationTypes;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "ZOOM_IN",
        "ZOOM_OUT",
        "DEPTH_SLIDE",
        "CUBE_IN",
        "CUBE_OUT",
        "FLIP_HORIZONTAL",
        "FLIP_VERTICAL",
        "FOREGROUND_TO_BACKGROUND",
        "BACKGROUND_TO_FOREGROUND",
        "ROTATE_UP",
        "ROTATE_DOWN",
        "GATE",
        "TOSS",
        "FIDGET_SPINNER",
        "imageslider_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum BACKGROUND_TO_FOREGROUND:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum CUBE_IN:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum CUBE_OUT:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum DEPTH_SLIDE:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum FIDGET_SPINNER:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum FLIP_HORIZONTAL:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum FLIP_VERTICAL:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum FOREGROUND_TO_BACKGROUND:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum GATE:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum ROTATE_DOWN:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum ROTATE_UP:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum TOSS:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum ZOOM_IN:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

.field public static final enum ZOOM_OUT:Lcom/denzcoskun/imageslider/constants/AnimationTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/4 v1, 0x0

    .line 9
    const-string v2, "ZoomIn"

    const-string v3, "ZOOM_IN"

    invoke-direct {v0, v3, v1, v2}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ZOOM_IN:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    new-instance v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/4 v2, 0x1

    .line 10
    const-string v3, "ZoomOut"

    const-string v4, "ZOOM_OUT"

    invoke-direct {v1, v4, v2, v3}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ZOOM_OUT:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    new-instance v2, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/4 v3, 0x2

    .line 11
    const-string v4, "DepthSlide"

    const-string v5, "DEPTH_SLIDE"

    invoke-direct {v2, v5, v3, v4}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->DEPTH_SLIDE:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    new-instance v3, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/4 v4, 0x3

    .line 12
    const-string v5, "CubeIn"

    const-string v6, "CUBE_IN"

    invoke-direct {v3, v6, v4, v5}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->CUBE_IN:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    new-instance v4, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/4 v5, 0x4

    .line 13
    const-string v6, "CubeOut"

    const-string v7, "CUBE_OUT"

    invoke-direct {v4, v7, v5, v6}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->CUBE_OUT:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    new-instance v5, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/4 v6, 0x5

    .line 14
    const-string v7, "FlipHorizontal"

    const-string v8, "FLIP_HORIZONTAL"

    invoke-direct {v5, v8, v6, v7}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->FLIP_HORIZONTAL:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    new-instance v6, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/4 v7, 0x6

    .line 15
    const-string v8, "FlipVertical"

    const-string v9, "FLIP_VERTICAL"

    invoke-direct {v6, v9, v7, v8}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->FLIP_VERTICAL:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    new-instance v7, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/4 v8, 0x7

    .line 16
    const-string v9, "ForegroundToBackground"

    const-string v10, "FOREGROUND_TO_BACKGROUND"

    invoke-direct {v7, v10, v8, v9}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->FOREGROUND_TO_BACKGROUND:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    new-instance v8, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/16 v9, 0x8

    .line 17
    const-string v10, "BackgroundToForeground"

    const-string v11, "BACKGROUND_TO_FOREGROUND"

    invoke-direct {v8, v11, v9, v10}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->BACKGROUND_TO_FOREGROUND:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    new-instance v9, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/16 v10, 0x9

    .line 18
    const-string v11, "RotateUp"

    const-string v12, "ROTATE_UP"

    invoke-direct {v9, v12, v10, v11}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ROTATE_UP:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    new-instance v10, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/16 v11, 0xa

    .line 19
    const-string v12, "Rotate_Down"

    const-string v13, "ROTATE_DOWN"

    invoke-direct {v10, v13, v11, v12}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->ROTATE_DOWN:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    new-instance v11, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/16 v12, 0xb

    .line 20
    const-string v13, "Gate"

    const-string v14, "GATE"

    invoke-direct {v11, v14, v12, v13}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->GATE:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    new-instance v12, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/16 v13, 0xc

    .line 21
    const-string v14, "Toss"

    const-string v15, "TOSS"

    invoke-direct {v12, v15, v13, v14}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->TOSS:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    new-instance v13, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    const/16 v14, 0xd

    .line 22
    const-string v15, "FidgetSpinner"

    move-object/from16 v16, v0

    const-string v0, "FIDGET_SPINNER"

    invoke-direct {v13, v0, v14, v15}, Lcom/denzcoskun/imageslider/constants/AnimationTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->FIDGET_SPINNER:Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    move-object/from16 v0, v16

    filled-new-array/range {v0 .. v13}, [Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    move-result-object v0

    sput-object v0, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->$VALUES:[Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/denzcoskun/imageslider/constants/AnimationTypes;
    .locals 1

    const-class v0, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    return-object p0
.end method

.method public static values()[Lcom/denzcoskun/imageslider/constants/AnimationTypes;
    .locals 1

    sget-object v0, Lcom/denzcoskun/imageslider/constants/AnimationTypes;->$VALUES:[Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    invoke-virtual {v0}, [Lcom/denzcoskun/imageslider/constants/AnimationTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/denzcoskun/imageslider/constants/AnimationTypes;

    return-object v0
.end method
