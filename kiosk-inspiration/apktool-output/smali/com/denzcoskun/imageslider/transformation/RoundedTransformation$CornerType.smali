.class public final enum Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;
.super Ljava/lang/Enum;
.source "RoundedTransformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CornerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;",
        "",
        "(Ljava/lang/String;I)V",
        "ALL",
        "TOP_LEFT",
        "TOP_RIGHT",
        "BOTTOM_LEFT",
        "BOTTOM_RIGHT",
        "TOP",
        "BOTTOM",
        "LEFT",
        "RIGHT",
        "OTHER_TOP_LEFT",
        "OTHER_TOP_RIGHT",
        "OTHER_BOTTOM_LEFT",
        "OTHER_BOTTOM_RIGHT",
        "DIAGONAL_FROM_TOP_LEFT",
        "DIAGONAL_FROM_TOP_RIGHT",
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
.field private static final synthetic $VALUES:[Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum ALL:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum BOTTOM:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum BOTTOM_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum BOTTOM_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum DIAGONAL_FROM_TOP_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum DIAGONAL_FROM_TOP_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum OTHER_BOTTOM_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum OTHER_BOTTOM_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum OTHER_TOP_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum OTHER_TOP_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum TOP:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum TOP_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field public static final enum TOP_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ALL:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v2, "TOP_LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->TOP_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v2, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v3, "TOP_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->TOP_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v3, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v4, "BOTTOM_LEFT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->BOTTOM_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v4, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v5, "BOTTOM_RIGHT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->BOTTOM_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v5, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v6, "TOP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->TOP:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v6, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v7, "BOTTOM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->BOTTOM:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v7, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v8, "LEFT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v8, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v9, "RIGHT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v9, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v10, "OTHER_TOP_LEFT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->OTHER_TOP_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v10, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v11, "OTHER_TOP_RIGHT"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->OTHER_TOP_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v11, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v12, "OTHER_BOTTOM_LEFT"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->OTHER_BOTTOM_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v12, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v13, "OTHER_BOTTOM_RIGHT"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->OTHER_BOTTOM_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v13, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v14, "DIAGONAL_FROM_TOP_LEFT"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->DIAGONAL_FROM_TOP_LEFT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    new-instance v14, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    const-string v15, "DIAGONAL_FROM_TOP_RIGHT"

    move-object/from16 v16, v0

    const/16 v0, 0xe

    invoke-direct {v14, v15, v0}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->DIAGONAL_FROM_TOP_RIGHT:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    move-object/from16 v0, v16

    filled-new-array/range {v0 .. v14}, [Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    move-result-object v0

    sput-object v0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->$VALUES:[Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;
    .locals 1

    const-class v0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    return-object p0
.end method

.method public static values()[Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;
    .locals 1

    sget-object v0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->$VALUES:[Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v0}, [Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    return-object v0
.end method
