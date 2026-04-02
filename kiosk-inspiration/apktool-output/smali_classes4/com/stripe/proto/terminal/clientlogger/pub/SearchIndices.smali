.class public final Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;
.super Lcom/squareup/wire/Message;
.source "SearchIndices.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;,
        Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBi\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010Jj\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;",
        "action_id",
        "",
        "serial_number",
        "session_id",
        "trace_id",
        "",
        "parent_span_id",
        "current_span_id",
        "terminal_action_id",
        "client_isp",
        "base_device_id",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "common_release"
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final action_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "actionId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final base_device_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "baseDeviceId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final client_isp:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "clientIsp"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final current_span_id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "currentSpanId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final parent_span_id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "parentSpanId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final serial_number:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "serialNumber"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final session_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "sessionId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final terminal_action_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "terminalActionId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final trace_id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "traceId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Companion;

    .line 335
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 334
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 338
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 334
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    const/16 v14, 0x3ff

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serial_number"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal_action_id"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client_isp"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base_device_id"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p13}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->action_id:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->serial_number:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->session_id:Ljava/lang/String;

    .line 71
    iput-wide p4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->trace_id:J

    .line 83
    iput-wide p6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->parent_span_id:J

    .line 95
    iput-wide p8, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->current_span_id:J

    .line 107
    iput-object p10, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->terminal_action_id:Ljava/lang/String;

    .line 119
    iput-object p11, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->client_isp:Ljava/lang/String;

    .line 131
    iput-object p12, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->base_device_id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    .line 31
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object p1, v2

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_3

    move-wide v7, v5

    goto :goto_2

    :cond_3
    move-wide/from16 v7, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    move-wide v9, v5

    goto :goto_3

    :cond_4
    move-wide/from16 v9, p6

    :goto_3
    and-int/lit8 v4, v0, 0x20

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move-wide/from16 v5, p8

    :goto_4
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_6

    move-object v4, v2

    goto :goto_5

    :cond_6
    move-object/from16 v4, p10

    :goto_5
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    move-object v11, v2

    goto :goto_6

    :cond_7
    move-object/from16 v11, p11

    :goto_6
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    goto :goto_7

    :cond_8
    move-object/from16 v2, p12

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 140
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p14, v0

    goto :goto_8

    :cond_9
    move-object/from16 p14, p13

    :goto_8
    move-object p2, p1

    move-object/from16 p3, v1

    move-object/from16 p13, v2

    move-object/from16 p4, v3

    move-object/from16 p11, v4

    move-wide/from16 p9, v5

    move-wide/from16 p5, v7

    move-wide/from16 p7, v9

    move-object/from16 p12, v11

    move-object p1, p0

    .line 31
    invoke-direct/range {p1 .. p14}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;
    .locals 12

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->action_id:Ljava/lang/String;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->serial_number:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 208
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->session_id:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    .line 209
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->trace_id:J

    goto :goto_2

    :cond_3
    move-wide/from16 v3, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    .line 210
    iget-wide v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->parent_span_id:J

    goto :goto_3

    :cond_4
    move-wide/from16 v5, p6

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 211
    iget-wide v7, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->current_span_id:J

    goto :goto_4

    :cond_5
    move-wide/from16 v7, p8

    :goto_4
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    .line 212
    iget-object v9, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->terminal_action_id:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object/from16 v9, p10

    :goto_5
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    .line 213
    iget-object v10, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->client_isp:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object/from16 v10, p11

    :goto_6
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    .line 214
    iget-object v11, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->base_device_id:Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object/from16 v11, p12

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 215
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->unknownFields()Lokio/ByteString;

    move-result-object v0

    move-object/from16 p15, v0

    goto :goto_8

    :cond_9
    move-object/from16 p15, p13

    :goto_8
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    move-wide/from16 p6, v3

    move-wide/from16 p8, v5

    move-wide/from16 p10, v7

    move-object/from16 p12, v9

    move-object/from16 p13, v10

    move-object/from16 p14, v11

    .line 205
    invoke-virtual/range {p2 .. p15}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;
    .locals 15

    const-string v0, "action_id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serial_number"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session_id"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal_action_id"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client_isp"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base_device_id"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-direct/range {v1 .. v14}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 159
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->action_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->action_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->serial_number:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->serial_number:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->session_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->session_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 164
    :cond_5
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->trace_id:J

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->trace_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    .line 165
    :cond_6
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->parent_span_id:J

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->parent_span_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    .line 166
    :cond_7
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->current_span_id:J

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->current_span_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    .line 167
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->terminal_action_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->terminal_action_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 168
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->client_isp:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->client_isp:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 169
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->base_device_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->base_device_id:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 174
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->hashCode:I

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 177
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->action_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->serial_number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 179
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->session_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 180
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->trace_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 181
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->parent_span_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 182
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->current_span_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 183
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 184
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->client_isp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 185
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->base_device_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    iput v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;
    .locals 3

    .line 143
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;-><init>()V

    .line 144
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->action_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->action_id:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->serial_number:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->serial_number:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->session_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->session_id:Ljava/lang/String;

    .line 147
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->trace_id:J

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->trace_id:J

    .line 148
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->parent_span_id:J

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->parent_span_id:J

    .line 149
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->current_span_id:J

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->current_span_id:J

    .line 150
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->terminal_action_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->terminal_action_id:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->client_isp:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->client_isp:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->base_device_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->base_device_id:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 193
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->action_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serial_number="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->serial_number:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "session_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->session_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trace_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->trace_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parent_span_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->parent_span_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current_span_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->current_span_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_action_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->terminal_action_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client_isp="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->client_isp:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "base_device_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->base_device_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "SearchIndices{"

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
