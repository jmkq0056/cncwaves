.class public final Lcom/stripe/proto/model/config/Font$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Font.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/Font;",
        "Lcom/stripe/proto/model/config/Font$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/Font$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/Font;",
        "()V",
        "font_name",
        "",
        "font_size",
        "",
        "hex_color",
        "",
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
.field public font_name:Ljava/lang/String;

.field public font_size:I

.field public hex_color:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/config/Font$Builder;->font_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/Font$Builder;->build()Lcom/stripe/proto/model/config/Font;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/Font;
    .locals 6

    .line 152
    new-instance v0, Lcom/stripe/proto/model/config/Font;

    .line 153
    iget-object v1, p0, Lcom/stripe/proto/model/config/Font$Builder;->font_name:Ljava/lang/String;

    .line 154
    iget v2, p0, Lcom/stripe/proto/model/config/Font$Builder;->font_size:I

    .line 155
    iget-wide v3, p0, Lcom/stripe/proto/model/config/Font$Builder;->hex_color:J

    .line 156
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/Font$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/config/Font;-><init>(Ljava/lang/String;IJLokio/ByteString;)V

    return-object v0
.end method

.method public final font_name(Ljava/lang/String;)Lcom/stripe/proto/model/config/Font$Builder;
    .locals 1

    const-string v0, "font_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/stripe/proto/model/config/Font$Builder;->font_name:Ljava/lang/String;

    return-object p0
.end method

.method public final font_size(I)Lcom/stripe/proto/model/config/Font$Builder;
    .locals 0

    .line 139
    iput p1, p0, Lcom/stripe/proto/model/config/Font$Builder;->font_size:I

    return-object p0
.end method

.method public final hex_color(J)Lcom/stripe/proto/model/config/Font$Builder;
    .locals 0

    .line 148
    iput-wide p1, p0, Lcom/stripe/proto/model/config/Font$Builder;->hex_color:J

    return-object p0
.end method
