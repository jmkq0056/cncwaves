.class public final Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;
.super Lcom/squareup/wire/Message;
.source "TerminalHeartbeatResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;,
        Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion;,
        Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;",
        "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001c\u001d\u001eBO\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011JP\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u000eH\u0016J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u0008\u0010\u001b\u001a\u00020\u0006H\u0016R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;",
        "system_context",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
        "reader_config_hash",
        "",
        "connection_token_status",
        "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;",
        "network_status",
        "Lcom/stripe/proto/api/sdk/NetworkStatus;",
        "offline_stats",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "reader_events_count",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lcom/stripe/proto/api/sdk/NetworkStatus;Lcom/stripe/proto/api/sdk/OfflineStats;ILokio/ByteString;)V",
        "getSystem_context$annotations",
        "()V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "ConnectionTokenStatus",
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
            "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.TerminalHeartbeatResponse$ConnectionTokenStatus#ADAPTER"
        jsonName = "connectionTokenStatus"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.NetworkStatus#ADAPTER"
        jsonName = "networkStatus"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.OfflineStats#ADAPTER"
        jsonName = "offlineStats"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final reader_config_hash:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "readerConfigHash"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final reader_events_count:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        jsonName = "readerEventsCount"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final system_context:Lcom/stripe/proto/model/sdk/SystemContext;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.SystemContext#ADAPTER"
        jsonName = "systemContext"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->Companion:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion;

    .line 236
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 235
    const-class v1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 239
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 235
    new-instance v3, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lcom/stripe/proto/api/sdk/NetworkStatus;Lcom/stripe/proto/api/sdk/OfflineStats;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lcom/stripe/proto/api/sdk/NetworkStatus;Lcom/stripe/proto/api/sdk/OfflineStats;ILokio/ByteString;)V
    .locals 1

    const-string v0, "reader_config_hash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection_token_status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network_status"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 36
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 49
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    .line 68
    iput-object p4, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    .line 77
    iput-object p5, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 89
    iput p6, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lcom/stripe/proto/api/sdk/NetworkStatus;Lcom/stripe/proto/api/sdk/OfflineStats;ILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 57
    const-string p2, ""

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 67
    sget-object p3, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;->CONNECTION_TOKEN_STATUS_INVALID:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 76
    sget-object p4, Lcom/stripe/proto/api/sdk/NetworkStatus;->NETWORK_STATUS_INVALID:Lcom/stripe/proto/api/sdk/NetworkStatus;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    const/4 p6, 0x0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 98
    sget-object p7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_6
    move-object p8, p7

    move p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 32
    invoke-direct/range {p1 .. p8}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lcom/stripe/proto/api/sdk/NetworkStatus;Lcom/stripe/proto/api/sdk/OfflineStats;ILokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lcom/stripe/proto/api/sdk/NetworkStatus;Lcom/stripe/proto/api/sdk/OfflineStats;ILokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 152
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 153
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 154
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 155
    iget-object p4, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 156
    iget-object p5, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 157
    iget p6, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 158
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->unknownFields()Lokio/ByteString;

    move-result-object p7

    :cond_6
    move p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 151
    invoke-virtual/range {p2 .. p9}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->copy(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lcom/stripe/proto/api/sdk/NetworkStatus;Lcom/stripe/proto/api/sdk/OfflineStats;ILokio/ByteString;)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSystem_context$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "system_context is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lcom/stripe/proto/api/sdk/NetworkStatus;Lcom/stripe/proto/api/sdk/OfflineStats;ILokio/ByteString;)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;
    .locals 9

    const-string v0, "reader_config_hash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection_token_status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network_status"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    new-instance v1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lcom/stripe/proto/api/sdk/NetworkStatus;Lcom/stripe/proto/api/sdk/OfflineStats;ILokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 114
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    if-eq v1, v3, :cond_5

    return v2

    .line 119
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    if-eq v1, v3, :cond_6

    return v2

    .line 120
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 121
    :cond_7
    iget v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    iget p1, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 126
    iget v0, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->hashCode:I

    if-nez v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 129
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/SystemContext;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 131
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/NetworkStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 133
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OfflineStats;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 134
    iget v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    iput v0, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->newBuilder()Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;
    .locals 2

    .line 101
    new-instance v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 103
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->reader_config_hash:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    .line 105
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    .line 106
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 107
    iget v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    iput v1, v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->reader_events_count:I

    .line 108
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 142
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "system_context="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_config_hash="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection_token_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_stats="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_events_count="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "TerminalHeartbeatResponse{"

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
