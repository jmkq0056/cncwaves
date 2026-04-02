.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BluetoothAutoReconnectConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "()V",
        "max_retry_attempts",
        "",
        "max_timeout_seconds",
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
.field public max_retry_attempts:I

.field public max_timeout_seconds:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;
    .locals 4

    .line 105
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    .line 106
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb$Builder;->max_timeout_seconds:I

    .line 107
    iget v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb$Builder;->max_retry_attempts:I

    .line 108
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 105
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;-><init>(IILokio/ByteString;)V

    return-object v0
.end method

.method public final max_retry_attempts(I)Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb$Builder;
    .locals 0

    .line 101
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb$Builder;->max_retry_attempts:I

    return-object p0
.end method

.method public final max_timeout_seconds(I)Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb$Builder;
    .locals 0

    .line 96
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb$Builder;->max_timeout_seconds:I

    return-object p0
.end method
