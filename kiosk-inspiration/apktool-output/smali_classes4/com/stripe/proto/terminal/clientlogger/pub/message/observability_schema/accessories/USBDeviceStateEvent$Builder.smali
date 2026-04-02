.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "USBDeviceStateEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;",
        "()V",
        "connection_status",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;",
        "product_id",
        "",
        "vendor_id",
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
.field public connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

.field public product_id:Ljava/lang/String;

.field public vendor_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;->product_id:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;->vendor_id:Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;->USB_CONNECTION_STATUS_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;->connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;
    .locals 5

    .line 145
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 146
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;->product_id:Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;->vendor_id:Ljava/lang/String;

    .line 148
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;->connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    .line 149
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 145
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;Lokio/ByteString;)V

    return-object v0
.end method

.method public final connection_status(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;
    .locals 1

    const-string v0, "connection_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;->connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$USBConnectionStatus;

    return-object p0
.end method

.method public final product_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;
    .locals 1

    const-string v0, "product_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;->product_id:Ljava/lang/String;

    return-object p0
.end method

.method public final vendor_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;
    .locals 1

    const-string v0, "vendor_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent$Builder;->vendor_id:Ljava/lang/String;

    return-object p0
.end method
