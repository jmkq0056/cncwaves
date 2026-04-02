.class public final Lcom/stripe/proto/iot_relay/pub/message/Hardware$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Hardware.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/message/Hardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/message/Hardware;",
        "Lcom/stripe/proto/iot_relay/pub/message/Hardware$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/message/Hardware$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/message/Hardware;",
        "()V",
        "manufacturer",
        "",
        "name",
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
.field public manufacturer:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/Hardware$Builder;->name:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/Hardware$Builder;->manufacturer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/message/Hardware$Builder;->build()Lcom/stripe/proto/iot_relay/pub/message/Hardware;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/message/Hardware;
    .locals 4

    .line 104
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/message/Hardware;

    .line 105
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/Hardware$Builder;->name:Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/message/Hardware$Builder;->manufacturer:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/message/Hardware$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 104
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/iot_relay/pub/message/Hardware;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final manufacturer(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/Hardware$Builder;
    .locals 1

    const-string v0, "manufacturer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/Hardware$Builder;->manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/Hardware$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/Hardware$Builder;->name:Ljava/lang/String;

    return-object p0
.end method
