.class public final Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CroppedImagePackage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;",
        "()V",
        "height",
        "",
        "upper_left_x",
        "upper_left_y",
        "width",
        "build",
        "terminal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public height:I

.field public upper_left_x:I

.field public upper_left_y:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;
    .locals 6

    .line 341
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;

    .line 342
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;->upper_left_x:I

    .line 343
    iget v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;->upper_left_y:I

    .line 344
    iget v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;->width:I

    .line 345
    iget v4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;->height:I

    .line 346
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 341
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;-><init>(IIIILokio/ByteString;)V

    return-object v0
.end method

.method public final height(I)Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;
    .locals 0

    .line 337
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;->height:I

    return-object p0
.end method

.method public final upper_left_x(I)Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;
    .locals 0

    .line 322
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;->upper_left_x:I

    return-object p0
.end method

.method public final upper_left_y(I)Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;
    .locals 0

    .line 327
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;->upper_left_y:I

    return-object p0
.end method

.method public final width(I)Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;
    .locals 0

    .line 332
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;->width:I

    return-object p0
.end method
