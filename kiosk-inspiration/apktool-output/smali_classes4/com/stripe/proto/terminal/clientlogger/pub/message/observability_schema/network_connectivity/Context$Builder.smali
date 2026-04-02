.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Context.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context;",
        "()V",
        "cellular",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;",
        "ethernet",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetContext;",
        "wifi",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;",
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
.field public cellular:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;

.field public ethernet:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetContext;

.field public wifi:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context;
    .locals 5

    .line 137
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context;

    .line 138
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->wifi:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;

    .line 139
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->ethernet:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetContext;

    .line 140
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->cellular:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;

    .line 141
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 137
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetContext;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cellular(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->cellular:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->wifi:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;

    .line 133
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->ethernet:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetContext;

    return-object p0
.end method

.method public final ethernet(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetContext;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->ethernet:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetContext;

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->wifi:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;

    .line 126
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->cellular:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;

    return-object p0
.end method

.method public final wifi(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->wifi:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiContext;

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->ethernet:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetContext;

    .line 119
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Context$Builder;->cellular:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;

    return-object p0
.end method
