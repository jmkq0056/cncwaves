.class public final Lcom/denzcoskun/imageslider/models/SlideModel;
.super Ljava/lang/Object;
.source "SlideModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0013\u0018\u00002\u00020\u0001B)\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B)\u0008\u0016\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\nB\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u000bB\u001b\u0008\u0016\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u000cR\u001e\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0013\"\u0004\u0008\u001b\u0010\u0015\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/denzcoskun/imageslider/models/SlideModel;",
        "",
        "imageUrl",
        "",
        "title",
        "scaleType",
        "Lcom/denzcoskun/imageslider/constants/ScaleTypes;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/denzcoskun/imageslider/constants/ScaleTypes;)V",
        "imagePath",
        "",
        "(Ljava/lang/Integer;Ljava/lang/String;Lcom/denzcoskun/imageslider/constants/ScaleTypes;)V",
        "(Ljava/lang/String;Lcom/denzcoskun/imageslider/constants/ScaleTypes;)V",
        "(Ljava/lang/Integer;Lcom/denzcoskun/imageslider/constants/ScaleTypes;)V",
        "getImagePath",
        "()Ljava/lang/Integer;",
        "setImagePath",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getImageUrl",
        "()Ljava/lang/String;",
        "setImageUrl",
        "(Ljava/lang/String;)V",
        "getScaleType",
        "()Lcom/denzcoskun/imageslider/constants/ScaleTypes;",
        "setScaleType",
        "(Lcom/denzcoskun/imageslider/constants/ScaleTypes;)V",
        "getTitle",
        "setTitle",
        "imageslider_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private imagePath:Ljava/lang/Integer;

.field private imageUrl:Ljava/lang/String;

.field private scaleType:Lcom/denzcoskun/imageslider/constants/ScaleTypes;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lcom/denzcoskun/imageslider/constants/ScaleTypes;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    iput-object p1, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->imagePath:Ljava/lang/Integer;

    .line 36
    iput-object p2, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->scaleType:Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/denzcoskun/imageslider/constants/ScaleTypes;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    iput-object p1, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->imagePath:Ljava/lang/Integer;

    .line 25
    iput-object p2, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->title:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->scaleType:Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/denzcoskun/imageslider/constants/ScaleTypes;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 23
    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    check-cast p3, Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/denzcoskun/imageslider/models/SlideModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/denzcoskun/imageslider/constants/ScaleTypes;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/denzcoskun/imageslider/constants/ScaleTypes;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->imagePath:Ljava/lang/Integer;

    .line 30
    iput-object p1, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->imageUrl:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->scaleType:Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/denzcoskun/imageslider/constants/ScaleTypes;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->imagePath:Ljava/lang/Integer;

    .line 18
    iput-object p1, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->imageUrl:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->title:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->scaleType:Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/denzcoskun/imageslider/constants/ScaleTypes;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 17
    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    check-cast p3, Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/denzcoskun/imageslider/models/SlideModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/denzcoskun/imageslider/constants/ScaleTypes;)V

    return-void
.end method


# virtual methods
.method public final getImagePath()Ljava/lang/Integer;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->imagePath:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getScaleType()Lcom/denzcoskun/imageslider/constants/ScaleTypes;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->scaleType:Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final setImagePath(Ljava/lang/Integer;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->imagePath:Ljava/lang/Integer;

    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setScaleType(Lcom/denzcoskun/imageslider/constants/ScaleTypes;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->scaleType:Lcom/denzcoskun/imageslider/constants/ScaleTypes;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/denzcoskun/imageslider/models/SlideModel;->title:Ljava/lang/String;

    return-void
.end method
