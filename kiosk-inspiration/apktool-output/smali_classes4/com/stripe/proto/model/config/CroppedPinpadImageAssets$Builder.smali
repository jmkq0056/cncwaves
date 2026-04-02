.class public final Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CroppedPinpadImageAssets.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/CroppedPinpadImageAssets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/CroppedPinpadImageAssets;",
        "Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/CroppedPinpadImageAssets;",
        "()V",
        "close_screen",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;",
        "splash_screen",
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
.field public close_screen:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;

.field public splash_screen:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;->build()Lcom/stripe/proto/model/config/CroppedPinpadImageAssets;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/CroppedPinpadImageAssets;
    .locals 4

    .line 106
    new-instance v0, Lcom/stripe/proto/model/config/CroppedPinpadImageAssets;

    .line 107
    iget-object v1, p0, Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;->splash_screen:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;

    .line 108
    iget-object v2, p0, Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;->close_screen:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;

    .line 109
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 106
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/model/config/CroppedPinpadImageAssets;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;Lokio/ByteString;)V

    return-object v0
.end method

.method public final close_screen(Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;)Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;->close_screen:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;

    return-object p0
.end method

.method public final splash_screen(Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;)Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;->splash_screen:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;

    return-object p0
.end method
