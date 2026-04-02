.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Event.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event;",
        "()V",
        "network_connected",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnected;",
        "network_lost",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkLost;",
        "network_properties_changed",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkPropertiesChanged;",
        "wifi_connection_attempt",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;",
        "wifi_connectivity_changed",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectivityChanged;",
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
.field public network_connected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnected;

.field public network_lost:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkLost;

.field public network_properties_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkPropertiesChanged;

.field public wifi_connection_attempt:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;

.field public wifi_connectivity_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectivityChanged;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event;
    .locals 7

    .line 210
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event;

    .line 211
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_connected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnected;

    .line 212
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_properties_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkPropertiesChanged;

    .line 213
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_lost:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkLost;

    .line 214
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->wifi_connectivity_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectivityChanged;

    .line 215
    iget-object v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->wifi_connection_attempt:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;

    .line 216
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 210
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnected;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkPropertiesChanged;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkLost;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectivityChanged;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;Lokio/ByteString;)V

    return-object v0
.end method

.method public final network_connected(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnected;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_connected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnected;

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_properties_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkPropertiesChanged;

    .line 165
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_lost:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkLost;

    .line 166
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->wifi_connectivity_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectivityChanged;

    .line 167
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->wifi_connection_attempt:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;

    return-object p0
.end method

.method public final network_lost(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkLost;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_lost:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkLost;

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_connected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnected;

    .line 183
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_properties_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkPropertiesChanged;

    .line 184
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->wifi_connectivity_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectivityChanged;

    .line 185
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->wifi_connection_attempt:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;

    return-object p0
.end method

.method public final network_properties_changed(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkPropertiesChanged;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_properties_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkPropertiesChanged;

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_connected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnected;

    .line 174
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_lost:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkLost;

    .line 175
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->wifi_connectivity_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectivityChanged;

    .line 176
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->wifi_connection_attempt:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;

    return-object p0
.end method

.method public final wifi_connection_attempt(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->wifi_connection_attempt:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;

    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_connected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnected;

    .line 204
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_properties_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkPropertiesChanged;

    .line 205
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_lost:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkLost;

    .line 206
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->wifi_connectivity_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectivityChanged;

    return-object p0
.end method

.method public final wifi_connectivity_changed(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectivityChanged;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->wifi_connectivity_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectivityChanged;

    const/4 p1, 0x0

    .line 194
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_connected:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnected;

    .line 195
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_properties_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkPropertiesChanged;

    .line 196
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->network_lost:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkLost;

    .line 197
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;->wifi_connection_attempt:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;

    return-object p0
.end method
