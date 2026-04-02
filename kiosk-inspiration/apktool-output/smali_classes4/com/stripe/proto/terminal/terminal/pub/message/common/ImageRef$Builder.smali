.class public final Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ImageRef.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
        "()V",
        "file_id",
        "",
        "image_color",
        "image_format",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;",
        "image_id",
        "image_url",
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
.field public file_id:Ljava/lang/String;

.field public image_color:Ljava/lang/String;

.field public image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

.field public image_id:Ljava/lang/String;

.field public image_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->image_id:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->image_url:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->image_color:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->file_id:Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->IMAGE_FORMAT_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;
    .locals 7

    .line 199
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    .line 200
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->image_id:Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->image_url:Ljava/lang/String;

    .line 202
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->image_color:Ljava/lang/String;

    .line 203
    iget-object v4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->file_id:Ljava/lang/String;

    .line 204
    iget-object v5, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    .line 205
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 199
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;Lokio/ByteString;)V

    return-object v0
.end method

.method public final file_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;
    .locals 1

    const-string v0, "file_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->file_id:Ljava/lang/String;

    return-object p0
.end method

.method public final image_color(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;
    .locals 1

    const-string v0, "image_color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->image_color:Ljava/lang/String;

    return-object p0
.end method

.method public final image_format(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;
    .locals 1

    const-string v0, "image_format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    return-object p0
.end method

.method public final image_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;
    .locals 1

    const-string v0, "image_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->image_id:Ljava/lang/String;

    return-object p0
.end method

.method public final image_url(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;
    .locals 1

    const-string v0, "image_url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;->image_url:Ljava/lang/String;

    return-object p0
.end method
