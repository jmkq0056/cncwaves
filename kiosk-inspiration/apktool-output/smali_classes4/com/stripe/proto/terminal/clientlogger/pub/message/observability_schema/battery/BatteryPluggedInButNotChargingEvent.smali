.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;
.super Lcom/squareup/wire/Message;
.source "BatteryPluggedInButNotChargingEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Companion;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001c\u001d\u001eBU\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012JV\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;",
        "percentage",
        "",
        "dialog_shown",
        "",
        "dock_connection_status",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;",
        "plugged_in_duration_millis",
        "",
        "battery_discharge_percent",
        "hub_connection_status",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;",
        "use_case",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;",
        "unknownFields",
        "Lokio/ByteString;",
        "(DZLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;JDLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;Lokio/ByteString;)V",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
        "UseCase",
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final battery_discharge_percent:D
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        jsonName = "batteryDischargePercent"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final dialog_shown:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "dialogShown"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.DockState$DockConnectionStatus#ADAPTER"
        jsonName = "dockConnectionStatus"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState$HubConnectionStatus#ADAPTER"
        jsonName = "hubConnectionStatus"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
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

.field public final plugged_in_duration_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "pluggedInDurationMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final use_case:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryPluggedInButNotChargingEvent$UseCase#ADAPTER"
        jsonName = "useCase"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Companion;

    .line 285
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 284
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 288
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 284
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0xff

    const/4 v13, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;-><init>(DZLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;JDLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DZLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;JDLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;Lokio/ByteString;)V
    .locals 1

    const-string v0, "dock_connection_status"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hub_connection_status"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "use_case"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p11}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 39
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->percentage:D

    .line 47
    iput-boolean p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dialog_shown:Z

    .line 59
    iput-object p4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    .line 75
    iput-wide p5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->plugged_in_duration_millis:J

    .line 87
    iput-wide p7, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->battery_discharge_percent:D

    .line 99
    iput-object p9, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    .line 112
    iput-object p10, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->use_case:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;

    return-void
.end method

.method public synthetic constructor <init>(DZLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;JDLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p13, p12, 0x1

    const-wide/16 v0, 0x0

    if-eqz p13, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    .line 68
    sget-object p4, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;->DOCK_CONNECTION_STATUS_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    const-wide/16 p5, 0x0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    move-wide p7, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    .line 108
    sget-object p9, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;->HUB_CONNECTION_STATUS_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    .line 120
    sget-object p10, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;->USE_CASE_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;

    :cond_6
    and-int/lit16 p12, p12, 0x80

    if-eqz p12, :cond_7

    .line 121
    sget-object p11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_7
    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-wide p8, p7

    move-wide p6, p5

    move-object p5, p4

    move p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 35
    invoke-direct/range {p1 .. p12}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;-><init>(DZLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;JDLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;DZLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;JDLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 179
    iget-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->percentage:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_1

    .line 180
    iget-boolean p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dialog_shown:Z

    :cond_1
    move v3, p3

    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_2

    .line 181
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    move-object v4, p1

    goto :goto_0

    :cond_2
    move-object/from16 v4, p4

    :goto_0
    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_3

    .line 182
    iget-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->plugged_in_duration_millis:J

    move-wide v5, p1

    goto :goto_1

    :cond_3
    move-wide/from16 v5, p5

    :goto_1
    and-int/lit8 p1, v0, 0x10

    if-eqz p1, :cond_4

    .line 183
    iget-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->battery_discharge_percent:D

    move-wide v7, p1

    goto :goto_2

    :cond_4
    move-wide/from16 v7, p7

    :goto_2
    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_5

    .line 184
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    move-object v9, p1

    goto :goto_3

    :cond_5
    move-object/from16 v9, p9

    :goto_3
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_6

    .line 185
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->use_case:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;

    move-object v10, p1

    goto :goto_4

    :cond_6
    move-object/from16 v10, p10

    :goto_4
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_7

    .line 186
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->unknownFields()Lokio/ByteString;

    move-result-object p1

    move-object v11, p1

    goto :goto_5

    :cond_7
    move-object/from16 v11, p11

    :goto_5
    move-object v0, p0

    .line 178
    invoke-virtual/range {v0 .. v11}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->copy(DZLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;JDLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(DZLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;JDLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;
    .locals 13

    const-string v0, "dock_connection_status"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hub_connection_status"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "use_case"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    move-wide v2, p1

    move/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;-><init>(DZLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;JDLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 138
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 140
    :cond_2
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->percentage:D

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->percentage:D

    cmpg-double v1, v3, v5

    if-nez v1, :cond_8

    .line 141
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dialog_shown:Z

    iget-boolean v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dialog_shown:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    if-eq v1, v3, :cond_4

    return v2

    .line 143
    :cond_4
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->plugged_in_duration_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->plugged_in_duration_millis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    .line 144
    :cond_5
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->battery_discharge_percent:D

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->battery_discharge_percent:D

    cmpg-double v1, v3, v5

    if-nez v1, :cond_8

    .line 145
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    if-eq v1, v3, :cond_6

    return v2

    .line 146
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->use_case:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->use_case:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0

    :cond_8
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 151
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->hashCode:I

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 154
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->percentage:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 155
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dialog_shown:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 156
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 157
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->plugged_in_duration_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 158
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->battery_discharge_percent:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 159
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 160
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->use_case:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    iput v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;
    .locals 3

    .line 124
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;-><init>()V

    .line 125
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->percentage:D

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;->percentage:D

    .line 126
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dialog_shown:Z

    iput-boolean v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;->dialog_shown:Z

    .line 127
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    .line 128
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->plugged_in_duration_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;->plugged_in_duration_millis:J

    .line 129
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->battery_discharge_percent:D

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;->battery_discharge_percent:D

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    .line 131
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->use_case:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;->use_case:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;

    .line 132
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 168
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "percentage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->percentage:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dialog_shown="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dialog_shown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dock_connection_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->dock_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "plugged_in_duration_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->plugged_in_duration_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "battery_discharge_percent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->battery_discharge_percent:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hub_connection_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->hub_connection_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "use_case="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;->use_case:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 175
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "BatteryPluggedInButNotChargingEvent{"

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
