.class public final Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;
.super Lcom/squareup/wire/Message;
.source "ProcessSetupIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;,
        Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;",
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBc\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010Ji\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u0008\u0010\u001a\u001a\u00020\u0004H\u0016R\u0010\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0010\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;",
        "device_id",
        "",
        "stripe_ephemeral_key",
        "setup_intent_id",
        "terminal_action_id",
        "reader_id",
        "moto",
        "",
        "enable_customer_cancellation",
        "allow_redisplay",
        "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;",
        "equals",
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
            "Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AllowRedisplay#ADAPTER"
        jsonName = "allowRedisplay"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x9
    .end annotation
.end field

.field public final device_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "deviceId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final enable_customer_cancellation:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "enableCustomerCancellation"
        schemaIndex = 0x6
        tag = 0x8
    .end annotation
.end field

.field public final moto:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0x5
        tag = 0x7
    .end annotation
.end field

.field public final reader_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "readerId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x6
    .end annotation
.end field

.field public final setup_intent_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "setupIntentId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final stripe_ephemeral_key:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "stripeEphemeralKey"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final terminal_action_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "terminalActionId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->Companion:Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Companion;

    .line 253
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 252
    const-class v1, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 256
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 252
    new-instance v3, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)V
    .locals 1

    const-string v0, "device_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripe_ephemeral_key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setup_intent_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal_action_id"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader_id"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allow_redisplay"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p9}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 29
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->device_id:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->setup_intent_id:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->terminal_action_id:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->reader_id:Ljava/lang/String;

    .line 74
    iput-object p6, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->moto:Ljava/lang/Boolean;

    .line 81
    iput-object p7, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 89
    iput-object p8, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    .line 28
    const-string v0, ""

    if-eqz p11, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    const/4 v0, 0x0

    if-eqz p11, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    .line 97
    sget-object p8, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 98
    sget-object p9, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_8
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

    .line 28
    invoke-direct/range {p1 .. p10}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    .line 160
    iget-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->device_id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    .line 161
    iget-object p2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    .line 162
    iget-object p3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->setup_intent_id:Ljava/lang/String;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    .line 163
    iget-object p4, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->terminal_action_id:Ljava/lang/String;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    .line 164
    iget-object p5, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->reader_id:Ljava/lang/String;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    .line 165
    iget-object p6, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->moto:Ljava/lang/Boolean;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    .line 166
    iget-object p7, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    .line 167
    iget-object p8, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 168
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object p9

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 159
    invoke-virtual/range {p2 .. p11}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;
    .locals 11

    const-string v0, "device_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripe_ephemeral_key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setup_intent_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal_action_id"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader_id"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allow_redisplay"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v1, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 116
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->device_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->device_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->setup_intent_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->setup_intent_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 121
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->terminal_action_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 122
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->reader_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->reader_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 123
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->moto:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->moto:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 124
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 125
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    iget-object p1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 130
    iget v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->hashCode:I

    if-nez v0, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 133
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 134
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 135
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->setup_intent_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 136
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 137
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 138
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->moto:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 139
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 140
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    iput v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->newBuilder()Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;
    .locals 2

    .line 101
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->device_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->device_id:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->setup_intent_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->setup_intent_id:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->terminal_action_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->reader_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->reader_id:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->moto:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->moto:Ljava/lang/Boolean;

    .line 108
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    .line 110
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 148
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->device_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stripe_ephemeral_key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_intent_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->setup_intent_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_action_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->reader_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->moto:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moto="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->moto:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_customer_cancellation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_redisplay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ProcessSetupIntentRequest{"

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
