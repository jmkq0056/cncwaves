.class public final Lcom/stripe/proto/model/config/PosConfig;
.super Lcom/squareup/wire/Message;
.source "PosConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/PosConfig$Builder;,
        Lcom/stripe/proto/model/config/PosConfig$Companion;,
        Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/config/PosConfig;",
        "Lcom/stripe/proto/model/config/PosConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0018\u0000 &2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003%&\'B\u0081\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0016J\u0082\u0001\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0010J\u0013\u0010\u001f\u001a\u00020\u00082\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0096\u0002J\u0008\u0010\"\u001a\u00020\u0004H\u0016J\u0008\u0010#\u001a\u00020\u0002H\u0016J\u0008\u0010$\u001a\u00020\u0012H\u0016R\u0016\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0014\u001a\u00020\u00128\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0019\u0010\u0018R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001a\u0010\u0018R\u0016\u0010\u0013\u001a\u00020\u00128\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001b\u0010\u0018R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001c\u0010\u0018R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001d\u0010\u0018R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/stripe/proto/model/config/PosConfig;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/config/PosConfig$Builder;",
        "heartbeat_interval_seconds",
        "",
        "reachability_threshold",
        "unreachability_threshold",
        "loyalty_collection_enabled",
        "",
        "pos_trace_level",
        "Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;",
        "device_trace_level",
        "Lcom/stripe/proto/model/config/DeviceTraceLevel;",
        "rabbit_client_config",
        "Lcom/stripe/proto/model/config/RabbitClientConfig;",
        "beacon_config_deprecated_120716",
        "Lokio/ByteString;",
        "store_id_deprecated_280115",
        "",
        "merchant_id_deprecated_280115",
        "derived_session_token_deprecated_20170224",
        "unknownFields",
        "(IIIZLcom/stripe/proto/model/config/PosConfig$PosTraceLevel;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/RabbitClientConfig;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "getBeacon_config_deprecated_120716$annotations",
        "()V",
        "getDerived_session_token_deprecated_20170224$annotations",
        "getLoyalty_collection_enabled$annotations",
        "getMerchant_id_deprecated_280115$annotations",
        "getPos_trace_level$annotations",
        "getStore_id_deprecated_280115$annotations",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "PosTraceLevel",
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
            "Lcom/stripe/proto/model/config/PosConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/config/PosConfig$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final beacon_config_deprecated_120716:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        jsonName = "beaconConfigDeprecated120716"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x2
    .end annotation
.end field

.field public final derived_session_token_deprecated_20170224:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "derivedSessionTokenDeprecated20170224"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0x8
    .end annotation
.end field

.field public final device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.DeviceTraceLevel#ADAPTER"
        jsonName = "deviceTraceLevel"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0xc
    .end annotation
.end field

.field public final heartbeat_interval_seconds:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "heartbeatIntervalSeconds"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final loyalty_collection_enabled:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "loyaltyCollectionEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x3
    .end annotation
.end field

.field public final merchant_id_deprecated_280115:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "merchantIdDeprecated280115"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0x7
    .end annotation
.end field

.field public final pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.PosConfig$PosTraceLevel#ADAPTER"
        jsonName = "posTraceLevel"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x9
    .end annotation
.end field

.field public final rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.RabbitClientConfig#ADAPTER"
        jsonName = "rabbitClientConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0xa
    .end annotation
.end field

.field public final reachability_threshold:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "reachabilityThreshold"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x4
    .end annotation
.end field

.field public final store_id_deprecated_280115:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "storeIdDeprecated280115"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x6
    .end annotation
.end field

.field public final unreachability_threshold:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        jsonName = "unreachabilityThreshold"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/config/PosConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/config/PosConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/config/PosConfig;->Companion:Lcom/stripe/proto/model/config/PosConfig$Companion;

    .line 377
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 376
    const-class v1, Lcom/stripe/proto/model/config/PosConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 380
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 376
    new-instance v3, Lcom/stripe/proto/model/config/PosConfig$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/config/PosConfig$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/PosConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/16 v13, 0xfff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

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

    invoke-direct/range {v0 .. v14}, Lcom/stripe/proto/model/config/PosConfig;-><init>(IIIZLcom/stripe/proto/model/config/PosConfig$PosTraceLevel;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/RabbitClientConfig;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIZLcom/stripe/proto/model/config/PosConfig$PosTraceLevel;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/RabbitClientConfig;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "pos_trace_level"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beacon_config_deprecated_120716"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "store_id_deprecated_280115"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchant_id_deprecated_280115"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "derived_session_token_deprecated_20170224"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/stripe/proto/model/config/PosConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p12}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput p1, p0, Lcom/stripe/proto/model/config/PosConfig;->heartbeat_interval_seconds:I

    .line 48
    iput p2, p0, Lcom/stripe/proto/model/config/PosConfig;->reachability_threshold:I

    .line 60
    iput p3, p0, Lcom/stripe/proto/model/config/PosConfig;->unreachability_threshold:I

    .line 73
    iput-boolean p4, p0, Lcom/stripe/proto/model/config/PosConfig;->loyalty_collection_enabled:Z

    .line 83
    iput-object p5, p0, Lcom/stripe/proto/model/config/PosConfig;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    .line 93
    iput-object p6, p0, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    .line 102
    iput-object p7, p0, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    .line 116
    iput-object p8, p0, Lcom/stripe/proto/model/config/PosConfig;->beacon_config_deprecated_120716:Lokio/ByteString;

    .line 126
    iput-object p9, p0, Lcom/stripe/proto/model/config/PosConfig;->store_id_deprecated_280115:Ljava/lang/String;

    .line 136
    iput-object p10, p0, Lcom/stripe/proto/model/config/PosConfig;->merchant_id_deprecated_280115:Ljava/lang/String;

    .line 146
    iput-object p11, p0, Lcom/stripe/proto/model/config/PosConfig;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IIIZLcom/stripe/proto/model/config/PosConfig$PosTraceLevel;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/RabbitClientConfig;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p13, 0x1

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    .line 92
    sget-object p5, Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;->ILLEGAL:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    const/4 v0, 0x0

    if-eqz p14, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    .line 125
    sget-object p8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_7
    and-int/lit16 p14, p13, 0x100

    .line 31
    const-string v0, ""

    if-eqz p14, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    move-object p10, v0

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    move-object p11, v0

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    .line 156
    sget-object p12, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_b
    move-object p13, p12

    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 31
    invoke-direct/range {p1 .. p13}, Lcom/stripe/proto/model/config/PosConfig;-><init>(IIIZLcom/stripe/proto/model/config/PosConfig$PosTraceLevel;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/RabbitClientConfig;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/config/PosConfig;IIIZLcom/stripe/proto/model/config/PosConfig$PosTraceLevel;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/RabbitClientConfig;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/PosConfig;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    .line 230
    iget p1, p0, Lcom/stripe/proto/model/config/PosConfig;->heartbeat_interval_seconds:I

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    .line 231
    iget p2, p0, Lcom/stripe/proto/model/config/PosConfig;->reachability_threshold:I

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    .line 232
    iget p3, p0, Lcom/stripe/proto/model/config/PosConfig;->unreachability_threshold:I

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    .line 233
    iget-boolean p4, p0, Lcom/stripe/proto/model/config/PosConfig;->loyalty_collection_enabled:Z

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    .line 234
    iget-object p5, p0, Lcom/stripe/proto/model/config/PosConfig;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    .line 235
    iget-object p6, p0, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    .line 236
    iget-object p7, p0, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    .line 237
    iget-object p8, p0, Lcom/stripe/proto/model/config/PosConfig;->beacon_config_deprecated_120716:Lokio/ByteString;

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    .line 238
    iget-object p9, p0, Lcom/stripe/proto/model/config/PosConfig;->store_id_deprecated_280115:Ljava/lang/String;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    .line 239
    iget-object p10, p0, Lcom/stripe/proto/model/config/PosConfig;->merchant_id_deprecated_280115:Ljava/lang/String;

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    .line 240
    iget-object p11, p0, Lcom/stripe/proto/model/config/PosConfig;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    .line 241
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/PosConfig;->unknownFields()Lokio/ByteString;

    move-result-object p12

    :cond_b
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    .line 229
    invoke-virtual/range {p2 .. p14}, Lcom/stripe/proto/model/config/PosConfig;->copy(IIIZLcom/stripe/proto/model/config/PosConfig$PosTraceLevel;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/RabbitClientConfig;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/config/PosConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getBeacon_config_deprecated_120716$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "beacon_config_deprecated_120716 is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getDerived_session_token_deprecated_20170224$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "derived_session_token_deprecated_20170224 is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getLoyalty_collection_enabled$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "loyalty_collection_enabled is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getMerchant_id_deprecated_280115$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "merchant_id_deprecated_280115 is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getPos_trace_level$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "pos_trace_level is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getStore_id_deprecated_280115$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "store_id_deprecated_280115 is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(IIIZLcom/stripe/proto/model/config/PosConfig$PosTraceLevel;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/RabbitClientConfig;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/config/PosConfig;
    .locals 14

    const-string v0, "pos_trace_level"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beacon_config_deprecated_120716"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "store_id_deprecated_280115"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchant_id_deprecated_280115"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "derived_session_token_deprecated_20170224"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    new-instance v1, Lcom/stripe/proto/model/config/PosConfig;

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v13}, Lcom/stripe/proto/model/config/PosConfig;-><init>(IIIZLcom/stripe/proto/model/config/PosConfig$PosTraceLevel;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/RabbitClientConfig;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 177
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/config/PosConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/PosConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/config/PosConfig;

    invoke-virtual {p1}, Lcom/stripe/proto/model/config/PosConfig;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 179
    :cond_2
    iget v1, p0, Lcom/stripe/proto/model/config/PosConfig;->heartbeat_interval_seconds:I

    iget v3, p1, Lcom/stripe/proto/model/config/PosConfig;->heartbeat_interval_seconds:I

    if-eq v1, v3, :cond_3

    return v2

    .line 180
    :cond_3
    iget v1, p0, Lcom/stripe/proto/model/config/PosConfig;->reachability_threshold:I

    iget v3, p1, Lcom/stripe/proto/model/config/PosConfig;->reachability_threshold:I

    if-eq v1, v3, :cond_4

    return v2

    .line 181
    :cond_4
    iget v1, p0, Lcom/stripe/proto/model/config/PosConfig;->unreachability_threshold:I

    iget v3, p1, Lcom/stripe/proto/model/config/PosConfig;->unreachability_threshold:I

    if-eq v1, v3, :cond_5

    return v2

    .line 182
    :cond_5
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/PosConfig;->loyalty_collection_enabled:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/PosConfig;->loyalty_collection_enabled:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 183
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    iget-object v3, p1, Lcom/stripe/proto/model/config/PosConfig;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    if-eq v1, v3, :cond_7

    return v2

    .line 184
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    iget-object v3, p1, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 185
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 186
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->beacon_config_deprecated_120716:Lokio/ByteString;

    iget-object v3, p1, Lcom/stripe/proto/model/config/PosConfig;->beacon_config_deprecated_120716:Lokio/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 187
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->store_id_deprecated_280115:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/config/PosConfig;->store_id_deprecated_280115:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 188
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->merchant_id_deprecated_280115:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/config/PosConfig;->merchant_id_deprecated_280115:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 189
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/config/PosConfig;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 194
    iget v0, p0, Lcom/stripe/proto/model/config/PosConfig;->hashCode:I

    if-nez v0, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/PosConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 197
    iget v1, p0, Lcom/stripe/proto/model/config/PosConfig;->heartbeat_interval_seconds:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 198
    iget v1, p0, Lcom/stripe/proto/model/config/PosConfig;->reachability_threshold:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 199
    iget v1, p0, Lcom/stripe/proto/model/config/PosConfig;->unreachability_threshold:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 200
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/PosConfig;->loyalty_collection_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 201
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 202
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/DeviceTraceLevel;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 203
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/RabbitClientConfig;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 204
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->beacon_config_deprecated_120716:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 205
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->store_id_deprecated_280115:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 206
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->merchant_id_deprecated_280115:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 207
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    iput v0, p0, Lcom/stripe/proto/model/config/PosConfig;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/PosConfig;->newBuilder()Lcom/stripe/proto/model/config/PosConfig$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/config/PosConfig$Builder;
    .locals 2

    .line 159
    new-instance v0, Lcom/stripe/proto/model/config/PosConfig$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/config/PosConfig$Builder;-><init>()V

    .line 160
    iget v1, p0, Lcom/stripe/proto/model/config/PosConfig;->heartbeat_interval_seconds:I

    iput v1, v0, Lcom/stripe/proto/model/config/PosConfig$Builder;->heartbeat_interval_seconds:I

    .line 161
    iget v1, p0, Lcom/stripe/proto/model/config/PosConfig;->reachability_threshold:I

    iput v1, v0, Lcom/stripe/proto/model/config/PosConfig$Builder;->reachability_threshold:I

    .line 162
    iget v1, p0, Lcom/stripe/proto/model/config/PosConfig;->unreachability_threshold:I

    iput v1, v0, Lcom/stripe/proto/model/config/PosConfig$Builder;->unreachability_threshold:I

    .line 163
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/PosConfig;->loyalty_collection_enabled:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/PosConfig$Builder;->loyalty_collection_enabled:Z

    .line 164
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    iput-object v1, v0, Lcom/stripe/proto/model/config/PosConfig$Builder;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    .line 165
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    iput-object v1, v0, Lcom/stripe/proto/model/config/PosConfig$Builder;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    .line 166
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/PosConfig$Builder;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    .line 167
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->beacon_config_deprecated_120716:Lokio/ByteString;

    iput-object v1, v0, Lcom/stripe/proto/model/config/PosConfig$Builder;->beacon_config_deprecated_120716:Lokio/ByteString;

    .line 168
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->store_id_deprecated_280115:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/config/PosConfig$Builder;->store_id_deprecated_280115:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->merchant_id_deprecated_280115:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/config/PosConfig$Builder;->merchant_id_deprecated_280115:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/stripe/proto/model/config/PosConfig;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/config/PosConfig$Builder;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/PosConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/config/PosConfig$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 215
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "heartbeat_interval_seconds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/config/PosConfig;->heartbeat_interval_seconds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reachability_threshold="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/config/PosConfig;->reachability_threshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unreachability_threshold="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/model/config/PosConfig;->unreachability_threshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loyalty_collection_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/PosConfig;->loyalty_collection_enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_trace_level="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/PosConfig;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v2, p0, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_trace_level="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rabbit_client_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "beacon_config_deprecated_120716="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/PosConfig;->beacon_config_deprecated_120716:Lokio/ByteString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "store_id_deprecated_280115="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/PosConfig;->store_id_deprecated_280115:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "merchant_id_deprecated_280115="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/PosConfig;->merchant_id_deprecated_280115:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "derived_session_token_deprecated_20170224="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/PosConfig;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 226
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "PosConfig{"

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
