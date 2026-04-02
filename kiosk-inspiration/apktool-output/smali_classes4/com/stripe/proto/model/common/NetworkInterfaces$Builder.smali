.class public final Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "NetworkInterfaces.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/NetworkInterfaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/NetworkInterfaces;",
        "Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/NetworkInterfaces;",
        "()V",
        "bluetooth_interface",
        "Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface;",
        "ethernet_interface",
        "Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;",
        "wifi_interface",
        "Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;",
        "build",
        "common_release"
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
.field public bluetooth_interface:Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface;

.field public ethernet_interface:Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;

.field public wifi_interface:Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bluetooth_interface(Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface;)Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;->bluetooth_interface:Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;->build()Lcom/stripe/proto/model/common/NetworkInterfaces;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/NetworkInterfaces;
    .locals 5

    .line 129
    new-instance v0, Lcom/stripe/proto/model/common/NetworkInterfaces;

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;->ethernet_interface:Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;

    .line 131
    iget-object v2, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;->wifi_interface:Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;

    .line 132
    iget-object v3, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;->bluetooth_interface:Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface;

    .line 133
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 129
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/common/NetworkInterfaces;-><init>(Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface;Lokio/ByteString;)V

    return-object v0
.end method

.method public final ethernet_interface(Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;)Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;->ethernet_interface:Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;

    return-object p0
.end method

.method public final wifi_interface(Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;)Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;->wifi_interface:Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;

    return-object p0
.end method
