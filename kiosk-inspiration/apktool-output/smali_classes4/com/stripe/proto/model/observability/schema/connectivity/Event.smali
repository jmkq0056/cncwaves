.class public final Lcom/stripe/proto/model/observability/schema/connectivity/Event;
.super Lcom/squareup/wire/Message;
.source "Event.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/observability/schema/connectivity/Event$Builder;,
        Lcom/stripe/proto/model/observability/schema/connectivity/Event$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/observability/schema/connectivity/Event;",
        "Lcom/stripe/proto/model/observability/schema/connectivity/Event$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBK\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJL\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0002H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/proto/model/observability/schema/connectivity/Event;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/observability/schema/connectivity/Event$Builder;",
        "network_connected",
        "Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;",
        "network_properties_changed",
        "Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;",
        "network_lost",
        "Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;",
        "wifi_connectivity_changed",
        "Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;",
        "wifi_connection_attempt",
        "Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
        "internal_release"
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
            "Lcom/stripe/proto/model/observability/schema/connectivity/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/observability/schema/connectivity/Event$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final network_connected:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.observability.schema.connectivity.NetworkConnected#ADAPTER"
        jsonName = "networkConnected"
        oneofName = "event"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final network_lost:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.observability.schema.connectivity.NetworkLost#ADAPTER"
        jsonName = "networkLost"
        oneofName = "event"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final network_properties_changed:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.observability.schema.connectivity.NetworkPropertiesChanged#ADAPTER"
        jsonName = "networkPropertiesChanged"
        oneofName = "event"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final wifi_connection_attempt:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.observability.schema.connectivity.WifiConnectionAttempt#ADAPTER"
        jsonName = "wifiConnectionAttempt"
        oneofName = "event"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final wifi_connectivity_changed:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.observability.schema.connectivity.WifiConnectivityChanged#ADAPTER"
        jsonName = "wifiConnectivityChanged"
        oneofName = "event"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/observability/schema/connectivity/Event$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/observability/schema/connectivity/Event$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->Companion:Lcom/stripe/proto/model/observability/schema/connectivity/Event$Companion;

    .line 223
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 222
    const-class v1, Lcom/stripe/proto/model/observability/schema/connectivity/Event;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 226
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 222
    new-instance v3, Lcom/stripe/proto/model/observability/schema/connectivity/Event$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/observability/schema/connectivity/Event$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/observability/schema/connectivity/Event;-><init>(Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_connected:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;

    .line 40
    iput-object p2, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_properties_changed:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;

    .line 49
    iput-object p3, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_lost:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;

    .line 61
    iput-object p4, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connectivity_changed:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;

    .line 70
    iput-object p5, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connection_attempt:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;

    .line 82
    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p5

    invoke-static {p1, p2, p3, p4, p5}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of network_connected, network_properties_changed, network_lost, wifi_connectivity_changed, wifi_connection_attempt may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 79
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 27
    invoke-direct/range {p1 .. p7}, Lcom/stripe/proto/model/observability/schema/connectivity/Event;-><init>(Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/observability/schema/connectivity/Event;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/observability/schema/connectivity/Event;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 135
    iget-object p1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_connected:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 136
    iget-object p2, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_properties_changed:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 137
    iget-object p3, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_lost:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 138
    iget-object p4, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connectivity_changed:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 139
    iget-object p5, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connection_attempt:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 140
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 134
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->copy(Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;Lokio/ByteString;)Lcom/stripe/proto/model/observability/schema/connectivity/Event;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;Lokio/ByteString;)Lcom/stripe/proto/model/observability/schema/connectivity/Event;
    .locals 8

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v1, Lcom/stripe/proto/model/observability/schema/connectivity/Event;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/model/observability/schema/connectivity/Event;-><init>(Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/observability/schema/connectivity/Event;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/observability/schema/connectivity/Event;

    invoke-virtual {p1}, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_connected:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;

    iget-object v3, p1, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_connected:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_properties_changed:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;

    iget-object v3, p1, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_properties_changed:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 104
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_lost:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;

    iget-object v3, p1, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_lost:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 105
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connectivity_changed:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;

    iget-object v3, p1, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connectivity_changed:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 106
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connection_attempt:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;

    iget-object p1, p1, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connection_attempt:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 111
    iget v0, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->hashCode:I

    if-nez v0, :cond_5

    .line 113
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_connected:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_properties_changed:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_lost:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connectivity_changed:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connection_attempt:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    .line 119
    iput v0, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->hashCode:I

    :cond_5
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->newBuilder()Lcom/stripe/proto/model/observability/schema/connectivity/Event$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/observability/schema/connectivity/Event$Builder;
    .locals 2

    .line 88
    new-instance v0, Lcom/stripe/proto/model/observability/schema/connectivity/Event$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/observability/schema/connectivity/Event$Builder;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_connected:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;

    iput-object v1, v0, Lcom/stripe/proto/model/observability/schema/connectivity/Event$Builder;->network_connected:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_properties_changed:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;

    iput-object v1, v0, Lcom/stripe/proto/model/observability/schema/connectivity/Event$Builder;->network_properties_changed:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;

    .line 91
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_lost:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;

    iput-object v1, v0, Lcom/stripe/proto/model/observability/schema/connectivity/Event$Builder;->network_lost:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;

    .line 92
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connectivity_changed:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;

    iput-object v1, v0, Lcom/stripe/proto/model/observability/schema/connectivity/Event$Builder;->wifi_connectivity_changed:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connection_attempt:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;

    iput-object v1, v0, Lcom/stripe/proto/model/observability/schema/connectivity/Event$Builder;->wifi_connection_attempt:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;

    .line 94
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/observability/schema/connectivity/Event$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 126
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_connected:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network_connected="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_connected:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_properties_changed:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network_properties_changed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_properties_changed:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkPropertiesChanged;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_lost:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network_lost="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->network_lost:Lcom/stripe/proto/model/observability/schema/connectivity/NetworkLost;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connectivity_changed:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wifi_connectivity_changed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connectivity_changed:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectivityChanged;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connection_attempt:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wifi_connection_attempt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/observability/schema/connectivity/Event;->wifi_connection_attempt:Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnectionAttempt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "Event{"

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
