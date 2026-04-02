.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "WifiConnectionAttempt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;",
        "()V",
        "capabilities",
        "",
        "result",
        "router_mac_address",
        "ssid",
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
.field public capabilities:Ljava/lang/String;

.field public result:Ljava/lang/String;

.field public router_mac_address:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->ssid:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->router_mac_address:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->capabilities:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->result:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;
    .locals 6

    .line 150
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;

    .line 151
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->ssid:Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->router_mac_address:Ljava/lang/String;

    .line 153
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->capabilities:Ljava/lang/String;

    .line 154
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->result:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 150
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final capabilities(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;
    .locals 1

    const-string v0, "capabilities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->capabilities:Ljava/lang/String;

    return-object p0
.end method

.method public final result(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->result:Ljava/lang/String;

    return-object p0
.end method

.method public final router_mac_address(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;
    .locals 1

    const-string v0, "router_mac_address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->router_mac_address:Ljava/lang/String;

    return-object p0
.end method

.method public final ssid(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;
    .locals 1

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt$Builder;->ssid:Ljava/lang/String;

    return-object p0
.end method
