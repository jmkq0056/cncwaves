.class public final Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;
.super Lcom/squareup/wire/Message;
.source "IotMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;,
        Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;",
        "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBm\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010Jn\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;",
        "message_id",
        "",
        "target_id",
        "action_id",
        "sent_at",
        "Lcom/stripe/proto/model/common/InstantPb;",
        "deadline",
        "service_name",
        "service_method",
        "routing_info",
        "source_region",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final action_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "actionId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final deadline:Lcom/stripe/proto/model/common/InstantPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final message_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "messageId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final routing_info:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "routingInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x9
    .end annotation
.end field

.field public final sent_at:Lcom/stripe/proto/model/common/InstantPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER"
        jsonName = "sentAt"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final service_method:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "serviceMethod"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final service_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "serviceName"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final source_region:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "sourceRegion"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0xa
    .end annotation
.end field

.field public final target_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "targetId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->Companion:Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Companion;

    .line 336
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 335
    const-class v1, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 339
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 335
    new-instance v3, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    const/16 v11, 0x3ff

    const/4 v12, 0x0

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

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "message_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service_name"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service_method"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routing_info"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source_region"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p10}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->message_id:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->target_id:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->action_id:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->sent_at:Lcom/stripe/proto/model/common/InstantPb;

    .line 84
    iput-object p5, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->deadline:Lcom/stripe/proto/model/common/InstantPb;

    .line 95
    iput-object p6, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_name:Ljava/lang/String;

    .line 107
    iput-object p7, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_method:Ljava/lang/String;

    .line 119
    iput-object p8, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->routing_info:Ljava/lang/String;

    .line 131
    iput-object p9, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->source_region:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p12, p11, 0x1

    .line 31
    const-string v0, ""

    if-eqz p12, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    const/4 v1, 0x0

    if-eqz p12, :cond_3

    move-object p4, v1

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move-object p5, v1

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    .line 140
    sget-object p10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_9
    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 31
    invoke-direct/range {p1 .. p11}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    .line 206
    iget-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->message_id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    .line 207
    iget-object p2, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->target_id:Ljava/lang/String;

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    .line 208
    iget-object p3, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->action_id:Ljava/lang/String;

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    .line 209
    iget-object p4, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->sent_at:Lcom/stripe/proto/model/common/InstantPb;

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    .line 210
    iget-object p5, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->deadline:Lcom/stripe/proto/model/common/InstantPb;

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    .line 211
    iget-object p6, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_name:Ljava/lang/String;

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    .line 212
    iget-object p7, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_method:Ljava/lang/String;

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    .line 213
    iget-object p8, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->routing_info:Ljava/lang/String;

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    .line 214
    iget-object p9, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->source_region:Ljava/lang/String;

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    .line 215
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->unknownFields()Lokio/ByteString;

    move-result-object p10

    :cond_9
    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 205
    invoke-virtual/range {p2 .. p12}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;
    .locals 12

    const-string v0, "message_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service_name"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service_method"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routing_info"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source_region"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    new-instance v1, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v11}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 159
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;

    invoke-virtual {p1}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->message_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->message_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->target_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->target_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->action_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->action_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 164
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->sent_at:Lcom/stripe/proto/model/common/InstantPb;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->sent_at:Lcom/stripe/proto/model/common/InstantPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 165
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->deadline:Lcom/stripe/proto/model/common/InstantPb;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->deadline:Lcom/stripe/proto/model/common/InstantPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 166
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 167
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_method:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 168
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->routing_info:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->routing_info:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 169
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->source_region:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->source_region:Ljava/lang/String;

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
    iget v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->hashCode:I

    if-nez v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 177
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->message_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->target_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 179
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->action_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 180
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->sent_at:Lcom/stripe/proto/model/common/InstantPb;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/InstantPb;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 181
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->deadline:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/InstantPb;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 182
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 183
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_method:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 184
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->routing_info:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 185
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->source_region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    iput v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->newBuilder()Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;
    .locals 2

    .line 143
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;-><init>()V

    .line 144
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->message_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->message_id:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->target_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->target_id:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->action_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->action_id:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->sent_at:Lcom/stripe/proto/model/common/InstantPb;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->sent_at:Lcom/stripe/proto/model/common/InstantPb;

    .line 148
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->deadline:Lcom/stripe/proto/model/common/InstantPb;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->deadline:Lcom/stripe/proto/model/common/InstantPb;

    .line 149
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->service_name:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_method:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->service_method:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->routing_info:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->routing_info:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->source_region:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->source_region:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

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

    const-string v3, "message_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->message_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "target_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->target_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->action_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->sent_at:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sent_at="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->sent_at:Lcom/stripe/proto/model/common/InstantPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->deadline:Lcom/stripe/proto/model/common/InstantPb;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deadline="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->deadline:Lcom/stripe/proto/model/common/InstantPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "service_name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_name:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "service_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->service_method:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "routing_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->routing_info:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "source_region="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;->source_region:Ljava/lang/String;

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

    const-string v0, "IotMetadata{"

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
