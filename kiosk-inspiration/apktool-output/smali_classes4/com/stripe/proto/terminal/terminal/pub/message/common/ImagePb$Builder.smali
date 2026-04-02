.class public final Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ImagePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;",
        "()V",
        "id",
        "",
        "image_data",
        "Lokio/ByteString;",
        "image_format",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;",
        "image_hash",
        "Lcom/stripe/proto/model/common/SignedAssetPb;",
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
.field public id:Ljava/lang/String;

.field public image_data:Lokio/ByteString;

.field public image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;

.field public image_hash:Lcom/stripe/proto/model/common/SignedAssetPb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;->id:Ljava/lang/String;

    .line 134
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;->image_data:Lokio/ByteString;

    .line 137
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;->IMAGE_FORMAT_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;->image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;
    .locals 6

    .line 171
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

    .line 172
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;->id:Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;->image_data:Lokio/ByteString;

    .line 174
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;->image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;

    .line 175
    iget-object v4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;->image_hash:Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 176
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 171
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;-><init>(Ljava/lang/String;Lokio/ByteString;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;Lcom/stripe/proto/model/common/SignedAssetPb;Lokio/ByteString;)V

    return-object v0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final image_data(Lokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;
    .locals 1

    const-string v0, "image_data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;->image_data:Lokio/ByteString;

    return-object p0
.end method

.method public final image_format(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;
    .locals 1

    const-string v0, "image_format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;->image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;

    return-object p0
.end method

.method public final image_hash(Lcom/stripe/proto/model/common/SignedAssetPb;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;->image_hash:Lcom/stripe/proto/model/common/SignedAssetPb;

    return-object p0
.end method
