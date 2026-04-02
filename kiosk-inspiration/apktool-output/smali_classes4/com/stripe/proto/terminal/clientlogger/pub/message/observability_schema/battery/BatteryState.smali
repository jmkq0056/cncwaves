.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;
.super Lcom/squareup/wire/Message;
.source "BatteryState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Companion;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 #2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005!\"#$%Bs\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0002\u0010\u0017Jt\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\u0008\u0010\u001d\u001a\u00020\u000cH\u0016J\u0008\u0010\u001e\u001a\u00020\u0002H\u0016J\u0008\u0010\u001f\u001a\u00020 H\u0016R\u0010\u0010\r\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;",
        "percentage",
        "",
        "power_connectivity",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;",
        "last_known_power_source",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;",
        "health",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;",
        "voltage",
        "",
        "capacity",
        "temperature",
        "",
        "charging_cycle_count",
        "dock_connection_status",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;",
        "hub_connection_status",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;",
        "unknownFields",
        "Lokio/ByteString;",
        "(DLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;IIFILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "",
        "BatteryHealth",
        "Builder",
        "Companion",
        "PowerConnectivity",
        "PowerSource",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final capacity:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final charging_cycle_count:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "chargingCycleCount"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.DockState$DockConnectionStatus#ADAPTER"
        jsonName = "dockConnectionStatus"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final health:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState$BatteryHealth#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState$HubConnectionStatus#ADAPTER"
        jsonName = "hubConnectionStatus"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final last_known_power_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState$PowerSource#ADAPTER"
        jsonName = "lastKnownPowerSource"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final percentage:D
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final power_connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState$PowerConnectivity#ADAPTER"
        jsonName = "powerConnectivity"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final temperature:F
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final voltage:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Companion;

    .line 359
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 358
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 362
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 358
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/16 v13, 0x7ff

    const/4 v14, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;-><init>(DLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;IIFILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;IIFILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lokio/ByteString;)V
    .locals 1

    const-string v0, "power_connectivity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "last_known_power_source"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "health"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dock_connection_status"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hub_connection_status"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p12}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->percentage:D

    .line 42
    iput-object p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->power_connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    .line 54
    iput-object p4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->last_known_power_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

    .line 63
    iput-object p5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->health:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

    .line 74
    iput p6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->voltage:I

    .line 86
    iput p7, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->capacity:I

    .line 98
    iput p8, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->temperature:F

    .line 113
    iput p9, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->charging_cycle_count:I

    .line 125
    iput-object p10, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    .line 138
    iput-object p11, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    return-void
.end method

.method public synthetic constructor <init>(DLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;IIFILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 50
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;->POWER_CONNECTIVITY_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 62
    sget-object v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;->POWER_SOURCE_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 70
    sget-object v5, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;->BATTERY_HEALTH_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x10

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_4

    :cond_4
    move/from16 v6, p6

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move v8, v7

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v7, p9

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    .line 134
    sget-object v10, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;->DOCK_CONNECTION_STATUS_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    .line 147
    sget-object v11, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;->HUB_CONNECTION_STATUS_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 148
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p13, v0

    goto :goto_a

    :cond_a
    move-object/from16 p13, p12

    :goto_a
    move-object p1, p0

    move-wide p2, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move/from16 p7, v6

    move/from16 p10, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    .line 33
    invoke-direct/range {p1 .. p13}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;-><init>(DLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;IIFILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;DLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;IIFILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;
    .locals 13

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 218
    iget-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->percentage:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_1

    .line 219
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->power_connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    move-object v3, p1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p3

    :goto_0
    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_2

    .line 220
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->last_known_power_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

    move-object v4, p1

    goto :goto_1

    :cond_2
    move-object/from16 v4, p4

    :goto_1
    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_3

    .line 221
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->health:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

    move-object v5, p1

    goto :goto_2

    :cond_3
    move-object/from16 v5, p5

    :goto_2
    and-int/lit8 p1, v0, 0x10

    if-eqz p1, :cond_4

    .line 222
    iget p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->voltage:I

    move v6, p1

    goto :goto_3

    :cond_4
    move/from16 v6, p6

    :goto_3
    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_5

    .line 223
    iget p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->capacity:I

    move v7, p1

    goto :goto_4

    :cond_5
    move/from16 v7, p7

    :goto_4
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_6

    .line 224
    iget p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->temperature:F

    move v8, p1

    goto :goto_5

    :cond_6
    move/from16 v8, p8

    :goto_5
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_7

    .line 225
    iget p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->charging_cycle_count:I

    move v9, p1

    goto :goto_6

    :cond_7
    move/from16 v9, p9

    :goto_6
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_8

    .line 226
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    move-object v10, p1

    goto :goto_7

    :cond_8
    move-object/from16 v10, p10

    :goto_7
    and-int/lit16 p1, v0, 0x200

    if-eqz p1, :cond_9

    .line 227
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    move-object v11, p1

    goto :goto_8

    :cond_9
    move-object/from16 v11, p11

    :goto_8
    and-int/lit16 p1, v0, 0x400

    if-eqz p1, :cond_a

    .line 228
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->unknownFields()Lokio/ByteString;

    move-result-object p1

    move-object v12, p1

    goto :goto_9

    :cond_a
    move-object/from16 v12, p12

    :goto_9
    move-object v0, p0

    .line 217
    invoke-virtual/range {v0 .. v12}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->copy(DLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;IIFILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(DLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;IIFILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;
    .locals 14

    const-string v0, "power_connectivity"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "last_known_power_source"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "health"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dock_connection_status"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hub_connection_status"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    move-wide v2, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v13}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;-><init>(DLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;IIFILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 168
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 170
    :cond_2
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->percentage:D

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->percentage:D

    cmpg-double v1, v3, v5

    if-nez v1, :cond_b

    .line 171
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->power_connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->power_connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    if-eq v1, v3, :cond_3

    return v2

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->last_known_power_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->last_known_power_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

    if-eq v1, v3, :cond_4

    return v2

    .line 173
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->health:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->health:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

    if-eq v1, v3, :cond_5

    return v2

    .line 174
    :cond_5
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->voltage:I

    iget v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->voltage:I

    if-eq v1, v3, :cond_6

    return v2

    .line 175
    :cond_6
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->capacity:I

    iget v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->capacity:I

    if-eq v1, v3, :cond_7

    return v2

    .line 176
    :cond_7
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->temperature:F

    iget v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->temperature:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_b

    .line 177
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->charging_cycle_count:I

    iget v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->charging_cycle_count:I

    if-eq v1, v3, :cond_8

    return v2

    .line 178
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    if-eq v1, v3, :cond_9

    return v2

    .line 179
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0

    :cond_b
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 184
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->hashCode:I

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 187
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->percentage:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 188
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->power_connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 189
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->last_known_power_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 190
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->health:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 191
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->voltage:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 192
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->capacity:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 193
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->temperature:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 194
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->charging_cycle_count:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 195
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 196
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    iput v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;
    .locals 3

    .line 151
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;-><init>()V

    .line 152
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->percentage:D

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->percentage:D

    .line 153
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->power_connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->power_connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    .line 154
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->last_known_power_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->last_known_power_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

    .line 155
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->health:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->health:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

    .line 156
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->voltage:I

    iput v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->voltage:I

    .line 157
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->capacity:I

    iput v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->capacity:I

    .line 158
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->temperature:F

    iput v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->temperature:F

    .line 159
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->charging_cycle_count:I

    iput v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->charging_cycle_count:I

    .line 160
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    .line 161
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    .line 162
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 204
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "percentage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->percentage:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "power_connectivity="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->power_connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "last_known_power_source="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->last_known_power_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "health="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->health:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "voltage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->voltage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "capacity="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->capacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "temperature="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->temperature:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "charging_cycle_count="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->charging_cycle_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dock_connection_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hub_connection_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "BatteryState{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
