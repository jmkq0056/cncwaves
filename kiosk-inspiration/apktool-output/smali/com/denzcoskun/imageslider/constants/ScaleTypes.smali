.class public final enum Lcom/denzcoskun/imageslider/constants/ScaleTypes;
.super Ljava/lang/Enum;
.source "ScaleTypes.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/denzcoskun/imageslider/constants/ScaleTypes;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/denzcoskun/imageslider/constants/ScaleTypes;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "FIT",
        "CENTER_CROP",
        "CENTER_INSIDE",
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
.field private static final synthetic $VALUES:[Lcom/denzcoskun/imageslider/constants/ScaleTypes;

.field public static final enum CENTER_CROP:Lcom/denzcoskun/imageslider/constants/ScaleTypes;

.field public static final enum CENTER_INSIDE:Lcom/denzcoskun/imageslider/constants/ScaleTypes;

.field public static final enum FIT:Lcom/denzcoskun/imageslider/constants/ScaleTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    const/4 v1, 0x0

    .line 9
    const-string v2, "fit"

    const-string v3, "FIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/denzcoskun/imageslider/constants/ScaleTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/denzcoskun/imageslider/constants/ScaleTypes;->FIT:Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    new-instance v1, Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    const/4 v2, 0x1

    const-string v3, "centerCrop"

    const-string v4, "CENTER_CROP"

    invoke-direct {v1, v4, v2, v3}, Lcom/denzcoskun/imageslider/constants/ScaleTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/denzcoskun/imageslider/constants/ScaleTypes;->CENTER_CROP:Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    new-instance v2, Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    const/4 v3, 0x2

    const-string v4, "centerInside"

    const-string v5, "CENTER_INSIDE"

    invoke-direct {v2, v5, v3, v4}, Lcom/denzcoskun/imageslider/constants/ScaleTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/denzcoskun/imageslider/constants/ScaleTypes;->CENTER_INSIDE:Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    filled-new-array {v0, v1, v2}, [Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    move-result-object v0

    sput-object v0, Lcom/denzcoskun/imageslider/constants/ScaleTypes;->$VALUES:[Lcom/denzcoskun/imageslider/constants/ScaleTypes;

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

.method public static valueOf(Ljava/lang/String;)Lcom/denzcoskun/imageslider/constants/ScaleTypes;
    .locals 1

    const-class v0, Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    return-object p0
.end method

.method public static values()[Lcom/denzcoskun/imageslider/constants/ScaleTypes;
    .locals 1

    sget-object v0, Lcom/denzcoskun/imageslider/constants/ScaleTypes;->$VALUES:[Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    invoke-virtual {v0}, [Lcom/denzcoskun/imageslider/constants/ScaleTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    return-object v0
.end method
