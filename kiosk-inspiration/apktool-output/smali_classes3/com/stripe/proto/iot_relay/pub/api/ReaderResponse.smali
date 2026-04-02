.class public final Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;
.super Lcom/squareup/wire/Message;
.source "ReaderResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;,
        Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Companion;,
        Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;",
        "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0017\u0018\u0019B7\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ8\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0004H\u0016R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000c\u0010\rR\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;",
        "code",
        "",
        "message",
        "response_code",
        "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;",
        "terminal_action_id",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;Ljava/lang/String;Lokio/ByteString;)V",
        "getCode$annotations",
        "()V",
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
        "ResponseCode",
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
            "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final message:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final response_code:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.iot_relay.pub.api.ReaderResponse$ResponseCode#ADAPTER"
        jsonName = "responseCode"
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
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->Companion:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Companion;

    .line 169
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 168
    const-class v1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 172
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 168
    new-instance v3, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response_code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal_action_id"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->code:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->message:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->response_code:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    .line 61
    iput-object p4, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->terminal_action_id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    .line 34
    const-string v0, ""

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 60
    sget-object p3, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;->RESPONSE_CODE_INVALID:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 70
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 34
    invoke-direct/range {p1 .. p6}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 116
    iget-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->code:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 117
    iget-object p2, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->message:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 118
    iget-object p3, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->response_code:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 119
    iget-object p4, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->terminal_action_id:Ljava/lang/String;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 120
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 115
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCode$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "code is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;
    .locals 7

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response_code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal_action_id"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 84
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;

    invoke-virtual {p1}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->code:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->response_code:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->response_code:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    if-eq v1, v3, :cond_5

    return v2

    .line 89
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->terminal_action_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->terminal_action_id:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 94
    iget v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->hashCode:I

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 97
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 98
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 99
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->response_code:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    invoke-virtual {v1}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 100
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    iput v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->newBuilder()Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;
    .locals 2

    .line 73
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->code:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->code:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->message:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->response_code:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->response_code:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    .line 77
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->terminal_action_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->terminal_action_id:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 108
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->code:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->message:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->response_code:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_action_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;->terminal_action_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ReaderResponse{"

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
