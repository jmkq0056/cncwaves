.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CellularContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0007J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;",
        "()V",
        "carrier_id",
        "",
        "carrier_name",
        "",
        "cellular_mac_address",
        "iccid",
        "imsi",
        "meid",
        "network_operator",
        "network_type",
        "subscriber_id",
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
.field public carrier_id:I

.field public carrier_name:Ljava/lang/String;

.field public cellular_mac_address:Ljava/lang/String;

.field public iccid:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public meid:Ljava/lang/String;

.field public network_operator:Ljava/lang/String;

.field public network_type:Ljava/lang/String;

.field public subscriber_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->cellular_mac_address:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->iccid:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->imsi:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->meid:Ljava/lang/String;

    .line 201
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->carrier_name:Ljava/lang/String;

    .line 204
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->network_type:Ljava/lang/String;

    .line 207
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->network_operator:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->subscriber_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;
    .locals 11

    .line 257
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;

    .line 258
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->cellular_mac_address:Ljava/lang/String;

    .line 259
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->iccid:Ljava/lang/String;

    .line 260
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->imsi:Ljava/lang/String;

    .line 261
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->meid:Ljava/lang/String;

    .line 262
    iget v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->carrier_id:I

    .line 263
    iget-object v6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->carrier_name:Ljava/lang/String;

    .line 264
    iget-object v7, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->network_type:Ljava/lang/String;

    .line 265
    iget-object v8, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->network_operator:Ljava/lang/String;

    .line 266
    iget-object v9, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->subscriber_id:Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    .line 257
    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final carrier_id(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;
    .locals 0

    .line 233
    iput p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->carrier_id:I

    return-object p0
.end method

.method public final carrier_name(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;
    .locals 1

    const-string v0, "carrier_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->carrier_name:Ljava/lang/String;

    return-object p0
.end method

.method public final cellular_mac_address(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;
    .locals 1

    const-string v0, "cellular_mac_address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->cellular_mac_address:Ljava/lang/String;

    return-object p0
.end method

.method public final iccid(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;
    .locals 1

    const-string v0, "iccid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->iccid:Ljava/lang/String;

    return-object p0
.end method

.method public final imsi(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;
    .locals 1

    const-string v0, "imsi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->imsi:Ljava/lang/String;

    return-object p0
.end method

.method public final meid(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;
    .locals 1

    const-string v0, "meid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->meid:Ljava/lang/String;

    return-object p0
.end method

.method public final network_operator(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;
    .locals 1

    const-string v0, "network_operator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->network_operator:Ljava/lang/String;

    return-object p0
.end method

.method public final network_type(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;
    .locals 1

    const-string v0, "network_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->network_type:Ljava/lang/String;

    return-object p0
.end method

.method public final subscriber_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;
    .locals 1

    const-string v0, "subscriber_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;->subscriber_id:Ljava/lang/String;

    return-object p0
.end method
