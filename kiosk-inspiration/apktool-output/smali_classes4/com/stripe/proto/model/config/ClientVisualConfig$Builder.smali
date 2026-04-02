.class public final Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ClientVisualConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/ClientVisualConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/ClientVisualConfig;",
        "Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/ClientVisualConfig;",
        "()V",
        "accent_color",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;",
        "background_color",
        "header_color",
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
.field public accent_color:Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;

.field public background_color:Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;

.field public header_color:Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final accent_color(Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;)Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;->accent_color:Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;

    return-object p0
.end method

.method public final background_color(Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;)Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;->background_color:Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;->build()Lcom/stripe/proto/model/config/ClientVisualConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/ClientVisualConfig;
    .locals 5

    .line 140
    new-instance v0, Lcom/stripe/proto/model/config/ClientVisualConfig;

    .line 141
    iget-object v1, p0, Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;->accent_color:Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;

    .line 142
    iget-object v2, p0, Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;->background_color:Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;

    .line 143
    iget-object v3, p0, Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;->header_color:Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;

    .line 144
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 140
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/config/ClientVisualConfig;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;Lokio/ByteString;)V

    return-object v0
.end method

.method public final header_color(Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;)Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;->header_color:Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;

    return-object p0
.end method
