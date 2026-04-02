.class public final Lcom/stripe/proto/model/offline_mode/OfflineReader;
.super Lcom/squareup/wire/Message;
.source "OfflineReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;,
        Lcom/stripe/proto/model/offline_mode/OfflineReader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBa\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010Jb\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u0004H\u0016R\u0010\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;",
        "serial_number",
        "",
        "stripe_id",
        "last_activated_at",
        "",
        "account_id",
        "id",
        "created_at",
        "reader_offline_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;",
        "label",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/offline_mode/OfflineReader$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final account_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "accountId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final created_at:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        jsonName = "createdAt"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final label:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final last_activated_at:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        jsonName = "lastActivatedAt"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$ReaderOfflineConfigPb#ADAPTER"
        jsonName = "readerOfflineConfig"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final serial_number:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "serialNumber"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final stripe_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "stripeId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/offline_mode/OfflineReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->Companion:Lcom/stripe/proto/model/offline_mode/OfflineReader$Companion;

    .line 253
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 252
    const-class v1, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 256
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 252
    new-instance v3, Lcom/stripe/proto/model/offline_mode/OfflineReader$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/offline_mode/OfflineReader$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/offline_mode/OfflineReader;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/16 v13, 0x1ff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/proto/model/offline_mode/OfflineReader;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "serial_number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripe_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account_id"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p12}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 29
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    .line 47
    iput-wide p3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->last_activated_at:J

    .line 56
    iput-object p5, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    .line 65
    iput-wide p6, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->id:J

    .line 73
    iput-wide p8, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->created_at:J

    .line 82
    iput-object p10, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    .line 91
    iput-object p11, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->label:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    .line 28
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object p1, v2

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object p2, v2

    :cond_1
    and-int/lit8 v1, v0, 0x4

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    move-wide v5, v3

    goto :goto_0

    :cond_2
    move-wide v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object/from16 v1, p5

    :goto_1
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move-wide v7, v3

    goto :goto_2

    :cond_4
    move-wide/from16 v7, p6

    :goto_2
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    move-wide/from16 v3, p8

    :goto_3
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v9, p10

    :goto_4
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v2, p11

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 99
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p13, v0

    goto :goto_6

    :cond_8
    move-object/from16 p13, p12

    :goto_6
    move-object p3, p2

    move-object/from16 p6, v1

    move-object/from16 p12, v2

    move-wide/from16 p9, v3

    move-wide p4, v5

    move-wide/from16 p7, v7

    move-object/from16 p11, v9

    move-object p2, p1

    move-object p1, p0

    .line 28
    invoke-direct/range {p1 .. p13}, Lcom/stripe/proto/model/offline_mode/OfflineReader;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/offline_mode/OfflineReader;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineReader;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    .line 161
    iget-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    .line 162
    iget-object p2, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    .line 163
    iget-wide p3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->last_activated_at:J

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    .line 164
    iget-object p5, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    .line 165
    iget-wide p6, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->id:J

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    .line 166
    iget-wide p8, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->created_at:J

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    .line 167
    iget-object p10, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    .line 168
    iget-object p11, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->label:Ljava/lang/String;

    :cond_7
    and-int/lit16 p13, p13, 0x100

    if-eqz p13, :cond_8

    .line 169
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineReader;->unknownFields()Lokio/ByteString;

    move-result-object p12

    :cond_8
    move-object p13, p11

    move-object p14, p12

    move-object p12, p10

    move-wide p10, p8

    move-wide p8, p6

    move-object p7, p5

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 160
    invoke-virtual/range {p2 .. p14}, Lcom/stripe/proto/model/offline_mode/OfflineReader;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/offline_mode/OfflineReader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/offline_mode/OfflineReader;
    .locals 14

    const-string v0, "serial_number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripe_id"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account_id"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    move-object v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v13}, Lcom/stripe/proto/model/offline_mode/OfflineReader;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 117
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineReader;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    invoke-virtual {p1}, Lcom/stripe/proto/model/offline_mode/OfflineReader;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 121
    :cond_4
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->last_activated_at:J

    iget-wide v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->last_activated_at:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    .line 122
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 123
    :cond_6
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->id:J

    iget-wide v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    .line 124
    :cond_7
    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->created_at:J

    iget-wide v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->created_at:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    .line 125
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 126
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->label:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->label:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 131
    iget v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->hashCode:I

    if-nez v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineReader;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 134
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 135
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 136
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->last_activated_at:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 137
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 138
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 139
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->created_at:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 140
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 141
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    iput v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineReader;->newBuilder()Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;
    .locals 3

    .line 102
    new-instance v0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->serial_number:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->stripe_id:Ljava/lang/String;

    .line 105
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->last_activated_at:J

    iput-wide v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->last_activated_at:J

    .line 106
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->account_id:Ljava/lang/String;

    .line 107
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->id:J

    iput-wide v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->id:J

    .line 108
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->created_at:J

    iput-wide v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->created_at:J

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    .line 110
    iget-object v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->label:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->label:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineReader;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 149
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serial_number="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stripe_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "last_activated_at="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->last_activated_at:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "account_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "created_at="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->created_at:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v2, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_offline_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "label="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->label:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "OfflineReader{"

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
