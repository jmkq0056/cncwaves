.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BatteryState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;",
        "()V",
        "capacity",
        "",
        "charging_cycle_count",
        "dock_connection_status",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;",
        "health",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;",
        "hub_connection_status",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;",
        "last_known_power_source",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;",
        "percentage",
        "",
        "power_connectivity",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;",
        "temperature",
        "",
        "voltage",
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
.field public capacity:I

.field public charging_cycle_count:I

.field public dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

.field public health:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

.field public hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

.field public last_known_power_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

.field public percentage:D

.field public power_connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

.field public temperature:F

.field public voltage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 231
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 236
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;->POWER_CONNECTIVITY_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->power_connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    .line 239
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;->POWER_SOURCE_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->last_known_power_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

    .line 242
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;->BATTERY_HEALTH_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->health:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

    .line 258
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;->DOCK_CONNECTION_STATUS_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    .line 262
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;->HUB_CONNECTION_STATUS_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;
    .locals 13

    .line 341
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 342
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->percentage:D

    .line 343
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->power_connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    .line 344
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->last_known_power_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

    .line 345
    iget-object v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->health:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

    .line 346
    iget v6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->voltage:I

    .line 347
    iget v7, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->capacity:I

    .line 348
    iget v8, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->temperature:F

    .line 349
    iget v9, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->charging_cycle_count:I

    .line 350
    iget-object v10, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    .line 351
    iget-object v11, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    .line 352
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 341
    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;-><init>(DLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;IIFILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lokio/ByteString;)V

    return-object v0
.end method

.method public final capacity(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;
    .locals 0

    .line 300
    iput p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->capacity:I

    return-object p0
.end method

.method public final charging_cycle_count(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;
    .locals 0

    .line 321
    iput p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->charging_cycle_count:I

    return-object p0
.end method

.method public final dock_connection_status(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;
    .locals 1

    const-string v0, "dock_connection_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    return-object p0
.end method

.method public final health(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;
    .locals 1

    const-string v0, "health"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->health:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

    return-object p0
.end method

.method public final hub_connection_status(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;
    .locals 1

    const-string v0, "hub_connection_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    return-object p0
.end method

.method public final last_known_power_source(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;
    .locals 1

    const-string v0, "last_known_power_source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->last_known_power_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

    return-object p0
.end method

.method public final percentage(D)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;
    .locals 0

    .line 265
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->percentage:D

    return-object p0
.end method

.method public final power_connectivity(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;
    .locals 1

    const-string v0, "power_connectivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->power_connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    return-object p0
.end method

.method public final temperature(F)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;
    .locals 0

    .line 309
    iput p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->temperature:F

    return-object p0
.end method

.method public final voltage(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;
    .locals 0

    .line 291
    iput p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->voltage:I

    return-object p0
.end method
