.class public final Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "NetworkInterfaces.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;",
        "Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;",
        "()V",
        "connection",
        "Lcom/stripe/proto/model/common/EthernetConnection;",
        "mac_address",
        "",
        "network_connectivity_status",
        "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;",
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
.field public connection:Lcom/stripe/proto/model/common/EthernetConnection;

.field public mac_address:Ljava/lang/String;

.field public network_connectivity_status:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 279
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 281
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;->mac_address:Ljava/lang/String;

    .line 285
    sget-object v0, Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;->NETWORK_CONNECTIVITY_STATUS_INVALID:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    iput-object v0, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;->network_connectivity_status:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;->build()Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;
    .locals 5

    .line 305
    new-instance v0, Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;

    .line 306
    iget-object v1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;->mac_address:Ljava/lang/String;

    .line 307
    iget-object v2, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;->network_connectivity_status:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    .line 308
    iget-object v3, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;->connection:Lcom/stripe/proto/model/common/EthernetConnection;

    .line 309
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 305
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;Lcom/stripe/proto/model/common/EthernetConnection;Lokio/ByteString;)V

    return-object v0
.end method

.method public final connection(Lcom/stripe/proto/model/common/EthernetConnection;)Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;->connection:Lcom/stripe/proto/model/common/EthernetConnection;

    return-object p0
.end method

.method public final mac_address(Ljava/lang/String;)Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;
    .locals 1

    const-string v0, "mac_address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;->mac_address:Ljava/lang/String;

    return-object p0
.end method

.method public final network_connectivity_status(Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;)Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;
    .locals 1

    const-string v0, "network_connectivity_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iput-object p1, p0, Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;->network_connectivity_status:Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;

    return-object p0
.end method
